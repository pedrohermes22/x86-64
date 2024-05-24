#include <iostream>

extern "C" int Sum();

int main() {
    int val = Sum();
    std::cout << "Sum: " << val << std::endl;

    return 0;
}