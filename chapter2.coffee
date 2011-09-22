console.log "================================================================================"
console.log "Chapter 2"

console.log "========================================"
console.log "Question 1"
clearArray = (arr) ->
  arr.splice 0, arr.length
clearArrayClearedArray = (arr) ->
  arr.splice 0, arr.length
  arr
clearArrayNull = (arr) ->
  arr.splice 0, arr.length
  return

array = [1..5]
array.id = 1
arrayCleared = clearArray(array)
arrayClearedArray = clearArrayClearedArray(array)
arrayNull = clearArrayNull(array)

array.id = 2
console.log "#{arrayCleared.id != array.id} : #{arrayCleared.id} != #{array.id}"
console.log "#{arrayClearedArray.id == array.id} : #{arrayClearedArray.id} == #{array.id}"
console.log "#{!arrayNull?} : !#{arrayNull}?"

console.log "========================================"
console.log "Question 2"

a_fct = (arg1, arg2, arg3) ->
  arg1 == "arg1" || arg2 == "arg2" || arg3 == "arg3"

run = (fct, args...) ->
  fct(args...)

runOfficial = (fct, args...) ->
  fct.apply this, args

console.log "#{run(a_fct, "arg1", "arg2", "arg3")}"
console.log "#{runOfficial(a_fct, "arg1", "arg2", "arg3")}"

console.log "========================================"
console.log "Question 3"

