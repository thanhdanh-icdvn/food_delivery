import Image from 'next/image';
import Link from 'next/link';
import React from 'react';
import logo from '../../assets/images/logo.png';

const Footer = ({ className }: FooterProps) => {
  return (
    <footer className={`${className ?? ''} footer`}>
      <div className='container mx-auto'>
        <ul className='footer__wrapper'>
          <li>
            <div className='footer__logo'>
              <Image src={logo} alt='Logo' width={48} />
              <p>Anywhere, anytime, enjoy your shopping time </p>
            </div>
          </li>
          <li className='menu-item-group'>
            <div className='footer__information'>
              <h3 className='menu-item-group__title'>Infomation</h3>
              <ul>
                <li className='menu-item'>
                  <Link href={'#'}>About us</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Event</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>More search</Link>
                </li>
              </ul>
            </div>
          </li>
          <li className='menu-item-group'>
            <div className='footer__helpful-links'>
              <h3 className='menu-item-group__title'>Helpful Links</h3>
              <ul>
                <li className='menu-item'>
                  <Link href={'#'}>Services</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Support</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Term & Condition</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Privacy</Link>
                </li>
              </ul>
            </div>
          </li>
          <li className='menu-item-group'>
            <div className='footer__our-menu'>
              <h3 className='menu-item-group__title'>Our Menu</h3>
              <ul className='menu-item-list'>
                <li className='menu-item'>
                  <Link href={'#'}>Driver</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Catalog</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Launch</Link>
                </li>
              </ul>
            </div>
          </li>
        </ul>

        <div className='footer__bottom'>
          <div className='footer__sub-nav'>
            <ul>
              <li>
                <Link href={''}>FAQ</Link>
              </li>
              <li>
                <Link href={''}>Contact Us</Link>
              </li>
              <li>
                <Link href={''}>Legal</Link>
              </li>
            </ul>
          </div>
          <div className='footer__reserved'>
            <p>
              <span> &#169;</span> All Right Reserved Fast Food Creative 2023
            </p>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
