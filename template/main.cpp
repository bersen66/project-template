#include <cstdlib>
#include <template/adder/adder.hpp>
#include <boost/program_options.hpp>
#include <boost/asio.hpp>
#include <iostream>
#include <template/adder/adder.hpp>


namespace opt = boost::program_options;


int main(int argc, char **argv) {
    boost::asio::io_context ioc{};
    opt::options_description desc;
    std::cout << add(1, 3) << std::endl;
    return EXIT_SUCCESS;
}
