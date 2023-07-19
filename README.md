# project-template
Template for cmake c++ projects.

## Installation:
Requires [Conan](https://conan.io/center/) and CMake. 
They can be installed by:
```shell
pip install conan
pip install cmake
```
### Build your app in debug mode:

```shell
mkdir cmake-build-debug
cd cmake-build-debug
conan install .. --build=missing
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake..
cmake --build .  
```

### Build your app in release mode:

By yourself: 
```shell
mkdir cmake-build-release
cd cmake-build-release
conan install .. --build=missing
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake ..
cmake --build .  
```

Or by running Makefile

* ```make run-app```  - run app in release mode
* ```make build-debug```  - build app in debug mode
* ```make build-release```  - build app in release mode
* ```make install-dependencies```  - run conan and install all dependencies


## Usage: 

* Add external dependencies via [conan package manager](https://conan.io/center/)
* all sources placed in ```<template>``` folder


