Engine = require '../models/engine.ls'

describe 'An Engine', (...) ->

  beforeEach !->
    en = 1

  it 'should have a type', !->
    engine = new Engine  type: \Standard
    expect engine.type .toBe \Standard
    # expect en .toBe 1

  it 'should produce the correct rating', !->
    engine = new Engine  weight: 25, walk: 8
    engine2 = new Engine  weight: 95, walk: 4
    expect engine.rating .toBe 200
    expect engine2.rating .toBe 380

  it 'should have correct lookup tables', !->
    engine = new Engine  weight: 25, walk: 8, type: \Standard
    expect engine.weight .toBe 8.5
