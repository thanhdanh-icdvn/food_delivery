'use-client';
import Link, { LinkProps } from 'next/link';
import React, { PropsWithChildren } from 'react';
// mirror the props of next/link component
type AnchorProps = Omit<
  React.AnchorHTMLAttributes<HTMLAnchorElement>,
  keyof LinkProps
>;
type ScrollLinkProps = AnchorProps & LinkProps & PropsWithChildren;
// component definition
const ScrollLink = ({ children, ...props }: ScrollLinkProps) => {
  const handleScroll = (e: React.MouseEvent<HTMLAnchorElement, MouseEvent>) => {
    e.preventDefault();
    //remove everything before the hash
    // eslint-disable-next-line no-useless-escape
    const targetId = e.currentTarget.href.replace(/.*\#/, '');
    const elem = document.getElementById(targetId);
    elem?.scrollIntoView({
      behavior: 'smooth',
      block: 'start',
    });
  };
  return (
    <Link {...props} onClick={handleScroll}>
      {children}
    </Link>
  );
};
export default ScrollLink;
