#import "common.h"
#import "headers/renderPassDescriptor.h"

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
MtRenderPassDescriptor*
mtNewRenderPassDescriptor() {
  return [MTLRenderPassDescriptor new];
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetRenderPassDescTexture(MtRenderPassDescriptor *pass,
              int               colorAttch,
              MtTexture        *tex) {
  MTLRenderPassDescriptor *mpass;

  mpass = pass;

  mpass.colorAttachments[colorAttch].texture = tex;
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetRenderPassDescLoadAction(MtRenderPassDescriptor *pass,
                 int               colorAttch,
                 MtLoadAction      action) {
  MTLRenderPassDescriptor *mpass;

  mpass = pass;

  mpass.colorAttachments[colorAttch].loadAction = (MTLLoadAction)action;
}

MT_API_AVAILABLE(mt_macos(10.11), mt_ios(8.0))
void
mtSetRenderPassDescStoreAction(MtRenderPassDescriptor *pass,
                 int               colorAttch,
                 MtStoreAction      action) {
  MTLRenderPassDescriptor *mpass;

  mpass = pass;

  mpass.colorAttachments[colorAttch].storeAction = (MTLStoreAction)action;
}

MtClearColor
mtClearColorMake(double red, double green, double blue, double alpha){
    MtClearColor result;
    result.red = red;
    result.green = green;
    result.blue = blue;
    result.alpha = alpha;
    return result;
}

void
mtSetClearColor(MtRenderPassDescriptor *pass, int colorAttch, MtClearColor* color){
    MTLRenderPassDescriptor *mpass;

    mpass = pass;

    mpass.colorAttachments[colorAttch].clearColor = *(MTLClearColor*)color;
}

void
mtSetClearColorRGBA(MtRenderPassDescriptor *pass, int colorAttch, double red, double green, double blue, double alpha){
    MTLRenderPassDescriptor *mpass;

    mpass = pass;

    mpass.colorAttachments[colorAttch].clearColor = MTLClearColorMake(red, green, blue, alpha);
}

