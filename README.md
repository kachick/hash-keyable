hash-keyable
=============

[![Build Status](https://secure.travis-ci.org/kachick/hash-keyable.png)](http://travis-ci.org/kachick/hash-keyable)
[![Gem Version](https://badge.fury.io/rb/hash-keyable.png)](http://badge.fury.io/rb/hash-keyable)

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

* [Ruby - 2.5 or later](http://travis-ci.org/#!/kachick/hash-keyable)

Install
-------

```bash
gem install hash-keyable
```

Link
----

* [code](https://github.com/kachick/hash-keyable)
* [API](http://kachick.github.com/hash-keyable/yard/frames.html)
* [issues](https://github.com/kachick/hash-keyable/issues)
* [CI](http://travis-ci.org/#!/kachick/hash-keyable)
* [gem](https://rubygems.org/gems/hash-keyable)

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
