/**
 * `FastFoodProps` is an object with the following properties:
 *
 * - `id`: a number or string
 * - `imgUrl`: a `StaticImageData` object or a string
 * - `imgAlt`: a string (optional)
 * - `title`: a string
 * - `description`: a string
 * @property {number | string} id - The id of the fast food item.
 * @property {StaticImageData | string} imgUrl - This is the image that will be displayed. It can be a
 * string or an object. If it's a string, it will be used as the src for the image. If it's an object,
 * it will be used to create a responsive image.
 * @property {string} imgAlt - The alt text for the image.
 * @property {string} title - The title of the fast food item.
 * @property {string} description - A string that describes the fast food item.
 */
type FastFoodProps = {
  id: number | string;
  imgUrl: StaticImageData | string;
  imgAlt?: string;
  title: string;
  description: string;
};
