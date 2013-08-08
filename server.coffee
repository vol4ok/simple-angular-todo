exs = require "express"
app = exs()

app
  .use(exs.favicon())
  .use(exs.static(__dirname + "/public"))
  .use(exs.logger("tiny"))
  .listen(3000)