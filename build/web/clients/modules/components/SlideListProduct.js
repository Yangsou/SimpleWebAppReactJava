/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import React, {Component} from 'react';
import {Link} from 'react-router';
import $ from 'jquery';
import cuid from 'cuid';

var countDisplay = 4;
var example = [
    {
        id: cuid()
    },
    {
        id: cuid()
    },
    {
        id: cuid()
    },
    {
        id: cuid()
    },
    {
        id: cuid()
    },
    {
        id: cuid()
    },
    {
        id: cuid()
    },
    {
        id: cuid()
    },
    {
        id: cuid()
    }
];
class SlideListProduct extends Component{
    constructor(props){
        super(props);
        this.state = {
            cuidSlider: null,
            sliderIndex: 0
        };
    }
    componentWillMount(){
        this.setState({cuidSlider: cuid()});
    }
    componentDidMount(){
        $(window).on('resize', () =>{
          this.setState({sliderIndex: 0});
          this.sliderControl();
        });
        this.sliderControl();
    }
    componentWillUnmount(){
        $(window).off('resize', this.sliderControl);
    }
    componentDidUpdate(){
        this.sliderControl();
    }
    handleClickNext(){
        var sliderContainerWidth = this.refs.sliders.offsetWidth;
        var sliderItemWidth = this.refs.slider_wrap.offsetWidth / countDisplay;
        var _sliderIndex = this.state.sliderIndex;
//        console.log('countDisplay', countDisplay);
//        console.log('sliderContainerWidth', sliderContainerWidth);
//        console.log('irm', this.refs.slider_wrap.offsetWidth);
//        console.log('sliderItemWidth', sliderItemWidth);
//        console.log('size', sliderContainerWidth / (sliderItemWidth * countDisplay));
        _sliderIndex++;
        if(_sliderIndex >= sliderContainerWidth / (sliderItemWidth * countDisplay))
            this.setState({sliderIndex: _sliderIndex - 1});
            else
        this.setState({sliderIndex: _sliderIndex});
        
    }
    handleClickPrev(){
        var _sliderIndex = this.state.sliderIndex;
        _sliderIndex--;
        if(_sliderIndex < 0) this.setState({sliderIndex: 0});
        else
        this.setState({sliderIndex: _sliderIndex});
    }
    sliderControl() {
        if(typeof this.props.arrayProduct !== 'undefined'){
          if(window.innerWidth < 768) countDisplay = 2;
          if(window.innerWidth >=  768) countDisplay = 3;
          if(window.innerWidth >= 992) countDisplay = 4;
          if(window.innerWidth >= 1200) countDisplay = 5;
          var sliderWrap = $('.slider-wrap'),
              sliderWrapWidth = sliderWrap.innerWidth(),
              sliderContainer = $('.sliders'),
              sliderItem = $('.slider'),
              sliderItemWidth = sliderWrapWidth / countDisplay,
              sliderContainerWidth = example.length * sliderItemWidth;
              sliderItem.css('width', sliderItemWidth),
              sliderContainer.css('width', sliderContainerWidth);
//              console.log('sliderWrapWidth---', sliderItemWidth);
              this.refs.sliders.style.transform = 'translateX(-' + this.state.sliderIndex * sliderWrapWidth + 'px)';
        }
    }
  render(){
//    console.log(this.props.arrayProduct);
    var arrayProduct = this.props.arrayProduct;
    return(
            
                <div className="col-xs-12 lists-product">
                {
                    typeof arrayProduct !== 'undefined' ? (
                        <div className="slider-wrap" ref="slider_wrap">
                          <div id={this.state.cuidSlider} className="sliders" ref="sliders">
                            {
                                arrayProduct.map( (item)=> {
                                            var priceDefault = parseInt(item.PriceDefault);
                                            var priceCurrent = parseInt(item.PriceCurrent);
                                            
                                            var perCent = (((priceDefault - priceCurrent) / priceDefault) * 100).toFixed(2);
                                            return(
                                            <div ref="slider" className="slider item-product item-product-border">
                                                <Link to={`watch/${item.IdProduct}`} className="slider_link item_link-img">
                                                  <div className="img-wrap">
                                                    <img src={`assets/images/${item.Image}`} className="slider_img img-responsive" alt="" />
                                                  </div>
                                                </Link>
                                                  <div className="slider_link_text">
                                                      <a href="#" className="item_link-text">{item.Name}</a>
                                                      <p className="price bold price-current">{item.PriceCurrent}<span className="promotion red m-t-8">{`${perCent}%`}</span></p>
                                                  </div>
                                            </div>)
                                        })
                            }




                          </div>

                          <div className="sliders_group-btn">
                            <button onClick={this.handleClickNext.bind(this)} data-id={this.state.cuidSlider} className="slider_btn slider_btn-next btn">
                                <span className="icon icon-arrow-right"></span>
                            </button>
                            <button onClick={this.handleClickPrev.bind(this)} data-id={this.state.cuidSlider} className="slider_btn slider_btn-prev btn">
                                <span className="icon icon-arrow-left"></span>
                            </button>
                          </div>
                        </div>) : ''
                }
                </div>
       );
  };
}

export default SlideListProduct;