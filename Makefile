project_name := template

run-app:
	mkdir -p -v build && \
	cd build && \
	conan install .. && \
	cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake && \
	cmake --build . -j $(nproc) && \
	cd $(project_name)/ && \
	./$(project_name)

install-dependencies:
	mkdir -p -v build && \
	cd build && \
	conan install .. 

build-debug:
	mkdir -p -v build && \
	cd build && \
	conan install .. && \
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake && \
	cmake --build . -j $(nproc) 


build-release:
	mkdir -p -v build && \
	cd build && \
	conan install .. && \
	cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake && \
	cmake --build . -j $(nproc) 

