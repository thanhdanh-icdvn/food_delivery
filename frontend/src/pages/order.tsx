import React from 'react';
import Head from 'next/head';
import Image from 'next/image';
import IconComponent from '@/components/Icon';
import Button from '@/components/Button';
import foodImage from '@/assets/images/steak.webp';
const Order = () => {
  return (
    <>
      <Head>
        <title>Order | Food Delivery App</title>
        <meta name='description' content='The order page in food delivery app' />
        <meta name='viewport' content='width=device-width, initial-scale=1' />
        <link rel='icon' href='/favicon.ico' />
      </Head>
      <div className='flex flex-row flex-wrap'>
        <div className='order__left flex flex-col w-full md:w-[calc(66.67%-2rem)] m-4 p-4 rounded-lg bg-white shadow-mat-2'>
          <h3 className='order__heading text-lg font-bold'>Cart</h3>
          <ul className='order-list flex flex-col flex-wrap gap-4'>
            {Array.from(Array(8).keys()).map((orderItem, index) => {
              return (
                <li className='order-item__wrapper bg-white rounded-lg p-4' key={index}>
                  <div className='order-item flex flex-row'>
                    <div className='order-item__left'>
                      <Image
                        className='order-item__featured-image max-w-full rounded-lg'
                        src={foodImage}
                        alt={'food'}
                        width={100}
                      />
                    </div>
                    <div className='order-item-right flex flex-col flex-[8]'>
                      <div className='order-item__title flex flex-row justify-between'>
                        <div className='order-item__title-text'>Title</div>
                        <div className='order-item__price font-bold'>12.99</div>
                      </div>
                      <div className='order-item__stock-price-and-state flex flex-row divide-x gap-2'>
                        <div className='order-item__stock-price font-light text-sm'>$12.99</div>
                        <div className='order-item__state text-success-500 text-sm'>In stock</div>
                      </div>
                      <div className='flex flex-row justify-between'>
                        <div className='order-item__size'>XL</div>
                        <div className='order-item__option'>No soup</div>
                        <div className='order-item__quantity'>2</div>
                        <div className='order-item__action flex flex-row flex-wrap justify-end gap-2'>
                          <div className='order-item__add-favourite flex flex-row items-center'>
                            <IconComponent name='heart' fill='none' stroke='red' />
                            <div>Save</div>
                          </div>
                          <div className='order-item__delete flex flex-row items-center'>
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
        <div className='order__right flex flex-col w-full md:w-[calc(33.33%-2rem)] m-4 p-4 rounded-lg bg-white shadow-mat-2'>
          <div className='fee-and-delivery'>
            <div>Delivery</div>
            <div className='fee-block flex flex-row justify-between'>
              <div className='fee__title'>Free </div>
              <div className='fee__price'>123</div>
            </div>
            <div className='delivery__date'>Delivery date: Jun 24, 2023</div>
          </div>
          <div className='order__promotion flex flex-col'>
            <div className='order__promotion-input-group flex flex-row'>
              <input
                className='promotion__input p-1.5 rounded-lg rounded-r-none w-full outline-none border-2 border-gray-300 focus-within:border-2 focus-within:border-primary-300 focus-within:ring-primary-200'
                placeholder='Enter promotion code'
              />
              <Button className='promotion__button !rounded-l-none' size='sm' variant='primary'>
                Apply
              </Button>
            </div>
            <div className='order__promotion-value font-light text-gray-500'>20% off discount</div>
          </div>
          <div className='order__sub-total'>
            <div className='sub-total__heading flex flex-row justify-between'>
              <div className='heading__label'>Subtotal</div>
              <div className='heading__price'>80.96</div>
            </div>
            <div className='sub-total__discount flex flex-row justify-between'>
              <div className='discount__label'>Discount</div>
              <div className='discount__value'>(20%) - $16.19</div>
            </div>
            <div className='sub-total__tax flex flex-row justify-between'>
              <div className='tax__label'>Tax</div>
              <div className='tax__value'>+$14.00</div>
            </div>
          </div>
          <div className='order__total flex flex-row justify-between'>
            <div className='total__label'>Total</div>
            <div className='total__value'>$78.76</div>
          </div>
          <div className='order__action flex flex-col gap-2'>
            <Button>Proceed to checkout</Button>
            <Button>Countinue shopping</Button>
          </div>
        </div>
      </div>
    </>
  );
};
export default Order;
