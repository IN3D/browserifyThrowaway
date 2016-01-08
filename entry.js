require('!style!css!stylus!./main.styl');
var thing = require('./testFile.ls');
var something = require('./something.coffee');
var $ = require('jquery');

$('body').append('<p>' + thing.cube(3) + '</p>');
$('body').append('<p>' + thing.part1 + '</p>');
$('body').append('<p>' + thing.part2 + '</p>');
$('body').append('<p>' + thing.otherStuff(10) + '</p>');

$('body').append('<div id="block"></div>');

$('#block').append('<p>Wat</p>')
$('#block').append('<p>' + something(4) + '</p>')
