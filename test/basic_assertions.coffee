describe 'Assertions with chai', ->
  # more examples here: http://chaijs.com/api/bdd/
  describe 'comparing numbers', ->
    it 'can compare equal integers', ->
      expect(42).to.equal(42)

    it 'can compare integers that are not equal', ->
      expect(77).not.to.equal(42)

      # for me, this syntax is a bit unexpected
      expect(77).to.be.above(42)
      expect(42).to.be.below(77)

  describe 'comparing complex objects', ->
    beforeEach ->
      @foo = {answer: 42}
      @bar = {answer: 42}

    it 'can test for deep equality', ->
      # to deeply compare objects, use the deep property
      expect(@foo).not.to.equal(@bar)

      #these are synonyms
      expect(@foo).to.deep.equal(@bar)
      expect(@foo).to.eql(@bar)
