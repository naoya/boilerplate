path = require 'path'
lrSnippet = require('grunt-contrib-livereload/lib/utils').livereloadSnippet
folderMount = (connect, point) -> connect.static(path.resolve point)

module.exports = (grunt) ->
  grunt.initConfig
    livereload:
      port: 35729
      
    connect:
      livereload:
        options:
          port: 9001
          middleware: (connect, options) ->
            return [lrSnippet, folderMount(connect, '.')]
            
    regarde:
      views:
        files: 'views/*.*'
        tasks: ['livereload']

  grunt.loadNpmTasks 'grunt-regarde'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-livereload'

  grunt.registerTask 'default', [
    'livereload-start',
    # 'connect',
    'regarde'
  ]