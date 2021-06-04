import React, {useState, useEffect} from "react";
import Header from "./landing/Header"
import "./landing/landing.css";
import background from "../static/background.jpg";
import plane from "../static/plane.svg";
import jorney from "../static/jorney.svg";
import google from "../static/google.png";
import PopupMenu from "./PopupMenu";

let backgroundCounter = 0;

function Landing(props) {
  const backgrounds = [background, plane, jorney];
  const phrases = ["Вiтаємо вас у Traveller", "Вiдкривайте новi горизонти!", "Знайдiть себе у подорожi!"];
  const styles = ["landscape-text", "landscape-text-second", "landscape-text-third"];

  const [text, setText] = useState(styles[backgroundCounter])
  const [visible, setVisible] = useState(false);
  const [firstText, setFirstText] = useState("Вiтаємо вас у Traveller");
  const [secondText, setSecondText] = useState("Cаме тут збуваються мрії");
  const [currentBackground, setCurrentBackground] = useState(background);
  
  const changeBackground = (ev) => {
    if (ev.target.id === "left" && backgroundCounter > 0) {
      backgroundCounter -= 1;
      setCurrentBackground(backgrounds[backgroundCounter]);
      setFirstText(phrases[backgroundCounter]);
      setText(styles[backgroundCounter]);
    } else if (ev.target.id === "right" && backgroundCounter < 2) {
      backgroundCounter += 1;
      setCurrentBackground(backgrounds[backgroundCounter]);
      setFirstText(phrases[backgroundCounter]);
      setText(styles[backgroundCounter]);
    }
    backgroundCounter !== 0 ? setSecondText("") : setSecondText("Cаме тут збуваються мрії");
  }

  return (
    <>
      <Header />
      <div style={{backgroundImage: `url(${currentBackground})`}} className="main">
        <div 
          onClick={(event) => changeBackground(event)}
          id="right"
          className={ backgroundCounter === 2 ? "triangle-right-gray" : "triangle-right"}
        >

        </div>
        <div className={text}>
          <h1>{firstText}</h1>
          <h2 style={{color: "#c2c2c0"}}>{secondText}</h2>
        </div>
        <div
          onClick={(event) => changeBackground(event)}
          id="left"
          className={ backgroundCounter === 0 ? "triangle-left-gray" : "triangle-left"}
        >

        </div>
        <PopupMenu visible={visible} setVisible={setVisible}/>
      </div>
      <div className="center">
        <img id="google" alt="google play button" src={google}/>
        <button id="admin" onClick={() => visible ? setVisible(false) : setVisible(true)}>Я АДМIМIНIСТРАТОР</button>
      </div>
    </>
  );
}

export default Landing;