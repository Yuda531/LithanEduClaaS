import React from "react";
import { useState } from "react";
import { SendAMessage } from "../service/Service";

const Contact = () => {
  const [message, setMessage] = useState("");

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log(message);
        SendAMessage(message);
    };

  return (
    <main id="main">
      <section id="contact" className="contact">
      <div className="container" data-aos="fade-up">
        <div className="section-title pt-5">
          <h2>Contact</h2>
          <p>If you have any queries you can message us</p>
        </div>

        <div className="row">
          <div className="col-lg-5 d-flex align-items-stretch">
            <div className="info">
              <div className="address">
                <i className="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>
                  Saritem Street, Kebon Jeruk, Andir District, Bandung City,
                  West Java
                </p>
              </div>

              <div className="email">
                <i className="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>kyn@gmail.com</p>
              </div>

              <div className="phone">
                <i className="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+62 832 9976 4453</p>
              </div>

              <iframe
                title="Google Maps"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.7759073797624!2d107.59310957429265!3d-6.917373267702043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e6179429e6c3%3A0x694b0bec75f1b7da!2sJl.%20Saritem%2C%20Kb.%20Jeruk%2C%20Kec.%20Andir%2C%20Kota%20Bandung%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1685497293017!5m2!1sid!2sid"
                frameBorder="0"
                style={{ border: 0, width: "100%", height: "290px" }}
                allowFullScreen
              ></iframe>
            </div>
          </div>

          <div className="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form  onSubmit={handleSubmit} className="email-form">                
              <div className="form-group">
                <label htmlFor="message">Message</label>
                <textarea
                  className="form-control"
                  name="message"
                  rows="10"
                  value={message}
                  onChange={(e) => setMessage(e.target.value)}
                  required
                ></textarea>
              </div>
              <div className="text-center">
                <button type="submit">Send Message</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    </main>
    
  );
};

export default Contact;
