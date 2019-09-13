import React, { Component } from 'react';
import { Container, Header, Segment, Button, Icon, Dimmer, Loader, Divider, } from 'semantic-ui-react';

class App extends Component {
  constructor() {
    super()
    this.state = {}
    this.getSuperCars = this.getSuperCars.bind(this)
    this.getSuperCar = this.getSuperCar.bind(this)
  }

  componentDidMount() {
    this.getSuperCars()
  }

  fetch(endpoint) {
    return window.fetch(endpoint)
    .then(res => res.json())
    .catch(error => console.log(error))
  }

  getSuperCars() {
    this.fetch('/api/super_cars')
    .then(super_cars => {
      if(super_cars.length) {
        this.setState( {super_cars: super_cars} )
        this.getSuperCar(super_cars[0].id)
      } else {
        this.setState( {super_cars: []} )
      }
    })
  }

  getSuperCar(id) {
    this.fetch(`/api/super_cars/${id}`)
    .then(super_car => this.setState( {super_car: super_car} ))
  }


  render() {
    return (
      <div className="App">
        <h1>Hi</h1>
      </div>
    );
  }
}


export default App;
