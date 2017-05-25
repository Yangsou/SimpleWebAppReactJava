import React, {Component} from 'react';
import {connect} from 'react-redux';
import ItemPost from './ItemPost';
var actions = require('../../../action/homeActions');
// import cuid from 'cuid';

const dataExample = [
    {
        img: "./assets/images/banner_main_omega_06.jpg",
        href: '#'
    },
    {
        img: './assets/images/banner_main_highend.webp',
        href: '#'
    },
    {
        img: './assets/images/banner_main_md_2017.webp',
        href: '#'
    }
];
var slideIndex = 0;

class HomeSlider extends Component{
  constructor(props){
    super(props);
    this.state = {
      page: 0,
      slides: null
    };
  };
  
  componentDidMount(){
    var _slides = document.getElementsByClassName("slide_item");
    this.setState({slides: _slides});
    this.showSlide(_slides, slideIndex);
  }
    handleClickPrev(){
        this.showSlide(this.state.slides, slideIndex -=1);
    }
    handleClickNext(){
        this.showSlide(this.state.slides, slideIndex++);
    }
    showSlide(slides, n){
        var i;
        if (n >= slides.length - 1) {
            slideIndex = 0;
        }  
        if (n < 0) {
            slideIndex = slides.length - 1;
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }
        slides[slideIndex].style.display = "block";
    }
  render(){
//    console.log(this.props.arrayProduct);
    return(
      <div className="home-slider container">
        {
            dataExample.map((item, index) => (
                <div className="slide_item fade" key={index}>
                    <div className="slide_item_wrap"
                         style={{
                             backgroundImage: "url(" + item.img + ")"
                             }}>
                        <a href={item.href} className="slide_item_link-primary"></a>
                    </div>
                </div>
            ))
        }
            
            
            <div className="slide_item-fixed">
                <h4 className="title">Featured brands</h4>
                <a href="#">Citizen</a>
                <a href="#">Seiko</a>
                <a href="#">Fosil</a>
                <a href="#">Omega</a>
                <a href="#">Rolex</a>
                <a href="#">Tissot</a>
            </div>
            <div className="slide_group-btn">
                <button onClick={this.handleClickPrev.bind(this)}
                    className="btn slide_btn slide_btn-prev"><span className="icon icon-arrow-left"></span></button>
                <button onClick={this.handleClickNext.bind(this)}
                    className="btn slide_btn slide_btn-next"><span className="icon icon-arrow-right"></span></button>
            </div>
            
        </div>
    );
  }
}

export default connect()(HomeSlider);
