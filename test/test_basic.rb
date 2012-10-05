require_relative 'helper'

class FooBar
  include Hash::Keyable
  
  attr_accessor :var
end

foo = FooBar.new
bar = FooBar.new

The foo do
  EQL bar

  foo.var = 'foo'
  bar.var = 'bar'
  
  NG EQL?(bar)
  
  bar.var = 'foo'
  
  EQL bar
end

class FooBar
  def my_specific1
    :specific1
  end
  
  protected
  
  def _hash_key_comparisons(*specifics)
    super my_specific1, my_specific2, *specifics
  end
  
  private
  
  def my_specific2
    :specific2
  end
end

foo = FooBar.new
bar = FooBar.new

The foo do
  EQL bar

  foo.var = 'foo'
  bar.var = 'bar'
  
  NG EQL?(bar)
  
  bar.var = 'foo'
  
  EQL bar
end

