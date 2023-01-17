import Image from 'next/image';
import React from 'react';
import food from 'assets/images/steak.webp';
import Button from '@/components/Button/Button';

const Drawer: React.FC<DrawerProps> = ({ isShow, toggleShow }: DrawerProps) => {
  return (
    <div
      className={`${
        isShow ? 'translate-x-0' : 'translate-x-full'
      } fixed z-40 p-4 bg-white  shadow-mat-1 transition transform duration-300 ease-in-out w-96 right-0 flex flex-col flex-shrink-0 justify-between h-full`}
      tabIndex={-1}
    >
      <div className='flex flex-col md:h-[80%]'>
        <div id='drawer-label' className='inline-flex items-center mb-4 text-base font-semibold'>
          <div className='cart-drawer__title'>Your cart(5)</div>
        </div>
        <button
          type='button'
          onClick={toggleShow}
          className='text-gray-400 bg-transparent rounded-lg text-sm p-1.5 absolute top-2.5 right-2.5 inline-flex items-center'
        >
          <svg
            aria-hidden='true'
            className='w-5 h-5'
            fill='currentColor'
            viewBox='0 0 20 20'
            xmlns='http://www.w3.org/2000/svg'
          >
            <path
              fillRule='evenodd'
              d='M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z'
              clipRule='evenodd'
            ></path>
          </svg>
          <span className='sr-only'>Close menu</span>
        </button>
        <p className='card-drawer__notification-message text-sm p-4 mb-4 bg-primary-50 rounded-lg text-center shadow-sm'>
          Your cart will exprire in <span className='text-red-600 font-bold'>9.44</span> minutes!
          <br />
          Checkout now before your items sell out!
        </p>
        <ul className='flex flex-col gap-4 scroll-m-3 overflow-y-scroll max-h-[300px] md:max-h-[600px]'>
          {Array.from(Array(10).keys()).map((cartItem, index) => {
            return (
              <li key={index}>
                <div className='flex flex-row flex-wrap shadow-md rounded-md flex-grow'>
                  <div className='cart-item__left w-[calc(40%)]'>
                    {food && <Image src={food} alt='' className='flex flex-col w-[1/4] rounded-lg' />}
                  </div>
                  <div className='cart-item__right w-[calc(60%)] px-2'>
                    <div className='cart-item__title'>Title</div>
                    <div className='cart-item__quantity-price flex flex-row justify-between flex-wrap w-full'>
                      <div className='cart-item__quantity flex'>1</div>
                      <div className='cart-item__price flex'>$30.00</div>
                    </div>
                    <textarea className='cart-item__note' placeholder='Note here' rows={2} />
                  </div>
                </div>
              </li>
            );
          })}
        </ul>
      </div>
      <div className='flex flex-col flex-1 py-4 md:h-[20%]'>
        <div className='flex flex-row flex-wrap justify-between'>
          <div className='cart__shipping-fee-label'>Shipping</div>
          <div className='cart__shipping-fee-val'>Free</div>
        </div>
        <div className='flex flex-row flex-wrap justify-between'>
          <div className='cart__sub-toal-label'>Subtotal</div>
          <div className='cart__sub-total-value'>$75.00</div>
        </div>
        <Button variant='primary'>Button 1</Button>
        <p className='text-center'>Or continue shopping</p>
      </div>
    </div>
  );
};

export default Drawer;
