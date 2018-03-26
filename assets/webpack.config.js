const path = require('path')
const webpack = require('webpack')
const { CheckerPlugin } = require('awesome-typescript-loader')
const MiniCSSExtractPlugin = require('mini-css-extract-plugin')
const CleanWebpackPlugin = require('clean-webpack-plugin')
const CopyWebpackPlugin = require('copy-webpack-plugin')

const env = process.env.MIX_ENV === 'prod' ? 'production' : 'development'

module.exports = {
  entry: [
    path.join(__dirname, 'js/app.tsx'),
    path.join(__dirname, 'scss/app.scss')
  ],
  output: {
    path: path.join(__dirname, '../priv/static'),
    filename: 'js/app.js'
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loaders: ['awesome-typescript-loader']
      },
      {
        test: /\.scss$/,
        use: [
          MiniCSSExtractPlugin.loader,
          { loader: 'css-loader', options: { importLoaders: 1 } },
          'postcss-loader',
          'sass-loader'
        ]
      },
      {
        test: /\.(png|woff|woff2|eot|ttf|svg)$/,
        use: [
          {
            loader: 'url-loader',
            options: {
              limit: 10000
            }
          }
        ]
      }
    ]
  },
  plugins: [
    new CleanWebpackPlugin(['priv/static'], { root: path.join(__dirname, '..') }),
    new CheckerPlugin(),
    new MiniCSSExtractPlugin({
      // Options similar to the same options in webpackOptions.output
      // both options are optional
      filename: 'css/app.css'
    }),
    new CopyWebpackPlugin([{ from: path.join(__dirname, 'static') }])
  ],
  resolve: {
    // Add '.ts' and '.tsx' as resolvable extensions.
    extensions: ['.ts', '.tsx', '.js', '.jsx', '.json'],
    alias: {
      phoenix: path.join(__dirname, '../deps/phoenix/priv/static/phoenix.js'),
      phoenix_html: path.join(__dirname, '../deps/phoenix_html/priv/static/phoenix_html.js')
    }
  }
}
