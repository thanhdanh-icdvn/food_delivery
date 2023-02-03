/* eslint-disable @typescript-eslint/no-unused-vars */
// twin.d.ts
import 'twin.macro';
import { css as cssImport } from '@emotion/react';
import { CSSInterpolation } from '@emotion/serialize';
import styledImport from '@emotion/styled';

/* Telling TypeScript that the module twin.macro has a styled and css import. */
declare module 'twin.macro' {
  // The styled and css imports
  const styled: typeof styledImport;
  const css: typeof cssImport;
}

declare module 'react' {
  // The css prop
  /* Adding the tw and css props to the HTMLAttributes interface. */
  interface HTMLAttributes<T> extends DOMAttributes<T> {
    tw?: string;
    css?: CSSInterpolation;
  }
  /* It's adding the css prop to the SVGProps interface. */
  // The inline svg css prop
  interface SVGProps<T> extends SVGProps<SVGSVGElement> {
    css?: CSSInterpolation;
  }
  // The tw and css prop
  /* It's adding the css prop to the SVGProps interface. */
  interface DOMAttributes<T> {
    tw?: string;
    css?: CSSInterpolation;
  }
}
