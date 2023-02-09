'use strict';

module.exports = ({ strapi }) => ({
  index(ctx) {
    ctx.body = strapi
      .plugin('populate-deep-settings')
      .service('myService')
      .getWelcomeMessage();
  },
});
