import React from 'react';
import ServiceCard from '@/components/card/Service';

const Services = ({ serviceList }: { serviceList: ServiceProps[] }) => {
  return (
    <section id='services' className='section'>
      <div className='section__heading'>
        <h2 className='section__title'>Dịch vụ</h2>
        <div className='section__sub-title'>Phục vụ dịch vụ của chúng tôi đến bạn</div>
      </div>
      <div className='section__content section__content--services'>
        <div className='service__right flex flex-col w-full md:w-[calc(60%)]'>
          <ul className='service-list flex flex-row flex-wrap'>
            {serviceList?.map(service => {
              return (
                <li key={service.id} className='flex flex-col w-full md:w-[calc(50%-2rem)] m-2 md:m-4'>
                  <ServiceCard {...service} />
                </li>
              );
            })}
          </ul>
        </div>
      </div>
    </section>
  );
};

export default Services;
