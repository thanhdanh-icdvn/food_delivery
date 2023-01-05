import Image from 'next/image';
import React from 'react';
import food from 'assets/images/steak.png';

const Drawer: React.FC<DrawerProps> = ({ isShow, toggleShow }: DrawerProps) => {
  return (
    <div
      className={`${
        isShow ? 'translate-x-full' : 'translate-x-0'
      } fixed z-40 h-screen p-4 overflow-y-auto bg-white  shadow-mat-1 transition transform duration-300 ease-in-out w-80 right-0`}
      tabIndex={-1}
      aria-labelledby='drawer-label'
    >
      <div id='drawer-label' className='inline-flex items-center mb-4 text-base font-semibold'>
        <div className='cart-drawer__title'>Your cart(5)</div>
      </div>
      <button
        type='button'
        data-drawer-hide='drawer-example'
        aria-controls='drawer-example'
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
      <p className='card-drawer__notification-message font-light text-sm p-4 mb-4 bg-primary-50 rounded-lg text-center'>
        Your cart will exprire in <span className='text-primary-400 font-bold'>9.44</span> minutes!
        <br />
        Checkout now before your items sell out!
      </p>
      <ul className='flex flex-col gap-4 overflow-y-scroll max-h-[75%] scroll-m-3'>
        {Array.from(Array(10).keys()).map((cartItem, index) => {
          return (
            <li key={index}>
              <div className='flex flex-row flex-wrap shadow-md rounded-md flex-grow'>
                <div className='cart-item__left w-[calc(33.33%)]'>
                  <Image src={food} alt='' className='flex flex-col w-[1/4] rounded-lg' width={100} height={100} />
                </div>
                <div className='cart-item__right w-[calc(66.67%)] px-2'>
                  <div className='cart-item__title'>Title</div>
                  <div className='cart-item__color'>Color : Red, Blue</div>
                  <div className='cart-item__quantity-price flex flex-row justify-between flex-wrap w-full'>
                    <div className='cart-item__quantity flex'>1</div>
                    <div className='cart-item__price flex'>$30.00</div>
                  </div>
                </div>
              </div>
            </li>
          );
        })}
      </ul>
    </div>
  );
};

export default Drawer;
