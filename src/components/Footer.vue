<template>
    <div> 
    <!-- 页面底部 -->
    <div class="footsty">
      <div>
        <ul>
          <li>
            <img src="../assets/foot-money.jpg">
            <p>普惠实价 帮您省钱</p>
          </li>
          <li>
            <img src="../assets/foot-gouwuche.jpg">
            <p>品类齐全 轻松购物</p>
          </li>
          <li>
            <img src="../assets/foot-zuanshi.png">
            <p>正品行货 品质保障</p>
          </li>
          <li>
            <img src="../assets/foot-erji.png">
            <p>专业售后服务</p>
          </li>
        </ul>
      </div>
    </div>

    <div>
      <div class="foot-ff">
        <!-- 联系我们  -->
        <div>
          <h3>联系我们</h3>
          <span>010-60418238</span>
          <p>冬季工作时间：08：00-12:00，13:30-17:30<br>
           夏季工作时间：08：00-12:00，14:00-18:00（法定节假日除外）</p>
        </div>
        <!-- 售后服务 -->
        <div>
          <ul>
            <li>
              <h3>售后服务</h3>
            </li>
            <li>
              <h3>新手导航</h3>
              <p><a href="#">在线预售</a></p>
              <p><a href="#">在线购物</a></p>
            </li>
            <li>
              <h3>支付方式</h3>
              <p><a href="#">积分兑换</a></p>
              <p><a href="#">支付宝支付</a></p>
              <p><a href="#">微信支付</a></p>
            </li>
          </ul>
        </div>
      </div>
      <!-- 底部备案 -->
      <div class="foot-bei">
        <p><a href="http://www.beian.miit.gov.cn/">京ICP备15030684号-1</a></p>
        <p>COPYRIGHT © 2012-2019 北京沃德物流有限公司 地址：北京市顺义区南彩镇杜刘庄村向阳路19号 座机号：01060400457</p>
      </div>
    </div>
    <!-- 页面底部结束 -->
  </div>
</template>
<style>
    .footsty {
  margin-top: 40px;
  border-top: 1px solid #e7e7e7;
  border-bottom: 1px solid #e7e7e7;
  padding: 27px 0;
  background-color: #fff;
}
.footsty ul {
  display: flex;
  width: 1200px;
  margin: 0 auto;
  justify-content: space-around;
}
.footsty ul > li {
  display: flex;
  align-items: center;
  padding: 0 30px;
}
.footsty ul > li + li {
  border-left: 1px solid #ddd;
}
ul > li > p {
  margin: 0;
  padding-left: 20px;
  font-size: 20px;
}
/* 最底部样式 */
.foot-ff {
  width: 1224px;
  height: 324px;
  margin: 0 auto;
  padding: 40px;
}
.foot-ff > div:first-child {
  float: right;
  width: 200px;
  height: 264px;
}
h3 {
  font-size: 20px;
  margin-bottom: 8px;
}
.foot-ff > div > span {
  color: #e30000;
  font-size: 18px;
  line-height: 28px;
}
.foot-ff > div > p {
  font-size: 12px;
  line-height: 20px;
  color: #999;
  margin-top: 30px;
}
.foot-ff > div > ul {
  width: 650px;
  display: flex;
}
.foot-ff > div > ul > li {
  margin: 0 auto;
}
.foot-ff > div > ul > li > p > a {
  line-height: 26px;
  font-size: 14px;
  color: #666;
  text-decoration: none;
  margin-left: -19px;
}
.foot-bei > p {
  text-align: center;
  text-decoration: none;
  color: #444;
  font-size: 12px;
  line-height: 18px;
}
.foot-bei > p > a {
  text-decoration: none;
  color: #444;
}
</style>

