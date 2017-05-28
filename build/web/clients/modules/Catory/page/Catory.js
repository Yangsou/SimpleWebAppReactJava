/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import React, {Component} from 'react';
import {Link} from 'react-router';
import {connect} from 'react-redux';

import {fetchWatchesByIdType} from '../../../action/homeActions';

class Catory extends Component{
    constructor(props){
        super(props);
        this.state = {
            watchByCatory: []
        };
    }
    componentWillMount(){
//        this.props.dispatch(getWatchesByName(this.props.params.cuid));
        fetchWatchesByIdType(this.props.params.cuid).then(res => {
            this.setState({watchByCatory: res});
        });
    }
    render(){
//        var listProduct = this.state.listProductSearch;
        var listProduct = this.state.watchByCatory;
        return(
                <div className="container">
                        {
                            listProduct.length > 0 ? listProduct.map((item, index) => {
                                var priceDefault = parseInt(item.PriceDefault);
                                var priceCurrent = parseInt(item.PriceCurrent);

                                var perCent = (((priceDefault - priceCurrent) / priceDefault) * 100).toFixed(2);
                                return (
                                    <div ref="product" style={{minHeight: '370px'}}
                                        className="col-xs-6 col-md-4 col-md-3 item-product item-product-border">
                                        <Link to={`watch/${item.IdProduct}`} className="slider_link item_link-img">
                                          <div className="img-wrap">
                                            <img src={`assets/images/${item.Image}`} className="slider_img img-responsive" alt="" />
                                          </div>
                                        </Link>
                                        <div className="slider_link_text">
                                            <a href="#" className="item_link-text">{item.Name}</a>
                                            <p className="price bold price-current">{item.PriceCurrent}<span className="promotion red m-t-8">{`${perCent}%`}</span></p>
                                        </div>
                                    </div>
                                )
                            }) : (
                                        <div style={{minHeight: `calc(100vh - 400px)`}}>
                                                    no results
                                        </div>
                                    )
                        }
                    
                </div>    
            );
    };
}

export default connect()(Catory);