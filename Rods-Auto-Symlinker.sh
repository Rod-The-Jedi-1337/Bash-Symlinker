#! /bin/bash
echo
echo 
figlet Rods Auto-Symlinker
echo
echo "This script auto automatically symlinks your new scripts !"
echo "Enter the path and filename to your script:"
read unlinked
echo "Enter the new script name to use after symlinking done:"
read new_filename
echo "Great ! Copying your script to /usr/bin directory... please wait...."
cp $unlinked /data/data/com.termux/files/usr/bin
cd /data/data/com.termux/files/usr/bin
ln -s $unlinked /data/data/com.termux/files/usr/bin/$new_filename
chmod +x /data/data/com.termux/files/usr/bin/$new_filename
echo
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo "Done ! Run the new symlinked script from any directory by typing $new_filename"
echo "We'll test it now:"
cd $HOME
$new_filename


