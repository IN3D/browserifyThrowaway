Mech = require '../models/mech.ls'


describe 'A Mech', (...) !->
  beforeEach !->
    @mech = new Mech {
      weight: 20
      base: 'Inner Sphere'
      omni: false
      chassis: \Humanoid
    }


  it 'should be a valid design', !->
    expect(@mech.valid!).toEqual true

  it 'should have an engine', !->
    expect(@mech.engine).toEqual(jasmine.any(Object))


  describe "A mech's base", (...) !->
    it 'can be Inner Sphere', ->
      expect(@mech.valid-base!).toEqual true

    it 'can be Clan', !->
      @mech.base = \Clan
      expect(@mech.valid-base!).toEqual true

    it 'cannot be empty', !->
      @mech.base = void
      expect @mech.valid-base! .toEqual false


  describe "A mech's omni status", (...) !->
    it 'can be true', !->
      @mech.omni = true
      expect(@mech.valid-omni!).toEqual true

    it 'can be false', !->
      expect(@mech.valid-omni!).toEqual true

    it 'should be noting else', !->
      @mech.omni = 'sure'
      expect(@mech.valid-omni!).toEqual false
      @mech.omni = 0
      expect(@mech.valid-omni!).toEqual false


  describe "A mech's chassis", (...) !->
    it 'can be Humanoid', !->
      expect(@mech.valid-chassis!).toEqual true

    it 'can be Quad', !->
      @mech.chassis = \Quad
      expect(@mech.valid-chassis!).toEqual true


  describe "A mech's weight", (...) !->
    it 'should be valid with the lightest weight', !->
      expect(@mech.valid-weight!).toBe true

    it 'should be valid with the heaviest weight', !->
      @mech.weight = 100
      expect(@mech.valid-weight!).toBe true

    it 'should be overweight', !->
      @mech.weight = 200
      expect(@mech.valid-weight!).toBe false

    it 'should be underweight', !->
      @mech.weight = 10
      expect(@mech.valid-weight!).toBe false

    it 'should be invalid if weight is not a factor of 5', !->
      @mech.weight = 33
      expect(@mech.valid-weight!).toBe false
