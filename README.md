Quickly Skeleton
================

A starter kit for building a Qt/QML app with Quickly.

### Features

 * ESLint for JS code linting
 * QMLify for transpiling ES6 into QML-compatible JS
 * Babel config for ES6 with some ES7 features
 * The Quickly library with polyfills and more

### Usage

Make sure you have Qt 5.5 or 5.6, npm, and [qpm](http://qpm.io) installed. Then run:

    npm install -g qmlify
    npm install
    qpm install

To build the project:

    mkdir build
    cd build
    qmake ..
    make
