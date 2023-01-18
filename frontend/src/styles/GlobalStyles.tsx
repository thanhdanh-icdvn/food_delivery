import React from 'react';
import { Global } from '@emotion/react';
import tw, { css, theme, GlobalStyles as BaseStyles } from 'twin.macro';
import { roboto } from '@/layouts/font';
const customStyles = css({
  body: {
    WebkitTapHighlightColor: theme`colors.purple.500`,
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
