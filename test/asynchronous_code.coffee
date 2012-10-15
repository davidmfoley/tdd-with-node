describe 'Testing asynchronous code', ->
  describe 'The "done" callback', ->
    # when "it" or "beforeEach" (or any other method) accepts a parameter,
    # mocha will pass a callback and will wait for the callback to be invoked before
    # continuing execution, or wait until the timeout (usually set on the command-line
    # or in mocha.opts) to expire.

    describe 'A filter that recognizes odd numbers', ->
      it 'calls the callback if the number is odd', (done) ->
        oddNumberFilter 3, (number) ->
          expect(number).to.equal(3)
          done()

    describe 'errors in callbacks', ->
      it 'follows standard node error conventions (expected failure)', (done) ->
        # mocha assumes that the first parameter is an error, in line
        # with the behavior of many node libraries
        somethingWithAnError(done)


# if number is odd, invoke the callback asynchronously with the number that was passed
oddNumberFilter = (number, callback) ->
  return unless (number % 2)
  # asynchronously invoke the calback after 1ms
  setTimeout( (-> callback(number)), 1)

somethingWithAnError = (callback) ->
  callback(new Error('error message goes here'))
