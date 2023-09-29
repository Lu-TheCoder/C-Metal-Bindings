#include "common.h"
#include "metal_types.h"


MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
/*
    Returns the device instance Metal selects as the default
*/
MtDevice* mtCreateSystemDefaultDevice(void);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
const char* mtDeviceName(MtDevice* device);