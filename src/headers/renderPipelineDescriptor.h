#pragma once
#include "common.h"
#include "metal_types.h"
#include "enums.h"
#include "pixelFormat.h"

typedef enum MtFunctionType {
    MtFunctionTypeVertex = 1,
    MtFunctionTypeFragment = 2,
    MtFunctionTypeKernel = 3,
    MtFunctionTypeVisible = 5,
    MtFunctionTypeIntersection = 6,
    MtFunctionTypeMesh = 7,
    MtFunctionTypeObject = 8,
}MtFunctionType;

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtRenderPipelineDescriptor*
mtNewRenderPipelineDescriptor();

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtRenderPipelineDescriptor*
mtNewRenderPipelineDescriptorWithPixelFormat(MtPixelFormat pixelFormat);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetPixelFormat(MtRenderPipelineDescriptor* pipelineDescriptor, uint32_t index, MtPixelFormat pixelFormat);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetFunction(MtRenderPipelineDescriptor* pipelineDescriptor,
                                      MtFunction   *func,
                                      MtFunctionType    funcionType);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetVertexDescriptor(MtRenderPipelineDescriptor* pipelineDescriptor,
                                              MtVertexDescriptor*    vertexDescriptor);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetDepthPixelFormat(MtRenderPipelineDescriptor* __restrict pipelineDescriptor,
                                              MtPixelFormat             pixelFormat);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetStencilPixelFormat(MtRenderPipelineDescriptor* __restrict pipelineDescriptor,
                                                MtPixelFormat             pixelFormat);

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetSampleCount(MtRenderPipelineDescriptor* __restrict pipelineDescriptor,
                                         uint32_t                  sampleCount);