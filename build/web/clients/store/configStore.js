import * as redux from 'redux';
import thunk from 'redux-thunk';
import {showNavMobile} from '../reducers/navReducers';
import home from '../reducers/homeReducers';

export var configure = (initialState = {}) => {
  var reducer = redux.combineReducers({
    nav: showNavMobile,
    home
  });

  var store = redux.createStore(reducer, initialState, redux.compose(
    redux.applyMiddleware(thunk),
    window.devToolsExtension ? window.devToolsExtension() : f => f
  ));

  return store;
};
