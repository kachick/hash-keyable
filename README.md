hash-keyable
=============

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org/ for releasing valuable namespace for others***

Description
------------

Tiny template for Hash keys.

Features
--------

* Pure Ruby :)

Usage
-----

### Overview

```ruby
require 'hash/keyable'

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
```

Requirements
-------------

Ruby - 2.5 or later

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
