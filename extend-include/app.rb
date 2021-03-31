module Foo
  def a
    "aaa: i am #{name}"
  end
end

module Bar
  extend Foo

  class << self
    def name
      "bar"
    end
  end
end

p Bar.a


module Baz
  include Foo
end

class Hoge
  include Baz

  def initialize(name)
    @name = name
  end
  attr_accessor :name
end

h = Hoge.new("hoge")
p h.a
