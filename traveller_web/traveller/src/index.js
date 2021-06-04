import React from 'react';
import ReactDOM from 'react-dom';
import Landing from "./components/Landing";
import Admin from "./components/Admin";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import Lost from './components/lost';
import Support from './components/Support';

ReactDOM.render(
  <React.StrictMode>
    <Router>
      <Switch>
      <Route path="/admin">
          <Admin />
        </Route>
        <Route path="/lost">
          <Lost />
        </Route>
        <Route path="/support">
          <Support />
        </Route>
        <Route path="/">
          <Landing />
        </Route>
      </Switch>
    </Router>
  </React.StrictMode>,
  document.getElementById('root')
);
