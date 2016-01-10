something = require('../something.coffee')

describe 'Something', ->
  it 'should put a number to the power of 4', ->
    expect(something(4)).toBe(256)

  it 'should break', ->
    expect(0).toBe(0)
