# Kali-Linux-Tools
Bash Scripts - Designed for quick software downloading in Kali Linux OS

Some bash scripts I wrote for setting up various tools within the Kali Linux environment. 
1) In order to properly use these tools you must first move the downloaded folder to the desktop and RENAME from 'Kali-Linux-Tools-master' to 'Kali-Linux-Tools'. 
2) Copy all of these files into the new folder you made on the desktop. 

IMPORTANT - do not change any of the file names or any of the script names. This is important because within the scripts there are filepaths that are specfic to the names of the directories, if you rename the directory then you'll need rename the file paths within the scripts however its better off to just copy all of the files into the 'Kali-Linux-Tools' directory you created on the desktop.

3) Then make sure you have the proper permissions to run the 'Set-Permissions.sh' script. To make sure you have the proper permissions to run 'Set-Permissions.sh' open a terminal and type the following:

- cd /Desktop
- sudo -s (enter your password)
- chown root /Kali-Linux-Tools/Set-Permissions.sh
- chmod 777 /Kali-Linux-Tools/Set-Permissions.sh

Now you can open a terminal window, drag and drop the 'Set-Permissions.sh' script in it and hit enter. It will set the proper
permissions for ALL of the other scripts I wrote which in turn will make the root user the owner of the files and will allow the files to be executed aswell.

You can then open a terminal and drop each of the shell scripts into the terminal window and run them!
WARNING: the system upgrade scripts are awesome but while updating the system it requires you to enter in some information/make choices about how some programs should run (ex. should non sudo users be able to capture packets within WireShark?). You will need to manually fill these in yourself.

WARNING: I TAKE NO RESPONSIBILITY FOR ANYONE'S ACTIONS EXCEPT MY OWN. I SHARE CODE AND PROJECT IDEAS TO BE ACTIVE IN THE PROGRAMMING COMMUNITY AND TO HELP EDUCATE OTHERS/SELD-EDUCATE MYSELF TOO. EDUCATIONAL PURPOSES ONLY, ALWAYS REMEMBER TO MAKE WISE DECISIONS IN THE CYBER WORLD, I HOLD ZERO RESPONSIBILITY FOR YOUR ACTIONS.
