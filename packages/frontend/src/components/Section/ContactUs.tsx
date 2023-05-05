import React from 'react';
import Button from '@/components/Button';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import { object, string } from 'yup';
import clsx from 'clsx';

const contactSchema = object({
  firstName: string().required('Họ là trường bắt buộc'),
  lastName: string().required('Tên đệm là trường bắt buộc'),
  email: string()
    .required('Email là trường bắt buộc')
    .email('Định dạng email không hợp lệ'),
  message: string().required('Lời nhắn là trường bắt buộc'),
}).required();

type ContactFormData = {
  firstName: string;
  lastName: string;
  email: string;
  message: string;
};
const ContactUs = () => {
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<ContactFormData>({
    resolver: yupResolver(contactSchema),
    defaultValues: {
      firstName: '',
      lastName: '',
      email: '',
      message: '',
    },
  });

  const onSubmit = (data: ContactFormData) =>
    console.log({
      data,
    });
  return (
    <section id='contact-us' className='section'>
      <div className='section__heading'>
        <h2 className='section__title'>Liên hệ với chúng tôi</h2>
        <div className='section__sub-title'>
          Nếu bạn cần trợ giúp, chúng tôi có thể sẵn sàng tại đây
        </div>
      </div>
      <div className='section__content section__content--contact-us'>
        <div className='contact-us__left'>
          <p className='contact-us__title'>Cùng trò chuyện</p>
          <p className='contact-us__description'>
            Hỏi chúng tôi bất cứ điều gì hoặc chỉ cần nói xin chào..
          </p>
        </div>
        <div className='contact-us__right'>
          <form
            id='contact-us__form'
            className='contact-us__form'
            onSubmit={handleSubmit(onSubmit)}
            noValidate
          >
            <div className='input-wrap'>
              <div className='w-full input-field'>
                <label htmlFor='name' className='uppercase'>
                  Họ
                </label>
                <input
                  type='text'
                  id='firstName'
                  placeholder='Họ'
                  className='input'
                  {...register('firstName')}
                />
              </div>
              <p className='text-sm font-light text-danger'>
                {errors.firstName?.message}
              </p>
            </div>
            <div className='input-wrap'>
              <div className='w-full input-field'>
                <label htmlFor='name' className='uppercase'>
                  Tên
                </label>
                <input
                  type='text'
                  id='lastName'
                  placeholder='Tên đệm'
                  className='input'
                  {...register('lastName')}
                />
              </div>
              <p className='text-sm font-light text-danger'>
                {errors.lastName?.message}
              </p>
            </div>
            <div className='input-wrap'>
              <div className='w-full input-field'>
                <label htmlFor='email' className='uppercase'>
                  Thư điện tử
                </label>
                <input
                  type='email'
                  id='email'
                  placeholder='example@yourdomain'
                  className='input'
                  {...register('email')}
                />
              </div>
              <p className='text-sm font-light text-danger'>
                {errors.email?.message}
              </p>
            </div>
            <div className='input-wrap'>
              <div className='w-full input-field'>
                <label htmlFor='message' className='uppercase'>
                  Lời nhắn
                </label>
                <input
                  type='text'
                  id='message'
                  placeholder='Xin chào...'
                  className='input'
                  {...register('message')}
                />
              </div>
              <p className='text-sm font-light text-danger'>
                {errors.message?.message}
              </p>
            </div>
            <div>
              <Button
                className={clsx('shadow-lg shadow-primary/50 block')}
                variant='primary'
                type='submit'
              >
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
