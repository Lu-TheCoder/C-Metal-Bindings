#pragma once

/*
    brief The main Metal interface to a GPU that apps use to draw graphics and run computations in parallel.
*/
typedef void MtDevice;
/*
    An instance you use to create, submit, and schedule command buffers to a specific GPU device to run the commands within those buffers.
*/
typedef void MtCommandQueue;
/*
    A container that stores a sequence of GPU commands that you encode into it. 
*/
typedef void MtCommandBuffer;

typedef void MtDrawable;
typedef void MtBuffer;
typedef void MtRenderCommandEncoder;
typedef void MtRenderPassDescriptor;
typedef void MtRenderPipelineState;
typedef void MtRenderPipelineDescriptor;

typedef void MtTexture;
typedef void MtDepthStencilState;
typedef void MtFunction;
typedef void MtVertexDescriptor;
