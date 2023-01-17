import { Poppins } from '@next/font/google';
import React from 'react';

const poppins = Poppins({ subsets: ['latin'], weight: '400' });
const MainNoHeaderNoFooter = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <main className={`main ${poppins.className}`}>
        <div className='main__inner'>
          <div className='w-full flex justify-center items-center'>{children}</div>
        </div>
      </main>
    </>
  );
};
export default MainNoHeaderNoFooter;
