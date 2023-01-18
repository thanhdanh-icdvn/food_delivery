const path = require('path');
const withTwin = require('./withTwin');

/** @type {import('next').NextConfig} */
/* A configuration for next.js. */
const nextConfig = {
  images: {
    domains: ['mdbcdn.b-cdn.net'],
    unoptimized: true,
  },
  // The sass path
  sassOptions: {
    includePaths: [path.join(__dirname, 'styles')],
  },
  webpack: config => {
    config.module.rules.push({
      test: /\.svg$/i,
      issuer: /\.[jt]sx?$/,
      use: ['@svgr/webpack'],
    });
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
};

module.exports = withTwin(nextConfig);
