import React from 'react';
import Image from 'next/image';
import IconComponent from '@/components/Icon';
import Button from '@/components/Button';
import foodImage from '@/assets/images/steak.webp';
import Meta from '@/layouts/meta';
const Order = () => {
  return (
    <>
      <Meta
        title='Order | Food Delivery App'
        keywords='Nextjs, strapi, order'
        description='Order page of Food Delivery App'
      />
      <div className='order'>
        <div className='order__left'>
          <h3 className='order__heading'>Cart</h3>
          <ul className='order__list'>
            {Array.from(Array(8).keys()).map((orderItem, index) => {
              return (
                <li className='order-item__wrapper' key={index}>
                  <div className='order-item flex flex-row'>
                    <div className='order-item__left'>
                      <Image
                        className='order-item__featured-image'
                        src={foodImage}
                        alt={'food'}
                        width={100}
                      />
                    </div>
                    <div className='order-item-right'>
                      <div className='order-item__title'>
                        <div className='order-item__title-text'>Title</div>
                        <div className='order-item__price'>12.99</div>
                      </div>
                      <div className='order-item__stock-price-and-state'>
                        <div className='order-item__stock-price'>$12.99</div>
                        <div className='order-item__state'>In stock</div>
                      </div>
                      <div className='order-item__info'>
                        <div className='order-item__size'>XL</div>
                        <div className='order-item__option'>No soup</div>
                        <div className='order-item__quantity'>2</div>
                        <div className='order-item__action'>
                          <div className='order-item__add-favourite'>
                            <IconComponent name='heart' fill='none' stroke='red' />
                            <div>Save</div>
                          </div>
                          <div className='order-item__delete'>
                            <IconComponent name='trash' fill='none' stroke='red' />
                            <div>Delete</div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              );
            })}
          </ul>
        </div>
        <div className='order__billing'>
          <div className='flex flex-col'>
            <div className='fee-and-delivery'>
              <div>Delivery</div>
              <div className='fee-block flex flex-row justify-between'>
                <div className='fee__title'>Free </div>
                <div className='fee__price'>123</div>
              </div>
              <div className='delivery__date'>Delivery date: Jun 24, 2023</div>
            </div>
            <div className='order__promotion'>
              <div className='order__promotion-input-group'>
                <input className='promotion__input' placeholder='Enter promotion code' />
                <Button className='promotion__button !rounded-l-none' size='sm' variant='primary'>
                  Apply
                </Button>
              </div>
              <div className='order__promotion-value'>20% off discount</div>
            </div>
            <div className='order__sub-total'>
              <div className='sub-total__heading'>
                <div className='heading__label'>Subtotal</div>
                <div className='heading__price'>80.96</div>
              </div>
              <div className='sub-total__discount'>
                <div className='discount__label'>Discount</div>
                <div className='discount__value'>(20%) - $16.19</div>
              </div>
              <div className='sub-total__tax flex'>
                <div className='tax__label'>Tax</div>
                <div className='tax__value'>+$14.00</div>
              </div>
            </div>
            <div className='order__total'>
              <div className='total__label'>Total</div>
              <div className='total__value'>$78.76</div>
            </div>
          </div>
          <div className='order__action'>
            <Button variant='primary'>Proceed to checkout</Button>
            <Button variant='success'>Countinue shopping</Button>
          </div>
        </div>
      </div>
    </>
  );
};
export default Order;
