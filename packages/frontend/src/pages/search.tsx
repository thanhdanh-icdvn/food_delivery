import Meta from '@/layouts/meta';
import { layouts } from './_app';

const Search = () => {
  return (
    <>
      <Meta
        title='Profile | Food Delivery App'
        keywords='Nextjs, strapi, Profile'
        description='Profile page of Food Delivery App'
      />
      <div>Search page</div>
    </>
  );
};
Search.layout = layouts.MainWithSidebar;
export default Search;
