import Image from 'next/image';
import React from 'react';
import foodImage from '../../assets/images/steak.png';
import { BuyButton } from '../button/BuyButton';
import IconComponent from '../icon/Icon';

const FoodCard = () => {
  return (
    <div className='food-card'>
      <div className='food-card__top'>
        <Image className='food-card__featured-image' alt='Sirloin steak' src={foodImage} />
      </div>
      <div className='food-card__bottom'>
        <div>Steak</div>
        <p className='food-card__description'>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam modi odio asperiores quasi omnis ex ab sequi
          enim accusamus eum? Itaque rem quos iusto doloremque ad at fugiat, omnis vero.
        </p>
        <div className='food-card__location-and-buy'>
          <div className='food-card__location'>
            <IconComponent name='maps' />
            <span>Tp. Hồ Chí Minh</span>
          </div>
          <BuyButton className='food-card__buy-button'>Buy Now</BuyButton>
        </div>
      </div>
    </div>
  );
};

export default FoodCard;
