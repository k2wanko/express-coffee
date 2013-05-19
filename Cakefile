{spawn} = require('child_process')

std = (buffer)->
  if(buffer)
    console.log buffer.toString().trim()

task 'watch', ->
  watch = spawn('coffee', ['-wbco', './app', './src'])
 
  watch.stdout.on 'data', std 
  watch.stderr.on 'data', std

task 'build', ->
  build = spawn('coffee', ['-bco', './app', './src'])

  build.stdout.on 'data', std
  build.stderr.on 'data', std

task 'start', ->
  start = spawn('coffee', ['./src/app.coffee'])
  start.stdout.on 'data', std
  start.stderr.on 'data', std
