type ButtonSizeProps = 'xs' | 'sm' | 'base' | 'lg' | 'xl';
type ButtonVariantProps =
  | 'primary'
  | 'secondary'
  | 'info'
  | 'warning'
  | 'danger'
  | 'danger'
  | 'pending'
  | 'dark'
  | 'success'
  | 'default';
/**
 * ButtonProps is an object with optional properties of disabled, variant, size, outlined, pill, full,
 * inlineFlex, and wide.
 * @property {boolean} disabled - boolean
 * @property {ButtonVariantProps} variant - The color of the button.
 * @property {ButtonSizeProps} size - The size of the button.
 * @property {boolean} outlined - boolean
 * @property {boolean} pill - Makes the button a pill shape
 * @property {boolean} full - Makes the button full width
 * @property {boolean} inlineFlex - This is a boolean property that will make the button inline-flex.
 * @property {boolean} wide - Makes the button full width
 */
type ButtonProps = {
  disabled?: boolean;
  variant?: ButtonVariantProps;
  size?: ButtonSizeProps;
  outlined?: boolean;
  pill?: boolean;
  full?: boolean;
  inlineFlex?: boolean;
  wide?: boolean;
};
