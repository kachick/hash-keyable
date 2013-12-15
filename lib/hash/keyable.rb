# coding: us-ascii
# Copyright (c) 2012 Kenichi Kamiya

class Hash

  # default behavior is depending just only instance variables
  # you can change the behavior, when override the #_hash_key_comparisons
  module Keyable

    # @return [Integer]
    def hash
      _hash_key_comparisons.hash
    end

    def eql?(other)
      other.instance_of?(self.class) && \
      other._hash_key_comparisons.eql?(_hash_key_comparisons)
    end
    
    protected
    
    # @return [Array]
    # @example
    #   class Foo
    #     include Hash::Keyable
    #     
    #     protected
    #
    #     def _hash_key_comparisons(*specifics)
    #       super my_specific1, my_specific2, *specifics
    #     end
    #   end
    def _hash_key_comparisons(*specifics)
      instance_variables.map{|var|instance_variable_get var} + specifics
    end

  end

end
