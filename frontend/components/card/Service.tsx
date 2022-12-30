import React from 'react';
import IconComponent from '../icon/Icon';

const ServiceCard: React.FC<ServiceProps> = ({ iconName, title, description }: ServiceProps) => {
  return (
    <div className='service-card bg-white rounded-lg shadow-mat-1 p-4 flex flex-col flex-1'>
      <div className='service-card__top'>
        <IconComponent name={iconName} className='text-quaternary service-icon relative' />
      </div>
      <div className='service-card__bottom flex flex-col mt-[10px] gap-3'>
        <div className='service-card__title font-bold text-lg'>{title}</div>
        <div className='service-card__description text-sm'>{description}</div>
      </div>
    </div>
  );
};

export default ServiceCard;
