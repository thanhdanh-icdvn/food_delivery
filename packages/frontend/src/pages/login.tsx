import Image from 'next/image';
import Link from 'next/link';

import logo from '@/assets/images/logo.webp';
import Button from '@/components/Button';
import Meta from '@/layouts/meta';
import { layouts } from './_app';

const Login = (): PageProps => {
  return (
    <>
      <Meta
        title='Login | Food Delivery App'
        keywords='Nextjs, strapi, login'
        description='Login page of Food Delivery App'
      />
      <section className='flex flex-col items-center justify-center h-screen'>
        <div className='container'>
          <div className='flex flex-wrap items-center justify-center text-gray-800'>
            <div className=''>
              <div className='block bg-white rounded-lg shadow-mat-3'>
                <div className='lg:flex lg:flex-wrap g-0'>
                  <div className='w-full px-4 lg:w-1/2 lg:px-0'>
                    <div className='md:p-12 lg:mx-6'>
                      <div className='relative text-center'>
                        <Image
                          className='w-48 mx-auto'
                          src={logo}
                          alt='logo'
                          loading='lazy'
                        />
                        <h4 className='pb-1 mt-1 mb-12 text-xl font-semibold'>
                          We are The Lotus Team
                        </h4>
                      </div>
                      <form>
                        <p className='mb-4'>Please login to your account</p>
                        <div className='mb-4'>
                          <input
                            type='text'
                            className='form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none'
                            id='exampleFormControlInput1'
                            placeholder='Username'
                          />
                        </div>
                        <div className='mb-4'>
                          <input
                            type='password'
                            className='form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none'
                            id='exampleFormControlInput1'
                            placeholder='Password'
                          />
                        </div>
                        <div className='pt-1 pb-1 mb-12 text-center'>
                          <Button type='button' full variant='primary'>
                            Log in
                          </Button>
                          <Link className='text-gray-500' href='#!'>
                            Forgot password?
                          </Link>
                        </div>
                        <div className='flex items-center justify-between pb-6'>
                          <p className='mb-0 mr-2'>
                            Don&apos;t have an account?
                          </p>
                          <Button
                            type='button'
                            variant='primary'
                            outlined
                            size='sm'
                          >
                            Register
                          </Button>
                        </div>
                      </form>
                    </div>
                  </div>
                  <div className='items-end hidden bg-center bg-no-repeat bg-contain rounded-b-lg lg:flex bg-1/2 bg-login lg:w-6/12 lg:rounded-r-lg lg:rounded-bl-none'>
                    <div className='px-4 py-6 text-secondary-900 md:p-12 backdrop-blur-sm'>
                      <h4 className='mb-6 text-xl font-semibold'>
                        We are more than just a company
                      </h4>
                      <p className='text-sm'>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua. Ut enim ad minim veniam, quis
                        nostrud exercitation ullamco laboris nisi ut aliquip ex
                        ea commodo consequat.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </>
  );
};
Login.layout = layouts.MainNoHeadereNoFooter;
export default Login;
