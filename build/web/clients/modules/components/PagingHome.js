import React, {Component} from 'react';
import {Link} from 'react-router';

class PagingHome extends Component{
  render(){
    return(
      <div className="col-xs-12 col-sm-10 col-md-8 col-lg-7 padding-top-bottom paging-wrap">
        <Link to="home/1">page 1</Link>
        <Link to="home/2">page 2</Link>
      </div>
    )
  };
};

export default PagingHome;
