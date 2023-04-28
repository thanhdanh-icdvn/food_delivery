import { roboto } from '@/layouts/font';
import { Global } from '@emotion/react';
import tw, { GlobalStyles as BaseStyles, css } from 'twin.macro';
const customStyles = css({
  body: {
    fontFamily: roboto.style.fontFamily,
    ...tw`antialiased`,
  },
});

const GlobalStyles = () => (
  <>
    <BaseStyles />
    <Global styles={customStyles} />
  </>
);

export default GlobalStyles;
