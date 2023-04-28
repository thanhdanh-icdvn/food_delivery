import Image from 'next/image';
import Link from 'next/link';
import React from 'react';

const FastFoodCard = ({
  imgUrl,
  imgAlt = '',
  title,
  description,
}: FastFoodProps) => {
  return (
    <Link className='fast-food-card' href={'#'}>
      <div className='fast-food-card__top'>
        <Image
          className='fast-food-card__featured-image'
          src={imgUrl}
          alt={imgAlt}
          width={300}
          height={300}
          loading='lazy'
        />
      </div>
      <div className='fast-food-card__bottom'>
        <div className='fast-food-card__title'>{title}</div>
        <div className='fast-food-card__description'>{description}</div>
      </div>
    </Link>
  );
};

export default FastFoodCard;
