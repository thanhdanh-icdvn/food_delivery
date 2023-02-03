import localFont from '@next/font/local';
export const roboto = localFont({
  src: [
    {
      path: '../../assets/fonts/Roboto/Roboto-Thin.woff',
      weight: '100',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-ThinItalic.woff',
      weight: '100',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-Light.woff',
      weight: '300',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-LightItalic.woff',
      weight: '300',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-Regular.woff',
      weight: '400',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-Italic.woff',
      weight: '400',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-Medium.woff',
      weight: '500',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-MediumItalic.woff',
      weight: '500',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-Bold.woff',
      weight: '700',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-BoldItalic.woff',
      weight: '700',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-Black.woff',
      weight: '900',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Roboto/Roboto-BlackItalic.woff',
      weight: '900',
      style: 'italic',
    },
  ],
  fallback: ['Arial', 'sans-serif'],
  display: 'swap',
  preload: true,
  variable: '--roboto-font',
});

export const inter = localFont({
  src: [
    {
      path: '../../assets/fonts/Inter/Inter-Thin.woff',
      weight: '100',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Thin.woff',
      weight: '100',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-ExtraLight.woff',
      weight: '200',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-ExtraLight.woff',
      weight: '200',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Light.woff',
      weight: '300',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Light.woff',
      weight: '300',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Regular.woff',
      weight: '400',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Regular.woff',
      weight: '400',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Medium.woff',
      weight: '500',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Medium.woff',
      weight: '500',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-SemiBold.woff',
      weight: '600',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-SemiBold.woff',
      weight: '600',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Bold.woff',
      weight: '700',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-ExtraBold.woff',
      weight: '700',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-ExtraBold.woff',
      weight: '800',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-ExtraBold.woff',
      weight: '800',
      style: 'italic',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Black.woff',
      weight: '900',
      style: 'normal',
    },
    {
      path: '../../assets/fonts/Inter/Inter-Black.woff',
      weight: '900',
      style: 'italic',
    },
  ],
  fallback: ['Arial', 'sans-serif'],
  display: 'swap',
  preload: true,
  variable: '--inter-font',
});
