<template>
    <div>
        <div class="top">
            <img src="../assets/logo.jpg">
            <div>欢迎登录</div>
        </div>
        <div class="middle">
            <div>              
                <div>
                    <div>账户登录</div>
                    <div class="login">
                        <img src="../assets/touxiang.png" alt="">
                        <input type="text" placeholder="手机号/邮箱" v-model="phone">
                    </div>
                    <div class="login">
                        <img src="../assets/mima.png" alt="">
                        <input type="password" placeholder="密码" v-model="pwd">
                    </div>
                    <div class="login-y">
                        <input type="text" placeholder="验证码">
                        <img src="../assets/yanzhengma.png" alt="" style="vertical-align: middle;">
                    </div>
                    <p><a href="">忘记密码？</a></p>
                    <button @click="login">登录</button>
                    <div>
                        <img src="../assets/lijizhuce.png" alt="">
                        <a href="">立即注册</a>
                    </div>
                </div>
                <img src="../assets/qingliangyixia.png" alt="">
            </div>
        </div>
    </div>
</template>
<style scoped>
/*顶部样式*/
.top{
    width: 1224px;
    height: 126px;
    display: flex;
    margin:0 auto;
}
.top>img{
    width: 183px;
    height: 57px;
    margin-top:35px;
}
.top>div{
    height:100%;
    font-size: 28px;
    margin-left: 30px;
    color: #666;
    line-height: 126px;
}
/*中间样式*/
.middle{
    background-color: #bf1919;
    padding: 7px;
}
.middle>div{
    width:1224px;
    margin:0 auto;
}
.middle>div>img{
    width: 621px;
    height: 481px;
}
.middle>div>div{
    width:346px;
    float: right;
    background-color:#fff;
    margin-top:10px;
    height:400px;
}
.middle>div>div>div:first-child{
    height:54px;
    text-align:center;
    line-height:54px;
    font-size:18px;
    font-weight:bold;
    color:#bf1919;
    border-bottom:1px solid #f5f5f5;
    margin-bottom:30px;
}
/*登录框*/
.login{
    width:200px;
    height:30px;
    position:relative;
    margin:25px 10px;
}
.login>img{
    position:absolute;
    width:35px;
    height:35px;
    left:11px;
    top:1px;
    border-right:1px solid #ddd;
}
.login>input{
    height:19px;
    width:240px;
    padding-left:45px;
}
.login-y{
    padding-left: 10px;   
}
p{
    margin-top: 20px;
}
p>a{
    font-size: 12px;
    margin-left: 250px;
    text-decoration: none;
    color:inherit;
}
.middle>div button{
    width:304px;
    height: 37px;
    color:#fff;
    font-size: 20px;
    font-weight: 600;
    background-color: #e23435;
    text-align: center;
    margin: 0 auto;
    display: block;
    outline: none;
    border: 0;
    margin-top: 16px;
}
.middle>div button:hover{
    background-color:rgba(226,52,53,.9);
}
.middle>div>div>div:last-child{
    border-top:1px solid #f5f5f5;
    margin-top: 16px;
    padding-top: 25px;
    position: relative;
    text-align: right;
    padding-right: 25px;
}
.middle>div>div>div:last-child>img{
    position: absolute;
    right: 95px;
    top: 22px;

}
.middle>div>div>div:last-child>a{
    text-decoration: none;
    color:#bf1919;
}
</style>
<script>
export default {
    data(){
        return {
            phone:"",
            pwd:""
        }
    },
    methods:{
        login(){
            let phoneRegExp=/^1[3-9]\d{9}$/;
            if(phoneRegExp.test(this.phone)){
                this.axios.get('/user/login?phone='+this.phone+'&pwd='+this.pwd).then(res=>{
                    if(res.data.code==1){
                        this.$router.push('/index');
                    }else{
                        alert("登录失败");
                    }
                })
            }
        }
    }
}
</script>

