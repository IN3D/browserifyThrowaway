module.exports = {
  entry: './entry.js',
  output: {
    path: __dirname,
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      {
        test: /\.coffee$/,
        loaders: ['coffee']
      },
      {
        test: /\.ls$/,
        loaders: ['livescript']
      },
      {
        test: /\.styl$/,
        loaders: ['style', 'css', 'stylus']
      }
    ]
  }
};
