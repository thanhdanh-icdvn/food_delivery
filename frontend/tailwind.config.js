/** @type {import('tailwindcss').Config} */

const colorPalette = {
  primary: {
    50: '#fffaeb',
    100: '#fff1c6',
    200: '#ffe088',
    300: '#ffd163',
    400: '#ffb320', //main
    500: '#f99007',
    600: '#dd6a02',
    700: '#b74806',
    800: '#94370c',
    900: '#7a2e0d',
    DEFAULT: '#ffd163',
  },
  secondary: {
    50: '#f7f7f7',
    100: '#e3e3e3',
    200: '#c8c8c8',
    300: '#a4a4a4',
    400: '#818181',
    500: '#666666',
    600: '#515151',
    700: '#404040', //main
    800: '#383838',
    900: '#313131',
    DEFAULT: '#404040',
  },
  tertiary: {
    50: '#feffe4',
    100: '#fdffb8',
    200: '#fbff74',
    300: '#fffd25',
    400: '#ffed00',
    500: '#ffd000',
    600: '#f09d00',
    700: '#be6c00',
    800: '#9c5200',
    900: '#884400', //main
    DEFAULT: '#884400',
  },
  info: {
    50: '#eefcfd',
    100: '#d3f7fa',
    200: '#adeef4',
    300: '#74dfec',
    400: '#34c8dc',
    500: '#17a2b8',
    600: '#1789a3',
    700: '#196e85',
    800: '#1d5b6d',
    900: '#1d4c5c',
  },
  danger: {
    50: '#fef2f2',
    100: '#fee6e5',
    200: '#fccfcf',
    300: '#f9a8a8',
    400: '#f57779',
    500: '#ec474f',
    600: '#dc3545',
    700: '#b7192c',
    800: '#99182c',
    900: '#83182c',
  },
  warning: {
    50: '#fff8eb',
    100: '#feeac7',
    200: '#fdd28a',
    300: '#fcbb4d',
    400: '#fbab24',
    500: '#f59e0b',
    600: '#d98b06',
    700: '#b47409',
    800: '#92610e',
    900: '#78510f',
  },
  pending: {
    50: '#fff3ed',
    100: '#ffe3d5',
    200: '#fec7aa',
    300: '#fda374',
    400: '#fb7d3c',
    500: '#f96416',
    600: '#ea580c',
    700: '#c24a0c',
    800: '#9a4112',
    900: '#7c3612',
  },
  dark: {
    50: '#f5f7f8',
    100: '#dfe5e8',
    200: '#bfc9d0',
    300: '#98a5b0',
    400: '#72828f',
    500: '#576875',
    600: '#45515c',
    700: '#39434c',
    800: '#31383e',
    900: '#212529',
  },
  success: {
    50: '#f1fcf2',
    100: '#dff9e4',
    200: '#c1f1cb',
    300: '#90e5a3',
    400: '#58d073',
    500: '#32b550',
    600: '#28a745',
    700: '#1f7634',
    800: '#1e5d2d',
    900: '#1a4d27',
  },
};
module.exports = {
  content: ['./pages/**/*.{js,ts,jsx,tsx}', './components/**/*.{js,ts,jsx,tsx}', './layouts/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: colorPalette,
      textColor: colorPalette,
      borderColor: colorPalette,
      background: colorPalette,
      ringWidth: {
        3: '3px',
      },
      boxShadow: {
        'mat-0': 'none',
        'mat-1':
          '0px 2px 1px -1px rgb(0 0 0 / 20%), 0px 1px 1px 0px rgb(0 0 0 / 14%), 0px 1px 3px 0px rgb(0 0 0 / 12%)',
        'mat-2':
          '0px 3px 1px -2px rgb(0 0 0 / 20%), 0px 2px 2px 0px rgb(0 0 0 / 14%), 0px 1px 5px 0px rgb(0 0 0 / 12%)',
        'mat-3':
          '0px 3px 3px -2px rgb(0 0 0 / 20%), 0px 3px 4px 0px rgb(0 0 0 / 14%), 0px 1px 8px 0px rgb(0 0 0 / 12%)',
      },
      borderRadius: {
        15: '15px',
      },
    },
  },
  plugins: [require('@tailwindcss/typography'), require('@tailwindcss/line-clamp')],
};
