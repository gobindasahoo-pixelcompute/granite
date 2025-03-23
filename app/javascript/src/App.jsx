import React from "react";

import Dashboard from "components/Dashboard";
import { CreateTask, ShowTask, EditTask } from "components/Tasks";
import { Route, Switch, BrowserRouter as Router } from "react-router-dom";
import { ToastContainer } from "react-toastify";

const App = () => (
  <Router>
    <ToastContainer />
    <Switch>
      <Route exact component={ShowTask} path="/tasks/:slug/show" />
      <Route exact component={CreateTask} path="/tasks/create" />
      <Route exact component={Dashboard} path="/dashboard" />
      <Route exact component={EditTask} path="/tasks/:slug/edit" />
    </Switch>
  </Router>
);

export default App;
