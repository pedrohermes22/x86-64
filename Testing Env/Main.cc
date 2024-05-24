#include <iostream>

extern "C" int TestingAsm();

int main() {
    auto ret = TestingAsm();
    std::cout << "Return value: " << ret << std::endl;
    return 0;
}