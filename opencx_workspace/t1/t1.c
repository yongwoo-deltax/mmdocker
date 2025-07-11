#include <stdio.h>
#include <stdlib.h>
#include <VX/vx.h>
#include <VX/vxu.h>

int main(int argc, char *argv[]) {
	vx_context context = vxCreateContext();
	vxReleaseContext(&context);
	return 0;
}
