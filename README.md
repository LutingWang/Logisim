# CPU_monocycle

## Overview

This is the final version of ***Project 3 CPU monocycle*** of ***BUAA Computer Origanization*** year 2018 - 2019. The project is developed in Logisim and is designed handle the MIPS-Lite Instruction Set, i.e. {nop, jr, addu, subu, slt, beq, addiu, ori, lui, lw, sw, j, jal}. You may need to download Logisim in order to check out the project.

**WARNING: the project is used only for study! Cloning the whole project and submitting it as your project is a serious violation of the course regulations. Cheating will bring about numerous penalties. Moreover, nobody ensures the project being absolutely correct. Please test it before you put into use.** 

## Project Info

The project consists of one monocycle CPU, using one set of instruction and data cache. The ROM in Logisim, i.e. the instruction cache, doesn't support auto-load. Thus, you need to manually load test.txt into IM, and then enable tick. 

Every cycle, the project handles a piece of instruction. You can stop ticking at any point and check the contemporary circuit status.