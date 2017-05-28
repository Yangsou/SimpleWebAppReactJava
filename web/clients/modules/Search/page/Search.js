/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import React, {Component} from 'react';
import {Link} from 'react-router';
import {connect} from 'react-redux';

import {
    getWatchSearch
} from '../../../reducers/homeReducers';

import {getWatchesByName} from '../../../action/homeActions';

class Search extends Component{
    constructor(props){
        super(props);
        this.state = {
            listProductSearch: [],
            params: ''
        };
    }
    componentWillMount(){
        this.props.dispatch(getWatchesByName(this.props.params.cuid));
    }
    render(){
//        var listProduct = this.state.listProductSearch;
        var listProduct = this.props.watchSearch;
        return(
                <div className="container">
                    <h1 className="title">Kết quả tìm kiếm {this.props.params.cuid} {listProduct.length > 0 ? `(${listProduct.length})` : ''}</h1>
                    <div>
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
                    
                </div>    
            );
    };
}
function mapPropsToState(state){
    return{
        watchSearch: getWatchSearch(state)
    };
}
export default connect(mapPropsToState)(Search);