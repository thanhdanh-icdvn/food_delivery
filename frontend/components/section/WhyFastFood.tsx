import React from 'react';
import FastFoodCard from '@/components/Card/FastFood';
const WhyFastFood = ({ fastFoodList = [] }: { fastFoodList: FastFoodProps[] | [] }) => {
  return (
    <section id='why-fast-food' className='section why-fast-food'>
      <div className='section__heading'>
        <h2 className='section__title'>Tại sao phải là FF ?</h2>
      </div>
      <ul className='fast-food-list'>
        {fastFoodList.map(fastFoodItem => {
          return (
            <li className='fast-food-item' key={fastFoodItem.id}>
              <FastFoodCard
                id={3}
                imgUrl={fastFoodItem.imgUrl}
                imgAlt={fastFoodItem.imgAlt}
                title={fastFoodItem.title}
                description={fastFoodItem.description}
              />
            </li>
          );
        })}
      </ul>
    </section>
  );
};

export default WhyFastFood;
