import React from 'react';
import img1 from '@/assets/images/easy.webp';
import img2 from '@/assets/images/fast.webp';
import img3 from '@/assets/images/safety.webp';
import foodImage from '@/assets/images/steak.webp';
import foodImage2 from '@/assets/images/pasta.webp';
import foodImage3 from '@/assets/images/spagettie.webp';

import Banner from '@/components/Banner';
import ContactUs from '@/components/Section/ContactUs';
import AboutUs from '@/components/Section/AboutUs';
import FoodList from '@/components/Section/FoodList';
import WhyFastFood from '@/components/Section/WhyFastFood';
import Services from '@/components/Section/Services';
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
    description: 'Giao hàng nhanh chóng và an toàn từ chúng tôi với lời giới thiệu đáng tin cậy',
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
    title: 'Steak',
    featuredImageUrl: foodImage,
    description: 'Mô tả',
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
    description: 'Chỉ với điện thoại thông minh của bạn, bạn đã có thể nhận được thực phẩm',
  },
  {
    id: 2,
    imgUrl: img2,
    imgAlt: 'FF là Nhanh',
    title: 'Nhanh',
    description: 'Chúng tôi có thể vận chuyển thực phẩm đến bạn một cách nhanh chóng',
  },
  {
    id: 3,
    imgUrl: img3,
    imgAlt: 'FF là An toàn',
    title: 'An toàn',
    description: 'Tất cả thực phẩm luôn an toàn cho bạn',
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
      <WhyFastFood fastFoodList={fastFoodList} />
      <FoodList foodList={foodList} />
      <Services serviceList={serviceList} />
      <AboutUs />
      <ContactUs />
    </>
  );
}
