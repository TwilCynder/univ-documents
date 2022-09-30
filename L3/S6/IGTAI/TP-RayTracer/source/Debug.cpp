#include "Debug.h"
#include <iostream>

void Debug::log_(std::ostream& out, const char* s){
  out << s << '\n' << std::flush;
}

void Debug::log_(std::ostream& out, float f){
  out << f << '\n';
}

void Debug::log_(std::ostream& out, double d){
  out << d << '\n';
}

void Debug::log_(std::ostream& out, void* p){
  out << p << '\n' << std::flush;
}
