# coding: us-ascii

$VERBOSE = true

require_relative '../lib/hash/keyable'

class FooBar
  include Hash::Keyable
  
  attr_accessor :var
end

foo = FooBar.new
bar = FooBar.new

HASH = {foo => :value}

p HASH.key? bar #=> true

foo.var = 'foo'
bar.var = 'bar'

p HASH.key? bar #=> false

bar.var = 'foo'

p HASH.key? bar #=> false

HASH.rehash

p HASH.key? bar #=> true
