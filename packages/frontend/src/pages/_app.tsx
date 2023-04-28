import MainLayout from '@/layouts/Main';
import MainNoHeaderNoFooter from '@/layouts/MainNoHeaderNoFooter';
import MainLayoutWithSidebar from '@/layouts/MainWithSideBar';
import GlobalStyles from '@/styles/GlobalStyles';
import '@/styles/globals.css';
import { cache } from '@emotion/css';
import { CacheProvider } from '@emotion/react';
import { Analytics } from '@vercel/analytics/react';
import { SessionProvider } from 'next-auth/react';
import type { AppProps } from 'next/app';
import React from 'react';

export const layouts = {
  Main: MainLayout,
  MainWithSidebar: MainLayoutWithSidebar,
  MainNoHeadereNoFooter: MainNoHeaderNoFooter,
};

type Props = AppProps & {
  Component: PageProps;
};

const App = ({ Component, pageProps }: Props) => {
  const Layout = Component.layout ?? MainLayout;
  const getLayout = Component.getLayout ?? ((page: React.ReactNode) => page);
  return (
    <SessionProvider>
      <CacheProvider value={cache}>
        <GlobalStyles />
        <Layout>{getLayout(<Component {...pageProps} />)}</Layout>
        <Analytics />
      </CacheProvider>
    </SessionProvider>
  );
};

export default App;
