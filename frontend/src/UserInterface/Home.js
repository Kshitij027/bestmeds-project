import React, { useState, useEffect, createRef } from 'react'
import { Grid, makeStyles } from '@material-ui/core'

import {
  postData,
  getData,
  ServerURL,
} from '../Administrator/FetchNodeServices'

import MenuItem from '@mui/material/MenuItem'
import Slider from 'react-slick'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'
import ArrowForwardIosIcon from '@mui/icons-material/ArrowForwardIos'
import ArrowBackIos from '@mui/icons-material/ArrowBackIos'
import Header from './Header'
import Footer from './Footer'
import CartButton from './CartButton'
import { useDispatch } from 'react-redux'
import { useLocation, useNavigate } from 'react-router-dom'
import useMediaQuery from '@mui/material/useMediaQuery'
import { useTheme } from '@mui/material/styles'
import ChevronRightIcon from '@mui/icons-material/ChevronRight'

const useStyles = makeStyles({
  root: {
    justifyContent: 'center',
    alignItems: 'center',
    display: 'flex',
    flexDirection: 'column',
  },
  subdiv: {
    padding: 15,
    marginTop: 20,
    boxShadow: 'rgba(99, 99, 99, 0.2) 0px 2px 8px 0px',
    borderRadius: 10,
    margin: 10,
    background: '#fff',
    width: 'auto',
  },
})

var bannersettings = {
  dots: false,
  arrows: false,
  infinite: true,
  speed: 1000,
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
}

var couponsettings = {
  dots: false,
  arrows: false,
  infinite: true,
  speed: 1000,
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
}

