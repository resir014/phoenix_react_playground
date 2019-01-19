# Phoenix+React Playground

> A sample Phoenix+React project that *actually works*.

This repo is originally made as a supplement to [this guide](https://resir014.github.io/blog/2017/08/09/a-phoenix-react-initial-setup-that-actually-works/). Feel free to use this as a base for your Phoenix+React project, however, everything would make sense if you read the original guide first, so probably go do that first. Don't worry, I'll wait.

## A quick note

Phoenix 1.4 ships with [Webpack](https://webpack.js.org/) by default, therefore making the setup much more straightforward than before. The long-overdue rewrite has been finished, and has also been made up-to-date following recent updates to Phoenix. The [sample repo](https://github.com/resir014/phoenix_react_playground) has also been updated.

## What's in the ~~box~~ repo

This repo contains a [Phoenix](http://www.phoenixframework.org/) app hooked up to a React frontend, which includes a basic example of your typical React app.

Bundling is done with [webpack 4](https://webpack.js.org/). The webpack team have done a great job to improve optimisation efforts as well as reducing the amount of configuration time required in version 4.

[Yarn](https://yarnpkg.com/en/) is used as our package manager. It features a robust lockfile which ensures your dependencies are identical across different devices. This is optional, but I recommend it for your own sanity.

Instead of plain JavaScript, we're going to use [TypeScript](https://www.typescriptlang.org). TypeScript is a superset of JavaScript which adds additional static typing, which is really helpful for [detecting bugs during compile time](https://blog.acolyer.org/2017/09/19/to-type-or-not-to-type-quantifying-detectable-bugs-in-javascript/).

## Requirements

* [Node.js](https://nodejs.org/en) (v8+)
* [Elixir](https://elixir-lang.org/install.html) (v1.6+)
* [Yarn](https://yarnpkg.com/en/docs/install) - optional. You can use `npm` if you want, but it's for your own sanity.

## Getting started

To install dependencies and configure your project:

* Install Elixir dependencies with `mix deps.get`.
* `cd` to the `assets/` directory and run `yarn` (or `npm install`) to install Node.js dependencies.
* Modify the database settings in each `config/` files according to your needs.
* Create and migrate your database with `mix ecto.setup` (this runs `mix ecto.create`, `mix ecto.migrate` and `mix run priv/repo/seeds.exs` in order)

To start your Phoenix server:

* Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check out the deployment guides provided by Phoenix](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

---

Have fun! Feel free to [tweet at me](https://twitter.com/resir014) if you have any questions.
