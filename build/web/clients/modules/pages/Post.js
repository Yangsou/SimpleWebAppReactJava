import React, {Component} from 'react';
import Navigation from '../components/Navigation';

class Post extends Component{
  constructor(props){
    super(props);
    this.state = {
      name: 'Wladek',
      age: '22'
    }
  };
  componentDidMount(){
    
  };
  render(){
    console.log(this.props);
    return(
      <div>
        <Navigation/>
        <h2>{this.state.name}</h2>
        <small>{this.state.age}</small>
      </div>
    );
  };
}

export default Post;
