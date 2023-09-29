#pragma once

#include "common.h"
#include "metal_types.h"

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtCommandBuffer*
mtNewCommandBuffer(MtCommandQueue *cmdq); 

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
/*
    Returns a command buffer from the command queue that maintains strong references to resources.
    TODO: this description is misleading given the title of the function/ thus fix soon
*/
MtCommandBuffer*
mtNewCommandBufferWithUnretainedReferences(MtCommandQueue *cmdq); 

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtCommandBufferPresentDrawable(MtCommandBuffer *cmdb,
          MtDrawable      *drawable);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtCommandBufferCommit(MtCommandBuffer *cmdb);
