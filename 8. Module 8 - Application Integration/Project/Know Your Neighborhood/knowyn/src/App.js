import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar";
import AboutUs from "./pages/AboutUs";
import ContactUs from "./pages/ContactUs";
import Homepage from './pages/Homepage';
import Login from "./pages/Login";
import NotFound from "./pages/NotFound";
import ProfilePage from "./pages/Page";
import Registration from "./pages/Registration";
import Terms from "./pages/TermsCondition";


function App() {
  return (
    <>
      <Router>
      <Navbar />
        <Routes>
          <Route path="/" element={<Homepage />} />
          <Route path="/about" element={<AboutUs/> } />
          <Route path="/contact" element={<ContactUs/> } />
          <Route path="/login" element={<Login />} />
          <Route path="/registration" element={<Registration />} />
          <Route path="/terms" element={<Terms />} />
          <Route path="/profile" element={<ProfilePage />} />
          <Route path='*' element={<NotFound />} /> 
        </Routes>
      </Router>
      
    </>

  );
}

export default App;
