# SameNameScopeOf

Able to include or extend the same name module

## Usage

```
class A
  class B
  end
end

module C
  module B
    def b?
      true
    end
  end
end

A::B.new.b?
#=> NoMethodError

require 'same_name_scope_of'

class A::B
  extend SameNameScopeOf
  include_same_name_scope_of(C)
end

A::B.new.b?
#=> true

```

## Installation

Add this line to your application's Gemfile:

    gem 'same_name_scope_of'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install same_name_scope_of

## Contributing

1. Fork it ( http://github.com/<my-github-username>/same_name_scope_of/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
