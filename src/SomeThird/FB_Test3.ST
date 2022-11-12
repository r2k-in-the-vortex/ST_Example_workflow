#ifndef FB_Test3_ST
#define FB_Test3_ST

FUNCTION_BLOCK FB_Test3
  VAR_INPUT
    in2 : BOOL;
  END_VAR
  VAR_OUTPUT
    out2 : BOOL;
  END_VAR

  out2 := in2;
END_FUNCTION_BLOCK

#endif