#import "common.h"
#import "headers/renderCommandEncoder.h"

CF_RETURNS_RETAINED
MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtRenderCommandEncoder*
mtNewRenderCommandEncoder(MtCommandBuffer *cmdb, MtRenderPassDescriptor *pass) {
  return [(id<MTLCommandBuffer>)cmdb renderCommandEncoderWithDescriptor: (MTLRenderPassDescriptor*)pass];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetFrontFacingWinding(MtRenderCommandEncoder *rce, MtWinding winding) {
  [(id<MTLRenderCommandEncoder>)rce setFrontFacingWinding:(MTLWinding)winding];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetCullMode(MtRenderCommandEncoder *rce, MtCullMode mode) {
  [(id<MTLRenderCommandEncoder>)rce setCullMode:(MTLCullMode)mode];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetViewport(MtRenderCommandEncoder *rce, MtViewport *viewport) {
  [(id<MTLRenderCommandEncoder>)rce setViewport: *(MTLViewport *)viewport];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetRenderPipelineState(MtRenderCommandEncoder *rce, MtRenderPipelineState *pipline) {
  [(id<MTLRenderCommandEncoder>)rce setRenderPipelineState: pipline];
}

void
mtSetDepthStencil(MtRenderCommandEncoder *rce, MtDepthStencilState *ds) {
  [(id<MTLRenderCommandEncoder>)rce setDepthStencilState: ds];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetVertexBytes(MtRenderCommandEncoder *enc,
              void                   *bytes,
              size_t                  legth,
              uint32_t                atIndex) {
  [(id<MTLRenderCommandEncoder>)enc setVertexBytes: bytes
                                            length: legth
                                           atIndex: atIndex];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetVertexBuffer(MtRenderCommandEncoder *rce,
               MtBuffer               *buf,
               size_t                  offset,
               uint32_t                index) {
  [(id<MTLRenderCommandEncoder>)rce setVertexBuffer: buf
                                             offset: offset
                                            atIndex: index];
}

void
mtSetFragmentBuffer(MtRenderCommandEncoder *rce,
               MtBuffer                *buf,
               size_t                  offset,
               uint32_t                index){

    [(id<MTLRenderCommandEncoder>)rce setFragmentBuffer: buf
                                                offset: offset
                                                atIndex: index];
}

void
mtSetFragmentTexture(MtRenderCommandEncoder *rce,
               MtTexture                *texture,
               uint32_t                 index){

    [(id<MTLRenderCommandEncoder>)rce setFragmentTexture: texture
                                                 atIndex: index];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtDrawPrimitives(MtRenderCommandEncoder *rce,
                 MtPrimitiveType         type,
                 size_t                  start,
                 size_t                  count) {
  [(id<MTLRenderCommandEncoder>)rce drawPrimitives: (MTLPrimitiveType)type
                                       vertexStart: start
                                       vertexCount: count];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtDrawIndexedPrimitives(MtRenderCommandEncoder *rce,
                        MtPrimitiveType         type,
                        uint32_t                indexCount,
                        MtIndexType             indexType,
                        MtBuffer               *indexBuffer,
                        uint32_t                indexBufferOffset) {
  [(id<MTLRenderCommandEncoder>)rce
          drawIndexedPrimitives: (MTLPrimitiveType)type
                     indexCount: indexCount
                      indexType: (MTLIndexType)indexType
                    indexBuffer: indexBuffer
              indexBufferOffset: indexBufferOffset];
}

void
mtEndEncoding(MtRenderCommandEncoder *rce){
    [(id<MTLRenderCommandEncoder>)rce endEncoding];
}