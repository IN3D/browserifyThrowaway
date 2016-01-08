something = require('../something.coffee')

describe 'Something', ->
  it 'should put a number to the power of 4', ->
    expect(something(4)).toBe(256)
