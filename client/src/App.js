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
    let {super_cars, super_car} = this.state
      return super_cars
      ? <Container text>
        <Header as='h2' icon textAlign='center' color='red'>
          <Icon name='car' circular />
          <Header.Content>
            Super Cars
          </Header.Content>
        </Header>
        <Divider hidden section />
        {super_cars && super_cars.length
          ? <Button.Group color='red' fluid widths={super_cars.length}>
            {Object.keys(super_cars).map((key) => {
              return <Button active={super_car && super_car.id === super_cars[key].id} fluid key={key} onClick={() => this.getSuperCar(super_cars[key].id)}>
              {super_cars[key].title}
            </Button>
            })}
          </Button.Group>
          : <Container textAlign='center'>No Super Cars Found.</Container>
        }
        <Divider section />

          {super_car &&
            <Container>
              <Header as='h2'>{super_car.title}</Header>
              {super_car.description && <p>{super_car.description}</p>}
              {super_car.ingredients &&
                <Segment.Group>
                  {super_car.ingredients.map((ingredient, i) => <Segment key={i}>{ingredient.description}</Segment>)}
                </Segment.Group>
              }
              {super_car.steps && <p>{super_car.steps}</p>}
              {super_car.source && <Button basic size='tiny' color='red' href={super_car.source}>Source</Button>}
            </Container>
          }
        </Container>
        : <Container text>
          <Dimmer active inverted>
            <Loader content='Loading' />
          </Dimmer>

      </Container>

  }
}


export default App;
