import React from 'react';
import Button from '../button/Button';

const Banner = () => {
  return (
    <section id='banner' className='banner'>
      <div className='banner__content'>
        <h1 className='banner__heading'>
          Bạn có <span className='text-primary-300'>đói ?</span>
        </h1>
        <p className='banner__description'>Bạn có thể đặt hàng tại đây rất dễ dàng và đơn giản</p>
        <div className='banner__order-button mt-[32px] md:mt-[56px]'>
          <Button variant='primary' size='lg' className='shadow-lg shadow-primary/50'>
            Gọi món ngay
          </Button>
        </div>
      </div>
    </section>
  );
};

export default Banner;
