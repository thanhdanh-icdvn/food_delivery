import React from 'react';
import Card from '@/components/Card';
import Meta from '@/layouts/meta';

const Profile = () => {
  return (
    <>
      <Meta
        title='Profile | Food Delivery App'
        keywords='Nextjs, strapi, Profile'
        description='Profile page of Food Delivery App'
      />
      <div className='profile'>
        <div className='profile__summary'>
          <Card className='w-full flex flex-col'>
            <div className='summary__title'>Jane Doe</div>
            <div className='summary__sub-title'>Owner at Her Company Inc.</div>
            <div className='summary__description'>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, eligendi dolorum sequi illum qui
              unde aspernatur non deserunt
            </div>
          </Card>
        </div>
        <div className='profile__details'>
          <Card className='details details__about'>About</Card>
          <Card className='details details__experience'>Experience</Card>
        </div>
      </div>
    </>
  );
};
export default Profile;
