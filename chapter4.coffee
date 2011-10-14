console.log "================================================================================"
console.log "Chapter 4"

console.log "========================================"
console.log "Question 1"

root = global ? window
root.aphorism = 'Fool me 8 or more times, shame on me'

do restoreOldAphormism = ->
  aphorism = 'Fool me once, shame on you'
  console.log aphorism
console.log aphorism

# fix
do restoreOldAphormism = ->
  root.aphorism = 'Fool me once, shame on you'
  console.log aphorism
console.log aphorism

console.log "========================================"
console.log "Question 2"

Genie = ->
Genie::wishesLeft = 3
Genie::grantWish = ->
  if @wishesLeft > 0
    console.log 'Your wish is granted!'
    @wishesLeft--
  else
    console.log "You don't have more wish"

g1 = new Genie
g1.grantWish()
g1.grantWish()
g1.grantWish()
g1.grantWish()

g2 = new Genie
g2.grantWish()
g2.grantWish()
g2.grantWish()
g2.grantWish()

# fix
GenieFix = ->
GenieFix.wishesLeft = 3
GenieFix::grantWish = ->
  if GenieFix.wishesLeft > 0
    console.log 'Your wish is granted!'
    GenieFix.wishesLeft--
  else
    console.log "You don't have more wish"

g1 = new GenieFix
g1.grantWish()
g1.grantWish()
g1.grantWish()
g1.grantWish()

g2 = new GenieFix
g2.grantWish()
g2.grantWish()
g2.grantWish()
g2.grantWish()

console.log "========================================"
console.log "Question 4"

(window ? global).property = 'global context'
@property = 'surrounding context'
class Foo
  constructor: -> @property = 'instance context'
  bar: -> console.log @property

foo = new Foo
bar = foo.bar
foo.bar()
bar()
