require.config
  paths:
    jquery: 'vendor/jquery/jquery',
    underscore: 'vendor/underscore-amd/underscore',
    backbone: 'vendor/backbone-amd/backbone',

require ['jquery', 'underscore', 'backbone'], ($, _, Backbone) ->
  $ ->
    console.log 'Hello'
