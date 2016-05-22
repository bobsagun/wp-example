# WordPress Boiler Plate #

## Setup

### WordPress

Install WordPress in the `./public_html/wp` directory. WordPress should be configured in the `./local.php` file rather 
than the usual `wp-config.php` file.

### NPM

This boilerplate uses Node.js for package management. Install Node.js and run `npm install` to setup dependencies.
Additional dependencies can be installed by running `npm install --save-dev <package_name>`. Make sure to set the
`--save-dev` flag, otherwise the `package.json` file will not be updated and dependencies cannot be automatically
installed.

### Gulp

Once NPM is installed, you should be able to use gulp to compile static assets. Run `gulp` to compile. Assets will be 
stored in the `./public/content/themes/<theme_name>/assets` directory. Run `gulp production` to compile and minify. Gulp
is configured to watch all of the files in the `./src` directory.

### Bower

Bower is installed, but not used by default. Run `bower install --save <package_name>` to install a bower package.
Additional CSS and JS files can be added to the build by updating the `jsFiles` and `cssFiles` in `./gulpfile.js`.

## Assets

### SCSS

SCSS files can be added to the `./src/scss` directory. All files will be compiled by gulp. Partials should
be prefixed with an underscore `_`. The destination for compiled SCSS files is set to
`./public/content/themes/<theme_name>/assets/css/app.css`

### JS

JS files can be added to the `./src/js` directory. JS files will be combined by gulp. To minify as well as combine run
`gulp production`. The destination for js files is set to `./public/content/themes/<theme_name>/assets/js/app.js`