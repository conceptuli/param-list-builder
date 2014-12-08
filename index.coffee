class ParamsList
  constructor: (@name) ->

    @params = {}
    this

  add: (k,v) ->

    @params[k] = v
    console.log @params
    @params


  drop: (k) ->

    delete @params[k]

    this

  update: (k,v) ->
    if @params[k]? then @params[k]= v
    else throw 'that param does not exist.  use .add to add it'
    this

  updateOrCreate: (k,v) ->
    if @params[k]? then @params[k]= v and console.log @params, 'done'
    else
      @params[k] = v
      console.log @params and  'didn\'t exist, so I made it'

    this

  save: () ->
    fs = require 'fs'
    fileName = @name
    fs.writeFileSync(__dirname + "/../../#{fileName}.json", JSON.stringify(@))
    this
  load: () ->
    fs = require 'fs'
    fileName = @name
    file = fs.readFileSync(__dirname + "/../../#{fileName}.json", 'utf8')
    if file? then console.log 'file contents:\n' + file
    this

module.exports = ParamsList