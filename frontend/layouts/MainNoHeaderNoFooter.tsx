import React from 'react';

const MainNoHeaderNoFooter = ({ children }: LayoutProps): React.ReactNode => {
  return (
    <>
      <main className='main'>
        <div className='w-full flex justify-center items-center'>{children}</div>
      </main>
    </>
  );
};
export default MainNoHeaderNoFooter;
