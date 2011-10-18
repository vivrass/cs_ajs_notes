class Parent
  def fct(a)
    puts "Parent #{a}"
  end
end

class Child < Parent
  def fct(b)
    puts "Foo #{b}"
    super
  end
end

Child.new.fct("bar")
