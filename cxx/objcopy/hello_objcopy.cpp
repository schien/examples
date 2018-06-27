#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <mach-o/getsect.h>
#include <mach-o/ldsyms.h>

unsigned char* _binary_data_txt_start;
unsigned char* _binary_data_txt_end;


void readBinary() {
  size_t size;
  unsigned char* data = getsectiondata(&_mh_execute_header, "binary", "hello_bin", &size);
  _binary_data_txt_start = (unsigned char*)calloc(1, size);
  std::memcpy(_binary_data_txt_start, data, size);
  _binary_data_txt_end = _binary_data_txt_start + size + 1;
}

void freeBinary() {
  free(_binary_data_txt_start);
}

int main() {
  readBinary();

  unsigned char*  p = _binary_data_txt_start;

  while ( p != _binary_data_txt_end ) putchar(*p++);
}
