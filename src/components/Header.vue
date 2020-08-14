<template>
    <div>
        <!-- 顶部导航栏 -->
        <div>
            <!-- 送货地址栏 -->
            <div class="top" id="top">
                <div>
                    <ul>
                        <li><a>储蓄卡充值</a><span>|</span></li>
                        <li><a>我的订单</a><span>|</span></li>
                        <li><a>我的浏览</a><span>|</span></li>
                        <li><a>我的收藏</a><span>|</span></li>
                        <li><a>行业资讯</a><span>|</span></li>
                        <li><a>客户服务</a></li>
                    </ul>
                    <span>送货至:</span>
                    <span>北京市,市辖区,东城区,</span>
                    <img src="" alt="">                   
                    <router-link to="/login">登录</router-link>
                    <router-link to="/register">注册</router-link>
                </div>
            </div>
            <!-- 搜索栏 -->
            <div class="top-sous">
                <img src="../assets/logo.jpg" alt="">
                <div>
                    <input type="text">
                    <button>搜索</button>
                    <p>
                        <a href="#">米</a>
                        <a href="#">小麦粉</a>
                        <a href="#">油</a>
                        <a href="#">水果</a>
                        <a href="#">蔬菜</a>
                        <a href="#">杂粮</a>
                        <a href="#">牛排</a>
                    </p>
                </div>
            </div>
            <!-- 搜索栏结束 -->
            <!-- 购物车栏 -->
            <div class="top-gwc">
                <!-- 我的购物车 -->
                <div>
                    <img src="../assets/top-gwc.png" alt="">
                    <span>我的购物车</span>
                </div>
                <!-- 全部商品分类 -->
                <div class="top-sp">
                    <div>
                        <a href="#">
                            <img src="../assets/top-qb.png" alt="">全部商品分类
                        </a>
                    </div>
                    <a href="#">首页</a>
                </div>
            </div>
        </div>
    </div>
</template>
<style>
/* 最顶部导航样式 */
    .top{
        width: 100%;
        color: #666;
        background-color: #f5f5f5;
    }
    .top>div{
        width: 1250px;
        font-size: 12px;
        height: 30px;
        /* display: flex; */
        line-height: 30px;
        margin: 0 auto;
    }
    .top>div>span{
        margin-right: 15px;
    }
    .top>div>a{
        text-decoration: none;
        color: #666;
        padding-left: 10px;       
    }
    .top>div>a:nth-child(5){
        margin-left: 50px;
        color:#e23435;
    }
    .top>div>ul{
        display: flex;
        height: 18px;
        float:right;
        padding: 0 20px;
    }
    .top>div>ul>li>a:hover{
        color: #e23435;
    }
    ul>li>span{
        margin: 0 11px;
        color:#dedede;
    }
    /* 最顶部导航样式结束 */
    /* 搜索栏样式 */
    .top-sous{
        width: 1250px;
        margin: 0 auto;
        padding: 30px 0;
    }
    .top-sous>img{
        width: 364px;
        height: 81px;
    }
    .top-sous>div{
        float: right;
        width: 500px;
        margin-right: 100px;
    }
    .top-sous>div>input{
        width: 370px;
        height: 15px;
        border: 2px solid #e23435;
        margin: 0px;
        margin-bottom: 8px;
    }
    .top-sous>div>button{
        width: 96px;
        height: 35px;
        background-color: #e23435;
        color: #fff;
        font-size: 18px;
        line-height: 34px;
        text-align: center;
        border: 0px;
        position: relative;
        top:2px;
    }
    .top-sous>div>p>a{
        color: #999;
        font-size: 12px;
        float: left;
        line-height: 24px;
        margin-right: 15px;
        text-decoration: none;
    }
    .top-sous>div>p>a:hover{
        color: #e23435;
    }
    /* 搜索栏样式结束 */
    /*  购物车栏样式 */
    .top-gwc{
        width: 1250px;
        margin: 0 auto;
        background-color: #fff;
    }
    .top-gwc>div:first-child{
        float: right;
        color: #e23435;
        width: 178px;
        height: 32px;
        text-align: center;
        line-height: 32px;
        font-size: 12px;
        border: 1px solid #ddd;
        margin-right: 6px;
    }
    .top-gwc>div>img{
        position: relative;
        top: 5px;
        margin-right: 12px;
    }
    /* 全部商品分类样式 */
    .top-sp>div{
        clear: both;
        background-color: #333;
        width: 201px;
        height: 40px;
        padding-left: 30px;
        line-height: 40px;
        font-size: 16px;
        margin-right: 10px;
        float: left;
    }
    .top-sp>div>a{
        color: #fff;
        text-decoration: none;
    }
     .top-sp>div>a>img{
        margin-right: 10px;
     }
     .top-sp>a{
         color: #e23435;
         padding: 11px 8px;
         font-size: 16px;
         border-bottom: 2px solid;
         display: block;
         float: left;
     }
</style>


