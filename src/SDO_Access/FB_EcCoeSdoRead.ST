#ifndef FB_EcCoeSdoRead_ST
#define FB_EcCoeSdoRead_ST

(* outline borrowed from TwinCAT 3 | PLC Library: Tc2_EtherCAT FB_EcCoeSdoRead, refer to beckhoff documentation for details *)
FUNCTION_BLOCK FB_EcCoeSdoRead
  VAR_INPUT
    nSlaveAddr  : UINT;             (* slave position *)
    nSubIndex   : BYTE;             (* sdo subindex *)
    nIndex      : WORD;             (* sdo index *)
    pDstBuf     : REF_TO BYTE;      (* no PVOIDs in matiec, try to make do. *)
    cbBufLen    : UDINT;            (* number of bytes to read *)
    bExecute    : BOOL;             (* start command *)
    tTimeout    : TIME := T#1S;     (* timeout *)
  END_VAR
  VAR_OUTPUT
    bBusy       : BOOL;             (* status *)
    bError      : BOOL;             (* error status *)
    nErrId      : UDINT;            (* to be defined *)
  END_VAR

    {{
    char fromplc = GetFbVar(BEXECUTE);
    char toplc = 1;
    extern int ethercat_read_sdo();
    if (ethercat_read_sdo()){
        SetFbVar(BBUSY, toplc);
    }
    }}
END_FUNCTION_BLOCK

#endif


