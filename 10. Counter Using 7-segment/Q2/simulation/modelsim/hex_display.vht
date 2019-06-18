-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/12/2019 19:21:00"
                                                            
-- Vhdl Test Bench template for design  :  hex_display
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hex_display_vhd_tst IS
END hex_display_vhd_tst;
ARCHITECTURE hex_display_arch OF hex_display_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL display : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL h_pressed : STD_LOGIC;
SIGNAL h_reset : STD_LOGIC :='1';
SIGNAL h_upp_ner : STD_LOGIC;
COMPONENT hex_display
	PORT (
	display : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	h_pressed : IN STD_LOGIC;
	h_reset : IN STD_LOGIC;
	h_upp_ner : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : hex_display
	PORT MAP (
-- list connections between master ports and signals
	display => display,
	h_pressed => h_pressed,
	h_reset => h_reset,
	h_upp_ner => h_upp_ner
	);
--init : PROCESS                                               
---- variable declarations                                     
--BEGIN                                                        
--        -- code that executes only once                      
--WAIT;                                                       
--END PROCESS init;                                           
--always : PROCESS                                              
---- optional sensitivity list                                  
---- (        )                                                 
---- variable declarations                                      
--BEGIN                                                         
--        -- code executes for every event on sensitivity list  
--WAIT;                                                        
--END PROCESS always;    
PROCESS
BEGIN
	h_upp_ner <= '0';
	
	h_pressed <= '1';
	wait for 100 ns;
	
	h_pressed <= '0';
	wait for 100 ns;
	
	h_pressed <= '1';
	wait for 100 ns;

	h_pressed <= '0';	
	wait for 100 ns;
	
	h_upp_ner <= '1';
	
	h_pressed <= '1';
	wait for 100 ns;
	
	h_pressed <= '0';
	wait for 100 ns;
	
	h_pressed <= '1';
	wait for 100 ns;

	h_pressed <= '0';
	wait for 100 ns;
	
	h_pressed <= '1';
	wait for 100 ns;
	
	h_pressed <= '0';
	wait for 100 ns;

END PROCESS;                                      
END hex_display_arch;
