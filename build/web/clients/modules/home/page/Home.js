import React, {Component} from 'react';
import Header from '../../components/Header';
import Navigation from '../../components/Navigation';
import HomeSlider from '../components/HomeSlider';
import {connect} from 'react-redux';
import {Link} from 'react-router';
import $ from 'jquery';
import cuid from 'cuid';
//var actions = require('../../../action/homeActions');
var {getPosts, getWatches} = require('../../../reducers/homeReducers');
import {fetchWatches, fetchTypeWatches, fetchWatchesByIdType, fetchWatchesSale} from '../../../action/homeActions';

import SlideListProduct from '../../components/SlideListProduct';
import DailyDeals from '../components/DailyDeals';
// import database from '../../database/database';
import Cookies from 'universal-cookie';

class Home extends Component{
  constructor(props){
    super(props);
    this.state = {
      page: 1,
      category: [],
      productByIdType: [],
      productSale: []
    };
    this.arrayProductById = ["1", "2"];
  };
  
    componentWillMount(){
        this.initCategory();
        this.props.dispatch(fetchWatches());
        this.initProductSale(15);
//        var cookies = new Cookies();
//        console.log('product cookies', cookies.get('user'));
    }
    initCategory(){
        return fetchTypeWatches().then(res => {
            // return res;
            this.setState({category: res});
        });
    }
    initProductByIdType(id){
           return fetchWatchesByIdType(id).then(res => {
                    return res;
            });
        
    };
    getProductByIdType = (id) =>{
        this.initProductByIdType(id).then( res => {
            this.setState({productByIdType: res});
        });
        return this.state.productByIdType;
    }
    initProductSale(limit){
        return fetchWatchesSale(limit).then(res => {
            this.setState({
                productSale: res
            });
        });
    }
  render(){
    var listCategory = this.state.category;
    
    return(
      <div className="app_container">
        <div className="container padding container-main">
          <HomeSlider/>
          <DailyDeals />
          <hr className="divider divider-silver m-t-15"/>
          <h1 className="title-primary m-t-30 m-b-15 text-center"><span>Xu thế hiện nay</span></h1>
          <SlideListProduct arrayProduct={this.state.productSale}/>
          {
            listCategory.map((item, index) => {
                var name = item.name;
                var id = item.id;
//                this.initProductByIdType(id);                                                                 
                var arrayProduct = this.props.watches.filter(a => a.IDType == id);
                return(
                    <div>
                        <h1 className="title-primary m-t-30 m-b-15 text-center"><span>{name} watches</span></h1>
                        <SlideListProduct arrayProduct={arrayProduct}/>
                    </div>   
                );
            })
          }
          
        </div>
      </div>
    );
  };
}
function mapStateToProps(state){
  return {
    watches: getWatches(state)
    
  };
}
export default connect(mapStateToProps)(Home);
