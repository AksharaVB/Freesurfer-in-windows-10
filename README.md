# Freesurfer-in-windows-10
As windows 10 does not support the software

you first need to install UBUNTU:20.0 and VcXrv (Windows X server)

(Freesurfer will recommend using Xming but it is not working in windows 10. so you can install VcXrv)

(then when you are installing and experiencing new, you will get recommended to use PuTTy emulator-Don’t install and try to connect it)

STEP 1

1)Click the search button in windows and search TURN WINDOWS FEATURES ON or OFF.

2)Turn ON or CHECK the box a)Virtual Machine Platform b)Windows Subsystem for Linux

~Restart the computer~

STEP 2

1)Install ubuntu 20.0 from Microsoft Store-Free
(https://www.microsoft.com/store/productId/9NBLGGH4MSV6)

2)Open Ubuntu and wait for some time 

When it ask ENTER NEW UNIX USERNAME - enter the name that you want to name for linux (should not be the user name of Windows 10 )

and set password -usually the password you are typing will be invisible 

when you will see our username +@+ desktop no.

tip: Command ls /mnt/     ~Used to navigate into the drive in windows~

STEP 3:

Install : https://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/6.0.0/freesurfer-Linux-centos6_x86_64-stable-pub-v6.0.0.tar.gz
(Freesurfer version 6 software)

You can extract the file with winRAR or You can extract with the commond
-xzvf freesurfer-Linux-centos6_x86_64-stable-pub-v6.0.0.tar.gz      -paste in ubuntu

I prefer to extract file external in Win RAR

After extracting the file copy the file and paste in the User/(Username of window)/ in  C drive 

Ensure with the name of the file: freesurfer

Type in Ubuntu:

export FREESURFER_HOME= cd /mnt/c/Users/(Username of window)/freesurfer

source $FREESURFER_HOME/SetUpFreeSurfer.sh

~get the output~

Type in 

export SUBJECTS_DIR=/mnt/c/User/(Username of window)/Freesurfer/subjects

Now install VcXrv

https://sourceforge.net/projects/vcxsrv/files/latest/download


STEPS TO INSTALL VCXRV

Don't deny anything follow the steps in flow 

Now you will see X symbol in the bottom of your desktop(hidden in arrow near network connections)

To get license 

https://surfer.nmr.mgh.harvard.edu/registration.html

Entry your details, Download it and paste that in Freesurfer file in C drive

Download sh.sh file that i dropped

Put that file in freesurfer file 

to install JPEG library- (In UBUNTU) -Type

sudo apt-get install libpeg62

Now to open GUI 

Type in ubuntu as follow

cat /etc/resolv.conf

(you will get your windows ip address)

export DISPLAY= (type window ip address):0.0

export LIBGL_ALWAYS_INDIRECT=1

(Now to check GUI working )TYPE

xeyes

(you will see separate tab with eye)

It works

Now you are ready to try examples in freesurfer






