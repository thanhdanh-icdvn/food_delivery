import tw, { styled } from 'twin.macro';

const Button = styled.button<ButtonProps>(
  ({
    variant = 'default',
    size = 'base',
    outlined = false,
    disabled = false,
    pill = false,
    full = false,
    inlineFlex = false,
    wide = false,
  }: ButtonProps) => [
    tw`
    rounded-md
    focus:outline-none 
    transition 
    ease-in-out 
    duration-300
  `,
    size === 'xs'
      ? tw`px-3 py-1.5 text-xs`
      : size === 'sm'
      ? tw`px-4 py-1.5 text-sm`
      : size === 'lg'
      ? tw`px-7 py-3 text-lg`
      : size === 'xl'
      ? tw`px-8 py-4 text-xl`
      : tw`px-6 py-2 text-base`,
    inlineFlex && tw`inline-flex`,
    pill === true && tw`rounded-full`,
    disabled === true && tw`cursor-not-allowed opacity-80`,
    wide && tw`px-6`,
    full && tw`w-full`,
    outlined === true &&
      variant === 'dark' &&
      tw`text-dark-800 hover:text-white border-2  border-dark-800 hover:bg-dark-900 focus:ring-4 focus:outline-none focus:ring-dark-300`,
    outlined === true &&
      variant === 'warning' &&
      tw`text-warning-600 hover:text-white border-2 border-warning-500 hover:bg-warning-600 focus:ring-4 focus:outline-none focus:ring-dark-300`,
    outlined === true &&
      variant === 'pending' &&
      tw`text-pending-600 hover:text-white border-2 border-pending-600 hover:bg-pending-700 focus:ring-4 focus:outline-none focus:ring-pending-300`,
    outlined === true &&
      variant === 'success' &&
      tw`text-success-600 hover:text-white border-2 border-success-500 hover:bg-success-600 focus:ring-4 focus:outline-none focus:ring-success-300`,
    outlined === true &&
      variant === 'danger' &&
      tw`text-danger-600 hover:text-white border-2 border-danger-500 hover:bg-danger-600 focus:ring-4 focus:outline-none focus:ring-danger-300`,
    outlined === true &&
      variant === 'info' &&
      tw`text-info-500 hover:text-white border-2 border-info-500 hover:bg-info-600 focus:ring-4 focus:outline-none focus:ring-info-300`,
    outlined == true &&
      variant === 'secondary' &&
      tw`text-secondary-400 hover:text-white border-2 border-secondary-300 hover:bg-secondary-500 focus:ring-4 focus:outline-none focus:ring-secondary-300`,
    outlined == true &&
      variant === 'primary' &&
      tw`text-primary hover:text-white border-2 border-primary hover:bg-primary-400 focus:ring-4 focus:outline-none focus:ring-primary-200`,
    outlined === false &&
      variant === 'dark' &&
      tw`bg-dark-800 text-white hover:text-white border border-dark-800 hover:bg-dark-900 focus:ring-4 focus:outline-none focus:ring-dark-300`,
    outlined === false &&
      variant === 'warning' &&
      tw`bg-warning-500 text-gray-900 hover:text-gray-900 border border-warning-500 hover:bg-warning-600 focus:ring-4 focus:outline-none focus:ring-warning-300`,
    outlined === false &&
      variant === 'pending' &&
      tw`bg-pending-600 text-white hover:text-white border border-pending-600 hover:bg-pending-700 focus:ring-4 focus:outline-none focus:ring-pending-300`,
    outlined === false &&
      variant === 'success' &&
      tw`bg-success-500  text-white hover:text-white border border-success-500 hover:bg-success-600 focus:ring-4 focus:outline-none focus:ring-success-300`,
    outlined === false &&
      variant === 'danger' &&
      tw`bg-danger-500 text-white hover:text-white border border-danger-500 hover:bg-danger-600 focus:ring-4 focus:outline-none focus:ring-danger-300`,
    outlined === false &&
      variant === 'info' &&
      tw`bg-info-500  text-white hover:text-white border border-info-500 hover:bg-info-600 focus:ring-4 focus:outline-none focus:ring-info-300`,
    outlined == false &&
      variant === 'secondary' &&
      tw`bg-secondary-400 text-gray-900 hover:text-gray-900 border border-secondary-300 hover:bg-secondary-500 focus:ring-4 focus:outline-none focus:ring-secondary-300`,
    outlined == false &&
      variant === 'primary' &&
      tw`bg-primary text-white hover:text-white border border-primary hover:bg-primary-400 focus:ring-4 focus:outline-none focus:ring-primary-200`,
    outlined == false &&
      variant === 'default' &&
      tw`bg-white text-gray-800 hover:text-gray-800 border border-transparent hover:bg-white focus:ring-4 focus:outline-none focus:ring-gray-200`,
    outlined == true &&
      variant === 'default' &&
      tw`text-gray-800 hover:text-white border-2  border-gray-800 hover:bg-gray-900 focus:ring-4 focus:outline-none focus:ring-gray-300`,
  ]
);
export default Button;
