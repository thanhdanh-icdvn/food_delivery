import React from 'react';
import Discount from '../Card/Discount';

const DiscountList = ({ data = [] }: { data: FoodDiscountProps[] }) => {
  return (
    <section className='section section--discount grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6'>
      {data.map(item => {
        return <Discount key={item.id} {...item} />;
      })}
    </section>
  );
};

export default DiscountList;
