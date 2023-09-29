#import "common.h"
#import "headers/commandQueue.h"

CF_RETURNS_RETAINED
MtCommandQueue*
mtNewCommandQueue(MtDevice *device) {
  return [(id<MTLDevice>)device newCommandQueue];
}
