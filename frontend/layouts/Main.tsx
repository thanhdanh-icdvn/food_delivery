import React, { useState } from 'react';
import { Roboto } from '@next/font/google';
import Header from '@/layouts/header/Header';
import Drawer from '@/layouts/drawer/Drawer';
import Footer from '@/layouts/footer/Footer';

const roboto = Roboto({
  subsets: ['vietnamese', 'latin', 'latin-ext'],
  weight: ['100', '300', '400', '500', '700', '900'],
  fallback: ['sans-serif'],
});

const MainLayout = ({ children }: LayoutProps): React.ReactNode => {
  const [isShow, setIsShow] = useState<boolean>(false);

  const handleToggleShow = () => {
    setIsShow(prev => !prev);
  };
  return (
    <>
      <Header className={`header-main sticky top-0 ${roboto.className}`} handleToggleDrawer={handleToggleShow} />
      <main className={`main ${roboto.className}`}>
        <div className='main__inner'>
          <div className='content'>{children}</div>
        </div>
        <Drawer isShow={isShow} toggleShow={handleToggleShow} />
      </main>
      <Footer className={`footer-main ${roboto.className}`} />
    </>
  );
};
export default MainLayout;
