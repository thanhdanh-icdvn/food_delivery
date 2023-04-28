import Image from 'next/image';
import React from 'react';
import Link from 'next/link';
import IconComponent from '@/components/Icon';
import logo from '@/assets/images/logo.webp';
import { signIn, signOut, useSession } from 'next-auth/react';

const Header = ({ className, handleToggleDrawer }: HeaderProps) => {
  const handleSignin = (
    e: React.MouseEvent<HTMLButtonElement, globalThis.MouseEvent>
  ) => {
    e.preventDefault();
    signIn('google');
  };
  const handleSignout = (
    e: React.MouseEvent<HTMLButtonElement, globalThis.MouseEvent>
  ) => {
    e.preventDefault();
    signOut();
  };
  const { data: session } = useSession();
  return (
    <header className={`${className ?? ''}`}>
      <div className='header-main__wrapper'>
        <Link className='header-main__left' href={'/'}>
          {logo && <Image src={logo} alt='Logo' width={48} height={48} />}
        </Link>
        <div className='header-main__right'>
          <ul className='flex-row flex-wrap items-center justify-end hidden gap-4 lg:inline-flex'>
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
                <IconComponent
                  name='shoppingBag'
                  width={25}
                  height={25}
                  className='text-secondary'
                />
                <div className='absolute inline-flex items-center justify-center w-6 h-6 text-xs font-bold text-gray-800 border-2 border-white rounded-full bg-primary -top-2 -right-3'>
                  20
                </div>
              </Link>
            </li>
            {!session && (
              <li>
                <button
                  className='!shadow-2xl flex justify-center items-center gap-3'
                  onClick={e => handleSignin(e)}
                >
                  Sign In
                </button>
              </li>
            )}
            {session?.user && (
              <li>
                <button
                  className='!shadow-2xl flex justify-center items-center gap-3'
                  onClick={e => handleSignout(e)}
                >
                  <Image
                    src={session.user.image as string}
                    alt='User profile avatar'
                    width={10}
                    height={10}
                    className='rounded-full w-7 h-7'
                  />
                  {session?.user.name}
                </button>
              </li>
            )}
          </ul>
          <div className='flex flex-col items-center justify-center burger-menu lg:hidden'>
            Menu
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;
