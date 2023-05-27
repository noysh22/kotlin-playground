# Ultimate linux commands cheatsheet

The cheatsheet has been taken from [here](https://blog.devops.dev/linux-commands-cheatsheet-cac3c70845e2)

| Commands | Description |
| -------- | -------- |
| uname -a               | Displays all information about Linux system information                                                                       |
| uname -r               | Displays the system                                                                                                           |
| uname                  | Displays Linux system information                                                                                             |
| uptime                 | Displays since how system has been running                                                                                    |
| uptime -p              | Shows uptime in pretty format                                                                                                 |
| uptime -s              | Shows uptime in pretty format                                                                                                 |
| hostname               | Displays host name                                                                                                            |
| hostname -f            | Displays long host name (FQDN)                                                                                                |
| hostname -i            | Displays IP addresses for the host name                                                                                       |
| hostname -I            | Displays all IP addresses for the host                                                                                        |
| last reboot            | Shows system reboot history                                                                                                   |
| lshw                   | Hardware Lister                                                                                                               |
| lsblk -a               | Lists the information about all the block devices attached to the system                                                      |
| lscpu                  | Displays information about the CPU architecture                                                                               |
| lscpu -a               | Prints both online and offline CPUs                                                                                           |
| ip addr                | Shows addresses assigned to all network interfaces                                                                            |
| ip route               | Show table routes                                                                                                             |
| ifconfig               | Displays the IP address of the system                                                                                         |
| date                   | Shows system date and timestamp                                                                                               |
| date +”%d”             | Prints day of the month (01-31)                                                                                               |
| date +”%m”             | Prints the month of the year 01-12                                                                                            |
| date +”%y”             | Prints only the last two digits of Year                                                                                       |
| date +”%H”             | Prints the hour 00-23                                                                                                         |
| date +”%M”             | Prints the Minute of the hour 00-59                                                                                           |
| date +”%S”             | Prints the current seconds count in the minute (00-60)                                                                        |
| date +"%D"             | Prints Date in MM/DD/YY                                                                                                       |
| date +”%F”             | Prints only the Full date as YYYY-MM-DD                                                                                       |
| date +”%A”             | Prints the Day of the Week Saturday-Sunday                                                                                    |
| date +”%B”             | Prints the month between January-December                                                                                     |
| who                    | Prints information about users who are currently logged in                                                                    |
| who -a                 | Prints information about all users who are currently logged in                                                                |
| whoami                 | Prints the user name associated with the current effective user ID                                                            |
| umask                  | Prints the permissions bits for newly created files or directories                                                            |
| free                   | Displays system memory details in KB                                                                                          |
| free -m                | Displays system memory details in MB                                                                                          |
| id                     | Prints user and group information for the specified USER                                                                      |
| last                   | Displays display the list of all the users logged in and out since the file /var/log/wtmp was created                         |
| lsof                   | Lists all open files belonging to all active processes                                                                        |
| ulimit                 | Allows viewing or limiting system resource amounts that individual users consume                                              |
| ulimit -a              | Displays detailed report of all resource limit for the current user                                                           |
| ulimit -Sa             | Displays detailed soft limits for the current user                                                                            |
| ulimit -Ha             | Displays detailed hard limits for the current user                                                                            |
| ulimit -u 100          | Limit a user's maximum process number to 100                                                                                  |
| ulimit -f 100          | Limit the user's maximum file size to 100KB                                                                                   |
| ulimit -n 100          | Limit a user's maximum number of open files to 100                                                                            |
| ulimit -v 100          | Limits the virtual memory available for a process to 100KB                                                                    |
| df                     | Report file system disk space usage                                                                                           |
| df -h                  | Report file system disk space usage in human readable format                                                                  |
| du                     | Summarize disk usage of each FILE, recursively for directories                                                                |
| du -sh                 | Summarize disk usage in human readable format                                                                                 |
| clear                  | To clear the screen                                                                                                           |
| sudo yum install <pkg> | To install the package in CentOS with sudo access                                                                             |
| sudo yum remove <pkg>  | To remove the package in CentOS with sudo access                                                                              |
| sudo yum info<pkg>     | To get the info about the package in CentOS with sudo access                                                                  |
| top                    | A dynamic real-time view of a running system with processes, threads                                                          |
| ps                     | Displays information about a selection of the active processes                                                                |
| ps -ef                 | To see every process on the system using standard syntax                                                                      |
| ps -aux                | To see every process on the system using BSD syntax                                                                           |
| ping <hostname>                                       | Ping sends ICMP ECHO_REQUEST to network hosts                            |
| ping -4 <hostname>                                    | Ping sends ICMP ECHO_REQUEST to network hosts with ipv4 address          |
| ping -6 <hostname>                                    | Ping sends ICMP ECHO_REQUEST to network hosts with ipv6 address          |
| ping -c 3 <hostname>                                  | Stop after sending 3 count ECHO_REQUEST packets                          |
| ping -i 3 <hostname>                                  | Wait interval 3 seconds between sending each packet                      |
| telnet <hostname> <port_no>                           | To communicate with another host using the TELNET protocol               |
| telnet -4 <hostname> <port_no>                        | Force IPv4 address resolution                                            |
| telnet -6 <hostname> <port_no>                        | Force IPv6 address resolution                                            |
| fdisk -l                                              | List the partition tables for the specified devices                      |
| fdisk -s <partition>                                  | Displays partition size(s) in blocks                                     |
| mount                                                 | Displays all file systems including the virtual ones                     |
| mount <device_name> <directory>                       | To mount a file system in a given location                               |
| mount -t <file_system_type> <device_name> <directory> | To mount a file system in a given location with specific filesystem type |
| unmount <device_name> OR umount <directory>           | To detach a mounted file system                                          |
| unmount -l <directory>                                | Lazy unmount a busy file system as soon as it is not busy anymore        |
| unmount -f <directory>                                | Force unmount and for unreachable filesystem                             |
| useradd               | To add the user                                                                                                               |
| useradd -e            | Expiration date of the new account                                                                                            |
| useradd -U            | Create a group with the same name as the user                                                                                 |
| useradd -p            | Encrypted password of the new account                                                                                         |
| useradd -M            | Create the user's home directory                                                                                              |
| useradd -D            | Print or change default useradd configuration file /etc/default/useradd                                                       |
| useradd -s            | Login shell of the new account                                                                                                |
| useradd -G            | List of supplementary groups of the new account                                                                               |
| usermod               | To modify the user                                                                                                            |
| usermod -L            | Lock the user account                                                                                                         |
| usermod -U            | Unlock the user account                                                                                                       |
| usermod -aG           | Append the user to the supplemental GROUPS mentioned by the -G option without removing the user from other groups             |
| userdel               | To delete the user                                                                                                            |
| userdel -f            | Force some actions that would fail otherwise                                                                                  |
| userdel -r            | Remove home directory and mail spool                                                                                          |
| passwd                | To set the user password                                                                                                      |
| chage -l              | Shows the account aging information                                                                                           |
| groupadd              | To add the group                                                                                                              |
| groupadd -p           | Use this encrypted password for the new group                                                                                 |
| groups                | Displays the group where current user belongs to                                                                              |
| groupmod -n           | Change the name to NEW_GROUP                                                                                                  |
| groupdel              | To delete the group                                                                                                           |
| groupdel -f           | Delete group even if it is the primary group of a user                                                                        |
| ls                    | To list the files in current directory                                                                                        |
| ls -ltr               | To list the files in long listing format with sort by modification time, newest first and then in reverse order               |
| ls -la                | To list the files in logn listing format along with hidden files                                                              |
| pwd                   | Shows Present working directory                                                                                               |
| cd                    | To change the directory                                                                                                       |
| cd ..                 | To move one directory above                                                                                                   |
| cd -                  | To move into last working directory                                                                                           |
| cd /                  | To change the pwd to root directory which is the topmost/outermost parent directory                                           |
| cd ~                  | To move into the home directory                                                                                               |
| touch                 | To create an empty file                                                                                                       |
| rm <file1>            | To remove the file                                                                                                            |
| rm -f <file1>         | To remove the file forcefully                                                                                                 |
| rm -I <file1>         | Prompt before every removal                                                                                                   |
| mkdir <dir1>          | To create a directory                                                                                                         |
| rmdir <dir1>          | To remove a directory                                                                                                         |
| rmdir -f <dir1>       | To remove a directory forcefully                                                                                              |
| rmdir -r <dir1>       | To remove a directory recursively                                                                                             |
| cp <file1>            | To copy the file                                                                                                              |
| cp <file1> <file2>    | To copy the file1 content to file2                                                                                            |
| cp -r <dir1> <dir2>   | To copy the dir1 to dir2 recursively with dir2 creation if non-existent                                                       |
| mv <file1> <file2>    | To move/rename the file                                                                                                       |
| cat <fil1>            | Displays the content of the file                                                                                              |
| cat -n <file1>        | Number all output lines                                                                                                       |
| cat -A <file1>        | Show-all, equivalent to -vET                                                                                                  |
| cat > <file1>         | To create and fill the info in the file in one command                                                                        |
| cat <file1> > <file2> | To copy content of one file to another                                                                                        |
| cat -E <file1>        | Display $ at end of each line                                                                                                 |
| cat -s <file1>        | Suppress repeated empty output lines                                                                                          |
| cat -T <file1>        | Display TAB characters as ^I                                                                                                  |
| cat -v <file1>        | Displays non-printing characters                                                                                              |
| less <file1>          | To read the contents of a large text file one page(one screen) at a time. It allows backward and forward movement in the file |
| more <file1>          | To read the contents of the file one screenful at a time                                                                      |
| vi <file1>            | Vi is the text editor in linux to modify the files                                                                            |
| nano <file1>          | Nano is another text editor in linux                                                                                          |
| locate <file1>                                 | To find out the path where file1 is present                                                                        |
| head <file1>                                   | Displays by default the first 10 lines from the file                                                               |
| head -n 20 <file1>                             | Displays first 20 lines from the file                                                                              |
| head -q <file1> <file2>                        | Never print headers giving file names                                                                              |
| head -v <file1> <file2>                        | Always print headers giving file names                                                                             |
| tail <file1>                                   | Prints by default the last 10 lines of file1 to standard output                                                    |
| tail -n 20 <file1>                             | Prints last 20 lines of file1                                                                                      |
| tail -q <file1> <file2>                        | Never print headers giving file names                                                                              |
| tail -v <file1> <file2>                        | Always print headers giving file names                                                                             |
| tail -f <file1>                                | Output appended data as the file1 grows                                                                            |
| ln <original_file> <hard_link>                 | Creates a hard link for original file                                                                              |
| ln -s <original_file> <soft_link>              | Creates a soft link for original file                                                                              |
| tac <file1>                                    | Displays the file1 content in reverse ie last line first                                                           |
| find . -name <file1>                           | Finds the file1 in current directory                                                                               |
| find / -iname <file1>                          | Finds the file1 in / directory ignoring the case                                                                   |
| find . -type d -name <dir1>                    | Finds the dir1 in current directory                                                                                |
| find . -type f -name <file1.txt>               | Finds the file1.txt in current directory                                                                           |
| find . -type f -perm 777                       | Finds all the files whose permissions are 777 in the current directory                                             |
| find . -type f ! -perm 777                     | Finds all the files whose permissions are NOT 777 in the current directory                                         |
| find . -perm /u=r                              | Finds all Read-Only files in the current directory                                                                 |
| find . -perm /a=x                              | Finds all executables files in the current directory                                                               |
| find . -perm /a=w                              | Finds all writable files in the current directory                                                                  |
| find . -type f -perm 777 -exec ls -ltr {} \;   | Finds all the files whose permissions are 777 in the current directory and lists them                              |
| find / -type d -perm 777 -exec chmod 755 {} \; | Finds all the directories with 777 permissions in the current directory and changing it to 755 with chmod          |
| find . -type f -empty                          | Find all Empty Files in the current directory                                                                      |
| find . -type d -empty                          | Find all Empty directories in the current directory                                                                |
| find / -user <username> -name <file1>          | Finds the file1 with specific user owned in / directory                                                            |
| find / -user <username>                        | Finds all the files specific user owned in / directory                                                             |
| find / -group <groupname>                      | Finds all the files specific group owned in / directory                                                            |
| find / -mtime 100                              | Finds all the files which are modified 100 days back in / directory                                                |
| find / -atime 100                              | Finds all the files which are accessed100 days back in / directory                                                 |
| find / -mtime +50 –mtime -100                  | Finds all the files which are modified more than 50 days back and less than 100 days in / directory                |
| find / -cmin -60                               | Finds all the files which are changed in the last 1 hour in / directory                                            |
| find / -mmin -60                               | Finds all the files which are modified in the last 1 hour in / directory                                           |
| find / -amin -60                               | Finds all the files which are accessed in the last 1 hour in / directory                                           |
| find / -size 100M                              | Finds all 100MB files in / directory                                                                               |
| find / -size +50M -size -100M                  | Finds all the files which are greater than 50MB and less than 100MB in / directory                                 |
| find / -type f -size +100M -exec rm -f {} \;   | Finds all 100MB files in / directory and delete them using rm command                                              |
| grep <pattern> file1                           | Searches the pattern in file1 and prints the entire line containing the pattern                                    |
| grep <pattern> file1 file2 file3               | Searches the pattern in file1, file2, file3 and prints the entire line containing the pattern from all 3 files     |
| grep -l "pattern> file1 file2 file3            | Prints the filename which contains the pattern                                                                     |
| grep -n <pattern> <file1>                      | Prints the line number along with the line in which the pattern matches                                            |
| grep -v <pattern> <file1>                      | Prints all the lines from file1 where pattern don't matches                                                        |
| grep ^<pattern> <file1>                        | Prints all the lines from file1 where line starts with pattern                                                     |
| grep <pattern>$ <file1>                        | Prints all the lines from file1 where line ends with pattern                                                       |
| grep -r <pattern> /home                        | Searches the pattern in /home folder and subfolders                                                                |
| grep ^$ <file1>                                | Prints all the empty lines from file1                                                                              |
| grep -i <pattern> <file1>                      | Searches the pattern in file1 with case-insensitive and prints the entire line containing the pattern              |
| grep -e <pattern1>  -e <pattern2> <file1>      | To search multiple patterns in file1                                                                               |
| grep -f <patten_file> <file1>                  | To get the search pattern from pattern_file and perfrom the action on file1                                        |
| grep -c <pattern> <file1>                      | Counts the no of line which conatins the search pattern in file1                                                   |
| grep -A 5 <pattern> <file1>                    | Prints the 5 lines after matching the search pattern in file1                                                      |
| grep -B 5 <pattern> <file1>                    | Prints the 5 lines before matching the search pattern in file1                                                     |
| grep -C 5 <pattern> <file1>                    | Prints the 5 lines after and before matching the search pattern in file1                                           |
| grep -o <pattern> <file1>                      | Shows only the part of a line matching PATTERN                                                                     |
| grep -w <pattern> <file1>                      | Force pattern to match only whole words in file1                                                                   |
| grep -x <pattern> <file1>                      | Force pattern to match only whole lines in file1                                                                   |
| scp <file1> user@hostname:/tmp                            | To copy a file1 from the current directory in the local system to the remote host's /tmp directory                         |
| scp user@hostname:/tmp/file1 .                            | To copy a file1 from the remote host's /tmp directory to the current directory in the local system                         |
| scp <file1> <file2> user@hostname:/tmp                    | To copy multiple files from the current directory in the local system to the remote host's /tmp directory                  |
| scp -r <dir1> user@hostname:/tmp                          | To copy a dir1 from the current directory in the local system to the remote host's /tmp directory                          |
| scp -C -r <dir1> user@hostname:/tmp                       | To copy a dir1 with compression of files from the current directory in the local system to the remote host's /tmp directory|
| scp user@host1:/tmp/file1 user@host2:/tmp/file2           | To copy files between 2 remote servers                                                                                     |
| scp -3 user@host1:/tmp/file1 user@host2:/tmp/file2        | To route the transfer through your own system while copying files between 2 remote servers                                 |
| rsync -v /home/file1 /tmp                                 | To copy file1 locally with verbose output                                                                                  |
| rsync -v /home/file1 /home/file2 /tmp                     | To copy multiple files locally with verbose output                                                                         |
| rsync -av /home/dir1 /tmp                                 | Copy Files and Directories Recursively                                                                                     |
| rsync -av /home/dir1 user@hostname:/tmp                   | Copy a File or Directory from Local to Remote Machine                                                                      |
| rsync -av /home/dir1 /home/dir2 user@hostname:/tmp        | Copy Multiple Files or Directories from Local to Remote Machine                                                            |
| rsync -av user@host:/home/dir1 /tmp                       | To copy a File or Directory from a Remote to a Local Machine                                                               |
| rsync -av user@hostname:{/home/dir1,/home/dir21} /tmp     | Copy Multiple Files or Directories from Local to Remote Machine                                                            |
| rsync -av --progress /home/dir1 /tmp                      | To show rsync Progress During Data Transfer                                                                                |
| rsync -v --remove-source-files /home/file1 user@host:/tmp | Delete source files after transfer                                                                                         |
| rsync -av --dry-run --delete /home/dir1 user@host:/tmp    | Rsync dry run                                                                                                              |
| rsync -av --max-size=500k /home/dir1 user@host:/tmp       | Rsync set maximum file size for transfer                                                                                   |
| rsync -av --min-size=500k /home/dir1 user@host:/tmp       | Rsync set minimum file size for transfer                                                                                   |
| rsync -av -f"+ */" -f"- *"  /home/dir1 /tmp               | Rsync copy the directory structure but skip the files                                                                      |
| rsync -av /home/dir1 /tmp/dir1$(date +%Y-%m-%d)           | Rsync add the timestamp to directory name                                                                                  |
| rsync -avu /home/dir1 /tmp/dir2                           | Rsync do not copy the source file if the same destination file is modified                                                 |
| rsync -avi /home/dir1 /tmp/dir2                           | Rsync show the difference between the source and destination files                                                         |
| wc <file1>                                                | Prints the number of lines, number of words, and number of bytes of the file1                                              |
| wc -l <file1>                                             | Prints the number of lines in a file1                                                                                      |
| wc -w <file1>                                             | Prints the number of words in a file1                                                                                      |
| wc -c <file1>                                             | Prints the count of bytes in a file1                                                                                       |
| wc -m <file1>                                             | Prints the count of characters from a file1                                                                                |
| wc -L <file1>                                             | Prints only the length of the longest line in a file1                                                                      |
| sort <file1>                                              | Sorts the lines of text file1                                                                                              |
| sort -r <file1>                                           | Sorts the lines of the file1 in reverse order                                                                              |
| sort -n <file1>                                           | Sorts the lines of the file1 numerically                                                                                   |
| sort -o <output_file> <file1>                             | Sorts the lines of the file1 and pastes the output in output_file                                                          |
| sort -nr <file1>                                          | To sort a file with numeric data in reverse order                                                                          |
| sort -k 2n <file1>                                        | To sort a file on the basis of column number                                                                               |
| sort -c <file1>                                           | To check if the file is already sorted or not                                                                              |
| sort -u <file1>                                           | To sort and remove duplicates from file1                                                                                   |
| sort -M <file1>                                           | To sort a file on the basis of month                                                                                       |
| uniq <file1>                                              | Prints the uniq output by omitting the adjacent duplicate lines in file1                                                   |
| uniq -c <file1>                                           | Prints the number of times a line was repeated in file`1                                                                   |
| uniq -d <file1>                                           | Prints only the repeated lines from file1                                                                                  |
| uniq -D <file1>                                           | Prints only the duplicate lines from file1                                                                                 |
| uniq -u <file1>                                           | Prints only the uniq lines from file1                                                                                      |
| uniq -f 2 <file1>                                         | Prints by skipping the first 2 no of fields while comparing the uniqueness of the lines in file1                           |
| uniq -s 2 <file1>                                         | Prints by skipping the first 2 no of characters while comparing the uniqueness of the lines in file1                       |
| uniq -w 2 <file1>                                         | Prints by limiting the first 2 no of characters while comparing the uniqueness of the lines in file1                       |
| uniq -i <file1>                                           | Prints the uniq output by ignoring the case-sensitive                                                                      |
| uniq -z <file1>                                           | Prints the uniq output with end lines with 0 byte, not newline                                                             |
| kill <PID>                                                | Sends the kill signal to terminate the mentioned process id in linux                                                       |
| kill -9 <PID>                                             | Sends the kill signal to forcefully terminate the mentioned process id in linux                                            |
| crontab -e                                                | To edit the crontab file, or create one if it doesn’t already exist                                                        |
| crontab -l                                                | To list the cronjobs in crontab, displays crontab file contents                                                            |
| crontab -r                                                | To remove your crontab file                                                                                                |
| crontab -v                                                | Displays the last time you edited your crontab file                                                                        |
| tar xvf test.tar                          | To extract an archive                                                                                  |
| tar cvf test.tar <file1> <file2> <file3>  | To create an archive with files or folder                                                              |
| tar cvzf test.tar <file1> <file2> <file3> | To create a compressed archives                                                                        |
| tar tvf test.tar                          | To show all files of an archive                                                                        |
| gzip file1                                | To create a compressed file as file1.gz                                                                |
| gunzip file1                              | To decompress a file                                                                                   |
| tar cvzf test.tar.gz <file1> <file2>      | To combine the files in a compressed archive                                                           |
| tar xvzf test.tar.gz                      | To decompress and extract an archive                                                                   |
| bzip2 <file1>                             | To create a compressed file as file.bz2                                                                |
| bunzip2 file1.bz2                         | To decompress a file                                                                                   |
| tar cvjf test.tar.bz2 <file1> <file2>     | To combine the files in a compressed archive as test.tar.bz2                                           |
| tar xvjf test.tar.bz2                     | To decompress and extract an archive                                                                   |
| zip test.zip <file1> <file2>              | To combine the individual files in a compressed archive                                                |
| zip -r test.zip <dir1> <dir2> <dir3>      | To combine the complete folders in a compressed archive                                                |
| unzip test.zip                            | To decompress and extract an archive                                                                   |
| unzip -l test.zip                         | To show all files of an archive                                                                        |
| chmod 777 <file1>                         | To modify the file permissions to read(4), write(2), and execute(1) for owner, group, and others       |
| chmod -R 755 <dir1>                       | To give read(4), write(2), and execute(1) permissions recursively on dir1 for owner, group, and others |
| chown swapnil:swapnil <file1>             | To change the user and group for file1 to swapnil                                                      |
| gpg -c <file1>                            | To encrypt the file1                                                                                   |
| gpg <file1>                               | To decrypt the file1                                                                                   |
| wget <file1>                              | The non-interactive network downloader which downloads the file1                                       |
| curl <url>                                | To transfer data from or to a server using the protocol                                                |
| curl -kv <url>                            | To transfer data from or to a server using the protocol and insecure connection with verbose           |
| zgrep <grep_options>  "pattern" test.gz   | To search out expressions from a given file even if it is compressed                                   |
| zcat test.gz                              | Displays the compressed file content                                                                   |

