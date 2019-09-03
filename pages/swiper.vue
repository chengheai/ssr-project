<template>
  <!-- You can find this swiper instance object in current component by the "mySwiper"  -->
  <div>
    <h1>{{cuindex}}</h1>
    <div v-swiper:mySwiper="swiperOption" key="1">
      <div class="swiper-wrapper">
        <div v-for="(banner, index) in banners" :key="index" class="swiper-slide">
          <img :src="banner" />
        </div>
      </div>
      <div class="swiper-pagination" slot="pagination"></div>
      <div class="swiper-button-prev" slot="button-prev"></div>
      <div class="swiper-button-next" slot="button-next"></div>
    </div>
    <!-- <div v-swiper:mySwiper="swiperOption2" key='2'>
    <div class="swiper-wrapper">
      <div v-for="(banner, index) in banners" :key="index" class="swiper-slide">
        <img :src="banner" />
      </div>
    </div>
    <div class="swiper-pagination2" slot="pagination"></div>
    <div class="swiper-button-prev2" ></div>
    <div class="swiper-button-next2"></div>
    </div>-->
  </div>
</template>

<script>
import b1 from './../assets/1.jpeg';
import b2 from './../assets/2.jpeg';
import b3 from './../assets/3.jpg';
export default {
  data() {
    let that = this;
    return {
      cuindex: 0,
      b1,
      b2,
      b3,
      banners: [b1, b2, b3],
      swiperOption: {
        loop: true,
        slidesPerView: 'auto',
        // centeredSlides: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        on: {
          slideChange() {
            that.cuindex = this.realIndex;
            console.log('onSlideChangeEnd', this);
          },
          tap() {
            console.log('onTap', this);
          },
        },
      },
      // swiperOption2: {
      //   loop: true,
      //   slidesPerView: 'auto',
      //   // centeredSlides: true,
      //   pagination: {
      //     el: '.swiper-pagination2',
      //     clickable: true,
      //   },
      //   navigation: {
      //     nextEl: '.swiper-button-next2',
      //     prevEl: '.swiper-button-prev2',
      //   },
      //   on: {
      //     slideChange() {
      //       console.log('onSlideChangeEnd', this);
      //     },
      //     tap() {
      //       console.log('onTap', this);
      //     },
      //   },
      // },
    };
  },
  mounted() {},
};
</script>


<style lang="less" scoped>
.my-swiper {
  height: 500px;
  width: 600;
  margin: a auto;
  .swiper-slide {
    text-align: center;
    font-size: 38px;
    font-weight: 700;
    background-color: #eee;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .swiper-pagination {
    > .swiper-pagination-bullet {
      background-color: red;
    }
  }
}
</style>
