var generators = require('yeoman-generator');
var path = require('path');

var copyFile = function(file) {
  this.fs.copy(this.templatePath(file), this.destinationPath(file));
};

var copyFiles = function() {
  this.package.config.files.forEach(copyFile.bind(this));
};

var createPackage = function() {
  var newPackage = { };

  var copyField = function(attribute) {
    if (this.package.config.fields.indexOf(attribute) != -1) {
      newPackage[attribute] = this.package[attribute];
    }
  };

  Object.keys(this.package).forEach(copyField.bind(this));
  newPackage.private = true;
  this.fs.write(this.destinationPath('package.json'), JSON.stringify(newPackage, null, 2));
};

module.exports = generators.Base.extend({
  constructor: function() {
    generators.Base.apply(this, arguments);

    this.package = require('../../package');
    this.sourceRoot(path.normalize(path.join(this.sourceRoot(), '..', '..', '..')));
  },

  initializing: function() {
    copyFiles.call(this);
    createPackage.call(this);
  }
});
