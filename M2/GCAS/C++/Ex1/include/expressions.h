#include <iostream>

using namespace std;

struct Expr {
    virtual ~Expr() = 0;
    virtual void print(ostream& out) = 0;
    virtual float eval(float x) = 0;
};

struct Xvar: public Expr {
    virtual void print(ostream& out) { out << "x"; }
    virtual float eval(float x) { return x; }
};

class Const: Expr {
    float k;

    public:
    Const(const float k_): k(k_){}

    virtual void print(ostream& out) { out << k; }
    virtual float eval(float x) { return k; }

};

class Neg: public Expr {
    public:
    Neg(Expr *g_): g(g_) {}
    virtual void print(ostream& out) { out << "-" << g }
    virtual float eval(float x) { return -_g.eval(x); }
    private:
    Expr *g;
};