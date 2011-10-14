console.log "================================================================================"
console.log "Chapter 3"

console.log "========================================"
console.log "Question 1"

original = ['Mary', 'Poppins']
copy = original[0..]
copy[0] = 'Sh' + copy[0][1..]
copy[1] = 'B' + copy[1][1..]
console.log original.join ' '
console.log copy.join ' '

console.log "========================================"
console.log "Question 2"

once = ->
  if once.hasRun
    null
  else
    once.hasRun = true
    [1, 2, 3]

second = ->
  [1, 2, 3]

console.log x for x in once()
console.log x for x in second()

console.log "========================================"
console.log "Question 3"

#for x in [1,2]
#  setTimeout (-> console.log x), 50
#for x in [1,2]
#  setTimeout (-> console.log x), 0

console.log "========================================"
console.log "Question 4"

objContains = (obj, val) ->
  obj[val]?
officialObjContains = (obj, val) ->
  return true for k, v of obj when v is val
  false
o =
  foo: "foo"
  bar: "bar"

console.log "Foo : '#{objContains(o, "foo")}' should be true"
console.log "Bar : '#{objContains(o, "bar")}' should be true"
console.log "Allo : '#{objContains(o, "allo")}' should be false"
console.log "Foo : '#{officialObjContains(o, "foo")}' should be true"
console.log "Bar : '#{officialObjContains(o, "bar")}' should be true"
console.log "Allo : '#{officialObjContains(o, "allo")}' should be false"

console.log "========================================"
console.log "Question 5"

doAndRepeatUntil = (fct, block) ->
  fct()
  fct() until block()

user =
  h: 0
  harangue: -> user.h = user.h + 1
  paidInFull: -> user.h > 3

console.log "#{user.h} should be 0"
doAndRepeatUntil user.harangue, -> user.paidInFull()

console.log "#{user.h} should be 4"

console.log "========================================"
console.log "Question 6"

wordList = ["ab", "abc", "bc", "abcd", "abcde"]
minLength = (wordList) ->
  Math.min (w.length for w in wordList)...
officialMinLength = (wordList) ->
  Math.min.apply Math, (w.length for w in wordList)

console.log "#{minLength(wordList)} should = 2"
console.log "#{officialMinLength(wordList)} should = 2"

