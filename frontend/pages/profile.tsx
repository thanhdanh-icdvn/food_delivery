import React from 'react';
import Card from '@/components/Card';

const Profile = () => {
  return (
    <>
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
