console.log 'Hello world'

# No semicolons!
items = ['beer1', 'beer2', 'beer3', 'beer4']

# Backwards conditionals!
beerLover = true if items.length > 0


# Something like iterators!
for item in items
  console.log item

# Ranges!
for i in [5..0]
  console.log i
console.log 'Blast off'

# Dynamically generated ranges!
nums = [0..21] # vs nums = [0..20]
console.log nums

# Trickier conditionals!
for beer in items when beer isnt 'beer3'
  console.log beer

# Functions!
drinkBeer = ->
  console.log 'Glug glug'
  items.pop()

# then keywords!
while items.length > 0 then drinkBeer()

hello = (target) ->
  console.log 'Hello ' + target

hello 'World'

# Objects
fridge =
  beer: ['vb', 'tooheys new', 'guinness']
  chips: ['potato', 'corn']
  consume: ->
    console.log 'nom nom nom'
    @beer.pop() # @ replaces 'this.'

fridge.consume()
fridge.consume()
console.log fridge

# jQuery compatible!
$(document).ready ->
  $('#wonderland').on 'click', ->
    console.log 'there was a click'
