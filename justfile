# serve locally
serve:
  bundle exec jekyll serve
# build docker image
build:
  docker build -t docs .
# run docker image
run:
  docker run -v $(pwd):/usr/src/app -p 4000:4000 docs
