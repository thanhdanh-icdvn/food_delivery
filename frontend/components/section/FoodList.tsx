import React from 'react';
import Slider, { Settings } from 'react-slick';
import FoodCard from '@/components/card/Food';
import Button from '@/components/button/Button';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
const settings: Settings = {
  dots: false,
  infinite: true,
  speed: 500,
  slidesToShow: 3,
  slidesToScroll: 1,
  initialSlide: 3,
  autoplay: true,
  autoplaySpeed: 5000,
  cssEase: 'linear',
  swipeToSlide: true,
  touchMove: true,
  arrows: true,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
      },
    },
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
      },
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
};
const FoodList = ({ foodList }: { foodList: FoodProps[] }) => {
  return (
    <section id='food' className='section food'>
      <div className='section__heading'>
        <h2 className='section__title'>Thực phẩm</h2>
        <div className='section__sub-title'>Nhà hàng hàng đầu để ăn ngoài trời hoặc ăn trong nhà!</div>
      </div>
      <div className='section__content'>
        <Slider {...settings} className='flex flex-col z-[1] py-20'>
          {foodList.map(food => {
            return <FoodCard {...food} key={food.id} />;
          })}
        </Slider>
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
