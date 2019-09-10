#include "Foo.h"

#include <iostream>

void Foo::print()
{
  std::cout << __PRETTY_FUNCTION__ << std::endl;
}
