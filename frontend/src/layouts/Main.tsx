import React, { useState } from 'react';
import Header from '@/layouts/header/Header';
import Drawer from '@/layouts/drawer/Drawer';
import Footer from '@/layouts/footer/Footer';

const MainLayout = ({ children }: LayoutProps): React.ReactNode => {
  const [isShow, setIsShow] = useState<boolean>(false);

  const handleToggleShow = () => {
    setIsShow(prev => !prev);
  };
  return (
    <>
      <Header className={'header-main sticky top-0'} handleToggleDrawer={handleToggleShow} />
      <main className={'main'}>
        <div className='main__inner'>
          <div className='content'>{children}</div>
        </div>
        <Drawer isShow={isShow} toggleShow={handleToggleShow} />
      </main>
      <Footer className={'footer-main'} />
    </>
  );
};
export default MainLayout;
