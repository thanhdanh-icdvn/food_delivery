import Image from 'next/image';
import React from 'react';

const Discount = (props: FoodDiscountProps) => {
  const renderDuration = (duration: number) => {
    return (
      <div className='inline-flex items-center justify-center px-4 py-2 font-bold rounded-lg text-tertiary bg-tertiary-100'>
        {duration > 1 ? `${duration} days` : `${duration} day`} remaining
      </div>
    );
  };
  return (
    <div className='food-discount'>
      <div className='relative flex overflow-hidden food-discount__top'>
        <Image
          src={props.image}
          alt='Discount food thumbnail'
          className='object-contain w-full food-discount__thumb rounded-2xl'
          loading='lazy'
        />
        <div className='food-discount__caption absolute left-0 bottom-0 z-[1] inline-flex flex-row bg-primary p-2 text-white rounded-tr-2xl rounded-bl-2xl'>
          <div className='text-[68px] leading-[1.06] font-bold'>
            {props.discountPercentage}
          </div>
          <div className='flex flex-col flex-shrink-0 leading-[1.2]'>
            <span className='font-bold text-[35px]'>%</span>
            <span className='font-[400] text-[22px] capitalize'>off</span>
          </div>
        </div>
      </div>
      <div className='food-disount__bottom text-[22px] leading-[1.2] mt-8'>
        <div className='food-discount__title'>{props.name}</div>
        <div className='mt-2 food-discount__duration'>
          {renderDuration(props.duration)}
        </div>
      </div>
    </div>
  );
};

export default Discount;
