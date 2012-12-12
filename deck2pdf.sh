#!/usr/bin/env zsh

# Thanks to imakewebthings!
# git clone https://github.com/imakewebthings/deck2pdf
# brew install phantomjs

phantomjs deck2png.js categories.html&& phantomjs png2pdf.js
