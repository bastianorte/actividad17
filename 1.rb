class Anything
  attr_accessor :a
  def initialize
    @a = a
  end
  def foo
    @a = 5
  end
  def bar
    @a += 1
  end
end
any = Anything.new
any.foo
any.bar
puts any.a
