<template>
  <div class="dashboard">
    <el-header height="50">SSR &nbsp;DEMO</el-header>
    <div class="menus">
      <el-button type="primary">    <NuxtLink to="/swiper">
      swiper page
    </NuxtLink></el-button>
      <el-button type="success">成功按钮</el-button>
      <el-button type="info">信息按钮</el-button>
      <el-button type="warning">警告按钮</el-button>
      <el-button type="danger">危险按钮</el-button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: '首页',
    };
  },
  head() {
    return {
      title: this.title,
      meta: [{ hid: 'description', name: 'description', content: 'My custom description' }],
    };
  },
};
</script>

<style lang='less' scoped>
.dashboard {
  width: 100%;
  height: 100vh;
  background: url('./../assets/bg.jpg') no-repeat;
  background-size: cover;
  .el-header {
    font-size: 24px;
    font-weight: 600;
    font-weight: 400;
    letter-spacing: -1px;
    background: #046fa0;
    padding: 10px 0;
    color: #fff;
    margin: 0;
    text-align: center;
  }
  .menus {
    display: flex;
    justify-content: flex-start;
    align-content: center;
    padding: 50px 20px;
    .el-button{
      a{
        font-style: normal;
        color: #fff;
        text-decoration: none;
      }
    }
  }
}
</style>
