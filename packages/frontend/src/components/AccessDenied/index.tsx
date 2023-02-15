import React from 'react';
import { signIn } from 'next-auth/react';

const AccessDenied = () => {
  return (
    <>
      <h1>You are not allowed to access</h1>
      <p>
        <a
          href='/api/auth/signin'
          onClick={e => {
            e.preventDefault();
            signIn();
          }}
        >
          You must be signed in to view this page
        </a>
      </p>
    </>
  );
};

export default AccessDenied;
