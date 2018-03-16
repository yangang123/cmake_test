hello("TEST: helloworld")
set(var a b c d e) 
list(APPEND var f g h)

# test 1 
set(mylist "a" "b" c "d")
foreach(_var ${mylist})
message("当前变量是：${_var}")
endforeach()

# tese 2
set(result 0)
foreach(_var RANGE 0 ５)
     math(EXPR result "${result}+${_var}")
endforeach()
message("from 0 plus to 100 is:${result}")

# test3 
set(sum_tmp 0)
foreach(num RANGE 0 5)
	message("num is ${num}")
endforeach()