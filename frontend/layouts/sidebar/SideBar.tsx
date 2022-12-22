import React from 'react';

const SideBar = ({ className }: SidebarProps) => {
  return (
    <aside className={`${className ?? ''}`}>
      <div className='bg-white shadow-mat-3 p-3 md:h-screen rounded-lg'>Sidebar</div>
    </aside>
  );
};

export default SideBar;
