import React, { useState } from 'react';
import { Roboto } from '@next/font/google';
import Footer from './footer/Footer';
import Header from './header/Header';
import Drawer from '@/components/drawer/Drawer';

const roboto = Roboto({
  subsets: ['vietnamese', 'latin'],
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
