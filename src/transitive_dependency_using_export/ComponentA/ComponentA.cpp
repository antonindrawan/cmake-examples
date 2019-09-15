#include "ComponentA.hpp"

#include <boost/filesystem.hpp>

namespace cmake_examples {

std::tuple<bool, std::uint64_t> ComponentA::GetDiskSpaceAvailableInBytes() const {
    boost::filesystem::path currentPath {"."};

    boost::system::error_code error;
    boost::filesystem::space_info spaceInfo = boost::filesystem::space(currentPath, error);
    if (error) {
        return std::make_tuple(false, 0);
    }

    return std::make_tuple(true, spaceInfo.available);
}

}