#ifndef MAIN_ST
#define MAIN_ST
#include "functionBlock0.ST"
#include "SomeOther/FB_Test2.ST"

PROGRAM MAIN
  VAR
    LocalVar0 : BOOL;
    LocalVar1 : BOOL;
    FB_1 : functionBlock0;
    FB_2 : FB_Test2;
  END_VAR

  FB_1(in := true, out => LocalVar0);
  FB_2(in2 := true, out2 => LocalVar0);

END_PROGRAM

#endif