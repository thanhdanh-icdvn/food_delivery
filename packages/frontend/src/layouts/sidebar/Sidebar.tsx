import React from 'react';

const SideBar = ({ className }: SidebarProps) => {
  return <aside className={className ?? ''}>SideBar</aside>;
};

export default SideBar;
