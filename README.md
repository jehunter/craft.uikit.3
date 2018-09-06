# Install Steps
1. Add craft.local to /etc/hosts on Mac
2. Clone the repo
3. Run *vagrant up* in terminal window
3. Once vagrant is up run *vagrant ssh* in separate terminal window
4. Create MySQL database for craft
5. Go to vagrant directory (/vagrant) and change file permissions for config/, storage/, and web/cpresources to 777
6. Change permissions for *craft* bash script file to 744
7. Run *./craft setup* and follow the instructions to set up the craft installation
8. Go to http://craft.local:4567 (if 500/internal server error, double check permissions on storage folder and sub folders)
9. Enable auto rsync by running *vagrant rsync-auto* in the first terminal window where you ran *vagrant up*
