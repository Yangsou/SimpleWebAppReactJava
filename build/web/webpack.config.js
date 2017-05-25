var fs = require('fs');
var path = require('path');
var webpack = require('webpack');
var HappyPack = require('happypack');

module.exports = {

  devtool: 'eval',

  entry: './client.js',

  output: {
    path            : __dirname + '/public/js/build',
    filename        : '[name].js',
    chunkFilename   : '[name]-[chunkhash].js',
    publicPath      : '/js/build/'
  },

  progress: true,
  cache: true,
  module: {
    loaders: [
      {
        test    : /\.js?$/,
        exclude : /node_modules/,
        loaders : ['happypack/loader?id=jsbabel']
      },
      {
        test: /\.scss$/,
        loaders: [ 'style-loader', 'css-loader', 'sass-loader']
      },
       {
        test: /\.(jpe?g|gif|png|svg)$/i,
        loaders: 'url-loader?limit=10000'
      },
      {
        test: /\.css$/,
        include: /node_modules/,
        loaders: ['style-loader', 'css-loader']
      },
      {
        test: /\.(eot|woff|woff2|ttf|svg|png|jpg)$/,
        loaders: 'url-loader?limit=30000&name=[name]-[hash].[ext]'
      }
    ]
  },

  plugins: [
    new webpack.optimize.UglifyJsPlugin({
      compress : {
        warnings : false
      },
      comments: false,
      sourceMap: false,
      mangle: true,
      minimize: true
    }),
    new webpack.optimize.CommonsChunkPlugin('shared.js'),
    new webpack.optimize.MinChunkSizePlugin({minChunkSize: 2000}),
    new webpack.DefinePlugin({
      'process.env': {
        'NODE_ENV': JSON.stringify('production')
      }
    }),
    new HappyPack({
      id: 'jsbabel',
      cache: true,
      threads: 2,
      loaders: [
        {
          loader: 'babel-loader',
          query   : {
            presets : ['react', 'es2015', 'stage-0']
          }
        }
      ]
    })
  ]
};
