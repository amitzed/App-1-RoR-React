import React, { Component } from 'react';
import { Container, Header, Segment, Button, Icon, Dimmer, Loader, Divider, } from 'semantic-ui-react';


class Home extends Component {
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

        <Header as='h2' icon textAlign='center' color='blue'>
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

            <Header color="blue" as='h2'> {super_car.title} </Header>

            {super_car.description && <em><p id="desc"> {super_car.description} </p></em>}

            {super_car.images &&
              <Segment.Group>

                {super_car.images.map((image, i) => <Segment id='imgBtn' key={i}><Button basic fluid size='big' color='red' href={image.description} target="_blank">View an Image</Button></Segment>)}

              </Segment.Group>
            }
            {super_car.manufacturer && <p><strong>Manufacturer:&nbsp;</strong> {super_car.manufacturer} </p>}
            {super_car.production && <p><strong>Production:&nbsp;</strong> {super_car.production} </p>}
            {super_car.assembly && <p><strong>Assembly:&nbsp;</strong> {super_car.assembly} </p>}
            {super_car.layout && <p><strong>Layout:&nbsp;</strong> {super_car.layout} </p>}
            {super_car.engine && <p><strong>Engine:&nbsp;</strong> {super_car.engine} </p>}
            {super_car.horsepower && <p><strong>Horsepower:&nbsp;</strong> {super_car.horsepower} </p>}
            {super_car.predecessor && <p><strong>Predecessor:&nbsp;</strong> {super_car.predecessor} </p>}

            {super_car.source && <Button basic size='large' color='red' href={super_car.source} target="_blank">More Info</Button>}
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


export default Home;
