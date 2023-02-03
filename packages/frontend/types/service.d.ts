/**
 * `ServiceProps` is an object with a number or string `id`, a string `iconName`, a string `title`, and
 * a string `description`.
 * @property {number | string} id - The id of the service.
 * @property {string} iconName - The name of the icon to use.
 * @property {string} title - The title of the service.
 * @property {string} description - A short description of the service.
 */
type ServiceProps = {
  id: number | string;
  iconName: string;
  title: string;
  description: string;
};
