import React from 'react';
import Footer from './footer/Footer';
import Header from './header/Header';

const MainLayout = ({ children }: MainLayoutProps) => {
  return (
    <>
      <Header className='header-main' />
      <main>{children}</main>
      <Footer className='footer-main' />
    </>
  );
};
export default MainLayout;
