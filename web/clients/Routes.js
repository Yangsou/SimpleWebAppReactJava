import React, {Component} from 'react';
import {Router, Route, IndexRoute, hashHitory} from 'react-router';
// import * as Redux from 'react-redux';
import App from './modules/App';
import Home from './modules/home/page/Home';
import Post from './modules/article/page/Article';
import About from './modules/pages/About';
import Watch from './modules/Watch/page/Watch';
import Login from './modules/Login/page/Login';

class Routes extends Component{
  render(){
    return(
      <Router history={hashHitory}>
          <Route path="/" component={App}>
            <IndexRoute
              getComponent={(location, callback) => {
                require.ensure([], function (require) {
                  callback(null, require('./modules/home/page/Home').default);
                });
              }}
            />
            <Route
              path="home"
              getComponent={(location, callback) => {
                require.ensure([], function (require) {
                  callback(null, require('./modules/home/page/Home').default);
                });
              }}
            />
            <Route
              path="home/:cuid"
              getComponent={(location, callback) => {
                require.ensure([], function (require) {
                  callback(null, require('./modules/home/page/Home').default);
                });
              }}
            />
            <Route
              path="about"
              getComponent={(location, callback) => {
                require.ensure([], function (require) {
                  callback(null, require('./modules/pages/About').default);
                });
              }}
            />
            <Route
              path="watch/:cuid"
              getComponent={(location, callback) => {
                require.ensure([], function (require) {
                  callback(null, require('./modules/Watch/page/Watch').default);
                });
              }}
            />
            <Route
              path="login"
              getComponent={(location, callback) => {
                require.ensure([], function (require) {
                  callback(null, require('./modules/Login/page/Login').default);
                });
              }}
            />
            
          </Route>
        </Router>
    );
  }
}
// export default Redux.connect()(Routes);
export default Routes;

// require('./example.js');
