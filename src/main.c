#include <stdio.h>
#include "headers/CMetal.h"
#include "platform/platform.h"

int main(){

    GWindow* window = GWindow_Create(600, 400, "Lu's Graphics Engine (Metal)", 0);

    //BEGIN OF METAL
    MtDevice* device = mtCreateSystemDefaultDevice();
    MtCommandQueue* commandQueue = mtNewCommandQueue(device);

    GWindow_CreateMetal_Surface(window, device);
    

    if (device){
        printf("Device Found!...\n");
    }else{
        printf("Device Error: failed to find Device\n");
    }

    printf("Device Name: %s\n", mtDeviceName(device));


    //END OF METAL

   

    while(!GWindow_Should_Close(window)){

        MtDrawable* drawable = GWindow_getNextDrawable(window);

        MtCommandBuffer* commandBuffer = mtNewCommandBuffer(commandQueue);

        MtRenderPassDescriptor* passDescriptor = mtNewRenderPassDescriptor();
        mtSetRenderPassDescLoadAction(passDescriptor, 0, MtLoadActionClear);
        mtSetClearColorRGBA(passDescriptor, 0, 0.1, 0.1, 0.1, 1.0);

        MtRenderCommandEncoder* commandEncoder = mtNewRenderCommandEncoder(commandBuffer, passDescriptor);
        free(passDescriptor);

         if (commandEncoder == 0){
            printf("Command Encoder nil\n");
        }

        MtViewport* viewport = malloc(sizeof(MtViewport));
        viewport->originX = 0;
        viewport->originY = 0;
        viewport->width = window->layer.drawableSize.width;
        viewport->height = window->layer.drawableSize.height;
        viewport->znear = 0;
        viewport->zfar = 1;

        mtSetViewport(commandEncoder, viewport);

        mtEndEncoding(commandEncoder);

        mtCommandBufferPresentDrawable(commandBuffer, drawable);
        mtCommandBufferCommit(commandBuffer);

        GWindow_Poll_Events();
    }

    GWindow_Destroy(window);

    return 0;
}