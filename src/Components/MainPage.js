import React  ,{useState}from 'react'
import {useLocation} from 'react-router-dom';
import '../Styles/MainPage.css'
import {

  SiGamejolt
} from "react-icons/si";

const NavBar = () => (
  <div className='navbar'>
      <SiGamejolt className = "siIcon"/>
      <div className='navbar__item'>Start Game</div>
      <div className='navbar__item'>Profile</div>
            
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