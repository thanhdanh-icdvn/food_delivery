import React from 'react';
import Footer from './footer/Footer';
import Header from './header/Header';

const MainLayout = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <Header className='header-main sticky top-0' />
      <main className='main'>
        <div className='content'>{children}</div>
      </main>
      <Footer className='footer-main' />
    </>
  );
};
export default MainLayout;
