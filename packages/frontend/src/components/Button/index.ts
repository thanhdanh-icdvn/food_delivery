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
    tw`transition duration-300 ease-in-out rounded-md focus:outline-none`,
    size === 'xs'
      ? tw`px-3 py-1.5 text-xs`
      : size === 'sm'
      ? tw`px-4 py-1.5 text-sm`
      : size === 'lg'
      ? tw`py-3 text-lg px-7`
      : size === 'xl'
      ? tw`px-8 py-4 text-xl`
      : tw`px-6 py-2 text-base`,
    inlineFlex && tw`inline-flex`,
    pill === true && tw`rounded-full`,
    disabled === true && tw`cursor-not-allowed opacity-80`,
    wide && tw`px-6`,
    full && tw`w-full`,
    outlined == true &&
      variant === 'default' &&
      tw`border-2 text-slate-800 hover:text-slate-800 border-default-300 hover:bg-default-300 focus:ring-4 focus:outline-none focus:ring-default-200`,
    outlined === true &&
      variant === 'dark' &&
      tw`border-2 text-dark-800 hover:text-white border-dark-800 hover:bg-dark-900 focus:ring-4 focus:outline-none focus:ring-dark-300`,
    outlined === true &&
      variant === 'warning' &&
      tw`border-2 text-warning-600 hover:text-white border-warning-500 hover:bg-warning-600 focus:ring-4 focus:outline-none focus:ring-dark-300`,
    outlined === true &&
      variant === 'pending' &&
      tw`border-2 text-pending-600 hover:text-white border-pending-600 hover:bg-pending-700 focus:ring-4 focus:outline-none focus:ring-pending-300`,
    outlined === true &&
      variant === 'success' &&
      tw`border-2 text-success-600 hover:text-white border-success-500 hover:bg-success-600 focus:ring-4 focus:outline-none focus:ring-success-300`,
    outlined === true &&
      variant === 'danger' &&
      tw`border-2 text-danger-600 hover:text-white border-danger-500 hover:bg-danger-600 focus:ring-4 focus:outline-none focus:ring-danger-300`,
    outlined === true &&
      variant === 'info' &&
      tw`border-2 text-info-500 hover:text-white border-info-500 hover:bg-info-600 focus:ring-4 focus:outline-none focus:ring-info-300`,
    outlined == true &&
      variant === 'secondary' &&
      tw`border-2 text-secondary-400 hover:text-white border-secondary-300 hover:bg-secondary-500 focus:ring-4 focus:outline-none focus:ring-secondary-300`,
    outlined == true &&
      variant === 'primary' &&
      tw`border-2 text-primary-400 hover:text-gray-800 border-primary hover:bg-primary-400 focus:ring-4 focus:outline-none focus:ring-primary-200`,
    outlined === false &&
      variant === 'dark' &&
      tw`text-white border bg-dark-800 hover:text-white border-dark-800 hover:bg-dark-900 focus:ring-4 focus:outline-none focus:ring-dark-300`,
    outlined === false &&
      variant === 'warning' &&
      tw`text-gray-900 border bg-warning-500 hover:text-gray-900 border-warning-500 hover:bg-warning-600 focus:ring-4 focus:outline-none focus:ring-warning-300`,
    outlined === false &&
      variant === 'pending' &&
      tw`text-white border bg-pending-600 hover:text-white border-pending-600 hover:bg-pending-700 focus:ring-4 focus:outline-none focus:ring-pending-300`,
    outlined === false &&
      variant === 'success' &&
      tw`text-white border bg-success-500 hover:text-white border-success-500 hover:bg-success-600 focus:ring-4 focus:outline-none focus:ring-success-300`,
    outlined === false &&
      variant === 'danger' &&
      tw`text-white border bg-danger-500 hover:text-white border-danger-500 hover:bg-danger-600 focus:ring-4 focus:outline-none focus:ring-danger-300`,
    outlined === false &&
      variant === 'info' &&
      tw`text-white border bg-info-500 hover:text-white border-info-500 hover:bg-info-600 focus:ring-4 focus:outline-none focus:ring-info-300`,
    outlined == false &&
      variant === 'secondary' &&
      tw`text-gray-900 border bg-secondary-400 hover:text-gray-900 border-secondary-300 hover:bg-secondary-500 focus:ring-4 focus:outline-none focus:ring-secondary-300`,
    outlined == false &&
      variant === 'primary' &&
      tw`text-gray-800 border bg-primary hover:text-gray-800 border-primary hover:bg-primary-400 focus:ring-4 focus:outline-none focus:ring-primary-200`,
    outlined == false &&
      variant === 'default' &&
      tw`text-gray-800 border border-transparent bg-default-100 hover:text-gray-800 hover:bg-default-300 focus:ring-4 focus:outline-none focus:ring-default-200`,
  ]
);

export default Button;
