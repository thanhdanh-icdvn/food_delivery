import Image from 'next/image';
import React from 'react';
import Link from 'next/link';
import Button from '@/components/Button';
import IconComponent from '@/components/Icon';
import logo from '@/assets/images/logo.webp';
import { useRouter } from 'next/router';

const Header = ({ className, handleToggleDrawer }: HeaderProps) => {
  const router = useRouter();
  const handleGoToLogin = () => {
    router.push('/login');
  };
  return (
    <header className={`${className ?? ''}`}>
      <div className='header-wrapper'>
        <Link className='header--left' href={'/'}>
          {logo && <Image src={logo} alt='Logo' width={48} height={48} />}
        </Link>
        <div className='header--right'>
          <ul className='flex-row flex-wrap items-center justify-end gap-4 hidden lg:inline-flex'>
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
              <Link href={'#maps'} scroll>
                Bản đồ
              </Link>
            </li>
            <li>
              <Link
                href={''}
                className='relative inline-flex items-center'
                onClick={e => {
                  e.preventDefault();
                  handleToggleDrawer();
                }}
              >
                <IconComponent name='shoppingBag' width={25} height={25} className='text-secondary' />
                <div className='absolute inline-flex items-center justify-center w-6 h-6 text-xs font-bold text-gray-800 border-2 border-white rounded-full bg-primary -top-2 -right-3'>
                  20
                </div>
              </Link>
            </li>
            <li>
              <Button variant='primary' type='button' size='sm' className='!shadow-2xl' onClick={handleGoToLogin}>
                Sign In
              </Button>
            </li>
          </ul>
          <div className='burger-menu flex flex-col justify-center items-center lg:hidden'>Menu</div>
        </div>
      </div>
    </header>
  );
};

export default Header;
