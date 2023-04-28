import tw, { styled } from 'twin.macro';

type ActiveButtonProps = {
  isActive?: boolean;
};
const OrangeLightButton = styled.button(
  ({ isActive = false }: ActiveButtonProps) => [
    tw`transition duration-300 ease-in-out rounded-md border border-transparent outline-none relative inline-flex justify-center items-center py-2 px-4 text-sm md:text-base  md:py-2.5 md:px-6 text-[#757575] bg-white`,
    isActive && tw`bg-tertiary-100 text-tertiary`,
  ]
);
export default OrangeLightButton;
