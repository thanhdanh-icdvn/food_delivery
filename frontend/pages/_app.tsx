import React from 'react';
import type { AppProps } from 'next/app';
import { CacheProvider } from '@emotion/react';
import { cache } from '@emotion/css';
import '../styles/globals.css';
import GlobalStyles from '../styles/GlobalStyles';
import MainLayout from '../layouts/Main';

const App = ({ Component, pageProps }: AppProps) => (
  <CacheProvider value={cache}>
    <GlobalStyles />
    <MainLayout>
      <Component {...pageProps} />
    </MainLayout>
  </CacheProvider>
);

export default App;
