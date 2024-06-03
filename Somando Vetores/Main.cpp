#include <iostream>
#include <cstdlib>

struct alignas(16) XmmVal {
public:
union {
    int8_t i8[16];
};
};

extern "C" void xmmSum(const XmmVal *a, const XmmVal *b, XmmVal *result);

void randomFill(XmmVal *a, XmmVal *b) {
    for (int i = 0; i < 16; i++) {
        a->i8[i] = 10 + rand() % 40;
        b->i8[i] = 10 + rand() % 40;
    }
}

int main() {
    srand(time(nullptr));
    XmmVal a{}, b{}, c{};

    randomFill(&a, &b);
    xmmSum(&a, &b, &c);

    std::cout << "A = ";
    for (const auto e: a.i8)
        std::cout << (int) e << " ";

    std::cout << "\nB = ";
    for (const auto e: b.i8)
        std::cout << (int) e << " ";

    std::cout << "\n\nExpected result:\n";
    for (int i = 0; i < 16; i++)
        std::cout << a.i8[i] + b.i8[i] << " ";

    std::cout << "\n\nActual result:\n";
    for (const auto e: c.i8)
        std::cout << (int) e << " ";

    std::cout << "\n";
    return 0;
}