# Task 1: Create a file and assign permissions
touch file1.txt
touch file2.txt
chmod 764 file1.txt
chmod 755 file2.txt  
chmod 644 file1.txt  


# Task 2: Execute basic Linux commands
ls
cd /tmp
mkdir new_directory
rm new_directory  
touch file3.txt
cp file3.txt copy_of_newfile.txt
mv copy_of_newfile.txt new_directory/
rm file3.txt

# Task 3: Navigate directories, list contents, and move files
cd new_directory
ls -l
mv copy_of_newfile.txt /tmp/
cd /tmp
find . -name "file3.txt"
head -n 10 /etc/passwd


# Task 4: Create a new user and group, and manage users
sudo useradd newuser
sudo groupadd newgroup
sudo usermod -aG newgroup newuser
sudo userdel newuser
sudo groupdel newgroup
sudo passwd newuser
sudo usermod -L newuser

# Task 5: Practice additional Linux commands
ps aux
df -h
top
whoami
uname -a
history | tail -n 20
