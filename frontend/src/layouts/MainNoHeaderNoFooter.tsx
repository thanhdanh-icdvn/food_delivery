import React from 'react';

const MainNoHeaderNoFooter = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <main className={'main'}>
        <div className='main__inner'>
          <div className='flex items-center justify-center w-full'>{children}</div>
        </div>
      </main>
    </>
  );
};
export default MainNoHeaderNoFooter;
