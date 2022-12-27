import React from 'react';

const Footer = ({ className }: FooterProps) => {
  return (
    <footer className={className ?? ''}>
      <div className='container mx-auto'>
        <p>Footer</p>
      </div>
    </footer>
  );
};

export default Footer;
