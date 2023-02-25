#include <iostream>
#include <fstream>
#include "main.h"


/*
 *
 * /param a
 * /param gf
 * /return
 */
int msd(int a, int gf) { return 0; }

/**
 * /class MyClass
 * /brief
 *
 */

class MyClass {
public:
  MyClass();
  ~MyClass();
  MyClass(const MyClass &) = default;
  MyClass &operator=(MyClass &&) = default;
  void dusk();
private:
protected:
};

// LEFTOVER:
MyClass::MyClass() {}

MyClass::~MyClass() {}

int main(int argc, char *argv[]) {
  using namespace std;

  MyClass cs;
  cs.dusk();
  int a = 3;
  int arr[] = {3, 43, 21, 2, 2, 2};
  cout << "meow" << endl;
  vision df;
  df.meow();
  return 0;
}
