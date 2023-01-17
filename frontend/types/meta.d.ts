/**
 * MetaProps is an object with a title, keywords, and description property, and all of those properties
 * are strings.
 * @property {string} title - The title of the page.
 * @property {string} keywords - comma separated list of keywords
 * @property {string} description - The description of the page.
 * @property {string} ogTitle - The title of your object as it should appear within the graph, e.g.,
 * "The Rock".
 * @property {string} ogType - The type of your object, e.g., "website". Depending on the type you
 * specify, other properties may also be required.
 * @property {string} ogUrl - The canonical URL of your object that will be used as its permanent ID in
 * the graph, e.g., http://www.imdb.com/title/tt0117500/.
 * @property {string} ogImage - The URL of the image that appears when someone shares the content to
 * Facebook.
 * @property {string} ogSiteName - The name of your site.
 * @property {string} ogLocale - The locale of the page.
 * @property {string} fbAppId - Facebook App ID
 * @property {string} twitterCardType - The type of Twitter card to use.
 */
type MetaProps = {
  title: string;
  keywords: string;
  description: string;
  ogTitle?: string;
  ogType?: string;
  ogUrl?: string;
  ogImage?: string;
  ogSiteName?: string;
  ogLocale?: string;
  fbAppId?: string;
  twitterCardType?: string;
};
