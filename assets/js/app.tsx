import * as React from 'react'
import * as ReactDOM from 'react-dom'
import { AppContainer } from 'react-hot-loader'
import { BrowserRouter } from 'react-router-dom'
import { routes } from './routes'

// This code starts up the React app when it runs in a browser. It sets up the routing
// configuration and injects the app into a DOM element.
ReactDOM.render(
  <BrowserRouter children={ routes } />,
  document.getElementById('react-app')
)
