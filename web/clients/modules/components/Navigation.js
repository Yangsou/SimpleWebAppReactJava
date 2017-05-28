import React, {Component} from 'react';
import {connect} from 'react-redux';
import {Link, IndexLink} from 'react-router';
var actions = require('../../action/navActions');
var {getIsShowNav} = require('../../reducers/navReducers');

import {
    fetchTypeWatches,
    getWatchByType
} from '../../action/homeActions';

class Navigation extends Component{
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.state = {
      category: []
    };
  };
  handleClick(id) {
    this.props.dispatch(getWatchByType(id));
  };
  initCategory(){
        return fetchTypeWatches().then(res => {
            // return res;
            this.setState({category: res});
        });
  };
  componentWillMount(){
      this.initCategory();
  }
  
  render(){
    var category = this.state.category;
    // var navXsCln = this.props.isShowNav ? ' xs-active' : '';
    return(
            <div className="nav container">
            <ul className="nav_menu">
                <li className="nav_menu_item">
                    <Link to="/">Home<span className="line"></span></Link>
                </li>
                <li className="nav_menu_item">
                    <Link to="/">Watches<span className="line"></span></Link>
                    <div className="nav_sub">
                        {
                            category.length > 0 ? (
                                    <div className="">
                                        {
                                        category.map((item, index) => (
                                                <Link onClick={ () => {this.handleClick(item.id)} }
                                                    to={`category/${item.id}`}>{item.name}</Link>
                                                ))
                                        
                                        }
                                    </div>
                                ) : ''
                        }
                    </div>
                </li>
            </ul>
        </div>
    );
  }
}
function mapStateToProps(state){
  return {
    isShowNav: getIsShowNav(state)
  };
}
export default connect(mapStateToProps)(Navigation);
