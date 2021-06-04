import React, { useState } from "react";
import { Redirect, useRouteMatch } from "react-router";
import logo from "../../static/logo.png";

function AmdinHeader(props) {
  const [redirect, setRedirect] = useState("");

  let { url } = useRouteMatch();

  return (
    <header id="secondHeader">
      <img align="left" className="logo" src={logo} alt="Logo"/>
      <div className="buttonHolder">
        <button onClick={() => setRedirect(<Redirect to={`${url}/offers`} />)}>Пропозиції</button>
        <button onClick={() => setRedirect(<Redirect to={`${url}/reviews`} />)}>Відгуки та скарги</button>
        <button onClick={() => setRedirect(<Redirect to={`${url}/support`} />)}>Служба підтримки</button>
        <button onClick={() => setRedirect(<Redirect to={`${url}/password`} />)}>Змінити пароль</button>
        <button onClick={() => setRedirect(<Redirect to={`/`} />)}>Вийти</button>
      </div>
      {redirect}
    </header>
  );
}

export default AmdinHeader;