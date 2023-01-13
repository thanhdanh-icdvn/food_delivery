import React, { useState } from 'react';
import Header from '@/layouts/header/Header';
import Drawer from '@/layouts/drawer/Drawer';
import Footer from '@/layouts/footer/Footer';
import localFont from '@next/font/local';

export const robotoLocal = localFont({
  src: [
    {
      path: '../assets/fonts/Roboto/Roboto-Thin.woff',
      weight: '100',
      style: 'normal',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-ThinItalic.woff',
      weight: '100',
      style: 'italic',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-Light.woff',
      weight: '300',
      style: 'normal',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-LightItalic.woff',
      weight: '300',
      style: 'italic',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-Regular.woff',
      weight: '400',
      style: 'normal',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-Italic.woff',
      weight: '400',
      style: 'italic',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-Medium.woff',
      weight: '500',
      style: 'normal',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-MediumItalic.woff',
      weight: '500',
      style: 'italic',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-Bold.woff',
      weight: '700',
      style: 'normal',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-BoldItalic.woff',
      weight: '700',
      style: 'italic',
    },

    {
      path: '../assets/fonts/Roboto/Roboto-Black.woff',
      weight: '900',
      style: 'normal',
    },
    {
      path: '../assets/fonts/Roboto/Roboto-BlackItalic.woff',
      weight: '900',
      style: 'italic',
    },
  ],
  fallback: ['Arial', 'sans-serif'],
  display: 'swap',
  preload: true,
});

const MainLayout = ({ children }: LayoutProps): React.ReactNode => {
  const [isShow, setIsShow] = useState<boolean>(false);

  const handleToggleShow = () => {
    setIsShow(prev => !prev);
  };
  return (
    <>
      <Header
        className={`header-main sticky top-0 ${robotoLocal.className ?? ''}`}
        handleToggleDrawer={handleToggleShow}
      />
      <main className={`main ${robotoLocal.className}`}>
        <div className='main__inner'>
          <div className='content'>{children}</div>
        </div>
        <Drawer isShow={isShow} toggleShow={handleToggleShow} />
      </main>
      <Footer className={`footer-main ${robotoLocal.className ?? ''}`} />
    </>
  );
};
export default MainLayout;
