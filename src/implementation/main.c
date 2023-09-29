#include <stdio.h>
#include "headers/CMetal.h"


int main(){

    MtDevice* device = mtCreateSystemDefaultDevice();

    if (device){
        printf("Device Found!...\n");
    }else{
        printf("Device Error: failed to find Device\n");
    }

    printf("Device Name: %s\n", mtDeviceName(device));

    return 0;
}