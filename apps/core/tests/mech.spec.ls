Mech = require '../models/mech.ls'


describe 'A Mech', (...) ->
  it 'Should be a valid design', (...) ->
    base =
      * base: 'Inner Sphere'
        omni: false
        weight: 55
        chassis: \Humanoid
    mech = new Mech(base)
    expect(mech.valid-base!).toEqual true
    expect(mech.valid-omni!).toEqual true
    expect(mech.valid-weight!).toEqual true
    expect(mech.valid-chassis!).toEqual true
    expect(mech.engine).toEqual(jasmine.any(Object))
    expect(mech.valid!).toEqual true

  it 'should have a valid weight', (...) ->
    light-mech = new Mech {weight: 20}
    assault-mech = new Mech {weight: 100}
    invalid-mech = new Mech {weight: 200}
    other-invalid-mech = new Mech {weight: 10}

    expect(light-mech.valid-weight!).toBe true
    expect(assault-mech.valid-weight!).toBe true
    expect(invalid-mech.valid-weight!).toBe false
    expect(other-invalid-mech.valid-weight!).toBe false

  it 'should have a weight which is a factor of 5', (...) ->
    invalid-mech = new Mech {weight: 33}
    expect(invalid-mech.valid-weight!).toBe false
