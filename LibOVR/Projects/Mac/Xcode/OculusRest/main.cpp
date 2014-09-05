//
//  main.cpp
//  OculusRest
//
//  Created by Michael Feldstein on 9/4/14.
//  Copyright (c) 2014 Oculus VR Inc. All rights reserved.
//

#include <iostream>
#include "microhttpd.h"
#include "OVR_CAPI.h"

int main(int argc, const char * argv[])
{
    std::cout << "Hello, World!\n";
    ovr_Initialize();
    
    return 0;
}

