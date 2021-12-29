#include <math.h>

extern "C" long long __aeabi_d2ulz(double var) {
    return (unsigned int)ceil(var);
}

extern "C" long long __aeabi_d2lz(double var) {
    return (long long)floor(var);
}