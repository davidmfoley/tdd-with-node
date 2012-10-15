describe 'simple equality', ->
  it 'can compare equal integers', ->
    expect(42).to.equal(42)
  it 'can compare equal integers', ->
    expect(77).not.to.equal(42)
