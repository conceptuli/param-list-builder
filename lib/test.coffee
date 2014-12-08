ParamList = require '../index.js'


x = new ParamList('foo')
x.add 'name', 'Brian'
console.log 'This should add the new param', x

console.log '\nThis should drop the given param'
x.drop 'name'
console.log x




console.log '\nThis should try and update the param, or create it and tell you'
x.updateOrCreate 'name', 'Steve'

console.log x
x.updateOrCreate 'age', '12'
console.log x

