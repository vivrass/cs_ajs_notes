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
</table>
