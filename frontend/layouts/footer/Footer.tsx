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
              <p className='font-light'>Bất cứ nơi nào, bất cứ lúc nào, tận hưởng thời gian mua sắm của bạn </p>
            </div>
          </li>
          <li className='menu-item-group'>
            <div className='footer__information'>
              <h3 className='menu-item-group__title'>Thông tin</h3>
              <ul>
                <li className='menu-item'>
                  <Link href={'#'}>Về chúng tôi</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Sự kiện</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Tìm kiếm nhiều hơn</Link>
                </li>
              </ul>
            </div>
          </li>
          <li className='menu-item-group'>
            <div className='footer__helpful-links'>
              <h3 className='menu-item-group__title'>Liên kết hữu ích</h3>
              <ul>
                <li className='menu-item'>
                  <Link href={'#'}>Dịch vụ</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Hỗ trợ</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Điều khoản và điều kiện</Link>
                </li>
                <li className='menu-item'>
                  <Link href={'#'}>Thỏa thuận bảo mật</Link>
                </li>
              </ul>
            </div>
          </li>
          <li className='menu-item-group'>
            <div className='footer__our-menu'>
              <h3 className='menu-item-group__title'>Liên kết của chúng tôi</h3>
              <ul className='menu-item-list'>
                <li className='menu-item'>
                  <Link href={'#'}>Tài xế</Link>
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
                <Link href={''}>Hỏi đáp</Link>
              </li>
              <li>
                <Link href={''}>Liên hệ</Link>
              </li>
              <li>
                <Link href={''}>Điều khoản</Link>
              </li>
            </ul>
          </div>
          <div className='footer__reserved'>
            <p>
              <span> &#169;</span> FF Creative đã đăng ký bản quyền{' '}
              <span className='year'>{new Date().getFullYear()}</span>
            </p>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
