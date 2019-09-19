import React, { Component } from 'react'
import{ Container, Button } from 'semantic-ui-react'
import { Link } from 'react-router-dom'

class NotFound extends Component {
  render() {
    return (
      <Container text textAlign='center'>
        <div id="notfound">
      		<div class="notfound">
      			<div class="notfound-404">
      				<h3>Oops! Page not found</h3>
      				<h1><span>4</span><span>0</span><span>4</span></h1>
      			</div>
      			<h2>we are sorry, but the page you requested was not found</h2>
            <Button as={Link} to='/'>Go Back To Homepage</Button>
      		</div>
      	</div>

      </Container>
    )
  }
}

export default NotFound;
