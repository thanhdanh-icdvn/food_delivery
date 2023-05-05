import React from 'react';
import { AnimatePresence } from 'framer-motion';
import AsideMenu from '@/components/AsideMenu';
type MobileMenuProps = {
  open?: boolean;
};
const MobileMenu: React.FC<MobileMenuProps> = ({ open }) => {
  return <AnimatePresence>{open && <AsideMenu />}</AnimatePresence>;
};

export default MobileMenu;
