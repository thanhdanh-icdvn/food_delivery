type ButtonSizeProps = 'xs' | 'sm' | 'base' | 'lg' | 'xl';
type TailwinddVariantProps =
  | 'primary'
  | 'secondary'
  | 'info'
  | 'warning'
  | 'danger'
  | 'danger'
  | 'pending'
  | 'dark'
  | 'success'
  | 'main';
type ButtonProps = {
  disabled?: boolean;
  variant?: TailwinddVariantProps;
  size?: TailwindButtonSize;
  outlined?: boolean;
  pill?: boolean;
  full?: boolean;
  inlineFlex?: boolean;
};
