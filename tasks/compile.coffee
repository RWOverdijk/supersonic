module.exports = (grunt) ->
  grunt.registerTask 'compile', [
    'clean'
    'coffeelint'
    'gulp'
  ]
