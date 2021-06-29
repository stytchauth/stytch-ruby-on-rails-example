# stytch-rails-magic-links

This repo shows one way to integrate Stytch magic link logins into a Rails app.

## Add Magic Link URL
Visit https://stytch.com/dashboard/magic-link-urls to add
`http://localhost:3000/authenticate` as a valid sign-up and login URL.

## Development Setup

1. Install [Ruby 2.7.3](https://www.ruby-lang.org/en/downloads/).
2. Clone this repo.
3. Run `bin/setup` to install everything else and set up your Stytch API keys.
4. Run `bin/rails server` to start the app.

## License

The example application is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Stytch project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).
