<template>
    <div>
        <my-header></my-header>
        <!-- body -->
        <div>
            <!-- 轮播图 -->
            <!-- 左侧导航栏 -->
            <div class="top-lun">
                <div>
                    <ul>
                        <li>
                            <img src="../assets/dao-1.png" alt="">
                            <a href="">送清凉专区</a>
                        </li>
                        <li>
                            <img src="../assets/dao-2.png" alt="">
                            <a href="">精选套餐</a>
                        </li>
                        <li>
                            <img src="../assets/dao-3.png" alt="">
                            <a href="">食品/酒类/生鲜</a>
                        </li>
                        <li>
                            <img src="../assets/dao-4.png" alt="">
                            <a href="">居家日用</a>
                        </li>
                        <li>
                            <img src="../assets/dao-5.png" alt="">
                            <a href="">家用电器</a>
                        </li>
                        <li>
                            <img src="../assets/dao-6.png" alt="">
                            <a href="">电子数码</a>
                        </li>
                    </ul>
                </div>
                <!-- 中间轮播图 -->
                <div>
                    <img v-for="(img,index) of imgs" :key="index" :src="img" v-show="num==index" />
                    <ul class="carouselItem">
                    <li v-for="(value,index) of imgs" :key="index" :class="{'selected':num==index}"></li>
                    </ul>
                </div>
                <!-- 右侧图片 -->
                <div>
                    <img src="../assets/lun-you1.jpg" alt="">
                    <img src="../assets/lun-you2.jpg" alt="">
                </div>
            </div>
            <!-- 详情 -->
            <div class="zhong-par">
            <!-- 中间导航 -->            
                <div class="zhong-d">
                    <img src="../assets/zhong-1.jpg" alt="">
                    <img src="../assets/zhong-2.jpg" alt="">
                    <img src="../assets/zhong-3.jpg" alt="">
                </div>
            <!-- 中间商品详情 -->
                <div class="ind-xq">
                    <ul>
                        <li v-for="(v,k) of xq" :key="k">
                            <a href=""><img :src="v.image" alt=""></a><br>
                            <a href="" class="title_a">{{v.title}}</a>
                            <p class="s_price">商城价：<span  class="price">{{v.price.toFixed(2)}}</span></p>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 送清凉专区 -->
            <div class="qing-l">
                <!-- 上面导航 -->
                <div>
                    <a href="#">更多<img src="../assets/more-z.png" alt=""></a>
                    <h3>送清凉专区</h3>
                </div>
                <!-- 内容 -->
                <div>
                    <!-- 左侧图片 -->
                    <div>
                        <a><img src="../assets/qing-z.jpg"></a>
                    </div>
                    <!-- 中间商品 -->
                    <div class="qingl-t">
                        <ul>
                            <li v-for="(v,k) of pro2" :key="k">
                                <a href=""><img :src="v.image" alt=""></a><br>
                                <a href="" class="title_a">{{v.title}}</a>
                                <p class="s_price">商城价：<span class="price">{{v.price.toFixed(2)}}</span></p>
                            </li>
                        </ul>
                    </div>
                    <!-- 右边热门推荐 -->
                    <div>
                        <div>热门推荐</div>
                        <div><a href="#"></a></div>
                        <div>更多<img src="../assets/more-z.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 返回顶部 -->
        <div class="ico-buttom">
            <a href=""><div>客服服务</div></a>
            <a href=""><div>关注微信</div></a>
            <a href=""><div>手机商城</div></a>
            <a href="#top"><div>回到顶部</div></a>
        </div>
        <my-footer></my-footer>
    </div>
