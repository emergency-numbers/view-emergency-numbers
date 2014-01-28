
/**
 * Module dependencies.
 */

var createView = require('view');
var list = require('list');
var template = require('./template');
var View = createView(template);
var List = list(View);

/**
 * Expose `List`.
 */

module.exports = List;

