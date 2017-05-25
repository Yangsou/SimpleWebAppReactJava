import React, {Component} from 'react';
import {connect} from 'react-redux';
import {Link} from 'react-router';
import Cookies from 'universal-cookie';
import LinkUI from './LinkUI';

import {
    getOrder
} from '../../reducers/homeReducers';

class Header extends Component{
  constructor(props){
      super(props);
      this.handleClickLogout = this.handleClickLogout.bind(this);
  }
  handleClickLogout(e){
      e.preventDefault();
      var cookies = new Cookies();
//      var idUserLogin = cookies.get('user');
//      cookies.remove("user");
      cookies.remove('user', { path: '/' });
      location.reload();
  }
  render(){
    var userLogin = this.props.userLogin ? this.props.userLogin : {};
    var order = this.props.order;
    return(
            <div>
      <div className="header-top">
            <div className="container">
                <div className="row">
                    <div className="pull-left col-xs-6 col-sm-6 header_top_left">
                    <p className="text-white">Call us (84) 964 376134</p>
                    </div>
                    <div className="col-xs-6 col-sm-6 pull-right header_top_right">
                        <ul className="header_menu header_user">
                            <li className="header_menu_primary header_menu_item">
                                <a href="javascript:void(0)" className="primary"><span className="header_top_icon icon icon-account"></span>
                                    <span className="hidden-xs">
                                        { typeof userLogin.id !== 'undefined' ? userLogin.username : 'My account'}
                                    </span>
                                </a>
                                {
                                    typeof userLogin.id === 'undefined' ?
                                    (
                                            <ul className="header_menu_multi hidden">
                                                <li className="header_menu_item"><Link to="login">Đăng nhập</Link></li>
                                                <li className="header_menu_item"><a href="#">Đăng ký</a></li>
                                            </ul>
                                    ) :
                                    (
                                            <ul className="header_menu_multi hidden">
                                                <li className="header_menu_item"><a onClick={this.handleClickLogout} href="#">Đăng xuất</a></li>
                                                
                                            </ul>
                                    )
                            
                                }
                                
                            </li>
                        </ul>
                        <ul className="header_menu header_bag">
                            <li className="header_menu_primary header_menu_item">
                                <a href="#" className=""><span className="hidden-xs">My shopping bag</span>({order.length})<span className="header_top_icon icon icon-shopping-cart"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
        <header className="header container">
            <div className="row">
                <div className="col-sm-6 brand">
                    <Link to="/" className="">We Watch</Link>
                </div>
                <div className="col-sm-6 pull-right">
                    <div className="header_search pull-right">
                        <form action="SearchForm">
                            <input className="header_search_input input input-default" type="text" placeholder="search brand or model"/>
                            <button className="header_search_btn btn btn-search"><span className="icon icon-search"></span></button>
                        </form>
                    </div>
                </div>
            </div>
        </header>
        </div>
    );
  }
};
function mapStateToProps(state){
    return{
        order: getOrder(state)
    };
}
export default connect(mapStateToProps)(Header);
