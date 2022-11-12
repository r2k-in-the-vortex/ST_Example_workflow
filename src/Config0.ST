#ifndef Config0_ST
#define Config0_ST
#include "MAIN.ST"

CONFIGURATION Config0
  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : MAIN;
  END_RESOURCE
END_CONFIGURATION

#endif