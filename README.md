# jekyll-netlify-redirects

**A Ruby gem for generating a Netlify redirects configuration from a Jekyll configuration.**

[![Gem](https://img.shields.io/gem/v/jekyll-netlify-redirects.svg?style=for-the-badge)](https://rubygems.org/gems/jekyll-netlify-redirects)
[![Downloads](https://img.shields.io/gem/dt/jekyll-netlify-redirects.svg?style=for-the-badge)](https://rubygems.org/gems/jekyll-netlify-redirects)

## Getting Started

Before installing and using jekyll-netlify-redirects, you'll want to familiarize yourself with [Jekyll](https://jekyllrb.com) (a fabulous static site generator written in [Ruby](https://www.ruby-lang.org)) and [Netlify](https://www.netlify.com) (a fabulous website hosting service). In particular, you'll want to read up on Netlify's [Redirect & Rewrite Rules documentation](https://www.netlify.com/docs/redirects/).

## Installation

If you're using [Bundler](https://bundler.io), add jekyll-netlify-redirects to your project's `Gemfile`:

```rb
source 'https://rubygems.org'

group :jekyll_plugins do
  gem 'jekyll-netlify-redirects'
end
```

…and hop over to your command prompt and run…

```sh
$ bundle install
```

## Usage

With jekyll-netlify-redirects added to your project's `Gemfile` and installed, add the following to your [Jekyll configuration file](https://jekyllrb.com/docs/configuration/) (typically `_config.yml`):

```yaml
netlify:
  redirects:
    - /home              /
    - /blog/my-post.php  /blog/my-post
    - /news              /blog
    - /google            https://www.google.com
```

**Note:** Netlify supports a variety of redirection and rewrite rules, so comb through their [Redirect & Rewrite Rules documentation](https://www.netlify.com/docs/redirects/) for more on the syntax. You may also want to test your redirect and rewrite rules at [Netlify's Playground](https://play.netlify.com/redirects).

With this configuration added to `_config.yml` (or to your custom Jekyll configuration file), Jekyll will generate a properly-formatted `_redirects` file in the destination directory when building your project.

## Improving jekyll-netlify-redirects

Want to help make jekyll-netlify-redirects better? Hell yeah! I like your enthusiasm. For more on how you can help, check out [CONTRIBUTING.md](https://github.com/jgarber623/jekyll-netlify-redirects/blob/master/CONTRIBUTING.md).

### Donations

If diving into Ruby isn't your thing, but you'd still like to support jekyll-netlify-redirects, consider making a donation! Any amount—large or small—is greatly appreciated. As a token of my gratitude, I'll add your name to the [Acknowledgments](#acknowledgments) below.

[![Donate via Square Cash](https://img.shields.io/badge/square%20cash-$jgarber-28c101.svg?style=for-the-badge)](https://cash.me/$jgarber)
[![Donate via Paypal](https://img.shields.io/badge/paypal-jgarber-009cde.svg?style=for-the-badge)](https://www.paypal.me/jgarber)

## Acknowledgments

jekyll-netlify-redirects wouldn't exist without the hard work of all the folks involved in designing, building, and maintaining Jekyll and Netlify. High fives, y'all. 🙌🏻

jekyll-netlify-redirects is written and maintained by [Jason Garber](https://sixtwothree.org).

## License

jekyll-netlify-redirects is freely available under the [MIT License](https://opensource.org/licenses/MIT). Use it, learn from it, fork it, improve it, change it, tailor it to your needs.
