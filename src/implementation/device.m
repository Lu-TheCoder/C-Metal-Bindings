#import "common.h"
#import "headers/device.h"

CF_RETURNS_RETAINED
MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtDevice*
mtCreateSystemDefaultDevice() {
  return MTLCreateSystemDefaultDevice();
}

CF_RETURNS_RETAINED
MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
const char*
mtDeviceName(MtDevice* device) {
  return [[(id<MTLDevice>)device name] cStringUsingEncoding:NSUTF8StringEncoding];
}