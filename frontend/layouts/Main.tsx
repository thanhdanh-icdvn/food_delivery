import React from 'react';
import { Poppins } from '@next/font/google';
import Footer from './footer/Footer';
import Header from './header/Header';

const poppins = Poppins({ subsets: ['latin'], weight: '400' });
const MainLayout = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <Header className={`header-main sticky top-0 ${poppins.className}`} />
      <main className={`main ${poppins.className}`}>
        <div className='main__inner'>
          <div className='content'>{children}</div>
        </div>
      </main>
      <Footer className={`footer-main ${poppins.className}`} />
    </>
  );
};
export default MainLayout;
