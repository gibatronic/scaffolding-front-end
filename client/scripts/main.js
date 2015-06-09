!function() {
  'use strict';

  var loadMinorStyles = function() {
    var link = document.createElement('link');

    link.addEventListener('load', link.removeAttribute.bind(link, 'media'));

    link.href = 'styles/minor.css';
    link.media = 'none';
    link.rel = 'stylesheet';

    document.head.appendChild(link);
  };

  var main = function() {
    loadMinorStyles();
  };

  document.addEventListener('DOMContentLoaded', main);
}();
