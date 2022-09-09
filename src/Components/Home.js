import React from 'react'
import { Container, Row, Col } from "react-bootstrap";
import '../Styles/Home.css'
function Home() {
  return (
    <>

    <Container fluid className = "Header">
        <h1>Welcome To Tech Wars</h1>
    </Container>

    <Container fluid>
<div class="buttons">
  <div class="container">

      <a  className="btn effect01" ><span>Connect Metamask</span></a>
  </div>
</div>
</Container>
    </>
  )
}

export default Home