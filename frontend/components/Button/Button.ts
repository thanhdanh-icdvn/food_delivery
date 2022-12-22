import tw, { styled } from 'twin.macro';

const Button = styled.button<ButtonProps>(
  ({
    variant = 'primary',
    size = 'base',
    outlined = false,
    disabled = false,
    pill = false,
    full = false,
    inlineFlex = false,
  }: ButtonProps) => [
    tw`
    rounded-md
    focus:outline-none 
    transition 
    ease-in-out 
    duration-300
  `,
    size === 'xs'
      ? tw`py-2 px-3 text-xs font-medium`
      : size === 'sm'
      ? tw`py-2 px-3 text-sm font-medium`
      : size === 'lg'
      ? tw`py-3 px-5 text-base font-medium`
      : size === 'xl'
      ? tw`px-6 py-3.5 font-medium`
      : tw`px-5 py-2.5 text-sm`,
    inlineFlex && tw`inline-flex`,
    pill === true && tw`rounded-full`,
    disabled === true && tw`cursor-not-allowed opacity-80`,
    full && tw`w-full`,
    outlined === true &&
      variant === 'dark' &&
      tw`text-dark-800 hover:text-white border border-dark-800 hover:bg-dark-900 focus:ring-2 focus:outline-none focus:ring-dark-300`,
    outlined === true &&
      variant === 'warning' &&
      tw`text-warning-600 hover:text-white border border-warning-500 hover:bg-warning-600 focus:ring-2 focus:outline-none focus:ring-dark-300`,
    outlined === true &&
      variant === 'pending' &&
      tw`text-pending-600 hover:text-white border border-pending-600 hover:bg-pending-700 focus:ring-2 focus:outline-none focus:ring-pending-300`,
    outlined === true &&
      variant === 'success' &&
      tw`text-success-600 hover:text-white border border-success-500 hover:bg-success-600 focus:ring-2 focus:outline-none focus:ring-success-300`,
    outlined === true &&
      variant === 'danger' &&
      tw`text-danger-600 hover:text-white border border-danger-500 hover:bg-danger-600 focus:ring-2 focus:outline-none focus:ring-danger-300`,
    outlined === true &&
      variant === 'info' &&
      tw`text-info-500 hover:text-white border border-info-500 hover:bg-info-600 focus:ring-2 focus:outline-none focus:ring-info-300`,
    outlined == true &&
      variant === 'secondary' &&
      tw`text-secondary-400 hover:text-white border border-secondary-300 hover:bg-secondary-500 focus:ring-2 focus:outline-none focus:ring-secondary-300`,
    outlined == true &&
      variant === 'primary' &&
      tw`text-primary-700 hover:text-white border border-primary-700 hover:bg-primary-800 focus:ring-2 focus:outline-none focus:ring-primary-300`,
    outlined === false &&
      variant === 'dark' &&
      tw`bg-dark-800 text-white hover:text-white border border-dark-800 hover:bg-dark-900 focus:ring-2 focus:outline-none focus:ring-dark-300`,
    outlined === false &&
      variant === 'warning' &&
      tw`bg-warning-500 text-gray-900 hover:text-gray-900 border border-warning-500 hover:bg-warning-600 focus:ring-2 focus:outline-none focus:ring-dark-300`,
    outlined === false &&
      variant === 'pending' &&
      tw`bg-pending-600 text-white hover:text-white border border-pending-600 hover:bg-pending-700 focus:ring-2 focus:outline-none focus:ring-pending-300`,
    outlined === false &&
      variant === 'success' &&
      tw`bg-success-500  text-white hover:text-white border border-success-500 hover:bg-success-600 focus:ring-2 focus:outline-none focus:ring-success-300`,
    outlined === false &&
      variant === 'danger' &&
      tw`bg-danger-500 text-white hover:text-white border border-danger-500 hover:bg-danger-600 focus:ring-2 focus:outline-none focus:ring-danger-300`,
    outlined === false &&
      variant === 'info' &&
      tw`bg-info-500  text-white hover:text-white border border-info-500 hover:bg-info-600 focus:ring-2 focus:outline-none focus:ring-info-300`,
    outlined == false &&
      variant === 'secondary' &&
      tw`bg-secondary-400 text-gray-900 hover:text-gray-900 border border-secondary-300 hover:bg-secondary-500 focus:ring-2 focus:outline-none focus:ring-secondary-300`,
    outlined == false &&
      variant === 'primary' &&
      tw`bg-primary-700 text-white hover:text-white border border-primary-700 hover:bg-primary-800 focus:ring-2 focus:outline-none focus:ring-primary-300`,
  ]
);
export default Button;
