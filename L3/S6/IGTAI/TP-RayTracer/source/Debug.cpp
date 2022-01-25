#include "Debug.h"
#include <iostream>

void Debug::log_(std::ostream& out, const char* s){
  out << s << '\n';
}

void Debug::log_(std::ostream& out, float f){
  out << f << '\n';
}

void Debug::log_(std::ostream& out, double d){
  out << d << '\n';
}
