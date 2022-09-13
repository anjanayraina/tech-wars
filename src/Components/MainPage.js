import React  ,{useState}from 'react'
import {useLocation} from 'react-router-dom';
import '../Styles/MainPage.css'


const NavBar = () => (
  <div className='navbar'>
      <div className='navbar__title navbar__item'>Tech Wars</div>
      <div className='navbar__item'>About Us</div>
      <div className='navbar__item'>Contact</div>
      <div className='navbar__item'>Help</div>        
  </div>
);
function MainPage() {

  const location = useLocation();
  let wallet = location.state.walletAddress;
  const [showBasic, setShowBasic] = useState(false);
  console.log(wallet);
  return (
   <div>
   <NavBar />
This is play
   </div>
  )
}

export default MainPage