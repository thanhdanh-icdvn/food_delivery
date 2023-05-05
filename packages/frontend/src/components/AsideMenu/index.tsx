import React from 'react';
import { motion } from 'framer-motion';

const links = [
  { name: 'Trang chủ', to: '#', id: 1 },
  { name: 'Thực phẩm', to: '#', id: 2 },
  { name: 'Dịch vụ', to: '#', id: 3 },
  { name: 'Về chúng tôi', to: '#', id: 4 },
  { name: 'Liên hệ', to: '#', id: 4 },
  { name: 'Giỏ hàng', to: '#', id: 5 },
  { name: 'Đăng nhập', to: '#', id: 6 },
];

const itemVariants = {
  closed: {
    opacity: 0,
  },
  open: { opacity: 1 },
};

const sideVariants = {
  closed: {
    transition: {
      staggerChildren: 0.2,
      staggerDirection: -1,
    },
  },
  open: {
    transition: {
      staggerChildren: 0.2,
      staggerDirection: 1,
    },
  },
};

const AsideMenu = () => {
  return (
    <motion.aside
      initial={{ width: 0 }}
      animate={{
        width: 300,
      }}
      exit={{
        width: 0,
        transition: { delay: 0.7, duration: 0.3 },
      }}
      className='fixed right-0 z-40 min-h-screen bg-blue-500'
    >
      <motion.div
        className='container flex flex-col gap-4 px-8 py-4 text-white'
        initial='closed'
        animate='open'
        exit='closed'
        variants={sideVariants}
      >
        {links.map(({ name, to, id }) => (
          <motion.a
            key={id}
            href={to}
            whileHover={{ scale: 1.2 }}
            variants={itemVariants}
          >
            {name}
          </motion.a>
        ))}
      </motion.div>
    </motion.aside>
  );
};

export default AsideMenu;
