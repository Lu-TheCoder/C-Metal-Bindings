#import "common.h"
#import "headers/renderPipelineDescriptor.h"


CF_RETURNS_RETAINED
MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtRenderPipelineDescriptor*
mtNewRenderPipelineDescriptor(){
    MTLRenderPipelineDescriptor *mpipDesc;
    mpipDesc = [MTLRenderPipelineDescriptor new];
    // mpipDesc.colorAttachments[0].pixelFormat = (MTLPixelFormat)pixelFormat;
    return mpipDesc;
}

CF_RETURNS_RETAINED
MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtRenderPipelineDescriptor*
mtNewRenderPipelineDescriptorWithPixelFormat(MtPixelFormat pixelFormat){
    MTLRenderPipelineDescriptor *mpipDesc;
    mpipDesc = [MTLRenderPipelineDescriptor new];
    mpipDesc.colorAttachments[0].pixelFormat = (MTLPixelFormat)pixelFormat;
    return mpipDesc;
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetPixelFormat(MtRenderPipelineDescriptor* pipelineDescriptor, uint32_t index, MtPixelFormat pixelFormat){
    MTLRenderPipelineDescriptor *mpipDesc;
    mpipDesc = pipelineDescriptor;
    mpipDesc.colorAttachments[index].pixelFormat = (MTLPixelFormat)pixelFormat;
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetFunction(MtRenderPipelineDescriptor* pipelineDescriptor,
                                      MtFunction   *func,
                                      MtFunctionType    functionType){
  MTLRenderPipelineDescriptor *mpip;

  mpip = pipelineDescriptor;

  switch (functionType) {
    case MtFunctionTypeVertex:
      mpip.vertexFunction   = func;
      break;
    case MtFunctionTypeFragment:
      mpip.fragmentFunction = func;
      break;
    default: break;
  }
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetVertexDescriptor(MtRenderPipelineDescriptor* pipelineDescriptor,
                                              MtVertexDescriptor*    vertexDescriptor){
    MTLRenderPipelineDescriptor *mpipDesc;
    mpipDesc = pipelineDescriptor;
    mpipDesc.vertexDescriptor = (MTLVertexDescriptor*)vertexDescriptor;
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetDepthPixelFormat(MtRenderPipelineDescriptor* __restrict pipelineDescriptor,
                                              MtPixelFormat             pixelFormat){
  MTLRenderPipelineDescriptor *mpipDesc;
  mpipDesc = pipelineDescriptor;
  mpipDesc.depthAttachmentPixelFormat = (MTLPixelFormat)pixelFormat;
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetStencilPixelFormat(MtRenderPipelineDescriptor* __restrict pipelineDescriptor,
                                                MtPixelFormat             pixelFormat){
  MTLRenderPipelineDescriptor *mpipDesc;
  mpipDesc = pipelineDescriptor;
  mpipDesc.stencilAttachmentPixelFormat = (MTLPixelFormat)pixelFormat;

}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtRenderPipelineDescriptorSetSampleCount(MtRenderPipelineDescriptor* __restrict pipelineDescriptor,
                                         uint32_t                  sampleCount){
  MTLRenderPipelineDescriptor *mpipDesc;
  mpipDesc = pipelineDescriptor;
  mpipDesc.rasterSampleCount = sampleCount;
}