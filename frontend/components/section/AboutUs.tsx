import React from 'react';
import Button from '@/components/button/Button';

const AboutUs = () => {
  return (
    <section id='about-us' className='section'>
      <div className='section__heading'>
        <h2 className='section__title'>Về chúng tôi</h2>
        <div className='section__sub-title'>Sơ yếu lý lịch về công ty chúng tôi</div>
      </div>
      <div className='section__content section__content--about-us'>
        <div className='about-us__left'>
          <div>
            Chúng tôi là công ty hoạt động trong lĩnh vực dịch vụ thực phẩm với phạm vi rất rộng khắp Việt Nam. chúng
            tôi hợp tác chặt chẽ với hơn 500 nhà hàng tại Việt Nam
          </div>
          <div className='mt-[50px]'>
            <Button className='shadow-lg shadow-primary/50' variant='primary'>
              Xem thêm
            </Button>
          </div>
        </div>
      </div>
    </section>
  );
};

export default AboutUs;
