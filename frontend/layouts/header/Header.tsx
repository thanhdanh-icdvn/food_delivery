import React from 'react';
import Button from '../../components/button/Button';

const Header = ({ className }: HeaderProps) => {
  return (
    <header className={`${className ?? ''}`}>
      <div className='container flex flex-center justify-between mx-auto'>
        <div className='header--left'>Logo</div>
        <div className='header--right'>
          <ul className='inline-flex flex-row flex-wrap justify-end items-center gap-4'>
            <li>Home</li>
            <li>Food</li>
            <li>Services</li>
            <li>About Us</li>
            <li>Contact Us</li>
            <li>
              <Button variant='primary' type='button' size='sm' className='!shadow-2xl'>
                Sign In
              </Button>
            </li>
          </ul>
        </div>
      </div>
    </header>
  );
};

export default Header;
