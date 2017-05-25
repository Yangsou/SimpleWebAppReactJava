import React, {Component} from 'react';

class LinkUI extends Component{
  render(){
    var cln = this.props.className && this.props.className !== 'undefined' ? this.props.className : '';
    var styles = {
      color: this.props.color && this.props.color !== 'undefined' ? this.props.color : '#ececec'
    };
    return(
      <a href={this.props.href}
        className={cln + ' link-ui'}
        style={styles}>
      {this.props.label}</a>
    );
  };
};

export default LinkUI;
