#include <iostream>

#include "../base.h"

class Derived1 : public Base {
public:
	void doWork() {
		std::cout << "I'm Derived1" << std::endl;
	}

};
