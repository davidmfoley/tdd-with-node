# Set up chai assertions
chai = require('chai')

# Install sinon-chai assertion helpers
sinonChai = require('sinon-chai')
chai.use(sinonChai)

# Put the expect function on global so we can use it in any of our specs
global.expect = chai.expect

# ditto for sinon
global.sinon = require('sinon')

require './basic_assertions'
