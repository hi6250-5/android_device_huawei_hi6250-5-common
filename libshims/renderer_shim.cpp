#include <utils/String8.h>

#include "Program.h"
#include "Extensions.h"
#include "Properties.h"

using namespace android;

extern "C" void _ZN7android10uirenderer12ProgramCache14generateShaderERKNS0_18ProgramDescriptionERNS_7String8ES6_(void *thisptr,
	android::uirenderer::ProgramDescription& desc, String8 &vertexShader, String8 &fragmentShader ) {
}

extern "C" void _ZN7android10uirenderer12ProgramCacheC1ERNS0_10ExtensionsE(const android::uirenderer::Extensions& extensions) {
	// no-op, the constructor was deprecated
}

extern "C" void _ZN7android10uirenderer10ExtensionsC1Ev() {
	// no-op, the constructor was deprecated
}

extern "C" void _ZN7android10uirenderer12ProgramCacheD1Ev() {
	// no-op, the destructor was deprecated
}
