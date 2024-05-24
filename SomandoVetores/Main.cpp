#include<iostream>

struct alignas(16) Vector {
public:
	union {
		int16_t v[256];
	};
};

static int16_t RandomInteger() {
	return rand() % 100;
}

int main() {
	Vector a, b, c;



	return 0;
}