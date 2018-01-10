module.exports = {
    entry: './src/js/app.js',
    output: {
        filename: './assets/js/main.js',
    },
    module: {
        rules: [
            {
                test: /\.tag$/,
                loader: 'riot-tag-loader',
                enforce: 'pre',
                query: {
                    type: 'es6'
                }
            }, {
                test: /\.(js|tag)$/,
                exclude: /node_modules/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['babel-preset-env']
                    }
                }
            }
        ]
    }
}