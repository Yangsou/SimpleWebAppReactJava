import { Router, Route, IndexRoute, browserHistory } from 'react-router';
// import App from './app/App';
// import NotFound from './app/errors/NotFound';
import React from 'react';
import ReactDOM from 'react-dom';
import Routes from './clients/Routes';
import {Provider} from 'react-redux';

var store = require('./clients/store/configStore').configure();
// require('./assets/css/main.css');
require('./sass/main.scss');

const app = document.getElementById('app');
ReactDOM.render(
  <Provider store={store}>
    <Routes/>
  </Provider>, app
);
