import Head from 'next/head';
import Image from 'next/image';
import Link from 'next/link';
import React from 'react';
import Button from '../components/button/Button';
import { layouts } from './_app';

const Login = (): PageProps => {
  return (
    <>
      <Head>
        <title>Login | Food Delivery</title>
        <meta name='description' content='Generated by create next app' />
        <meta name='viewport' content='width=device-width, initial-scale=1' />
        <link rel='icon' href='/favicon.ico' />
      </Head>
      <section className='flex flex-col justify-center items-center h-screen'>
        <div className='container'>
          <div className='flex justify-center items-center flex-wrap text-gray-800'>
            <div className=''>
              <div className='block bg-white shadow-mat-3 rounded-lg'>
                <div className='lg:flex lg:flex-wrap g-0'>
                  <div className='lg:w-6/12 px-4 md:px-0'>
                    <div className='md:p-12 md:mx-6'>
                      <div className='text-center'>
                        <Image
                          className='mx-auto w-48'
                          src='https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp'
                          alt='logo'
                          width={500}
                          height={500}
                        />
                        <h4 className='text-xl font-semibold mt-1 mb-12 pb-1'>We are The Lotus Team</h4>
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
                        <div className='text-center pt-1 mb-12 pb-1'>
                          <Button type='button' full variant='primary'>
                            Log in
                          </Button>
                          <Link className='text-gray-500' href='#!'>
                            Forgot password?
                          </Link>
                        </div>
                        <div className='flex items-center justify-between pb-6'>
                          <p className='mb-0 mr-2'>Don&apos;t have an account?</p>
                          <Button type='button' variant='primary' outlined size='sm'>
                            Register
                          </Button>
                        </div>
                      </form>
                    </div>
                  </div>
                  <div
                    className='lg:w-6/12 flex items-center lg:rounded-r-lg rounded-b-lg lg:rounded-bl-none'
                    style={{ background: 'linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593)' }}
                  >
                    <div className='text-white px-4 py-6 md:p-12 md:mx-6'>
                      <h4 className='text-xl font-semibold mb-6'>We are more than just a company</h4>
                      <p className='text-sm'>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat.
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
