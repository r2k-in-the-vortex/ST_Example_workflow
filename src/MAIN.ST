#ifndef MAIN_ST
#define MAIN_ST
#include "functionBlock0.ST"
#include "SomeOther/FB_Test2.ST"
#include "FB_Test3.ST"

PROGRAM MAIN
  VAR
    Slave0_Channel_1 AT %IX0.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave0_Channel_2 AT %IX1.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave0_Channel_3 AT %IX2.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave0_Channel_4 AT %IX3.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave1_Channel_1 AT %IX4.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave1_Channel_2 AT %IX5.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave1_Channel_3 AT %IX6.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave1_Channel_4 AT %IX7.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave1_Channel_5 AT %IX8.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave1_Channel_6 AT %IX9.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave1_Channel_7 AT %IX10.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave1_Channel_8 AT %IX11.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_1 AT %IX12.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_2 AT %IX13.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_3 AT %IX14.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_4 AT %IX15.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_5 AT %IX16.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_6 AT %IX17.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_7 AT %IX18.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave2_Channel_8 AT %IX19.0 : BOOL; (* EL1018 8K. Dig. Eingang 24V, 10�s *)
    Slave0_Channel_5 AT %QX0.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave0_Channel_6 AT %QX1.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave0_Channel_7 AT %QX2.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave0_Channel_8 AT %QX3.0 : BOOL; (* EK1814 EtherCAT-EA-Koppler (1A E-Bus, 4 K. Dig. Ein, 3ms, 4 K.  *)
    Slave3_Channel_1 AT %QX4.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
    Slave3_Channel_2 AT %QX5.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
    Slave3_Channel_3 AT %QX6.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
    Slave3_Channel_4 AT %QX7.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
    Slave3_Channel_5 AT %QX8.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
    Slave3_Channel_6 AT %QX9.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
    Slave3_Channel_7 AT %QX10.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
    Slave3_Channel_8 AT %QX11.0 : BOOL; (* EL2008 8K. Dig. Ausgang 24V, 0.5A *)
  END_VAR

  Slave3_Channel_8 := TRUE;
END_PROGRAM

#endif