import Image from 'next/image';
import React from 'react';
import Button from '../../components/button/Button';
import logo from '../../assets/images/logo.png';
import Link from 'next/link';
import IconComponent from 'components/icon/Icon';

const Header = ({ className, handleToggleDrawer }: HeaderProps) => {
  return (
    <header className={`${className ?? ''}`}>
      <div className='container flex flex-center justify-between mx-auto'>
        <div className='header--left'>
          <Image src={logo} alt='Logo' width={48} height={48} />
        </div>
        <div className='header--right'>
          <ul className='inline-flex flex-row flex-wrap justify-end items-center gap-4'>
            <li>
              <Link href={'#banner'} scroll>
                Trang chủ
              </Link>
            </li>
            <li>
              <Link href={'#food'} scroll>
                Thực phẩm
              </Link>
            </li>
            <li>
              <Link href={'#services'} scroll>
                Dịch vụ
              </Link>
            </li>
            <li>
              <Link href={'#about-us'} scroll>
                Về chúng tôi
              </Link>
            </li>
            <li>
              <Link href={'#contact-us'} scroll>
                Liên hệ
              </Link>
            </li>
            <li>
              <Link href={''} className='relative inline-flex items-center'>
                <IconComponent name='shoppingBag' width={25} height={25} className='text-secondary' />
                <div className='absolute inline-flex items-center justify-center w-6 h-6 text-xs font-bold text-gray-100 bg-primary-400 border-2 border-white rounded-full -top-2 -right-3'>
                  20
                </div>
              </Link>
            </li>
            <li>
              <Button variant='primary' type='button' size='sm' className='!shadow-2xl'>
                Sign In
              </Button>
            </li>
            <li>
              <Button variant='primary' type='button' size='sm' onClick={handleToggleDrawer}>
                Toggle
              </Button>
            </li>
          </ul>
        </div>
      </div>
    </header>
  );
};

export default Header;
