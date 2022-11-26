{#ifndef FB_Observer_ST}
{#define FB_Observer_ST}

(*

Generic Archidecture for tying together higher and lower level 
State machines and to separate Higher FSM-s from need to know 
details of slave FSM states.

*---------*         *---------*         *---------*
* Higher  *<--------* Observer*<--------* Slave   *
* FSM     * Generic * FSM     * Trigger * FSM     *
*         * State   *---------* Report  *         *
*         *---------------------------->*         *
*---------*          Command            *---------*

*)

TYPE E_ObserverState : (
    Idle,           (* ready to do work                                                                             *)
    BusyFirst,      (* just started doing work, state active for single read cycle, upon read, changes to busy      *)
    Busy,           (* doing work                                                                                   *)
    Ready,          (* just completed doing work, state active for single read cycle, upon read, changes to idle    *)
    Error           (* error state, halted doing work                                                               *)
);
END_TYPE

FUNCTION_BLOCK FB_Observer
    VAR_INPUT
        StartWork       : BOOL := FALSE;        (* request transition Idle > BusyFirst  *)
        CompleteWork    : BOOL := FALSE;        (* request transition Busy > Ready      *)  
        SetError        : BOOL := FALSE;        (* request transition Busy > Error      *)  
        ResetError      : BOOL := FALSE;        (* request transition Error > Busy      *)  
    END_VAR
    VAR_OUTPUT
        ObserverState   : E_ObserverState := Idle;      (* State of the observable *)
    END_VAR
    VAR
        StateChange     : BOOL;                 (* Observable changes states via input variables,  *) 
                                                (* higher level oberver only queries ObserverState *) 
    END_VAR
    StateChange := StartWork OR CompleteWork OR SetError OR ResetError;

    CASE ObserverState OF
        Idle:
            IF StartWork THEN
                ObserverState := BusyFirst;
            END_IF;
        BusyFirst:
            IF NOT StateChange THEN
                ObserverState := Busy;
            END_IF;
        Busy:
            IF SetError THEN
                ObserverState := Error;
            ELSIF CompleteWork THEN
                ObserverState := Ready;
            END_IF;
        Ready:
            IF NOT StateChange THEN
                ObserverState := Idle;
            END_IF;
        Error:
            IF ResetError THEN
                ObserverState := Busy;
            END_IF;
        ELSE
            ObserverState := Idle;
    END_CASE;

END_FUNCTION_BLOCK

(* Interface for Higher level FSM *)

FUNCTION F_Observe : E_ObserverState
    VAR_INPUT
        Observable      : FB_Observer;
    END_VAR
    Observable(ObserverState => F_Observe);
END_FUNCTION

{#endif}