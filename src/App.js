import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from './Components/Home.js'
import MainPage from './Components/MainPage.js';
function App() {
  return (
    <BrowserRouter>
    <div>
    <Routes>
      <Route path="/" element={<Home/>} />
      <Route path = "/play" element = {<MainPage/>} />
   
    </Routes>
    </div>
  </BrowserRouter>
  );
}

export default App;
