import Button from '@/components/Button';
import React from 'react';

const Drawer: React.FC<DrawerProps> = ({ isShow }: DrawerProps) => {
  return (
    <div
      className={`${
        isShow ? 'translate-x-0' : 'translate-x-full'
      } fixed z-40 p-4 bg-white  shadow-mat-1 transition transform duration-300 ease-in-out w-96 right-0 flex flex-col justify-between h-[calc(100%-52px)] box-border overflow-auto`}
      tabIndex={-1}
    >
      <div className='drawer__top'>Top</div>
      <div className='drawer__bottom'>
        <div className='flex flex-col w-full gap-3 process-button-list'>
          <Button variant='primary'>Thanh toán</Button>
          <Button outlined>Hoặc tiếp tục mua sắm</Button>
        </div>
      </div>
    </div>
  );
};

export default Drawer;
