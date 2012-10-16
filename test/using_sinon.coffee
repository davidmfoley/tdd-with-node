# Some examples of basic sinon.js usage
# For more info: http://sinonjs.org/docs
# Note: sinon also provides mocks as well as spies and stubs, but I never use them personally
describe 'Using sinon', ->
  describe 'spies are used to verify interacitons', ->
    it 'can assert that a method was called', ->
      spy = sinon.spy()
      spy()
      expect(spy).to.have.been.called

    it 'can assert that a method was not called', ->
      spy = sinon.spy()
      expect(spy).not.to.have.been.called

    it 'can match arguments', ->
      spy = sinon.spy()
      spy(42)
      expect(spy).to.have.been.calledWith(42)

  describe 'stubs are used to set up interactions to support the code under test', ->
    it 'can set return values', ->
      stub = sinon.stub().returns(42)
      expect(stub()).to.equal(42)

    it 'can yield to a callback that was passed', ->
      #when invoked with a callback function, call the function
      stub = sinon.stub().yields()

      spy = sinon.spy()
      stub(spy)
      expect(spy).to.have.been.called

      spy = sinon.spy()
      stub(42, spy) # invokes the 1st argument that is a function
      expect(spy).to.have.been.called

    it 'can throw exceptions', ->
      stub = sinon.stub().throws('error!')
      expect(-> stub()).to.throw('error!')
