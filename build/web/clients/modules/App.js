import React, {Component} from 'react';
import Footer from './components/Footer';
import {connect} from 'react-redux';
var actions = require('../action/homeActions');
var {getPosts, getUser, getOrder} = require('../reducers/homeReducers');
import {fetchUser, getUserByIdCookie, fetchOrder} from '../action/homeActions';

import Cookies from 'universal-cookie';

import Header from './components/Header';
import Navigation from './components/Navigation';

class App extends Component {
  componentWillMount(){
//    this.props.dispatch(actions.startFetchingPost());
    const cookies = new Cookies();
    var idCookie = cookies.get('user');
    
    if(typeof idCookie !== 'undefined'){
        this.props.dispatch(getUserByIdCookie(idCookie));
        setTimeout(() =>{
            var idUser = this.props.user.id;
            if(typeof idUser !== 'undefined'){
                this.props.dispatch(fetchOrder(idUser));
            }
        }, 100);
    }

  }
    render(){
//        console.log('user', this.props.user.id);
        return(
          <div>
              <Header userLogin={this.props.user}/>
              <Navigation/>
            {this.props.children}
            <Footer/>
          </div>
        );
  }
};
function mapStateToProps(state){
  return {
    data: getPosts(state),
    user: getUser(state),
    order: getOrder(state)
  };
}
export default connect(mapStateToProps)(App);
