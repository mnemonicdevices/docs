serve:
  bundle exec jekyll serve
docker-build: 
  docker build -t docs .
docker-run:
  docker run -v $(pwd):/usr/src/app -p 4000:4000 docs
