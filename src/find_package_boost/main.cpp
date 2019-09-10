#include <boost/filesystem.hpp>
#include <iostream>

int main()
{
    namespace fs = boost::filesystem;

    fs::path executable_file = "find_package_boost";
    if (fs::exists(executable_file)) {
        std::cout << executable_file << " is found" << std::endl;
    } else {
        std::cout << executable_file << " could not be found" << std::endl;
    }

    return 0;
}