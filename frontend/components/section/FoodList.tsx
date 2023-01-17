import React from 'react';
import { SwiperOptions, Navigation, Pagination, Scrollbar, A11y, Autoplay, Lazy } from 'swiper';
import { Swiper, SwiperSlide } from 'swiper/react';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/scrollbar';
import Button from '@/components/Button/Button';
import FoodCard from '@/components/Card/Food';
const swiperOptions: SwiperOptions = {
  observer: true,
  slidesPerView: 3,
  spaceBetween: 30,
  autoplay: true,
  speed: 2000,
  initialSlide: 3,
  modules: [Navigation, Pagination, Scrollbar, A11y, Autoplay, Lazy],
  navigation: true,
  loop: true,
  lazy: true,
  pagination: {
    clickable: true,
  },
  breakpoints: {
    // when window width is >= 320px
    320: {
      slidesPerView: 1,
      spaceBetween: 16,
    },
    // when window width is >= 480px
    480: {
      slidesPerView: 2,
      spaceBetween: 16,
    },
    // when window width is >= 640px
    640: {
      slidesPerView: 3,
      spaceBetween: 16,
    },
  },
};

const FoodList = ({ foodList = [] }: { foodList: FoodProps[] | [] }) => {
  return (
    <section id='food' className='section food'>
      <div className='section__heading'>
        <h2 className='section__title'>Thực phẩm</h2>
        <div className='section__sub-title'>Nhà hàng hàng đầu để ăn ngoài trời hoặc ăn trong nhà!</div>
      </div>
      <div className='section__content'>
        <Swiper {...swiperOptions} className='flex flex-col z-[1] py-20'>
          {foodList.map(food => {
            return (
              <SwiperSlide key={food.id} className='py-10'>
                <FoodCard {...food} />
              </SwiperSlide>
            );
          })}
        </Swiper>
        <div className='text-center'>
          <Button className='food__food-more shadow-lg shadow-primary/50' variant='primary'>
            Nhiều món hơn
          </Button>
        </div>
      </div>
    </section>
  );
};

export default FoodList;
