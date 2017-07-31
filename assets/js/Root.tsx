import * as React from 'react'
import { Container } from 'reactstrap'

export default class Root extends React.Component<{}, {}> {
  public render(): JSX.Element {
    return (
      <div>
        <Container className="mt-4">
          <header className="header">
            <span className="logo"></span>
          </header>

          <main role="main">
            {this.props.children}
          </main>
        </Container>
      </div>
    )
  }
}
