import React, {Component} from 'react';
import Navigation from '../../components/Navigation';

import {connect} from 'react-redux';
var {getPosts} = require('../../../reducers/homeReducers');

class Article extends Component{
  constructor(props){
    super(props);
  };
  pageLoading = () => (
    <div className="loading-wrap">
      <div className="loading">
        <svg className="circular" viewBox="25 25 50 50">
          <circle className="path" cx="50" cy="50" r="20" fill="none" strokeWidth="2" strokeMiterlimit="10"/>
        </svg>
      </div>
    </div>
  );
  render(){
    var data = this.props.data;
    var article = data.filter( (element) => (
      element.id == this.props.params.cuid
    ));
    console.log(article[0]);
    const Article = typeof article[0] != 'undefined'?(
          <div>
            <small>{article[0].author}</small>
            <h2>{article[0].name}</h2>
          </div>
        ):(this.pageLoading());
    return(
      <div>
        <Navigation/>
        {Article}
      </div>
    );
  };
}

function mapStateToProps(state){
  return{
    data: getPosts(state)
  }
}

export default connect(mapStateToProps)(Article);
