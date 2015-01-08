# s9 - technical test


#### Requirements

* Create a web page which displays a form with several text fields for entering data in two series (a bit like a spreadsheet).
* Once some data has been entered the user should be given the option to display the data as a simple bar chart. It might look something like this:
  ![](http://i.imgur.com/LTY2pCI.jpg)
* Once the bar chart has been displayed, it should be possible to resize any of the bars using the mouse. In other words, if the user hovers over the top of the bar, they should be able to click and hold the mouse button to drag the bar to a different size. This should automatically adjust the numerical data entered to the corresponding new value.
* The page you create should ideally work correctly in the latest stable versions of Internet Explorer, Firefox, Google Chrome and Safari.
* It should be assumed that the code will be maintained and possibly extended by another developer in the team
* You are free to use any libraries you think might be useful


#### Installation

After downloading or cloning this project, install the required libraries with

```bash
cd s9
npm install
bower install
```


#### Development

To start developing in the project run:

```bash
gulp serve
```

Then head to `http://localhost:3000` in your browser.

The `serve` tasks starts a static file server, which serves the AngularJS application, and a watch task which watches all files for changes and lints, builds and injects them into the index.html accordingly.


#### Tests

To run tests run:

```bash
gulp test
```

**Or** first inject all test files into `karma.conf.js` with:

```bash
gulp karma-conf
```

Then you're able to run Karma directly. Example:

```bash
karma start --single-run
```


#### Production-ready build - a.k.a. dist

To make the app ready for deploy to production run:

```bash
gulp dist
```

Now there's a `./dist` folder with all scripts and stylesheets concatenated and minified, also third party libraries installed with bower will be concatenated and minified into `vendors.min.js` and `vendors.min.css` respectively.
