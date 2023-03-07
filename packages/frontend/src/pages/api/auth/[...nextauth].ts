import GoogleProvider from 'next-auth/providers/google';
import NextAuth from 'next-auth';
import type { NextAuthOptions } from 'next-auth';

/* Setting up the Google OAuth provider. */
export const authOptions: NextAuthOptions = {
  secret: process.env.NEXTAUTH_SECRET as string,
  providers: [
    GoogleProvider({
      clientId: process.env.GOOGLE_CLIENT_ID as string,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET as string,
    }),
  ],
};

export default NextAuth(authOptions);
