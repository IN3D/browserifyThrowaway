Engine = require '../models/engine.ls'

describe 'An Engine', (...) ->

  beforeEach !->
    @engine = new Engine weight: 25, walk: 8, type: \Standard
    @engine2 = new Engine weight: 95, walk: 4, type: \Standard

  it 'should have a type', !->
    expect @engine.type .toBe \Standard

  it 'should produce the correct rating', !->
    expect @engine.rating .toBe 200
    expect @engine2.rating .toBe 380

  it 'should have correct lookup tables', !->
    expect @engine.weight .toBe 8.5
