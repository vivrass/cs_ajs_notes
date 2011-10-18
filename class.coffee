class Parent
  fct: (a) ->
    console.log "Parent #{a}"

class Child extends Parent
  fct: (b) ->
    console.log "Foo #{b}"
    super(b)

(new Child).fct("bar")

