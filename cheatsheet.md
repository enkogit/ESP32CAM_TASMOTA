# BASH
*basic syntax cheatsheet* <br />

command && echo "OK" <br />
command || echo "NOT OK" <br />
command && echo "OK" || echo "NOT OK" <br />

if command; then <br />
&nbsp;&nbsp;&nbsp;&nbsp; echo "OK" <br />
else<br />
&nbsp;&nbsp;&nbsp;&nbsp; echo "NOT OK"
fi <br />
<br />


#Zip Folder using zip<br />
The easiest way to zip a folder on Linux is to use the “zip” command with the “-r” option and specify the file of your archive as well as the folders to be added to your zip file. You can also specify multiple folders if you want to have multiple directories compressed in your zip file. <br />

$ zip -r <output_file> <folder_1> <folder_2> ... <folder_n> <br />
example:<br />
$ zip -r temp.zip Documents

* Rename & enumerate Files in folder<br />
for i in *.jpg; do<br />
&nbsp;&nbsp;&nbsp;&nbsp;new=$(printf "%04d.jpg" "$a")<br />
&nbsp;&nbsp;&nbsp;&nbsp;echo $new <br />
&nbsp;&nbsp;&nbsp;&nbsp;let a=a+1 <br />
done<br />
<br />
or<br />
<br />

enumerate
ls -v | cat -n | while read n f; do mv -n "$f" "$n.ext"; done # ext* - extension of your files

