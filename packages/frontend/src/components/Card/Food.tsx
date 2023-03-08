import Image from 'next/image';
import React from 'react';
import { BuyButton } from '@/components/Button/BuyButton';
import IconComponent from '@/components/Icon';
import Link from 'next/link';

const FoodCard = ({ title, featuredImageUrl, description, place }: FoodProps) => {
  return (
    <Link className='food-card' href={'#'}>
      <div className='food-card__top'>
        <Image className='food-card__featured-image' alt='Sirloin steak' src={featuredImageUrl} />
      </div>
      <div className='food-card__bottom'>
        <div className='food-card__title'>{title}</div>
        <p className='food-card__description'>{description}</p>
        <div className='food-card__location-and-buy'>
          <div className='food-card__location'>
            <IconComponent name='maps' width={12} height={12} />
            <span>{place}</span>
          </div>
          <BuyButton className='food-card__buy-button' variant='primary'>
            Mua ngay
          </BuyButton>
        </div>
      </div>
    </Link>
  );
};

export default FoodCard;
