
express = require 'express'
routes = require './routes'
http = require 'http'
path = require 'path'

app = express()

app.set 'port', process.env.PORT || 3001
app.set 'views', './views'
app.set 'view engine', 'jade'
app.use express.favicon()
app.use express.logger('dev')
app.use express.bodyParser()
app.use express.methodOverride()
app.use app.router
app.use express.static(path.join(__dirname, 'public'))

app.use express.errorHandler() if 'development' == app.get('env')

app.get '/', routes.index

http.createServer(app).listen app.get('port'), ->
  console.log "root: #{app.get('views')}"
  console.log "Express server listening on port #{app.get('port')}"
