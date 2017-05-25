import React, {Component} from 'react';
import {Link} from 'react-router';
import LinkUI from '../../components/LinkUI';

class ItemPost extends Component{
  render(){
    return(
      <div className="items padding padding-top-bottom col-xs-12 col-sm-10 col-md-8 col-lg-7">
        <div className="items_head">
          <LinkUI label={this.props.postName}
            href={this.props.labelLink}/>
          <div className="items_head_info">
            <p className="auth">By: <i>{this.props.userName}</i></p>
            <p className="date">{this.props.postDate}</p>
          </div>
        </div>
        <hr className="hr-clear"></hr>
        <div className="items_content">
          <p>Sed porttitor lectus nibh. Nulla quis lorem ut libero malesuada feugiat. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>
          <Link to={`article/${this.props.id}`}
            className="link-img-wrap" target="_blank">
            <img src={this.props.image} className="img-responsive" />
          </Link>
        </div>
      </div>
    );
  }
}

export default ItemPost;
