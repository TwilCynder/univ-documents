#include <ostream>
#include <iostream>

class Debug {
  private:
  static void log_(std::ostream& out, const char*);
  static void log_(std::ostream& out, float);
  static void log_(std::ostream& out, double);

  public:
  template<typename T>
  static void log(T val){
    log_(std::cout, val);
  }

  template<typename T>
  static void error(T val){
    log_(std::cerr, val);
  }
};