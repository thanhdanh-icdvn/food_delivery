import img1 from '@/assets/images/easy.webp';
import img2 from '@/assets/images/fast.webp';
import foodDiscountImg from '@/assets/images/img01.jpg';
import foodImage2 from '@/assets/images/pasta.webp';
import img3 from '@/assets/images/safety.webp';
import foodImage3 from '@/assets/images/spagettie.webp';
import foodImage from '@/assets/images/steak.webp';

import Banner from '@/components/Banner';
import AboutUs from '@/components/Section/AboutUs';
import ContactUs from '@/components/Section/ContactUs';
import DiscountList from '@/components/Section/DiscountList';
import FoodList from '@/components/Section/FoodList';
import Services from '@/components/Section/Services';
import WhyFastFood from '@/components/Section/WhyFastFood';
import Meta from '@/layouts/meta';

const serviceList: ServiceProps[] = [
  {
    id: 1,
    iconName: 'priceTag',
    title: 'Hệ thống chiết khấu',
    description:
      'Chúng tôi có hệ thống giảm giá thuận lợi cho khách hàng thường xuyên của chúng tôi',
  },
  {
    id: 2,
    iconName: 'delivery',
    title: 'Vận chuyển',
    description:
      'Giao hàng nhanh chóng và an toàn từ chúng tôi với lời giới thiệu đáng tin cậy',
  },
  {
    id: 3,
    iconName: 'tray',
    title: '500+ Nhà hàng ',
    description: 'Chúng tôi có hơn 500 nghìn nhà hàng hợp tác với chúng tôi',
  },
  {
    id: 4,
    iconName: 'winner',
    title: 'Chất lượng tốt nhất',
    description: 'Chúng tôi cung cấp dịch vụ tốt nhất và chất lượng cao',
  },
];

const foodList: FoodProps[] = [
  {
    id: 1,
    title:
      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa similique sit commodi totam. Ab consequatur quasi, ut nulla saepe dolores? Suscipit unde quas qui accusantium accusamus doloremque esse praesentium doloribus?',
    featuredImageUrl: foodImage,
    description:
      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum sequi, doloremque mollitia, deserunt officia earum neque accusamus, vel debitis numquam quibusdam nostrum perferendis sit eius autem ullam. Sint, recusandae ullam!',
    place: 'Hồ Chí Minh',
  },
  {
    id: 2,
    title: 'Steak',
    featuredImageUrl: foodImage2,
    description: 'Mô tả',
    place: 'Hồ Chí Minh',
  },
  {
    id: 3,
    title: 'Steak',
    featuredImageUrl: foodImage3,
    description: 'Mô tả',
    place: 'Hồ Chí Minh',
  },
  {
    id: 4,
    title: 'Steak',
    featuredImageUrl: foodImage,
    description: 'Mô tả',
    place: 'Hồ Chí Minh',
  },
  {
    id: 5,
    title: 'Steak',
    featuredImageUrl: foodImage2,
    description: 'Mô tả',
    place: 'Hồ Chí Minh',
  },
  {
    id: 6,
    title: 'Steak',
    featuredImageUrl: foodImage3,
    description: 'Mô tả',
    place: 'Hồ Chí Minh',
  },
];

const fastFoodList: FastFoodProps[] = [
  {
    id: 1,
    imgUrl: img1,
    imgAlt: 'FF là dễ dàng',
    title: 'Dễ dàng',
    description:
      'Chỉ với điện thoại thông minh của bạn, bạn đã có thể nhận được thực phẩm',
  },
  {
    id: 2,
    imgUrl: img2,
    imgAlt: 'FF là Nhanh',
    title: 'Nhanh',
    description:
      'Chúng tôi có thể vận chuyển thực phẩm đến bạn một cách nhanh chóng',
  },
  {
    id: 3,
    imgUrl: img3,
    imgAlt: 'FF là An toàn',
    title: 'An toàn',
    description: 'Tất cả thực phẩm luôn an toàn cho bạn',
  },
];

const discounts: FoodDiscountProps[] = [
  {
    id: 1,
    name: 'Test',
    discountPercentage: 20,
    image: foodDiscountImg,
    duration: 6,
  },
  {
    id: 2,
    name: 'Test 2',
    discountPercentage: 25,
    image: foodDiscountImg,
    duration: 6,
  },
  {
    id: 3,
    name: 'Test 3',
    discountPercentage: 15,
    image: foodDiscountImg,
    duration: 6,
  },
  {
    id: 4,
    name: 'Test 4',
    discountPercentage: 10,
    image: foodDiscountImg,
    duration: 6,
  },
];

export default function Home() {
  return (
    <>
      <Meta
        title='Home | Food Delivery App'
        keywords='Nextjs, strapi, home'
        description='Homepage of Food Delivery App'
      />
      <Banner />
      <DiscountList data={discounts} />
      <WhyFastFood fastFoodList={fastFoodList} />
      <FoodList foodList={foodList} />
      <Services serviceList={serviceList} />
      <AboutUs />
      <ContactUs />
    </>
  );
}
