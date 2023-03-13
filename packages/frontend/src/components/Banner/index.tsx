import React from 'react';
import IconMap from '@/assets/icon/icon_map.svg';
import IconMotorbike from '@/assets/icon/icon_moto.svg';
import IconPickup from '@/assets/icon/icon_pickup.svg';
import IconSearch from '@/assets/icon/icon_search.svg';
import Button from '@/components/Button';
const Banner = () => {
  return (
    <section id='banner' className='banner'>
      <div className='banner__content inner'>
        <h1 className='banner__heading'>Are you starving?</h1>
        <p className='banner__description'>Bạn có thể đặt hàng tại đây rất dễ dàng và đơn giản</p>
        <div className='m-delivery-and-pickup'>
          <div className='tab-buttons'>
            <Button inlineFlex variant='tertiary' size='sm'>
              <IconMotorbike className='inline-flex flex-shrink-0 w-6 h-6 mx-1' />
              Delivery
            </Button>
            <Button inlineFlex size='sm'>
              <IconPickup className='inline-flex flex-shrink-0 mx-1' />
              Pickup
            </Button>
          </div>
          <form action='' method='post' className='tab-content'>
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
              '
            >
              <IconMap className='h-6 w-6 text-[#ff7474] inline-flex flex-shrink-0 bg-transparent mx-2' />
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
                  font-light
                '
                type='text'
                name='inp-delivery'
                id='inp-delivery'
                defaultValue={''}
                onChange={() => {
                  return;
                }}
                placeholder='Enter your address'
              />
            </div>
            <Button inlineFlex variant='tertiary' className='btn-find-food'>
              <IconSearch className='inline-flex mx-1 flex-shrink-0' />
              Find food
            </Button>
          </form>
        </div>
      </div>
    </section>
  );
};

export default Banner;
