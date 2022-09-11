import React, { useState } from "react";
import { ethers } from "ethers";
import { Container, Row, Col } from "react-bootstrap";
import { Outlet, Link } from "react-router-dom";
import '../Styles/Home.css'
function Home() {
    const [data, setdata] = useState({
        address: "",
        Balance: null,
      });

      const btnhandler = () => {
  
        // Asking if metamask is already present or not
        if (window.ethereum) {
      
          // res[0] for fetching a first wallet
          window.ethereum
            .request({ method: "eth_requestAccounts" })
            .then((res) => accountChangeHandler(res[0]));
        } else {
          alert("Please install metamask extension and try again!!");
        }
      };

      const accountChangeHandler = (account) => {
        
        setdata({
          address: account,
        });

        console.log(data.address);
        // if(data.address === ""){

        //     alert("Please try again !!")
        // }
 
      
        
       
      };


      
  return (
    <>

    <Container fluid className = "Header">
        <h1>Welcome To Tech Wars</h1>
    </Container>

 
    <Container fluid>



  <div class="btn from-top" onClick ={btnhandler}><h3  className = "metamaskText">Connect To Metamask</h3></div>


</Container>

{
    data.address != "" ? (   <Container fluid className = "Header2">
    <Link to="/play">Playing Screen</Link>
    </Container>) : (<div></div>)
}
<Outlet />
    </>
  )
}

export default Home