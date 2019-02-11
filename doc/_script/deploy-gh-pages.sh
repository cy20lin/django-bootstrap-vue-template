#!/bin/sh

perform(){
    "${@}"
}

test -e ./_build/html/.git \
    && rm -rf ./_build/html/.git
test -d ./_build/html \
    && cd ./_build/html \
    && perform git init \
    && perform git checkout -b gh-pages \
    && perform git checkout --orphan gh-pages \
    && perform git commit --allow-empty --allow-empty-message -m "" \
    && perform git add . \
    && perform git commit -m "$(cd .. && git rev-parse HEAD)" \
    && perform git remote add origin "$(cd .. && git remote get-url origin)" \
    && perform git push -f origin gh-pages
