import React from 'react';
import IconMap from '@/assets/icon/icon_map.svg';
import IconMotorbike from '@/assets/icon/icon_moto.svg';
import Button from '@/components/Button';
const Banner = () => {
  return (
    <section id='banner' className='banner'>
      <div className='banner__content'>
        <h1 className='banner__heading'>
          Bạn có <span className='text-primary'>đói ?</span>
        </h1>
        <p className='banner__description'>Bạn có thể đặt hàng tại đây rất dễ dàng và đơn giản</p>
        <div className='m-delivery-and-pickup w-full'>
          <div className='tab-buttons'>
            <Button inlineFlex variant='tertiary'>
              <IconMotorbike className='inline-block w-6 h-6 mx-1' />
              Delivery
            </Button>
            <Button inlineFlex>
              <IconMotorbike className='inline-block w-6 h-6 mx-1' />
              Find your favourite food
            </Button>
          </div>
          <div className='tab-content flex w-full'>
            <div
              className='
                input-icon 
                relative 
                flex 
                items-center 
                py-2
                bg-[#F5F5F5]
                outline-none
                rounded-md
                text-lg
                w-[calc(2/3-0.5rem)]
              '
            >
              <IconMap className='h-6 w-6 text-[#ff7474] inline-block bg-transparent mx-2' />
              <input
                className='
                  relative
                  block
                  bg-transparent
                  pr-4
                  text-[#9E9E9E]
                  outline-none
                  rounded-md
                  focus:border-transparent
                  focus:bg-transparent
                  w-full
                '
                type='text'
                name='inp-delivery'
                id='inp-delivery'
                defaultValue={''}
                onChange={() => {
                  return;
                }}
              />
            </div>
            <Button inlineFlex variant='tertiary' className='w-[1/3-0.5rem)'>
              <IconMotorbike className='inline-block w-6 h-6 mx-1' />
              Find your favourite food
            </Button>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Banner;
