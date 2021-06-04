import React from "react";
import "../components/admin/admin.css";

function Lost(props) {

  return (
    <div className="changePassword">
      <div className="changePasswordBody">
        <h1>Вiдновити пароль</h1>
        <hr id="hr"/>
        <input
          type="email"
          placeholder="Ваша почта..."
        />
        <hr id="hr"/>
        <p style={{textAlign: "left", width: "80%", marginLeft: "30px"}}>
          На вашу пошту буде надіслано повідомлення з новим паролем, який ви зможете змінити.
        </p>
        <button className="submit">Пiдтвердити</button>
      </div>
    </div>
  )
}

export default Lost;