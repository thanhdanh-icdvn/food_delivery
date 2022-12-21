import '../styles/globals.css';
import type { AppProps } from 'next/app';
import { CacheProvider } from '@emotion/react';
import GlobalStyles from '../styles/GlobalStyles';
import { cache } from '@emotion/css';

const App = ({ Component, pageProps }: AppProps) => (
  <CacheProvider value={cache}>
    <GlobalStyles />
    <Component {...pageProps} />
  </CacheProvider>
);

export default App;
