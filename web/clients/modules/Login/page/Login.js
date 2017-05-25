/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import React, {Component} from 'react';
import {connect} from 'react-redux';
import {hashHistory} from 'react-router';

import {checkUserLogin, fetchUser, saveCookiesLogin} from '../../../action/homeActions';
import {getUser} from '../../../reducers/homeReducers';

//import { instanceOf } from 'prop-types';
//import { CookiesProvider, withCookies, Cookies } from 'react-cookie';
import Cookies from 'universal-cookie';
import cuid from 'cuid';

class Login extends Component {
    constructor(props){
        super(props);
        this.state = {
            user: {}
        }
//        this.handleLogin = this.handleLogin.bind(this);
    }
    handleLogin = () =>{
        console.log('click login');
        let email = this.refs.email.value;
        let password = this.refs.password.value;
        checkUserLogin(email, password).then(res => {
            let token = cuid();
            const cookies = new Cookies();

            if(typeof res.id !== 'undefined'){
                this.setState({user: res});
                saveCookiesLogin(token, res.id);
                this.props.dispatch(fetchUser(res));
                cookies.set('user', token, { path: '/' });
                this.props.history.push("/");
                
            }
        });
    }
    componentWillMount(){
        var cookies = new Cookies();
        if(typeof cookies.get('user') !== 'undefined'){
            hashHistory.push('/');
        }
    }
    componentDidMount(){
//        this.props.dispatch(checkUserLogin("user", "123"));
    }
    
    render(){
//        console.log('props', this.props);
        return(
                    <div className="app_container">
                        <div className="container padding container-main">
                            <div className="row form-login">
                                <h1 className="col-xs-12" style={{margin: '15px 0 30px 0'}}>Đăng nhập hoặc đăng ký</h1>
                                <div className="col-sm-6 clear-fix">
                                    <h3 className="login_title">Khách hàng đã đăng ký</h3>
                                    <p style={{marginBottom: '8px'}}>Email: </p>
                                    <input ref="email" className="input-default" type="text" placeholder="Email"/>

                                    <p style={{margin: '16px 0 8px'}}>Mật khẩu</p>
                                    <input ref="password" className="input-default" type="password" placeholder="Mật khẩu"/>
                                    <button onClick={this.handleLogin.bind(this)} className="btn-default btn-sm btn-login" style={{marginTop: '15px', display: 'block'}}>Đăng nhập</button>
                                </div>

                                <div className="col-sm-6">
                                    <h3 className="login_title">Khách hàng mới</h3>
                                    <p style={{marginBottom: '8px'}}>Bằng cách tạo tài khoản với cửa hàng của chúng tôi, bạn sẽ có thể di chuyển qua quá trình thanh toán nhanh hơn, lưu trữ nhiều địa chỉ giao hàng, xem và theo dõi các đơn đặt hàng trong tài khoản của bạn và hơn thế nữa.</p>
                                    <button className="btn-default btn-md btn-register">Đăng ký</button>
                                </div>
                            </div>
                        </div>
                    </div>
        );
    }
}
function mapStateToProps(state){
    return{
        user: getUser(state)
    };
}
Login.propTypes = {
//  cookies: instanceOf(Cookies).isRequired
};
export default connect(mapStateToProps)(Login);