import React, {Component} from 'react';
import Navigation from '../components/Navigation';

class About extends Component{
  constructor(props){
    super(props);
    this.state = {
      name: 'Wladek',
      age: '22',
      email: 'yangsoudev@gmail.com'
    }
  };
  componentDidMount(){

  };
  render(){
    return(
      <div>
        <Navigation/>
        <h3>{this.state.email} {this.state.name}</h3>
        <small>{this.state.age}</small>
        <h2>{this.state.name}</h2>
      </div>
    );
  };
}

export default About;
