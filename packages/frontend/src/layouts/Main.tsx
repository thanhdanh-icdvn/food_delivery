import React, { useEffect, useState } from 'react';
import Header from '@/layouts/header/Header';
import Drawer from '@/layouts/drawer/Drawer';
import Footer from '@/layouts/footer/Footer';
import MobileMenu from '@/components/MobileMenu';
import { useCycle } from 'framer-motion';

const MainLayout = ({ children }: LayoutProps): React.ReactNode => {
  const [isShow, setIsShow] = useState<boolean>(false);

  const handleToggleShow = () => {
    setIsShow(prev => !prev);
  };
  const [open, cycleOpen] = useCycle(false, true);

  useEffect(() => setIsShow(false), []);
  return (
    <>
      <Header
        className={'header-main sticky top-0'}
        handleToggleDrawer={handleToggleShow}
        open={open}
        cycleOpen={cycleOpen}
      />
      <main className={'main'}>
        <div className='content'>{children}</div>
        <Drawer isShow={isShow} toggleShow={handleToggleShow} />
        <MobileMenu open={open} />
      </main>
      <Footer className={'footer-main'} />
    </>
  );
};
export default MainLayout;
