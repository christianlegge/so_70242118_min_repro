#include <iostream>

#include "../base.h"

class Derived2 : public Base {
public:
	void doWork()
	{
		std::cout << "I'm Derived2" << std::endl;
	}
};
