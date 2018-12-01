-- * This file has been automatically generated using `testgen'.
-- * Modifications should be made in the corresponding script file.

  -- Test Driver Source

  -- File:       /users/muhammadfaisalimrankhan/opt/gnat/2018/bin/src/coffe_machine_testgen.adb
  -- Script:     /users/muhammadfaisalimrankhan/opt/gnat/2018/bin/src/coffe_machine_testgen.ts


with Ada.Command_Line, Ada.Exceptions;
use type Ada.Command_Line.Exit_Status;

with coffee_machine; use coffee_machine;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure coffe_machine_testgen is

  package Driver_Internals is
    -- Global Data
    Program_Terminate     : exception;
    Fail_Result           : Boolean := False;
    Unexpected_Error      : Boolean := False;
    Status                : Ada.Command_Line.Exit_Status := 0;
    -- Data of last Test Case
    Test_Case_Passed      : Boolean := False;
    -- Access Routines
    procedure Set_Path (Path : in String);
    function Path_Was (Path : in String) return Boolean;
    function Taken_Path return String;
    function Passed return Boolean;
    function Failed return Boolean;
  end Driver_Internals;

  package body Driver_Internals is
    -- Data of last Test Case
    Test_Case_Path        : String (1.. 256);
    Test_Case_Path_Length : Natural := 0;
    -- Access Routines
    procedure Set_Path (Path : in String) is
      begin
        Test_Case_Path (Test_Case_Path'First..Path'Length) := Path;
        Test_Case_Path_Length := Path'Length;
      end Set_Path;
    function Path_Was (Path : in String) return Boolean is
      begin
        return Test_Case_Path_Length = Path'Length
            and then Test_Case_Path (1..Path'Length) = Path;
      end Path_Was;
    function Taken_Path return String is
      begin return Test_Case_Path (1..Test_Case_Path_Length); end Taken_Path;
    function Passed return Boolean is
      begin return Test_Case_Passed; end Passed;
    function Failed return Boolean is
      begin return not Test_Case_Passed; end Failed;
  end Driver_Internals;

begin  -- unit main block

  -- Test Case (1)   Test the coffee machine for three times 10 cents
  declare
    Sta: coffee_machine.State;
    Re: coffee_machine.Reaction;
    Expected_Reaction: coffee_machine.Reaction := Coffee;
    Actual_Reaction: coffee_machine.Reaction;
  begin  -- test case
    begin  -- prepare part
      coffee_machine.Initialize(X => Sta);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Ten_Cent,
            React => Re);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Ten_Cent,
            React => Re);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Ten_Cent,
            React => Re);
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in prepare part of test case 1.");
        raise Driver_Internals.Program_Terminate;
    end;  -- prepare part

    begin  -- test part
      Actual_Reaction := Re;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if Expected_Reaction = Actual_Reaction
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(1)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(1)  Test the coffee machine for three times 10 cents");
          Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:6 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(1)  Test the coffee machine for three times 10 cents");
        Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:6 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 1.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (2)   Test the coffee machine for one times 10 cents and then pressing button
  declare
    Sta: coffee_machine.State;
    Re: coffee_machine.Reaction;
    Expected_Reaction: coffee_machine.Reaction := Drop_All_Coins;
    Actual_Reaction: coffee_machine.Reaction;
  begin  -- test case
    begin  -- prepare part
      coffee_machine.Initialize(X => Sta);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Ten_Cent,
            React => Re);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Button,
            React => Re);
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in prepare part of test case 2.");
        raise Driver_Internals.Program_Terminate;
    end;  -- prepare part

    begin  -- test part
      Actual_Reaction := Re;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if Expected_Reaction = Actual_Reaction
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(2)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(2)  Test the coffee machine for one times 10 cents and then pressing button");
          Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:25 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(2)  Test the coffee machine for one times 10 cents and then pressing button");
        Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:25 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 2.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (3)   Test the coffee machine for two times 20 cents
  declare
    Sta: coffee_machine.State;
    Re: coffee_machine.Reaction;
    Expected_Reaction: coffee_machine.Reaction := Coffee;
    Actual_Reaction: coffee_machine.Reaction;
  begin  -- test case
    begin  -- prepare part
      coffee_machine.Initialize(X => Sta);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Twenty_Cent,
            React => Re);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Twenty_Cent,
            React => Re);
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in prepare part of test case 3.");
        raise Driver_Internals.Program_Terminate;
    end;  -- prepare part

    begin  -- test part
      Actual_Reaction := Re;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if Expected_Reaction = Actual_Reaction
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(3)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(3)  Test the coffee machine for two times 20 cents");
          Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:42 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(3)  Test the coffee machine for two times 20 cents");
        Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:42 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 3.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  -- Test Case (4)   Test the coffee machine for two times 10 cents
  declare
    Sta: coffee_machine.State;
    Re: coffee_machine.Reaction;
    Expected_Reaction: coffee_machine.Reaction := Nothing;
    Actual_Reaction: coffee_machine.Reaction;
  begin  -- test case
    begin  -- prepare part
      coffee_machine.Initialize(X => Sta);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Ten_Cent,
            React => Re);
      coffee_machine.X(S     => Sta,
            Act   => coffee_machine.Ten_Cent,
            React => Re);
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in prepare part of test case 4.");
        raise Driver_Internals.Program_Terminate;
    end;  -- prepare part

    begin  -- test part
      Actual_Reaction := Re;
      Driver_Internals.Set_Path ("=>");
    exception
      when E: others =>
        Driver_Internals.Set_Path (Ada.Exceptions.Exception_Name (E));
    end;  -- test part
    begin  -- result part
      if Driver_Internals.Path_Was ("=>") then
        if Expected_Reaction = Actual_Reaction
        then
          Driver_Internals.Test_Case_Passed := True;
          Put_Line ("(4)  pass.");
        else
          Driver_Internals.Test_Case_Passed := False;
          Driver_Internals.Fail_Result := True;
          Put_Line ("(4)  Test the coffee machine for two times 10 cents");
          Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:59 ");
          Put_Line ("      ...FAIL.");
          Put_Line ("         (" & "path `=>' was taken, but predicate is FALSE" & ")");
        end if;
      else
        Driver_Internals.Test_Case_Passed := False;
        Driver_Internals.Fail_Result := True;
        Put_Line ("(4)  Test the coffee machine for two times 10 cents");
        Put_Line ("           Script name:'coffe_machine_testgen.ts'; Line:59 ");
        Put_Line ("      ...FAIL.");
        Put_Line ("         (" & "path `" & Driver_Internals.Taken_Path & "' when `=>' was expected" & ")");
      end if;
    exception
      when Driver_Internals.Program_Terminate =>
        raise;
      when E: others =>
        Driver_Internals.Unexpected_Error := True;
        Put_Line ("ERROR: exception " & Ada.Exceptions.Exception_Name (E) & " raised in result part of test case 4.");
        raise Driver_Internals.Program_Terminate;
    end;  -- result part
  end;  -- test case

  --  End of test cases
  New_Line;
  Put ("Script name 'coffe_machine_testgen.ts'");
  Put ("; total test result: ");
  if Driver_Internals.Fail_Result then
    Put ("FAIL");
    Driver_Internals.Status := 1;
  else
    Put ("pass");
    Driver_Internals.Status := 0;
  end if;
  Put_Line (".");
  New_Line;
  Ada.Command_Line.Set_Exit_Status (Driver_Internals.Status);

exception
  when Driver_Internals.Program_Terminate =>
    New_Line;
    Put ("Total test result: ");
    if Driver_Internals.Fail_Result then
      Put ("FAIL");
      Driver_Internals.Status := 1;
    else
      Put ("UNDEFINED");
      Driver_Internals.Status := -1;
    end if;
    if Driver_Internals.Unexpected_Error then
      Put_Line (",");
      Put_Line ("        there were one or more errors outside of test cases.");
      Driver_Internals.Status := -1;
    else
      Put_Line (".");
    end if;
    New_Line;
    Ada.Command_Line.Set_Exit_Status (Driver_Internals.Status);
  when E: others =>
    New_Line;
    Put_Line ("Unexpected exception " & Ada.Exceptions.Exception_Name (E) & " propagating out of driver.");
    Put_Line ("Results are undefined.");
    Driver_Internals.Status := -1;
    Ada.Command_Line.Set_Exit_Status (Driver_Internals.Status);

end coffe_machine_testgen;
