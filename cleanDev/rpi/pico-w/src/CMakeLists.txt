#adds c files 

add_executable(my_project
	main.c
)

target_link_libraries(my_project
	pico_stdlib
)

pico_add_extra_outputs(my_project)

