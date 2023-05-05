/**
 * HeaderProps is an object with an optional className property of type string and a handleToggleDrawer
 * property of type function that returns nothing.
 * @property {string} className - This is a string that will be used to add a class to the header.
 * @property handleToggleDrawer - This is a function that will be passed down from the parent
 * component. It will be used to toggle the drawer.
 */
type HeaderProps = {
  className?: string;
  handleToggleDrawer: () => void;
  open?: boolean;
  cycleOpen?: () => void;
};
