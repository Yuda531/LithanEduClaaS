const Footer = () => {
    return (
      <footer id="footer">
        <div className="container footer-bottom clearfix">
          <div className="row">
            <div className="col-lg-4 col-md-6 footer-contact">
              <h3>Know Your Neigborhood</h3>
              <p>
                Saritem Street <br />
                Kebon Jeruk, Andir District, Bandung City, West Java<br />
                Indonesia <br /><br />
                <strong>Phone:</strong> +62 832 9976 4453<br />
                <strong>Email:</strong> kyn@gmail.com<br />
              </p>
            </div>
  
            <div className="col-lg-4 col-md-6 footer-links">
              <h4>Useful Links</h4>
              <ul>
                <li><i className="bx bx-chevron-right"></i> <a href="/">Home</a></li>
                <li>
                  <i className="bx bx-chevron-right"></i> <a href="/about">About us</a>
                </li>
                <li>
                  <i className="bx bx-chevron-right"></i> <a href="/contact">Contact</a>
                </li>
                <li>
                  <i className="bx bx-chevron-right"></i>
                  <a href="/terms">Terms and Conditions Page</a>
                </li>
              </ul>
            </div>
  
            <div className="col-lg-4 col-md-6 footer-links">
              <h4>Our Social Networks</h4>
              <div className="social-links mt-3">
                <a href="#" className="linkedin"><i className="bx bxl-linkedin"></i></a>
                <a href="#" className="instagram"><i className="bx bxl-instagram"></i></a>
                <a href="#" className="twitter"><i className="bx bxl-twitter"></i></a>
                <a href="#" className="facebook"><i className="bx bxl-facebook"></i></a>
              </div>
            </div>
          </div>
          <div className="copyright text-center">
            &copy; {new Date().getFullYear()} <strong><span>KYN</span></strong>. All Rights Reserved | <strong>2023</strong>
          </div>
        </div>
      </footer>
    );
  }
  
  export default Footer;
  