import React, { Component } from 'react';
import logo from './logo.svg';
import { Router, Route, Switch } from 'react-router-dom';
import createBrowserHistory from 'history/createBrowserHistory';
import Navigation from './components/menu/nav';
import UserLists from './components/UserLists';
import './App.css';

const history = createBrowserHistory();

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />         
        </header>      
        <Router history={history}>
          <div>
            <Navigation/>
            <Switch>
              <Route path='/' component={UserLists} />
            </Switch>
          </div>
        </Router>
      </div>
    );
  }
}

export default App;
