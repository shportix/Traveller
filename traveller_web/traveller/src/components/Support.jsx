import React from "react";
import "../components/admin/admin.css";

function Support() {

  return (
    <>
      <div className="supportBaner">
        <h1>Опишiть свою проблему</h1>
      </div>
      <div className="input">
        <textarea />
      </div>
      <div id="submit">
        <button onClick={() => alert("Вашу жалобу надiсдано!")}>Надiслати</button>
      </div>
    </>
  );
}

export default Support;