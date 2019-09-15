#include <ComponentA.hpp>
#include <iostream>

int main() {
    cmake_examples::ComponentA componentA;

    auto spaceInfo = componentA.GetDiskSpaceAvailableInBytes();
    bool ok = std::get<bool>(spaceInfo);

    if (ok) {
        auto availableSpaceInBytes = std::get<std::uint64_t>(spaceInfo);
        std::cout << "Available space: " << availableSpaceInBytes << " bytes\n";
        std::cout << "Available space: " << availableSpaceInBytes / 1000000 << " megabytes" << std::endl;
    } else {
        std::cerr << "Failed to read the disk space" << std::endl;
    }
    return 0;
}