# Phoenix+React Playground

> A sample Phoenix+React project that *actually works*.

This repo is originally made as a supplement to this guide (**TODO:** link pending). Feel free to use this as a base for your Phoenix+React project, however, everything would make sense if you read the original guide first, so probably go do that first. Don't worry, I'll wait.

The commit logs outline steps taken on the aforementioned guide, to make it easier to follow.

## What's in the ~~box~~ repo

This repo contains a [Phoenix](http://www.phoenixframework.org/) app hooked up to a React frontend, which includes a basic example of your typical React app.

## The stack

* Elixir (^1.5.0)
* Node.js (^8.2.1)
* npm (^5.3.0)
* Phoenix (^1.3.0)
* React (^15.6.1)
* TypeScript (^2.4.2)
* Webpack (^3.4.1)

## Getting started

To start your Phoenix server:

* Install dependencies with `mix deps.get` and `npm install`, in that order.
* Modify the database settings in each `config/` files according to your needs.
* Create and migrate your database with `mix ecto.setup` (this runs `mix ecto.create`, `mix ecto.migrate` and `mix run priv/repo/seeds.exs` in order)
* Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

---

Have fun! Feel free to [tweet at me](https://twitter.com/resir014) if you have any questions.
