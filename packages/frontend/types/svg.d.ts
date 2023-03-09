declare module '*.svg?inline' {
  const content: unknown;
  export default content;
}
declare module '*.svg?url' {
  const content: string;
  export default content;
}

declare module '*.svg' {
  const content: unknown;
  export default content;
}
/**
 * StyledSVGIconProps is an object with optional className, name, color, size, transform, and alt
 * properties.
 * @property {string | undefined} className - This is the class name that will be applied to the SVG
 * element.
 * @property {string | undefined} name - The name of the icon you want to use.
 * @property {string | undefined} color - The color of the icon.
 * @property {number | undefined} size - The size of the icon in pixels.
 * @property {string | undefined} transform - string | undefined;
 * @property {string | undefined} alt - The alt text for the icon.
 */
type StyledSVGIconProps = {
  className?: string | undefined;
  name: string | undefined;
  color?: string | undefined;
  size?: number | undefined;
  transform?: string | undefined;
  alt?: string | undefined;
};
