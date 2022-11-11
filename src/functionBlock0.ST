#ifndef functionBlock0_ST
#define functionBlock0_ST
#include "SomeOther/FB_Test2.ST"

FUNCTION_BLOCK functionBlock0
  VAR_INPUT
    in : BOOL;
  END_VAR
  VAR_OUTPUT
    out : BOOL;
  END_VAR
  VAR
    testfb    : FB_Test2;
  END_VAR

  testfb();
  out := in;
END_FUNCTION_BLOCK

#endif