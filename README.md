# MIPS Educational Game for CSE442 semester long project

Purpose: Educational game for MIPS beginner

Authors: Hanzhang Bai, Sai Cao, Xiang Li, Tianyu Cao

Last updated on 05 March 2019

Website: http://hbai.me/sprint2

Trello board: http://hbai.me/trello

# Release Note

Version 1 (05-Mar-2019)

Highlights:

* Main menu
* Animation
* Working buttons

### Game UI
![UI](https://github.com/sxht4/MIPS-Edu-Game/blob/master/Assets/game_UI/game_UI.jpg)

1. MIPS code can be write in this area
2. Show memory status in runtime of MIPS code 
3. Show registers in MIPS
4. Show the MIPS instruction menu. player can drag from the menu and choose registers and meomory instead of typing the code.
5. Buttons that control game speed, run the code and pause.
6. NPC to provide help and give the task.
7. A character play role of CPU.
Animation will show the prococess that how the MIPS instruction is excuted for player.

# Deploy our project

System requirement:

* CentOS 7/Ubuntu 18.04 LTS

* Apache 2

Run this script on your Linux OS.

`wget https://www.acsu.buffalo.edu/~hbai/install.sh && sudo chmod u+x install.sh && sudo ./install.sh --deployment-only`
