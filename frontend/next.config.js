const withTwin = require('./withTwin');

/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    domains: ['mdbcdn.b-cdn.net'],
  },
  webpack: config => {
    config.resolve.fallback = {
      ...config.resolve.fallback, // if you miss it, all the other options in fallback, specified
      // by next.js will be dropped. Doesn't make much sense, but how it is
      module: false,
      fs: false, // the solution
    };
    return config;
  },
  reactStrictMode: true,
};

module.exports = withTwin(nextConfig);
