/* eslint-disable @typescript-eslint/no-explicit-any */
import React, { SVGProps } from 'react';
import Arrow from 'assets/icon/arrow.svg';
import Delivery from 'assets/icon/delivery.svg';
import ExclamationCircle from 'assets/icon/exclamation-circle.svg';
import ExclamationTriangle from 'assets/icon/exclamation-triangle.svg';
import Heart from 'assets/icon/heart.svg';
import Identification from 'assets/icon/identification.svg';
import Language from 'assets/icon/language.svg';
import Maps from 'assets/icon/maps.svg';
import Plus from 'assets/icon/plus.svg';
import PriceTag from 'assets/icon/price-tag.svg';
import Setting from 'assets/icon/setting.svg';
import ShieldExclamation from 'assets/icon/shield-exclamation.svg';
import ShoppingBag from 'assets/icon/shopping-bag.svg';
import ShoppingCart from 'assets/icon/shopping-cart.svg';
import Tray from 'assets/icon/tray.svg';
import UserCircle from 'assets/icon/user-circle.svg';
import Winner from 'assets/icon/winner.svg';
import ChevronLeft from 'assets/icon/chevron-left.svg';
import ChevronRight from 'assets/icon/chevron-right.svg';
import Trash from 'assets/icon/trash.svg';

type IconProps = SVGProps<SVGSVGElement> & {
  name: string;
  width?: number | string;
  height?: number | string;
};
const IconTypes: any = {
  arrow: Arrow,
  delivery: Delivery,
  exclamationCircle: ExclamationCircle,
  exclamationTriangle: ExclamationTriangle,
  heart: Heart,
  identification: Identification,
  language: Language,
  maps: Maps,
  plus: Plus,
  priceTag: PriceTag,
  setting: Setting,
  shieldExclamation: ShieldExclamation,
  shoppingBag: ShoppingBag,
  shoppingCart: ShoppingCart,
  tray: Tray,
  userCirlce: UserCircle,
  winner: Winner,
  chevronLeft: ChevronLeft,
  chevronRight: ChevronRight,
  trash: Trash,
};
const IconComponent = ({ name, width = '1em', height = '1em', ...otherProps }: IconProps) => {
  const Icon = IconTypes[name];
  if (Icon) {
    return <Icon width={width} height={height} {...otherProps} />;
  }
  return null;
};

export default IconComponent;
