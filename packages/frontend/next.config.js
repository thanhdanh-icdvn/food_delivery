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
};

module.exports = withTwin(nextConfig);
