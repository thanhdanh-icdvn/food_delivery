import React from 'react';
import Button from '@/components/Button/Button';

const ContactUs = () => {
  return (
    <section id='contact-us' className='section'>
      <div className='section__heading'>
        <h2 className='section__title'>Liên hệ với chúng tôi</h2>
        <div className='section__sub-title'>Nếu bạn cần trợ giúp, chúng tôi có thể sẵn sàng tại đây</div>
      </div>
      <div className='section__content section__content--contact-us'>
        <div className='contact-us__left'>
          <p className='contact-us__title'>Cùng trò chuyện</p>
          <p className='contact-us__description'>Hỏi chúng tôi bất cứ điều gì hoặc chỉ cần nói xin chào..</p>
        </div>
        <div className='contact-us__right'>
          <form id='contact-us__form' className='contact-us__form'>
            <div className='input-field w-full'>
              <label htmlFor='name' className='uppercase'>
                Tên
              </label>
              <input type='text' id='name' name='name' placeholder='Tên của bạn' className='input' />
            </div>
            <div className='input-field w-full'>
              <label htmlFor='email' className='uppercase'>
                Thư điện tử
              </label>
              <input type='email' id='email' name='email' placeholder='example@yourdomain' className='input' />
            </div>
            <div className='input-field w-full'>
              <label htmlFor='message' className='uppercase'>
                Lời nhắn
              </label>
              <input type='text' id='message' name='message' placeholder='Xin chào...' className='input' />
            </div>
            <div className='px-4'>
              <Button className='shadow-lg shadow-primary/50' variant='primary'>
                Gửi đi
              </Button>
            </div>
          </form>
        </div>
      </div>
    </section>
  );
};

export default ContactUs;
