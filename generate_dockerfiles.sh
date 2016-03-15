#!/bin/sh

_gen () {
  version=$1
  tag=${2:-$version}
  mkdir -p "dockerfiles/$tag"
  sed "s/__VERSION__/$version/g" Dockerfile.tpl > "dockerfiles/$tag/Dockerfile"
}

# generate latest
_gen $(head -n 1 versions) latest

# generate all the rest
while read version; do
  _gen $version
done <versions
