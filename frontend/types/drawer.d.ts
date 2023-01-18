/**
 * DrawerProps is an object with two optional properties, isShow and toggleShow.
 * @property {boolean} isShow - This is a boolean value that determines whether the drawer is visible
 * or not.
 * @property toggleShow - A function that toggles the drawer's visibility.
 */
type DrawerProps = {
  isShow?: boolean;
  toggleShow?: () => void;
};
