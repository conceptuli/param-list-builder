class ParamList
  constructor: (@name) ->
    object = {}
    @params = for k, v of object
      [k] = "#{k}:#{JSON.stringify v}"
    this

  add: (k,v) ->

    @params[k] = v
    console.log @params
    this


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


module.exports = ParamList