#ifndef FB_Test2_ST
#define FB_Test2_ST

FUNCTION_BLOCK FB_Test2
  VAR_INPUT
    in2 : BOOL;
  END_VAR
  VAR_OUTPUT
    out2 : BOOL;
  END_VAR

  out2 := in2;
END_FUNCTION_BLOCK

#endif