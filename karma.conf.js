var webpack = require('./webpack.config.js');


module.exports = function(config) {
  config.set({
    browsers: ['PhantomJS'],
    frameworks: ['jasmine'],
    files: [
      './apps/**/tests/*.spec.ls'
    ],
    preprocessors: {
      './apps/**/tests/*.spec.ls': ['webpack']
    },
    webpack: webpack,
    webpackMiddleware: {
      noInfo: true
    },
    plugins: [
      require('karma-webpack'),
      require('karma-jasmine'),
      require('karma-phantomjs-launcher')
    ]
  });
};
