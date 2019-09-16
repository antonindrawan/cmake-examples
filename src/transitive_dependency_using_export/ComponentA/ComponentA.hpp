#pragma once

#include "componenta_export.h"

#include <string>
#include <tuple>

namespace cmake_examples {
    class COMPONENTA_EXPORT ComponentA {
    public:
        //! Returns the free disk space available in bytes
        std::tuple<bool, std::uint64_t> GetDiskSpaceAvailableInBytes() const;

        std::string GetComponentBName() const;
    };
}