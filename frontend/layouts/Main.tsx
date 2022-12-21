import Footer from './footer/Footer';
import Header from './header/Header';

export const Main = ({ children }: MainLayoutProps) => {
  return (
    <>
      <Header />
      <main>{children}</main>
      <Footer />
    </>
  );
};
