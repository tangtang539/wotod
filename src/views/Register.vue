<template>
    <div class="register">
        <div class="reg-si">
            <div class="">
                <img class="logosize" src="../assets/logo.jpg" alt="">
                <span class="m-fntit">欢迎注册</span>
            </div>
            <div>
                <ul class="reg-ul">
                    <li class="uli leftt">手机注册</li>
                    <li class="uli">邮箱注册</li>
                    <li class="uli-li">我已注册，马上<a href="#">登录></a></li>
                </ul>
            </div>
            <div class="tab-par">
                <div class="tab-aa">
                    <table>
                        <tr>
                            <td>手机号码:</td>
                            <td><input type="text" class="input-t" v-model="phone" @blur="phoneCheck" placeholder="请输入手机号"></td>
                            <td>{{phonemsg}}</td>
                        </tr>
                        <tr>
                            <td>图像验证码:</td>
                            <td><input type="text" placeholder="图像验证码"></td>
                            <td><img src="../assets/shuaxin.png" alt=""></td>
                        </tr>
                        <tr>
                            <td>手机验证码:</td>
                            <td><input type="text" placeholder="手机验证码"></td>
                            <td><button>发送</button></td>
                        </tr>
                        <tr>
                            <td>设置密码:</td>
                            <td><input type="password" class="input-t" v-model="password" @blur="passwordCheck" placeholder="6~16位大小写英文字母、数字或下划线的组合"></td>
                            <td>{{passwordmsg}}</td>
                        </tr>
                        <tr>
                            <td>确认密码:</td>
                            <td><input type="password" class="input-t" v-model="password2" @blur="password2Check" placeholder="请再次输入密码"></td>
                            <td>{{password2msg}}</td>
                        </tr>
                        <tr>
                            <td>支付密码:</td>
                            <td><input type="password" class="input-t" v-model="password3" @blur="password3Check" placeholder="6~16位大小写英文字母、数字或下划线的组合"></td>
                            <td>{{password3msg}}</td>
                        </tr>
                        <tr>
                            <td colspan="3" id="td-rig">
                                <input type="checkbox" v-model="n">我已阅读并同意<a href="#">《网服务协议》</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" id="td-dd"><button id="btn"  @click="allCheck">同意协议并注册</button></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</template>
<style>
    .register{
        height: 750px;       
        padding:25px;
        background-color: #f5f5f5;
    }
    .reg-si{
        width: 985px;
        margin: 0 auto;
    }
    .logosize{
        width: 364px;
        height: 81px;
        border:1px;
    }
    .m-fntit{
        display:inline-block;
        border-left:1px solid #ddd;
        color:#6c6c6c;
        padding:0px 15px;
        font-size:22px;
        position:relative;
        bottom:2.2rem;
    }
    .reg-ul{
        color:#333;
        list-style:none;
        padding: 0px 36px;
    }
    .uli{
        float:left;
        text-align: center;
        background: #fff;
        border:1px solid #d5d5d5;
        margin:5px 5px;
        padding: 10px 30px;
    }
    .uli-li{
        float:right;
        font-size:12px;
        margin-top: 25px;
    }

    .tab-par{
        background: #fff;
        clear: both;
        border:1px solid #d5d5d5;
        height: 550px;
    }
    .leftt{
        margin-left: 362px;
    }
    table>tr>td:first-child{
        text-align: right;
    }
    table>tr>td{
        padding: 15px 0;
        font-size: 14px;
    }
    input{
        border:1px solid #ccc;
        padding:8px;
        height: 18px;
        margin:0 10px;
        font-size: 14px;
    }
    .input-t{
        width: 300px;
    }
    table{
        margin-left: 100px;
    }
    #td-rig,#td-dd{
        text-align: center;
    }
    #btn{
        background-color: #DA3A4C;
        color: #fff;
        font-size: 18px;
        height: 40px;
        text-align: center;
        width: 250px;
        border:0;
    }
</style>
<script>
export default {
    data(){
        return{
            phone:"",
            password:"",
            password2:"",
            password3:"",
            phonemsg:"",
            passwordmsg:"",
            password2msg:"",
            password3msg:"",
            n:false
        }
    },
    methods:{
        phoneCheck(){
            let phoneRegExp=/^1[3-9]\d{9}$/;
            if(phoneRegExp.test(this.phone)){
                this.phonemsg="√"
            }else{
                this.phonemsg="×"
            }
        },
        passwordCheck(){
            let passwordRegExp=/^\w{6,16}$/;
            if(passwordRegExp.test(this.password)){
                this.passwordmsg="√"
            }else{
                this.passwordmsg="×"
            }
        },
        password2Check(){
            if(this.password2==this.password){
                this.password2msg="√"
            }else{
                this.password2msg="√"
            }
        },
        password3Check(){
            let password3RegExp=/^\w{6,16}$/;
            if(password3RegExp.test(this.password3)){
                this.password3msg="√"
            }else{
                this.password3msg="×"
            }
        },
        allCheck(){
            if(this.phonemsg=="√" & this.passwordmsg=="√" & this.password2msg=="√" & this.password3msg=="√" & this.n==true){
                this.axios.post('/user/register','phone='+this.phone+'&upwd='+this.password).then(res=>{
                    if(res.data.code==1){
                        this.$router.push('/index');
                    }
                })
            }else{
                alert("请检查您的信息是否有误");
            }
        }
    }
}
</script>

