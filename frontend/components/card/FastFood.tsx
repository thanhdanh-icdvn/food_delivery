import Image from 'next/image';
import React from 'react';

const FastFoodCard = ({ imgUrl, imgAlt = '', title, description }: FastFoodProps) => {
  return (
    <div className='fast-food-card'>
      <div className='fast-food-card__top'>
        <Image className='fast-food-card__featured-image' src={imgUrl} alt={imgAlt} />
      </div>
      <div className='fast-food-card__bottom'>
        <div className='fast-food-card__title'>{title}</div>
        <div className='fast-food-card__description'>{description}</div>
      </div>
    </div>
  );
};

export default FastFoodCard;