</template>
<style>
    
     /* 导航栏轮播图样式 */
     /* 左侧 */
     .top-lun{
         clear: both;
         width: 1250px;
         margin: 0 auto;
         display: flex;
     }
     .top-lun>div:first-child{
         width: 231px;
         height: 451px;
         background: rgb(227,25,57);
     }
      .top-lun>div:first-child>ul>li{
          line-height: 15px;
          padding: 0px 0 0 15px; 
      }    
      .top-lun>div:first-child>ul>li>a{
          display: inline-block;
          padding-bottom: 15px;
      }
     .top-lun>div:first-child>ul>li:hover{
         background-color: #fff;
     }
     .top-lun>div:first-child>ul>li:hover>a{
         color:#f00
     }
     /* 中间 */
     .top-lun>div:nth-child(2){
         width: 814px;
         height: 451px;
         position: relative;
         margin-bottom: 25px;
     }
     .top-lun>div:nth-child(2)>img{
         width: 100%;
         height: 451px;
     }
     .top-lun>div:nth-child(2)>ul{
         width: 56px;
         position: absolute;
         display: flex;
         left: 50%;
         margin-left: -28px;
         bottom:20px;
     }
     .top-lun>div:nth-child(2) li{
         width: 10px;
         height: 10px;
         border-radius: 50%;
         border: 1px solid #fff;
     }
     .selected{
         background: #fff;
     }
    .top-lun>div>ul>li>img{
        width: 25px;
        height: 27px;
        margin-top:2px;
        position: relative;
        top:5px;
        margin-right: 5px;
    }
    .top-lun>div>ul>li>a{
        color: rgb(248, 241, 255);       
        font-size: 14px;
        text-decoration: none;
    }
    /* 右侧图片 */
    .top-lun>div:last-child{
        width: 200px;
        height: 451px;
        position: relative;
    }
    .top-lun>div:last-child>img{
        width: 200px;
        height: 225px;
    }
    .top-lun>div:last-child>img:last-child{
        position: absolute;
        bottom: 0px;
        left: 0px;
    }
    /* 中间导航样式 */
    .zhong-par{
        background: #f5f5f5;
    }
    .zhong-d{
        width: 1250px;
        height: 200px;
        margin: 0 auto;
        background: url('../assets/bg-brand.jpg')
    }
    .zhong-d>img{
        width: 406px;
        height: 184px;
        margin: 8px 0 15px 8px;
    }
    /* 中间商品详情 */
    .ind-xq{
        padding-top: 100px;
        width: 1250px;
        margin: 0 auto;
    }
    .ind-xq>ul{
        width:100%;
        display:flex;
        flex-wrap:wrap;
        background: #fff;
    }
    .ind-xq>ul>li{
        border-right: 1px solid #f0f0f0;
        border-bottom: 1px solid #f0f0f0;
        width: 249px;
        height: 250px;
        text-align: center;
        padding-top: 15px;
    }
    .s_price{
        height: 30px;
        line-height: 30px;
        color: #999;
        font-size: 12px;
        padding-left: 0;
    }
    .price{
        color: #e23435;
        font-size: 16px;
    }
     .ind-xq>ul>li>a>img{
         width: 160px;
         height: 160px;
         
     }
     .title_a{
         display:inline-block;
         height:16px;
         width:100px;
         white-space:nowrap;
         overflow: hidden;
         text-overflow: ellipsis;
         font-size: 12px;
         text-decoration: none;
         color: black;
         margin-top: 15px;
     }
     /* 送清凉专区样式 */
     .qing-l{
         background: #f5f5f5;
         padding: 40px 0;
     }
     .qing-l>div{
         width: 1250px;
         margin: 0 auto;
     }
     .qing-l>div:first-child{
         margin-bottom: 12px;
     }
     .qing-l>div:first-child>a{
         float: right;
         text-decoration: none;
         color: #666;
         font-size: 14px;
         position: relative;
     }
     .qing-l>div:first-child>a:hover{
         color: #e23435;
     }
     .qing-l>div:first-child>a>img{
         margin-left: 5px;
         position: absolute;
     }
     .qing-l>div:last-child{
         display: flex;
     }
     .qing-l>div:last-child>div:first-child>a>img{
         width: 240px;
         height: 550px;
     }
     .qingl-t{
         width: 750px;
         height: 550px;
         margin-left: 15px;
         /* clear: both; */
     }
     .qingl-t>ul{
         width:100%;
         display:flex;
        flex-wrap:wrap;
        background: #fff;
     }
     .qingl-t>ul>li{
         border-right: 1px solid #f0f0f0;
         border-bottom: 1px solid #f0f0f0;
         width: 249px;
         height: 259px;
         text-align: center;
         padding-top: 15px;
     }
     .qingl-t>ul>li>a>img{
         width: 167px;
         height: 167px;
     }
     /* 右侧推荐 */
     /*  */
      .ico-buttom{
          position: fixed;
          bottom: 20px;
          right: 20px;
      }
     .ico-buttom>a{
         display: block;
         width: 40px;
         height: 40px;
         background-image: url(../assets/ico-tphsop-index.png);
         text-decoration: none;
     }
     .ico-buttom>a:hover>div{
         display: block;
     }
     .ico-buttom>a:first-child{
        background-position: -235px 0;
     }
     .ico-buttom>a:nth-child(2){
         background-position: -275px 0;
     }
      .ico-buttom>a:nth-child(3){
          background-position: -235px -40px;
      }
    .ico-buttom>a:last-child{
          background-position: -275px -40px;
      }
    .ico-buttom>a>div{
        display: none;
        padding: 5px;
        font-size: 12px;
        color: #fff;
        line-height: 15px;
        background-color: #aaa;
        text-align: center;
    }
</style>
<script>
export default {
    data(){
        return{
            imgs:[
                require('../assets/lun-2.png'),
                require('../assets/lun-1.jpg')
            ],
            num:0,
            xq:[],
            pro2:[]
        }
    },
    methods:{
        autoPlay: function () {
            const _self = this;
            _self.num++;
            if (_self.num == this.imgs.length) {
                _self.num = 0;
            }
            },
            play: function () {
            setInterval(this.autoPlay, 3000);
            },
        },
        mounted() {
            this.play();
        },
        created(){
            this.axios.get('/product/xq?category=10').then(res=>{
                let data=res.data;
                data.forEach(item=>{
                    item.image=require('../assets/'+item.image);
                    this.xq.push(item);
                })
            })
            this.axios.get('/product/xq?category=20').then(res=>{
                let data=res.data;
                data.forEach(item=>{
                    item.image=require('../assets/'+item.image);
                    this.pro2.push(item);
                })
            })
        }
}
</script>


