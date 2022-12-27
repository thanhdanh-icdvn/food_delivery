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
  | 'success';
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
