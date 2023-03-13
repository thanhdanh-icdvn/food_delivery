import Image from 'next/image';
import React from 'react';

const Discount = (props: FoodDiscountProps) => {
  const renderDuration = (duration: number) => {
    return (
      <div className='inline-flex justify-center items-center py-2 px-4 text-tertiary bg-tertiary-100 rounded-lg font-bold'>
        {duration > 1 ? `${duration} days` : `${duration} day`} remaining
      </div>
    );
  };
  return (
    <div className='food-discount'>
      <div className='food-discount__top relative overflow-hidden flex'>
        <Image
          src={props.image}
          alt=''
          className='food-discount__thumb rounded-2xl w-full object-contain'
        />
        <div className='food-discount__caption absolute left-0 bottom-0 z-[1] inline-flex flex-row bg-primary p-2 text-white rounded-tr-2xl rounded-bl-2xl'>
          <div className='text-[68px] leading-[1.06] font-bold'>{props.discountPercentage}</div>
          <div className='flex flex-col flex-shrink-0 leading-[1.2]'>
            <span className='font-bold text-[35px]'>%</span>
            <span className='font-[400] text-[22px] capitalize'>off</span>
          </div>
        </div>
      </div>
      <div className='food-disount__bottom text-[22px] leading-[1.2] mt-8'>
        <div className='food-discount__title'>{props.name}</div>
        <div className='food-discount__duration mt-2'>{renderDuration(props.duration)}</div>
      </div>
    </div>
  );
};

export default Discount;
