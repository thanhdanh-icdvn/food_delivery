import Head from 'next/head';
import React from 'react';

const Meta = ({
  title,
  keywords,
  description,
  ogTitle,
  ogType,
  ogUrl,
  ogImage,
  ogLocale = 'vi_VN',
  fbAppId,
  twitterCardType = 'summary_large_image',
}: MetaProps) => {
  return (
    <Head>
      <title>{title}</title>
      <meta name='viewport' content='width=device-width, initial-scale=1' />
      <meta name='keywords' content={keywords} />
      <meta name='description' content={description} />
      <meta property='og:title' content={ogTitle} />
      <meta property='og:type' content={ogType} />
      <meta property='og:url' content={ogUrl} />
      <meta property='og:image' content={ogImage} />
      <meta property='og:site_name' content={ogImage} />
      <meta property='og:locale' content={ogLocale} />
      <meta charSet='utf-8' />
      <meta name='twitter:card' content={twitterCardType} />
      {fbAppId && <meta property='fb.app_id' content={fbAppId || ''} />}
      <link rel='icon' href='/favicon.ico'></link>
    </Head>
  );
};

export default Meta;
