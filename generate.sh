#!/bin/bash

# activate ruby with jekyll
$HOME/.rvm/scripts/rvm
rvm gemset use jekyll

# generate website so we can deploy it to the server
jekyll --no-auto --safe

# push to remote server
# rsync -avz --delete _site/ perceptify:www/neurovision
