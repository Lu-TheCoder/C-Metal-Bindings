#import "common.h"
#import "headers/commandBuffer.h"

CF_RETURNS_RETAINED
MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtCommandBuffer*
mtNewCommandBuffer(MtCommandQueue *cmdq) {
  return [(id<MTLCommandQueue>)cmdq commandBuffer];
}

CF_RETURNS_RETAINED
MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtCommandBuffer*
mtNewCommandBufferWithUnretainedReferences(MtCommandQueue *cmdq) {
  return [(id<MTLCommandQueue>)cmdq commandBufferWithUnretainedReferences];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtCommandBufferPresentDrawable(MtCommandBuffer *cmdb, MtDrawable *drawable) {
  [(id<MTLCommandBuffer>)cmdb presentDrawable: drawable];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtCommandBufferCommit(MtCommandBuffer *cmdb) {
  [(id<MTLCommandBuffer>)cmdb commit];
}