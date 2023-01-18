/**
 * FoodProps is an object that has an id, title, description, featuredImageUrl, and place property,
 * where id is a number or string, title is a string, description is a string, featuredImageUrl is a
 * string or StaticImageData, and place is a string.
 * @property {number | string} id - The id of the food.
 * @property {string} title - The title of the food.
 * @property {string} description - The description of the food.
 * @property {string | StaticImageData} featuredImageUrl - This is the image that will be displayed in
 * the food card.
 * @property {string} place - The place where the food was eaten.
 */
type FoodProps = {
  id: number | string;
  title: string;
  description: string;
  featuredImageUrl: string | StaticImageData;
  place: string;
};
