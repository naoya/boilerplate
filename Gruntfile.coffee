module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      assets:
        expand: true
        flatten: true
        src: ['assets/*.coffee']
        dest: 'public/js/'
        ext: '.js'
      tests:
        expand: true
        flatten: true
        src: ['test/*.coffee']
        dest: 'test/js/'
        ext: '.js'
        
    slim:
      test:
        files:
          'test/runner.html': 'test/runner.slim'
          
    livereload:
      port: 35729
      
    regarde:
      coffee:
        files: 'assets/*.coffee'
        tasks: ['coffee', 'livereload' ]
        
      views:
        files: 'views/*.*'
        tasks: [ 'livereload' ]

      tests:
        files: 'test/*.coffee'
        tasks: ['coffee']

      runner:
        files: [ 'test/*.slim' ]
        tasks: ['slim']

  grunt.loadNpmTasks 'grunt-regarde'
  grunt.loadNpmTasks 'grunt-slim'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-livereload'

  grunt.registerTask 'default', [
    'coffee'
    'slim'
    'livereload-start'
    'regarde'
  ]