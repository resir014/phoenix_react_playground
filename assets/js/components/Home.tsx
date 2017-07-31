import * as React from 'react'
import { Link } from 'react-router-dom'
import { RouteComponentProps } from 'react-router-dom'
import { Jumbotron, Button, Row, Col } from 'reactstrap'

export default class Home extends React.Component<{}, {}> {
  constructor(props) {
    super(props)
  }

  public render(): JSX.Element {
    return (
      <div>
        <Jumbotron>
          <h2>Welcome to Phoenix!</h2>
          <p className="lead">A productive web framework that<br />does not compromise speed and maintainability.</p>
        </Jumbotron>

        <Row className="marketing">
          <Col lg="4">
            <h4>Resources</h4>
            <ul>
              <li>
                <a href="http://phoenixframework.org/docs/overview">Guides</a>
              </li>
              <li>
                <a href="https://hexdocs.pm/phoenix">Docs</a>
              </li>
              <li>
                <a href="https://github.com/phoenixframework/phoenix">Source</a>
              </li>
            </ul>
          </Col>

          <Col lg="4">
            <h4>Examples</h4>
            <ul>
              <li>
                <Link to="/counter">Counter</Link>
              </li>
            </ul>
          </Col>

          <Col lg="4">
            <h4>Help</h4>
            <ul>
              <li>
                <a href="http://groups.google.com/group/phoenix-talk">Mailing list</a>
              </li>
              <li>
                <a href="http://webchat.freenode.net/?channels=elixir-lang">#elixir-lang on freenode IRC</a>
              </li>
              <li>
                <a href="https://twitter.com/elixirphoenix">@elixirphoenix</a>
              </li>
            </ul>
          </Col>
        </Row>
      </div>
    )
  }
}
