#pragma once

#include <tuple>

namespace cmake_examples {
    class ComponentA {
    public:
        //! Returns the free disk space available in bytes
        std::tuple<bool, std::uint64_t> GetDiskSpaceAvailableInBytes() const;
    };
}