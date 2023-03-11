#include <iostream>

int dunc(){
	 return 3;
}

class Justin
{
public:
	Justin();
	Justin(Justin &&) = default;
	Justin(const Justin &) = default;
	Justin &operator=(Justin &&) = default;
	Justin &operator=(const Justin &) = default;
	~Justin();

private:
	
};

Justin::Justin()
{
}

Justin::~Justin()
{
}

int main() {
  using namespace std;
  cout << "unit test" << endl;
}
