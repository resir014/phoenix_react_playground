import * as React from 'react'
import { Link } from 'react-router-dom'
import { Button } from 'reactstrap'

interface CounterState {
  currentCount: number
}

const initialState = { currentCount: 0 }

export default class Counter extends React.Component<{}, CounterState> {
  constructor() {
    super()
    this.state = initialState
  }

  public render(): JSX.Element {
    return (
      <div>
        <h1>Counter</h1>
        <p>The Counter is the simplest example of what you can do with a React component.</p>
        <p>Current count: <strong>{this.state.currentCount}</strong></p>
        <Button color="primary" onClick={() => { this.incrementCounter() }}>Increment counter</Button>{' '}
        <Button color="secondary" onClick={() => { this.decrementCounter() }}>Decrement counter</Button>{' '}
        <Button color="secondary" onClick={() => { this.resetCounter() }}>Reset counter</Button>
        <br /><br />
        <p><Link to="/">Back to home</Link></p>
      </div>
    )
  }

  private incrementCounter() {
    this.setState({
      currentCount: this.state.currentCount + 1
    })
  }

  private decrementCounter() {
    this.setState({
      currentCount: this.state.currentCount - 1
    })
  }

  private resetCounter() {
    this.setState({
      currentCount: 0
    })
  }
}
