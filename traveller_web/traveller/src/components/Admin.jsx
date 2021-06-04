import React, {useState} from "react";
import "./admin/admin.css";
import AdminHeader from "./admin/adminHeader";
import { Switch, Route, useRouteMatch, Link } from "react-router-dom";
import Table from "./admin/table";

function Admin(props) {

  let { path, url } = useRouteMatch();

  return (
    <div className="body">
      <AdminHeader />

      <Switch>
        <Route path={`${path}/offers`}>
          <div id="center">
            <h1>Пропозиції</h1>
          </div>
          <div id="table">
          <Table
            columns={["№ пропозиції", "Компанія", "Категорія послуги", "Опис послуги", "Ціна"]}
            rows={[
              ["293472776", " ТОВ 'Ярославів вал'", "Готель", "Київський готель InterContinental, один з 600 готелів всесвітньої мережі InterContinental Hotels Group, також належить Леоніда Юрушева. У відкриття цього готелю, як і в Fairmont, бізнесмен вклав $ 200 млн. Управляє готелем їм старша дочка Юрушева, Анастасія. Розміщення в готелі коштує від 368 євро до 880 євро за ніч, в залежності від категорії номера. Розташований готель на вулиці Велика Житомирська, 2А в Києві.", "368 € - 880 €"],
              ["293472845", " ТОВ 'Компанія з розвитку готельного бізнесу'", "Готель", "Київський готель InterContinental, один з 600 готелів всесвітньої мережі InterContinental Hotels Group, також належить Леоніда Юрушева. У відкриття цього готелю, як і в Fairmont, бізнесмен вклав $ 200 млн. Управляє готелем їм старша дочка Юрушева, Анастасія. Розміщення в готелі коштує від 368 євро до 880 євро за ніч, в залежності від категорії номера. Розташований готель на вулиці Велика Житомирська, 2А в Києві.", "270 € - 12.000 €"],
              ["293477363", " ТОВ 'Ярославів вал'", "Готель", "Готель, який знаходиться на бульварі Тараса Шевченка в Києві, записаний на ТОВ 'Компанія з розвитку готельного бізнесу'. Відповідно до реєстру, компанія належить двоюрідним братам Олександру Роднянському, продюсеру і екс-власнику телеканалу '1+1' і бізнесменові Борису Фуксману. Бізнесмени побудували готель світового бренду в 2010 році за $ 150 млн. Вартість проживання в готелі стартує від 323 євро за ніч в стандартному номері.", "від 323 €"],
            ]}
          />
          </div>
        </Route>
        <Route path={`${path}/reviews`}>
          <div id="buttonHolder">
            <div id="want2die">
              <Link to="/admin/reviews"><button className="pushed">Відгуки</button></Link>
              <Link to="/admin/complains"><button>Скарги</button></Link>
            </div>
          </div>
          <div id="table">  
            <Table
                columns={["ID КОРИСТУВАЧА", "ВІДГУК ПРО (№ ПРОПОЗИЦІЇ)", "ВІДГУК", "ОЦІНКА ПОСЛУГИ"]}
                rows={[
                ["2087275872", "027562457", "Загалом сподобалося все, але наткнувся на недоброзичливу поведінку зі сторони обслуговуючого персоналу.", "7 / 10"]
              ]}
            />
          </div>
        </Route>
        <Route path={`${path}/complains`}>
          <div id="buttonHolder">
            <div id="want2die">
              <Link to="/admin/reviews"><button>Відгуки</button></Link>
              <Link to="/admin/complains"><button className="pushed">Скарги</button></Link>
            </div>
          </div>
          <div id="table2">  
            <Table
                columns={["№ скарги", "СКАРГА НА (№ користувача)", "СКАРГА", "СТАН"]}
                rows={[
                ["293472736", "334646785", "Скарга на спам в коментарях та нікнейм.", "ЗАБЛОКОВАНО КОРИСТУВАЧА"]
              ]}
            />
            <div id="panel">
              <button id="denied">Вiдхилити скаргу</button>
              <input placeholder="№ Скарги" />
              <button id="blocked">Заблокувати користувача</button>
            </div>
          </div>
        </Route>
        <Route path={`${path}/support`}>
          <div className="supportBaner">
            <h1>Опишiть свою проблему</h1>
          </div>
          <div className="input">
            <textarea />
          </div>
          <div id="submit">
            <button onClick={() => alert("Вашу жалобу надiсдано!")}>Надiслати</button>
          </div>
        </Route>
        <Route path={`${path}/password`}>
          <div className="changePassword">
            <div className="changePasswordBody">
              <h1>Змiнити пароль</h1>
              <hr id="hr"/>

              <input
                type="password"
                placeholder="Cтарий пароль..."
              />
              <hr id="hr"/>
              <input 
                type="password"
                placeholder="Новий пароль..."
              />
              <hr id="hr"/>
              <button className="submit">Пiдтвердити</button>
              <div className="links">
                <a href="#">Забули пароль?</a>
              </div>
            </div>
          </div>
        </Route>
      </Switch>
    </div>
  )
}

export default Admin;