import * as React from 'react';
import { RouteComponentProps, Link } from 'react-router-dom';
import Main from '../components/Main';

const HomePage: React.FC<RouteComponentProps> = () => (
  <Main>
    <section className="phx-hero">
      <h1>Welcome to Phoenix!</h1>
      <p>
        A productive web framework that
        <br />
        does not compromise speed and maintainability.
      </p>
      <p>
        <Link className="button" to="/counter">
          Counter example
        </Link>{' '}
        <Link className="button button-outline" to="/fetch-data">
          API example
        </Link>
      </p>
    </section>

    <section className="row">
      <article className="column">
        <h2>Resources</h2>
        <ul>
          <li>
            <a href="https://hexdocs.pm/phoenix/overview.html">
              Guides &amp; Docs
            </a>
          </li>
          <li>
            <a href="https://github.com/phoenixframework/phoenix">Source</a>
          </li>
          <li>
            <a href="https://github.com/phoenixframework/phoenix/blob/v1.4/CHANGELOG.md">
              v1.4 Changelog
            </a>
          </li>
        </ul>
      </article>
      <article className="column">
        <h2>Help</h2>
        <ul>
          <li>
            <a href="https://elixirforum.com/c/phoenix-forum">Forum</a>
          </li>
          <li>
            <a href="https://webchat.freenode.net/?channels=elixir-lang">
              #elixir-lang on Freenode IRC
            </a>
          </li>
          <li>
            <a href="https://twitter.com/elixirphoenix">
              Twitter @elixirphoenix
            </a>
          </li>
        </ul>
      </article>
    </section>
  </Main>
);

export default HomePage;
