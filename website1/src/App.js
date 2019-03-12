import React, { Component } from 'react';
import logo from './logo.svg';
import { Router, Route, Switch } from 'react-router-dom';
import createBrowserHistory from 'history/createBrowserHistory';
import CreateUser from './components/CreateUser';
import EditUser from './components/EditUser';
import UserList from './components/UserList';
import Navigation from './components/menu/navigation';
import './App.css';

const history = createBrowserHistory();

class App extends Component {  
  render() {
      return (
      <div>
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />          
        </header>
        <Router history={history}>
          <div>
            <Navigation/>                       
            <Switch>
              <Route path='/users/create' component={CreateUser} />
              <Route path='/users/edit/:id' component={EditUser} />
              <Route path='/' component={UserList} />
            </Switch>                                        
          </div>                         
        </Router>             
      </div>      
    );
  }
}

export default (App);
