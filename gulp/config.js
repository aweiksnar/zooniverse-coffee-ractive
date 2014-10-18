var dest = "./public/build";
var app = './app';
var css = './css'

module.exports = {
    stylus: {
        files: 'css/**/*.styl',
        src: "./css/main.styl",
        out: 'main.css',
        dest: dest
    },
    html: {
        src: "./public/index.html",
        dest: dest
    },
    images: {
        app: "./public/images/**",
        dest: dest + "/images"
    },
    browserify: {
        debug: true,
        extensions: ['.coffee'],
        entries: ['./app/init.coffee'],
        dest: dest,
        out: 'app.js'
    },
    clean: {
        src: dest + '/**/*',
        dest: dest + '/'

    },
    server: {
        file: dest,
        port: 3333
    }
};

