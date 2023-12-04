from utils.static_tuple import StaticTuple

fn str_to_int(input: String) -> Int:
  let digits = StaticTuple[10]("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")
  let nums = StaticTuple[9]("one", "two", "three", "four", "five", "six", "seven", "eight", "nine")
  for i in range(digits.__len__()):
    if input[:1] == digits[i]:
      return i
  for i in range(nums.__len__()):
    if input[:len(nums[i])] == nums[i]:
      print("Found word")
      return i+1
  return -1

fn compute(input: String) raises -> Int:
  var total = 0
  var first = -1
  var second = -1
  for i in range(len(input)):
#  for i in range(150):
    let c = input[i]
    if c == "\n":
     if first ==-1 and second == -1:
       print("BAD JUJU")
     else:
       let linetotal = first*10 + second
       total += linetotal
       print(linetotal)
       first = -1
       second = -1
    else:
      let slice = input[i:i+5] 
      let num = str_to_int(slice)
      if num>0:
        if first ==-1:
          first = num
          second = num
        else:
          second = num

#     elif isdigit(ord(c)):
#      let thisdigit : Int = str_to_int(c)
#      if first ==-1:
#        first = thisdigit
#        second = thisdigit
#      else:
#        second = thisdigit
  return total 

def main():
    let inputdata: String
    with open("input", "r") as handler:
      inputdata = handler.read()
#    print(inputdata)
    print(compute(inputdata))
