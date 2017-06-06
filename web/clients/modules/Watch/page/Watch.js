/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import React, {Component} from 'react';
import {connect} from 'react-redux';
//import $ from 'jquery';

import {
    getWatchesById,
    addOrderById,
    submitCmt,
    getCmt
} from '../../../action/homeActions';
import {
    getOrder,
    getUser
} from '../../../reducers/homeReducers';

import Cookies from 'universal-cookie';

class Watch extends Component{
    constructor(props){
        super(props);    
        this.state = {
            watch: {},
            tabValue: 'comment',
            cmtValue: '',
            cmtGroup: []
        };
        this.handleClickAddOrder = this.handleClickAddOrder.bind(this);
        this.handleSubmitCmt = this.handleSubmitCmt.bind(this);
        this.handleChangeCmt = this.handleChangeCmt.bind(this);
    }
    initProduct(id){
        return getWatchesById(id).then(res => {
            this.setState({watch: res});
            
        });
    };
    initComment(idWatch){
        return getCmt(idWatch).then(res => {
            this.setState({cmtGroup: res});
        });
    }
    handleMousemove(e){
        var posX = event.offsetX ? (event.offsetX) : event.pageX - this.offsetLeft;
        var posY = event.offsetY ? (event.offsetY) : event.pageY - this.offsetTop;
        this.detail_zoom.style.backgroundPosition = `${-posX*2.6}px ${-posY*2.8}px`;
        this.detail_zoom.style.display = 'block';
    }
    handleMouseLeave(e){
        this.detail_zoom.style.display = 'none';
    }
    handleClickTabButton = (val) => {
        this.setState({tabValue: val});
    }
    handleClickAddOrder(){
        var idWatch = this.state.watch.IdProduct;
//        var cookies = new Cookies();
        var idUser = this.props.user.id;
        if(idUser){
            this.props.dispatch(addOrderById(idUser, idWatch));    
        } else{
            this.props.history.push("login");
        }
        
    }
    handleChangeCmt(){
        this.setState({cmtValue: this.refs.inputCmt.value});
    }
    handleSubmitCmt(e){
        var cmt = this.state.cmtValue;
        var idWatch = this.state.watch.IdProduct;
        var time = Date.now();
        if(e.key === 'Enter'){
            if(cmt.trim() !== ''){
                var user = this.props.user;
                if(typeof user.id === 'undefined'){
                    this.props.history.push('login');
                } else{
                    submitCmt(time, cmt, idWatch, user.id, time).then( res => {
                        this.setState({cmtValue: ''});
                        this.initComment(idWatch);
                        this.refs.inputCmt.blur();
                    });
                    
                }
            }
        }
    }
    componentWillMount(){
        this.initProduct(this.props.params.cuid);
        this.initComment(this.props.params.cuid);
    }
    componentDidMount(){
    }
    render(){
//        console.log('order', this.props.order);
//        console.log('id', this.props.params.cuid);
        var watch = this.state.watch;
        var cmtGroup = this.state.cmtGroup;
        return(
            <div className="container">
                <div className="row">
                        <div className="col-sm-6 col-md-4 detail-images">
                          <div className="detail-img_wrap row">
                            {
                                typeof watch.IdProduct != 'undefined' ?
                                (
                                        <img onMouseLeave={this.handleMouseLeave.bind(this)} onMouseMove={this.handleMousemove.bind(this)} className="img-detail img-responsive pull-left" src={`assets/images/${watch.Image}`} alt=""/>
                                ) : ''
                            }
                            {
                                typeof watch.IdProduct != 'undefined' ?
                                (
                                    <div ref={node => {this.detail_zoom = node}} style={{
                                            backgroundImage: `url(./assets/images/${watch.Image})`
                                        }}
                                        className="detail-image_zoom"></div>
                                ): ''
                            }
                          </div>
                          <div className="detail-img_group-btn">
                            <div className="btn-wrap">
                              <button onClick={this.handleClickAddOrder}
                                style={{marginBottom: '30px'}}
                                className="btn-default btn-primary btn-sm">Thêm vào giỏ hàng</button>
                          </div>
                          </div>
                        </div>
                        <div className="col-sm-6 col-md-8 detail-info">
                          <h3>{watch.Name}</h3>
                          <div>
                            <div className="detail-info_text">
                              <p>Thương hiệu: <span className="blue">{watch.Brand}</span></p>
                              <p>Sku: 12345678</p>
                              <p>Giá thị trường: <span className="price">{`${watch.PriceDefault} Đ`}</span></p>
                              <p>Tại WeWatch: <span className="price-current big blue">{`${watch.PriceCurrent} Đ`}</span></p>
                              <p>Tiết kiệm: <span className="price-sale">{((watch.PriceDefault - watch.PriceCurrent)/watch.PriceDefault * 100).toFixed(2)}%</span></p>
                              <hr/>
                              <p style={{
                                    lineHeight: '1.45',
                                    letterSpacing: '0.035em'
                                }}
                                className="list-text"><i className="fa fa-circle" aria-hidden="true"></i>{watch.Detail}</p>
                            </div>
                            
                          </div>
                        </div>
                        <div className="clear-fix"></div>
                        
                        <div className="col-xs-12">
                            <div className="detail-info tabs-wrap tabs-wrap-secondary">
                              <ul className="tabs">
                                <li onClick={() => this.handleClickTabButton("detail")}
                                    data-tab="tabs-content-1" className={`tabs_btn col-xs-4 ${this.state.tabValue == 'detail' ? 'active' : ''}`}>Chi tiết sản phẩm</li>
                                <li onClick={() => this.handleClickTabButton("rate")}
                                    data-tab="tabs-content-2" className={`tabs_btn col-xs-4 ${this.state.tabValue == 'rate' ? 'active' : ''}`}>Đánh giá</li>
                                <li onClick={() => this.handleClickTabButton("comment")}
                                    data-tab="tabs-content-3" className={`tabs_btn col-xs-4 ${this.state.tabValue == 'comment' ? 'active' : ''}`}>Bình luận</li>
                              </ul>
                              <div className="tabs-content">
                                <div style={{display: this.state.tabValue == 'detail' ? 'block' : 'none'}}
                                    id="tabs-content-1" className="tabs-content_wrap">
                                    
                                    {
                                        typeof watch.IdProduct != 'undefined' ?
                                        (
                                            <table className="detail_tbl">
                                        <tr>
                                          <td>Đồng h</td>
                                          <td>{watch.Name}</td>
                                        </tr>
                                        <tr>
                                          <td>Brand</td>
                                          <td>{watch.Brand}</td>
                                        </tr>
                                        <tr>
                                          <td>Model number</td>
                                          <td>{watch.ModelNumber}</td>
                                        </tr>
                                        <tr>
                                          <td>Band color</td>
                                          <td>{watch.BandColor}</td>
                                        </tr>
                                        <tr>
                                          <td>Band length</td>
                                          <td>{watch.BandLength}</td>
                                        </tr>
                                        <tr>
                                          <td>Band material</td>
                                          <td>{watch.BandMaterial}</td>
                                        </tr>
                                        <tr>
                                          <td>Band width</td>
                                          <td>{watch.BandWidth}</td>
                                        </tr>
                                        <tr>
                                          <td>Calendar</td>
                                          <td>{watch.Calendar}</td>
                                        </tr>
                                        <tr>
                                          <td>Case Diameter</td>
                                          <td>{watch.CaseDiameter}</td>
                                        </tr>
                                        <tr>
                                          <td>Case material</td>
                                          <td>{watch.CaseMaterial}</td>
                                        </tr>
                                        <tr>
                                          <td>Case thickness</td>
                                          <td>{watch.CaseThickness}</td>
                                        </tr>
                                        <tr>
                                          <td>Clasp</td>
                                          <td>{watch.Clasp}</td>
                                        </tr>
                                        <tr>
                                          <td>Dial color</td>
                                          <td>{watch.DialColor}</td>
                                        </tr>
                                        <tr>
                                          <td>Dial Window Material Type</td>
                                          <td>{watch.DialWindowMaterialType}</td>
                                        </tr>
                                        <tr>
                                          <td>Display Type</td>
                                          <td>{watch.DisplayType}</td>
                                        </tr>
                                        <tr>
                                          <td>Item shape</td>
                                          <td>{watch.ItemShape}</td>
                                        </tr>
                                        <tr>
                                          <td>Water Depth</td>
                                          <td>{watch.WaterDepth}</td>
                                        </tr>
                                    </table>
                                        ) : ''
                                    }
                                    
                                </div>
                                <div style={{display: this.state.tabValue == 'rate' ? 'block' : 'none'}} id="tabs-content-2" className="tabs-content_wrap">Chức năng đang phát triển ...</div>
                                <div style={{display: this.state.tabValue == 'comment' ? 'block' : 'none'}} id="tabs-content-3" className="tabs-content_wrap">
                                            <div className="detail_cmt_input">
                                                <div className="pull-left">
                                                    <img src="./assets/images/avatar06.png" className="detail_cmt_avatar" />
                                                </div>
                                                <div className="pull-right" style={{width: `calc(100% - 60px)`}}>
                                                    <input ref="inputCmt" className="input-default detail_cmt_cmt"
                                                        placeholder="write some thing......."
                                                        onKeyPress={this.handleSubmitCmt}
                                                        value={this.state.cmtValue}
                                                        onChange={this.handleChangeCmt}/>
                                                </div>
                                            </div>
                                            <div className="detail_cmt_container">
                                            {
                                                cmtGroup.map( (cmtGroup, index) => {
                                                    return (
                                                            <div className="m-t-15 pull-left detail_cmt_content" style={{clear: 'both', width: '100%'}}>
                                                                <div className="pull-left">
                                                                    <img src="./assets/images/avatar06.png" className="detail_cmt_avatar"/>
                                                                </div>
                                                                <div className="pull-right" style={{width: `calc(100% - 60px)`}}>
                                                                    <h4>{cmtGroup.username}</h4>
                                                                    <p className="detail_cmt_text">{cmtGroup.comment}</p>
                                                                </div>
                                                            </div>
                                                    )
                                                })
                                            }
                                                
                                            </div>
                                </div>
                              </div>
                            </div>
                          </div>
                    </div>
                </div>
        );
    };
};
function mapStatetoProps(state){
    return{
        order: getOrder(state),
        user: getUser(state)
    };
}
export default connect(mapStatetoProps)(Watch);