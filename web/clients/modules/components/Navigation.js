import React, {Component} from 'react';
import {connect} from 'react-redux';
import {Link, IndexLink} from 'react-router';
var actions = require('../../action/navActions');
var {getIsShowNav} = require('../../reducers/navReducers');

class Navigation extends Component{
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.handleOutsideClick = this.handleOutsideClick.bind(this);
    this.state = {
      isShowNav: false
    };
  };
  handleClick() {
    if(!this.state.isShowNav) {
      document.addEventListener('click', this.handleOutsideClick, false);
    } else {
      document.removeEventListener('click', this.handleOutsideClick, false);
    }
    this.setState({
      isShowNav: !this.state.isShowNav
    });
    // var {dispatch} = this.props;
    // dispatch(actions.toggleShowNav());
  };
  handleOutsideClick(e){
    this.handleClick();
  };
  render(){
    var navXsCln = this.state.isShowNav ? ' xs-active' : '';
    // var navXsCln = this.props.isShowNav ? ' xs-active' : '';
    return(
            <div className="nav container">
            <ul className="nav_menu">
                <li className="nav_menu_item">
                    <a href="#">Shop by brand<span className="line"></span></a>
                    <div className="nav_sub row">
                        <div className="col-sm-8 col-md-9">
                            content
                        </div>
                        <div className="col-sm-4 col-md-3">
                            imgage
                        </div>
                    </div>
                </li>
                <li className="nav_menu_item">
                    <a href="#">Shop by brand<span className="line"></span></a>
                    
                </li>
                <li className="nav_menu_item">
                    <a href="#">Shop by brand<span className="line"></span></a>
                    
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
