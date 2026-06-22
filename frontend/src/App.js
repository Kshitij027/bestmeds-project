import React from 'react'
import Categories from './Administrator/Categories';
import DisplayAllCategories from './Administrator/DisplayAllCategories';
import SubCategories from './Administrator/SubCategories';
import DisplayAllSubCategories from './Administrator/DisplayAllSubCategories';
import Brands from './Administrator/Brands';
import DisplayAllBrands from './Administrator/DisplayAllBrands';
import Products from './Administrator/Products';
import DisplayAllProducts from './Administrator/DisplayAllProducts';
import Adminlogin from './Administrator/Adminlogin';
import { BrowserRouter as Router, Routes, Route, Navigate } from "react-router-dom";
import AdminDashboard from './Administrator/AdminDashboard';
import DisplayProductImage from './Administrator/DisplayProductImage';
import Footer from './UserInterface/Footer';
import Header from './UserInterface/Header';
import Home from './UserInterface/Home';
import Banner from './UserInterface/Banner';
import CartButton from './UserInterface/CartButton';
import DisplayAllBanner from './UserInterface/DisplayAllBanner';
import SignIn from './UserInterface/SignIn';
import SignUp from './UserInterface/SignUp';
import Productview from './UserInterface/Productview';
import Showcart from './UserInterface/Showcart';
import ProductList from './UserInterface/ProductList';
import CartBanner from './Administrator/CartBanner';
import SideBar from './UserInterface/SideBar';
import Coupon from './UserInterface/Coupon';
import ShowCartReview from './UserInterface/ShowCartReview';
import CartReview from './UserInterface/CartReview';
import PaymentGateway from './UserInterface/PaymentGateway';
import UserAccount from './Account/UserAccount';

function App(props) {
  return (
    <div>
      <Router>
        <Routes>

          {/* 👇 DEFAULT ROUTE FIX - this removes the blank screen */}
          <Route path="/" element={<Home />} />

          {/* Admin Routes */}
          <Route path="/categories" element={<Categories />} />
          <Route path="/displayallcategories" element={<DisplayAllCategories />} />
          <Route path="/subcategories" element={<SubCategories />} />
          <Route path="/displayallsubcategories" element={<DisplayAllSubCategories />} />
          <Route path="/brands" element={<Brands />} />
          <Route path="/displayallbrands" element={<DisplayAllBrands />} />
          <Route path="/products" element={<Products />} />
          <Route path="/displayallproducts" element={<DisplayAllProducts />} />
          <Route path="/adminlogin" element={<Adminlogin />} />
          <Route path="/admindashboard" element={<AdminDashboard />} />
          <Route path="/displayproductimage" element={<DisplayProductImage />} />

          {/* User Interface */}
          <Route path="/footer" element={<Footer />} />
          <Route path="/header" element={<Header />} />
          <Route path="/home" element={<Home />} />
          <Route path="/banner" element={<Banner />} />
          <Route path="/displayallbanner" element={<DisplayAllBanner />} />
          <Route path="/cartbutton" element={<CartButton />} />
          <Route path="/signin" element={<SignIn />} />
          <Route path="/signup" element={<SignUp />} />
          <Route path="/productview" element={<Productview />} />
          <Route path="/showcart" element={<Showcart />} />
          <Route path="/productlist" element={<ProductList />} />
          <Route path="/cartbanner" element={<CartBanner />} />
          <Route path="/sidebar" element={<SideBar />} />
          <Route path="/coupon" element={<Coupon />} />
          <Route path="/showcartreview" element={<ShowCartReview />} />
          <Route path="/cartreview" element={<CartReview />} />
          <Route path="/paymentgateway" element={<PaymentGateway />} />
          <Route path="/useraccount/*" element={<UserAccount />} />

        </Routes>
      </Router>
    </div>
  );
}

export default App;
