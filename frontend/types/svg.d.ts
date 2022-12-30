declare module '*.svg?inline' {
  const content: unknown;
  export default content;
}

declare module '*.svg' {
  const content: unknown;
  export default content;
}
type StyledSVGIconProps = {
  className?: string | undefined;
  name: string | undefined;
  color?: string | undefined;
  size?: number | undefined;
  transform?: string | undefined;
  alt?: string | undefined;
};
