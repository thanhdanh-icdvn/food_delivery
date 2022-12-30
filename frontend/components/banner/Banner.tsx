import React from 'react';
import Button from '../button/Button';

const Banner = () => {
  return (
    <section className='banner'>
      <div className='banner__content'>
        <h1 className='banner__heading'>
          Are you <span className='text-primary-300'>hungry ?</span>
        </h1>
        <p className='banner__description'>You can order here very easy and simple</p>
        <div className='banner__order-button mt-[32px] md:mt-[56px]'>
          <Button variant='primary' size='lg' className='!rounded-[0.825em]'>
            Order now
          </Button>
        </div>
      </div>
    </section>
  );
};

export default Banner;
