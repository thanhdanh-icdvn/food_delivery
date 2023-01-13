import { Roboto } from '@next/font/google';
import React, { useState } from 'react';
import Drawer from './drawer/Drawer';
import Footer from './footer/Footer';
import Header from './header/Header';
import SideBar from './sidebar/Sidebar';

const roboto = Roboto({
  subsets: ['vietnamese', 'latin', 'latin-ext'],
  weight: ['100', '300', '400', '500', '700', '900'],
  fallback: ['sans-serif'],
});
const MainLayoutWithSidebar = ({ children }: LayoutProps): React.ReactNode => {
  const [isShow, setIsShow] = useState<boolean>(false);

  const handleToggleShow = () => {
    setIsShow(prev => !prev);
  };
  return (
    <>
      <Header className={`header-main sticky top-0 ${roboto.className}`} handleToggleDrawer={handleToggleShow} />
      <main className='main'>
        <div className='main__inner'>
          <SideBar className='sidebar' />
          <div className='content.has-sidebar'>{children}</div>
        </div>
        <Drawer isShow={isShow} toggleShow={handleToggleShow} />
      </main>
      <Footer className={`footer-main ${roboto.className}`} />
    </>
  );
};
export default MainLayoutWithSidebar;
