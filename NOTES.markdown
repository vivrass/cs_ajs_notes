# From Ruby to CoffeeScript

<table>
  <tr>
    <th>Ruby</th>
    <th>CoffeeScript</th>
  </tr>
  <tr>
    <td>x ||= 2</td>
    <td>x ?= 2</td>
  </tr>
  <tr>
    <td>def fct(*x)</td>
    <td>(x...) -></td>
  </tr>
  <tr>
    <td>*[1, 2, 3]</td>
    <td>[1, 2, 3]...</td>
  </tr>
  <tr>
    <td>hash.each{|key, value| }</td>
    <td>for key, value of hash</td>
  </tr>
  <tr>
    <td>array.each{|value| }</td>
    <td>for value in array</td>
  </tr>
  <tr>
    <td>a = array.map{|i| i + 1}</td>
    <td>a = (i + 1 for i in array)</td>
  </tr>
  <tr>
    <td>array.select{|i| i > 1}</td>
    <td>for i in array when i > 1</td>
  </tr>
  <tr>
    <td>if array.include?(value)</td>
    <td>if value in array</td>
  </tr>
  <tr>
    <td>array[1..3], array[1..-1]</td>
    <td>array[1..3], array[1..-1]</td>
  </tr>
  <tr>
    <td>string[1..3], string[1..-1]</td>
    <td>string[1..3], string[1..-1]</td>
  </tr>
  <tr>
    <td>array.dup</td>
    <td>array[0..]</td>
  </tr>
</table>

# CoffeeScript

<table>
  <tr>
    <th>Code</th>
    <th>Explanation</th>
  </tr>
  <tr>
    <td>a = (@x) -></td>
    <td>a = (x) -> @x = x</td>
  </tr>
  <tr>
    <td>for i in int_list when i > 3</td>
    <td>when condition need to be true to execute the loop</td>
  </tr>
  <tr>
    <td>for i in int_list by 3</td>
    <td>won't execute the loop for 2 value on 3</td>
  </tr>
</table>
