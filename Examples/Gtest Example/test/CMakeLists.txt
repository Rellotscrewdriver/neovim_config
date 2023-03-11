cmake_minimum_required(VERSION 3.12)

set(utest)

set(Sources 
	unit_test.cpp
)

add_executable(utest ${Sources})

target_link_libraries(utest PUBLIC 
	gtest_main
)

add_test(
	NAME utest
	COMMAND utest
)
