_ = require \lodash
Engine = require './engine.ls'


class Mech
  (data) ->
    @base = data.base
    @omni = data.omni
    @weight = data.weight
    @chassis = data.chassis
    @walk = data.walk
    @run = _.ceil(data.walk * 1.5)
    @engine = new Engine(data)
  valid: ->
    (@valid-base! and
     @valid-omni! and
     @valid-weight! and
     @valid-chassis! and
     _.isObject @engine)
  valid-base: ->
    not _.isEmpty @base and @base == 'Inner Sphere' or @base == \Clan
  valid-omni: -> _.isBoolean @omni
  valid-weight: -> @weight >= 20 and @weight <= 100 and @weight % 5 == 0
  valid-chassis: -> @chassis == \Humanoid or @chassis == \Quad


module.exports = Mech
