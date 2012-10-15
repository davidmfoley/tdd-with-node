describe 'simple equality', ->
  it 'can compare equal integers', ->
    expect(42).to.equal(42)
  it 'can compare integers that are not equal', ->
    expect(77).not.to.equal(42)
