require 'json'
require 'pp'
 
json = File.read('quiz.json')
obj = JSON.parse(json)

#i=0
 
#while i < obj.length do
  #puts obj[i]['answers']
  #i=i+1
#end

answer = obj[8]['answers']
answer1 = JSON.generate(answer)

p = JSON.parse(answer1)



answer2 = JSON.parse(answer1)
puts answer2
puts answer["answer_a"]
puts answer
my_hash = JSON.parse('{"hello": "goodbye", "shabi": "naotan"}')
puts my_hash
puts my_hash['shabi']