export default function Home() {
  const classes = useStyles()
  var categoriesSlider = createRef()
  var brandSlider = createRef()
  var deviceSlider = createRef()
  var theme = useTheme()
  // const matches = useMediaQuery(theme.breakpoints.down('md'))

  var settings = {
    dots: false,
    infinite: true,
    arrows: false,
    className: 'notes-slider',
    autoplaySpeed: 1500,
    cssEase: 'linear',
    speed: 1000,
    slidesToShow: 6,
    initialSlide: 0,
    responsive: [
      { breakpoint: 1250, settings: { slidesToShow: 5, slidesToScroll: 1 } },
      { breakpoint: 1024, settings: { slidesToShow: 4, slidesToScroll: 1 } },
      { breakpoint: 720, settings: { slidesToShow: 3, slidesToScroll: 1 } },
      { breakpoint: 600, settings: { slidesToShow: 2, slidesToScroll: 1 } },
      { breakpoint: 480, settings: { slidesToShow: 2, slidesToScroll: 1 } },
      { breakpoint: 320, settings: { slidesToShow: 2, slidesToScroll: 1 } },
    ],
  }

  var brandsettings = {
    dots: false,
    infinite: true,
    arrows: false,
    className: 'notes-slider',
    autoplaySpeed: 1500,
    cssEase: 'linear',
    speed: 1000,
    slidesToShow: 5,
    initialSlide: 0,
    responsive: [
      { breakpoint: 1250, settings: { slidesToShow: 5, slidesToScroll: 1 } },
      { breakpoint: 1024, settings: { slidesToShow: 4, slidesToScroll: 1 } },
      { breakpoint: 720, settings: { slidesToShow: 3, slidesToScroll: 1 } },
      { breakpoint: 600, settings: { slidesToShow: 2, slidesToScroll: 1 } },
      { breakpoint: 480, settings: { slidesToShow: 2, slidesToScroll: 1 } },
      { breakpoint: 320, settings: { slidesToShow: 2, slidesToScroll: 1 } },
    ],
  }

  var devicesettings = {
    dots: false,
    infinite: true,
    arrows: false,
    className: 'notes-slider',
    autoplay: true,
    autoplaySpeed: 1500,
    cssEase: 'linear',
    speed: 1000,
    slidesToShow: 4,
    initialSlide: 0,
    responsive: [
      { breakpoint: 1250, settings: { slidesToShow: 5, slidesToScroll: 1 } },
      { breakpoint: 1024, settings: { slidesToShow: 4, slidesToScroll: 1 } },
      { breakpoint: 720, settings: { slidesToShow: 3, slidesToScroll: 1 } },
      { breakpoint: 600, settings: { slidesToShow: 2, slidesToScroll: 1 } },
      { breakpoint: 480, settings: { slidesToShow: 2, slidesToScroll: 1 } },
      { breakpoint: 320, settings: { slidesToShow: 2, slidesToScroll: 1 } },
    ],
  }

  const [category, setCategory] = useState([])
  const [brand, setBrand] = useState([])
  const [banner, setBanner] = useState([])
  const [coupon, setCoupon] = useState([])
  const [subcategory, setSubCategory] = useState([])
  const [trending, setTrending] = useState([])
  const [device, setDevice] = useState([])
  const [refresh, setRefresh] = useState(false)

  var dispatch = useDispatch()
  var navigate = useNavigate()
  var location = useLocation()

  const fetchAllCategories = async () => {
    var result = await getData('categories/displayall')
    setCategory(result?.result || [])
  }

  const fetchAllBanners = async () => {
    var result = await getData('banner/displayallbanner')
    setBanner(result?.result || [])
  }

  const fetchAllCoupons = async () => {
    var result = await getData('coupon/displayallcoupon')
    setCoupon(result?.result || [])
  }

  const fetchAllBrands = async () => {
    var result = await postData('brands/displayallbrandsbystatus', {
      status: 'Popular',
    })
    setBrand(result?.result || [])
  }

  const fetchAllDevices = async () => {
    var result = await postData('products/displaydevicebystatus', {
      status: 'Trending',
      categoryid: 9,
    })
    setDevice(result?.result || [])
  }

  const fetchAllSubCategories = async (categoryid) => {
    var result = await postData(
      'subcategories/displaysubcategorybycategoryid',
      { categoryid: categoryid },
    )
    setSubCategory(result?.result || [])
  }

  const fetchAllTrending = async () => {
    var result = await postData('products/displayallproducttrending')
    setTrending(result?.data || [])
  }

  useEffect(() => {
    fetchAllCategories()
    fetchAllBanners()
    fetchAllBrands()
    fetchAllTrending()
    fetchAllDevices()
    fetchAllCoupons()
  }, [])

  const handleProductList = (category) => {
    navigate('/productlist', { state: { category: category } })
  }

  const showMainCategories = () => {
    if (!Array.isArray(category)) return null
    return category.map((item, index) => (
      <div key={item.categoryid || index}>
        <div
          className={classes.subdiv}
          onClick={() => handleProductList(item)}
        >
          <div
            style={{
              padding: 10,
              display: 'flex',
              justifyContent: 'center',
              cursor: 'pointer',
            }}
          >
            <img
              src={`${ServerURL}/images/${item.icon}`}
              style={{ width: 150, height: 150 }}
              alt={item.categoryname}
            />
          </div>
          <div style={{ fontFamily: 'Sarabun', fontSize: 16 }}>
            {item.categoryname}
          </div>
        </div>
      </div>
    ))
  }

  const handleQtyChange = (value, item) => {
    item['qty'] = value
    if (value > 0) {
      dispatch({ type: 'ADD_PRODUCT', payload: [item.productid, item] })
    } else {
      dispatch({ type: 'DEL_PRODUCT', payload: [item.productid] })
    }
    setRefresh(!refresh)
  }

  const showTrending = () => {
    if (!Array.isArray(trending)) return null
    return trending.map((item, index) => (
      <div key={item.productid || index}>
        <div className={classes.subdiv}>
          <div style={{ padding: 10 }}>
            <img
              onClick={() =>
                navigate('/productview', { state: { product: item } })
              }
              src={`${ServerURL}/images/${item.picture}`}
              style={{ width: 150, height: 150 }}
              alt={item.productname}
            />
          </div>
          <div
            style={{
              width: 240,
              fontFamily: 'Sarabun',
              fontWeight: 500,
              display: 'flex',
              justifyContent: 'left',
            }}
          >
            {item.productname}
          </div>
          <div
            style={{
              width: 240,
              fontFamily: 'Sarabun',
              fontWeight: 500,
              display: 'flex',
              justifyContent: 'left',
            }}
          >
            {item.offerprice > 0 ? (
              <div style={{ display: 'flex', flexDirection: 'column' }}>
                <div>
                  Price: &#8377; {item.price - item.offerprice}{' '}
                  <s style={{ color: '#ff4757' }}>&#8377; {item.price}</s>{' '}
                </div>
                <div style={{ color: '#2ed573' }}>
                  You Save:&#8377; {item.offerprice}{' '}
                </div>
              </div>
            ) : (
              <></>
            )}
          </div>
          <div
            style={{
              display: 'flex',
              alignItems: 'center',
              padding: 2,
              margin: 2,
            }}
          >
            <CartButton
              value={0}
              onChange={(value) => handleQtyChange(value, item)}
            />
          </div>
        </div>
      </div>
    ))
  }

  const handleBrandProductList = (brandItem) => {
    navigate('/productlist', { state: { brand: brandItem } })
  }

  const showMainBrands = () => {
    if (!Array.isArray(brand)) return null

    return brand.map((item, index) => (
      <div key={item.brandid || index}>
        <div className={classes.subdiv}>
          <div
            style={{
              padding: 10,
              display: 'flex',
              justifyContent: 'center',
              cursor: 'pointer',
            }}
            onClick={() => handleBrandProductList(item)}
          >
            <img
              src={`${ServerURL}/images/${item.icon}`}
              style={{ width: 150, height: 150 }}
              alt={item.brandname}
            />
          </div>
        </div>
      </div>
    ))
  }

  const showAllBanners = () => {
    if (!Array.isArray(banner)) return null
    return banner.map((item, index) => (
      <div key={item.bannerid || index}>
        <div style={{ padding: 10 }}>
          <img
            src={`${ServerURL}/images/${item.bannerpicture}`}
            width="100%"
            alt="banner"
          />
        </div>
      </div>
    ))
  }

  const showAllCoupons = () => {
    if (!Array.isArray(coupon)) return null
    return coupon.map((item, index) => (
      <div key={item.couponid || index}>
        <div style={{ padding: 10 }}>
          <img
            src={`${ServerURL}/images/${item.couponpicture}`}
            width="100%"
            alt="coupon"
          />
        </div>
      </div>
    ))
  }

  const showMainDevices = () => {
    if (!Array.isArray(device)) return null
    return device.map((item, index) => (
      <div key={item.productid || index}>
        <div className={classes.subdiv}>
          <div
            style={{
              padding: 10,
              display: 'flex',
              justifyContent: 'center',
            }}
          >
            <img
              src={`${ServerURL}/images/${item.picture}`}
              style={{ width: 180, height: 150 }}
              alt={item.productname}
            />
          </div>
          <div style={{ fontFamily: 'Sarabun', fontSize: 18 }}>
            {item.productname}
          </div>
        </div>
      </div>
    ))
  }

  const showSubCategories = () => {
    if (!Array.isArray(subcategory)) return null
    return subcategory.map((item) => (
      <MenuItem key={item.subcategoryid}>{item.subcategoryname}</MenuItem>
    ))
  }

  return (
    <div>
      <Header style={{ width: '100%' }} />

      <div className="center">
        <div style={{ width: '100%' }}>
          <Slider {...bannersettings}>{showAllBanners()}</Slider>
        </div>
      </div>

      <div className="center">
        <div style={{ width: '100%' }}>
          <Slider {...couponsettings}>{showAllCoupons()}</Slider>
        </div>
      </div>

      {/* Categories list */}
      <div>
        <div className="center pt1">
          <div
            style={{
              display: 'flex',
              flexDirection: 'row',
              justifyContent: 'space-between',
              width: '89%',
            }}
          >
            <div className="mainheading">Shop By Category</div>
            <div className="center sideshowtext">
              <div>Show All</div> <ChevronRightIcon />
            </div>
          </div>
        </div>
        <div className="center">
          <div className="center pb1 pt1">
            <ArrowBackIos
              onClick={() => categoriesSlider.current.slickPrev()}
              className="prevnext"
            />
          </div>
          <div style={{ width: '90%' }}>
            <Slider {...settings} ref={categoriesSlider}>
              {showMainCategories()}
            </Slider>
          </div>
          <div className="center pb1 pt1">
            <ArrowForwardIosIcon
              onClick={() => categoriesSlider.current.slickNext()}
              className="prevnext"
            />
          </div>
        </div>
      </div>

      {/* Brand list */}
      <div>
        <div className="center pt2">
          <div
            style={{
              display: 'flex',
              flexDirection: 'row',
              justifyContent: 'space-between',
              width: '89%',
            }}
          >
            <div className="mainheading">Popular Brands</div>
            <div className="center sideshowtext">
              <div>Show All</div> <ChevronRightIcon />
            </div>
          </div>
        </div>
        <div className="center">
          <div className="center pb1 pt1">
            <ArrowBackIos
              onClick={() => brandSlider.current.slickPrev()}
              className="prevnext"
            />
          </div>
          <div style={{ width: '90%' }}>
            <Slider {...brandsettings} ref={brandSlider}>
              {showMainBrands()}
            </Slider>
          </div>
          <div className="center pb1 pt1">
            <ArrowForwardIosIcon
              onClick={() => brandSlider.current.slickNext()}
              className="prevnext"
            />
          </div>
        </div>
      </div>

      {/* Trending Devices */}
      <div>
        <div className="center pt2">
          <div
            style={{
              display: 'flex',
              flexDirection: 'row',
              justifyContent: 'space-between',
              width: '89%',
            }}
          >
            <div className="mainheading">Trending Devices</div>
            <div className="center sideshowtext">
              <div>Show All</div> <ChevronRightIcon />
            </div>
          </div>
        </div>
        <div className="center">
          <div className="center pb1 pt1">
            <ArrowBackIos
              onClick={() => deviceSlider.current.slickPrev()}
              className="prevnext"
            />
          </div>
          <div style={{ width: '90%' }}>
            <Slider {...devicesettings} ref={deviceSlider}>
              {showMainDevices()}
            </Slider>
          </div>
          <div className="center pb1 pt1">
            <ArrowForwardIosIcon
              onClick={() => deviceSlider.current.slickNext()}
              className="prevnext"
            />
          </div>
        </div>
      </div>

      {/* Trending Products */}
      <div
        style={{
          fontSize: 32,
          fontFamily: 'Sarabun',
          fontWeight: 'bold',
          letterSpacing: 1,
          display: 'flex',
          justifyContent: 'center',
          alignItems: 'center',
          flexDirection: 'row',
          padding: 10,
        }}
      >
        Trending Products
      </div>

      <div
        style={{ display: 'flex', flexWrap: 'wrap', justifyContent: 'center' }}
      >
        {showTrending()}
      </div>

      <Footer />
    </div>
  )
}
