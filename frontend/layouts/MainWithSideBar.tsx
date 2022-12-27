import { Poppins } from '@next/font/google';
import React from 'react';
import Footer from './footer/Footer';
import Header from './header/Header';
import SideBar from './sidebar/Sidebar';

const poppins = Poppins({ subsets: ['latin'], weight: '400' });

const MainLayoutWithSidebar = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <Header className={`header-main sticky top-0 ${poppins.className}`} />
      <main className='main'>
        <div className='main__inner'>
          <SideBar className='sidebar' />
          <div className='content.has-sidebar'>{children}</div>
        </div>
      </main>
      <Footer className={`footer-main ${poppins.className}`} />
    </>
  );
};
export default MainLayoutWithSidebar;
