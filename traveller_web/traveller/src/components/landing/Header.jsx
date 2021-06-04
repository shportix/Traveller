import React from "react";
import logo from "../../static/logo.png";
import "./header.css";
import facebook from "../../static/svg/facebook.svg";
import instagram from "../../static/svg/instagram.svg";
import telegram from "../../static/svg/telegram.svg";
import schoolmates from "../../static/svg/schoolmates.svg";

function Header(props) {

  return (
    <header>
      <img align="left" className="logo" src={logo} alt="Logo"/>
      <h1>Створи свою iсторiю!</h1>
      <div className="inLine">
        <div>
          <a href="#"><img style={{ width: "50px", marginRight: "20px", opacity: "0.8"}} src={instagram} alt="Instagram"/></a>
          <a href="#"><img style={{width: "50px", marginRight: "20px", opacity: "0.8"}} src={facebook} alt="Facebook"/></a>
          <a href="#"><img style={{width: "50px", marginRight: "20px", opacity: "0.8"}} src={telegram} alt="Telegram"/></a>
          <a href="#"><img style={{width: "30px", marginRight: "100px", opacity: "0.8"}} src={schoolmates} alt="Odnoklasniki"/></a>
        </div>
      </div>
    </header>
  );
}

export default Header;