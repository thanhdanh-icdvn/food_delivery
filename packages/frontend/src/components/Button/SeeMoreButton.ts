import Button from '@/components/Button';
import { styled } from 'twin.macro';
import arrowSmall from '@/assets/icon/icon_arrow-small.svg?url';
export const SeeMoreButton = styled(Button)`
  &:after {
    content: '';
    display: inline-flex;
    margin-left: 6px;
    width: 1em;
    height: 1em;
    line-height: inherit;
    mask-image: url(${arrowSmall});
    mask-repeat: no-repeat;
    mask-size: contain;
    position: relative;
    background-color: white;
  }
`;
