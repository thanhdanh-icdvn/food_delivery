import React, { useEffect, useState } from 'react';
import Drawer from './drawer/Drawer';
import Footer from './footer/Footer';
import Header from './header/Header';
import SideBar from './sidebar/Sidebar';

const MainLayoutWithSidebar = ({ children }: LayoutProps): React.ReactNode => {
  const [isShow, setIsShow] = useState<boolean>(false);

  const handleToggleShow = () => {
    setIsShow(prev => !prev);
  };
  useEffect(() => setIsShow(false), []);
  return (
    <>
      <Header
        className={'header-main sticky top-0 '}
        handleToggleDrawer={handleToggleShow}
      />
      <main className='main'>
        <SideBar className='sidebar' />
        <div className='content has-sidebar'>{children}</div>{' '}
        <Drawer isShow={isShow} toggleShow={handleToggleShow} />
      </main>
      <Footer className={'footer-main '} />
    </>
  );
};
export default MainLayoutWithSidebar;
