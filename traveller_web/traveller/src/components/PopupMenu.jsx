import React, {useState} from "react";
import "./popup.css";
import { Redirect } from "react-router-dom";

function PopupMenu(props) {
  const [redirect, setRedirect] = useState();
  const [login, setLogin] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState(false);

  const signIn = () => {
    if (login === "galej8005@gmail.com" && password === "08052002") {
      setRedirect(<Redirect to="/admin"/>)
    } else {
      setError(true);
    }
  }

  const errorText = error ? <p>Неправильно введено логін або пароль!</p> : "";

  const popup = props.visible ? (
    <div className="popup_holder">
      <div className="popup_body">
        <h1>Увiйти</h1>
        <h3>Вхід тiльки для адмiнiстрацiї</h3>
        <hr id="hr"/>

        <input 
          placeholder="Поштова адреса..."
          onChange={
            (ev) => setLogin(ev.target.value)
          }
          value={login}
        />
        <hr id="hr"/>
        <input 
          type="password"
          placeholder="Пароль..."
          onChange={
            (ev) => setPassword(ev.target.value)
          }
          value={password}
        />
        <hr id="hr"/>
        {errorText}
        <button onClick={() => signIn()} className="submit">Пiдтвердити</button>
        <div className="links">
          <a href="http://localhost:3000/support">Потрiбна допомога?</a>
          <a href="http://localhost:3000/lost">Забули пароль?</a>
        </div>
      </div>
      {redirect}
    </div>
  ) : "";

  return popup;
}

export default PopupMenu;