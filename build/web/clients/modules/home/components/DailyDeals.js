/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import React, {Component} from 'react';

class DailyDeals extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="row m-t-8">
                <div className="col-sm-4 col-md-3 hidden-xs">
                    <a href="#" className="pos-relate">
                        <img src="assets/images/citizen-banner.jpg" className="img-responsive"/>
                        <button className="btn btn-go-shop">Shop citizen</button>
                    </a>
                </div>
                <div className="col-sm-8 col-md-9">
                    <h2 className="daily-title m-t-15 m-b-15 text-center">Ưu đãi hàng ngày nổi bật</h2>
                    <div className="">
                        <div className="col-sm-4 item-product-border p-t-8 p-b-8">
                            <div className="item-product">
                                <a href="#" className="item_link-img">
                                    <img src="assets/images/citizen-1.jpg" className="img-responsive"/>
                                </a>
                                <a className="item_link-text" href="#"><span className="bold">Citizen</span> dolor sit amet, consectetur adipiscing elit.</a>
                                <h4 className="price m-t-8">$74.49 <span className="red">Save 48%</span></h4>
                            </div>
                        </div>
                        <div className="col-sm-4 item-product-border p-t-8 p-b-8">
                            <div className="item-product">
                                <a href="#" className="item_link-img">
                                    <img src="assets/images/citizen-2.jpg" className="img-responsive"/>
                                </a>
                                <a className="item_link-text" href="#"><span className="bold">Citizen</span> dolor sit amet, consectetur adipiscing elit.</a>
                                <h4 className="price m-t-8">$74.49 <span className="red">Save 48%</span></h4>
                            </div>
                        </div>
                        <div className="col-sm-4 item-product-border p-t-8 p-b-8">
                            <div className="item-product">
                                <a href="#" className="item_link-img">
                                    <img src="assets/images/citizen-3.jpg" className="img-responsive"/>
                                </a>
                                <a className="item_link-text" href="#"><span className="bold">Citizen</span> dolor sit amet, consectetur adipiscing elit.</a>
                                <h4 className="price m-t-8">$74.49 <span className="red">Save 48%</span></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default DailyDeals;