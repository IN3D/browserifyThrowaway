test = require '../testFile.ls'


describe 'The testFile', (...) !->
  it 'should cube a number', !->
    expect(test.cube(3)).toBe(27)

  it 'should do other stuff, I guess', !->
    # it returns 1.3333333 or so
    expect(test.otherStuff(4)).toBeGreaterThan(1.3)

  it 'should have a part1', !->
    expect(test.part1).toBe(1)

  it 'should have a part2', !->
    expect(test.part2).toBe(2)
