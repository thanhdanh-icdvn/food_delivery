import React from 'react';

const MainNoHeaderNoFooter = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <main className={'main'}>
        <div className='flex items-center justify-center w-full'>{children}</div>
      </main>
    </>
  );
};
export default MainNoHeaderNoFooter;
