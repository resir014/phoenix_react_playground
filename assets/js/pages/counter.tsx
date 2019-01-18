import * as React from 'react';
import { Link } from 'react-router-dom';

import Main from '../components/Main';

// Interface for the Counter component state
interface CounterState {
  currentCount: number;
}

const initialState = { currentCount: 0 };

export default class CounterPage extends React.Component<{}, CounterState> {
  constructor(props: {}) {
    super(props);

    // Set the initial state of the component in a constructor.
    this.state = initialState;
  }

  public render(): JSX.Element {
    return (
      <Main>
        <h1>Counter</h1>
        <p>
          The Counter is the simplest example of what you can do with a React
          component.
        </p>
        <p>
          Current count: <strong>{this.state.currentCount}</strong>
        </p>
        {/* We apply an onClick event to these buttons to their corresponding functions */}
        <button className="button" onClick={this.incrementCounter}>
          Increment counter
        </button>{' '}
        <button
          className="button button-outline"
          onClick={this.decrementCounter}
        >
          Decrement counter
        </button>{' '}
        <button className="button button-clear" onClick={this.resetCounter}>
          Reset counter
        </button>
        <br />
        <br />
        <p>
          <Link to="/">Back to home</Link>
        </p>
      </Main>
    );
  }

  private incrementCounter = () => {
    this.setState({
      currentCount: this.state.currentCount + 1
    });
  };

  private decrementCounter = () => {
    this.setState({
      currentCount: this.state.currentCount - 1
    });
  };

  private resetCounter = () => {
    this.setState({
      currentCount: 0
    });
  };
}
