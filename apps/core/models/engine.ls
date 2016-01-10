_ = require \lodash
EngineLookUp = require './engineLookup.coffee'


class Engine
  (data) ->
    @type = data.type || 'Standard'
    @rating = _.parse-int(data.weight * data.walk)
    @weight = EngineLookUp.weight(@type, @rating)


module.exports = Engine
