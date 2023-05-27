#include <iostream>
using namespace std;

class A {
    public:
    void f() {cout << "a";}
};

class B: public A {
    public:
    void f() {cout << "b";}
    ostream& operator<<(ostream& os) {
        os << "hello";
    }
};

int main() {
    A a; B b;
    A* aptr = &b; B* bptr = &b;
    (*aptr).f(); (*bptr).f();
    aptr->f(); bptr->f();
    return 0;
}