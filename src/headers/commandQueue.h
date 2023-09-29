#pragma once

#include "metal_types.h"

/*
    Creates a queue you use to submit rendering and computation commands to a GPU
*/
MtCommandQueue*
mtNewCommandQueue(MtDevice *device);
