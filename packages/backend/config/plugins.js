module.exports = ({ env }) => ({
  /* A plugin that allows you to populate deep relationships. */
  'strapi-plugin-populate-deep': {
    config: {
      defaultDepth: 6, // Default is 5
    },
  },
  /* Setting up the email provider. */
  email: {
    config: {
      provider: 'sendmail',
      /* For DKIM. */
      // providerOptions: {
      //   dkim: {
      //     privateKey: env("DKIM_KEY_PATH", "./dkim-public-food-delivery.pem"),
      //     keySelector: "", // the same as the one set in DNS txt record, use online dns lookup tools to be sure that is retreivable
      //   },
      // },
      settings: {
        defaultFrom: env('EMAIL_DEFAULT_FROM', ''),
        defaultReplyTo: env('EMAIL_DEFAULT_REPLY_TO', ''),
      },
    },
  },
});
