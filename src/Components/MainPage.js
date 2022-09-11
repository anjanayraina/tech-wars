import React from 'react'
import {useLocation} from 'react-router-dom';
function MainPage() {

  const location = useLocation();
  let wallet = location.state.walletAddress;
  console.log(wallet);
  return (
    <div><h1>this is the playing screen : {}</h1></div>
  )
}

export default MainPage