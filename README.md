<img src="https://cdn.shopify.com/s/files/1/0842/2113/3146/files/5x2-rectangle_MD-Sticker_1_WEB.png?v=1721809368&width=400" width="400px" />

# Documentation

This repository contains all [mnemonic devices documentation](https://docs.mnemonicdevices.io/). It is built with `ruby`, `jekyll`, `bundler` and `just-the-docs`.

## Building and previewing locally

### Docker

The recommended method is to use `docker`.

1.  Fork or clone this repository. Change your working directory to the root directory of this repository.

2.  Build the image with `docker build -t docs .`, or alternatively use `just build` if using `Justfile`.

3.  Run the container with `docker run -v $(pwd):/usr/src/app -p 4000:4000 docs`, or alternatively use `just run` if using `Justfile`.

4.  Visit `localhost:4000`. Local changes automatically propagate to the container for live reloading.

### localhost

Assuming, [Ruby](https://www.ruby-lang.org/en/documentation/installation/) 3.3.3 and [Bundler](https://bundler.io/) are installed on your computer:

1.  Fork or clone this repository. Change your working directory to the root directory of this repository.

2.  Run `bundle install`.

3.  Run `bundle exec jekyll serve` to build your site and preview it at `localhost:4000`.

    The built site is stored in the directory `_site`.

## Contributing

Contributions from the community are welcome. All contributions are approved before being merged into the main branch and subsequently deployed to the server environment.
