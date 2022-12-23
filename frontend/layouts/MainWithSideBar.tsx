import React from 'react';
import Footer from './footer/Footer';
import Header from './header/Header';
import SideBar from './sidebar/Sidebar';

const MainLayoutWithSidebar = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <Header className='header-main sticky top-0' />
      <main className='main'>
        <SideBar className='sidebar' />
        <div className='content p-3'>{children}</div>
      </main>
      <Footer className='footer-main' />
    </>
  );
};
export default MainLayoutWithSidebar;
