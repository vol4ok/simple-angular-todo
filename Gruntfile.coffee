module.exports = (grunt) ->

  grunt.loadNpmTasks("grunt-contrib-coffee")
  grunt.loadNpmTasks("grunt-contrib-stylus")
  grunt.loadNpmTasks("grunt-contrib-concat")
  

  grunt.initConfig

    coffee:
      main:
        options:
          bare: yes
        files:
          "public/user.js": "scripts/main.coffee"

    stylus:
      main:
        options:
          compress: yes
        files:
          "public/main.css": "styles/main.styl"

    concat:
      core:
        src: [
          'bower_components/jquery2/jquery.js'
          'bower_components/angular/angular.js'
        ],
        dest: 'public/core.js'



  grunt.registerTask("default", ["coffee", "stylus"])
