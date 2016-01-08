var webpack = require('./webpack.config.js');


module.exports = function(config) {
  config.set({
    browsers: ['PhantomJS'],
    frameworks: ['jasmine'],
    files: [
      './tests/*.spec.ls',
      './tests/*.spec.coffee'
    ],
    preprocessors: {
      './tests/*.spec.ls': ['webpack'],
      './tests/*.spec.coffee': ['webpack']
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
