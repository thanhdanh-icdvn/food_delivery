const path = require('path');
const withTwin = require('./withTwin');
require('@svgr/webpack');
/** @type {import('next').NextConfig} */
/* A configuration for next.js. */
const nextConfig = {
  images: {
    domains: ['localhost'],
    unoptimized: true,
  },
  // The sass path
  sassOptions: {
    includePaths: [path.join(__dirname, 'styles')],
  },
  webpack: config => {
    config.module.rules.push(
      {
        test: /\.svg$/i,
        issuer: /\.[jt]sx?$/,
        use: ['@svgr/webpack'],
        resourceQuery: { not: [/url/] },
      },
      {
        test: /\.svg$/i,
        type: 'asset',
        resourceQuery: /url/, // *.svg?url
      }
    );
    config.resolve.fallback = {
      ...config.resolve.fallback, // if you miss it, all the other options in fallback, specified
      // by next.js will be dropped. Doesn't make much sense, but how it is
      module: false,
      fs: false, // the solution
    };
    return config;
  },
  env: {
    NEXT_MAP_BOX_ACCESSTOKEN: process.env.NEXT_MAP_BOX_ACCESSTOKEN,
  },
  productionBrowserSourceMaps: true,
  swcMinify: true,
  reactStrictMode: true,
  output: 'standalone',
  transpilePackages: [
    '@adobe/react-spectrum',
    '@react-spectrum/actiongroup',
    '@react-spectrum/avatar',
    '@react-spectrum/badge',
    '@react-spectrum/breadcrumbs',
    '@react-spectrum/button',
    '@react-spectrum/buttongroup',
    '@react-spectrum/calendar',
    '@react-spectrum/checkbox',
    '@react-spectrum/combobox',
    '@react-spectrum/contextualhelp',
    '@react-spectrum/datepicker',
    '@react-spectrum/dialog',
    '@react-spectrum/divider',
    '@react-spectrum/dnd',
    '@react-spectrum/form',
    '@react-spectrum/icon',
    '@react-spectrum/illustratedmessage',
    '@react-spectrum/image',
    '@react-spectrum/label',
    '@react-spectrum/labeledvalue',
    '@react-spectrum/layout',
    '@react-spectrum/link',
    '@react-spectrum/list',
    '@react-spectrum/listbox',
    '@react-spectrum/menu',
    '@react-spectrum/meter',
    '@react-spectrum/numberfield',
    '@react-spectrum/overlays',
    '@react-spectrum/picker',
    '@react-spectrum/progress',
    '@react-spectrum/provider',
    '@react-spectrum/radio',
    '@react-spectrum/slider',
    '@react-spectrum/searchfield',
    '@react-spectrum/statuslight',
    '@react-spectrum/switch',
    '@react-spectrum/table',
    '@react-spectrum/tabs',
    '@react-spectrum/text',
    '@react-spectrum/textfield',
    '@react-spectrum/theme-dark',
    '@react-spectrum/theme-default',
    '@react-spectrum/theme-light',
    '@react-spectrum/tooltip',
    '@react-spectrum/view',
    '@react-spectrum/well',
    '@spectrum-icons/illustrations',
    '@spectrum-icons/ui',
    '@spectrum-icons/workflow',
  ],
};

module.exports = withTwin(nextConfig);
