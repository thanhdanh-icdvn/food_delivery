import Image from 'next/image';
import React from 'react';
import { BuyButton } from '../button/BuyButton';
import IconComponent from '../icon/Icon';

const FoodCard = ({ title, featuredImageUrl, description, place }: FoodProps) => {
  return (
    <div className='food-card'>
      <div className='food-card__top'>
        <Image className='food-card__featured-image' alt='Sirloin steak' src={featuredImageUrl} />
      </div>
      <div className='food-card__bottom'>
        <div>{title}</div>
        <p className='food-card__description'>{description}</p>
        <div className='food-card__location-and-buy'>
          <div className='food-card__location'>
            <IconComponent name='maps' />
            <span>{place}</span>
          </div>
          <BuyButton className='food-card__buy-button'>Buy Now</BuyButton>
        </div>
      </div>
    </div>
  );
};

export default FoodCard;
