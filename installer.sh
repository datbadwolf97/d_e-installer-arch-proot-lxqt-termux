#!/bin/sh
echo "Checking if this script was running inside PROOT or not."
sleep 1.5
if pgrep -x 'proot' 2>/dev/null; then
echo "Yeb, it runs inside PROOT, continuing the process.."
sleep 1.5
else
echo "Nope, this script must be run inside PROOT, my apologies."
sleep 1.5
exit
fi
clear
function mainmenu {
echo "Desktop Environment Installer (LXQT Variant) For Arch Linux."
echo "============================================================"
echo "DO NOT USE IT ON REAL ARCH LINUX MACHINE!"
echo "============================================================"
echo -e "1. Install the DE now. \n2. Create the vnc-start script. \n3. Multimedia Installer. \n4. About. \n5. Exit."
	read -p "Choose an option : " opt1
		if [ $opt1 -eq 1 ]; then
		installde
		elif [ $opt1 -eq 2 ]; then
		sccrt
		elif [ $opt1 -eq 3 ]; then
		mminstall
		elif [ $opt1 -eq 4 ]; then
		abtsec
		elif [ $opt1 -eq 5 ]; then
		echo "Thank you for using this script, exiting..."
		sleep 1.5
		exit
		else
		echo "Unrecognized option : $opt1 "
		fi
}

function installde {
echo "Installing the Desktop Environment, this will take around 15 to 45 minutes depending on your device/internet connection."
sleep 2
	if [ whoami == root ]; then
	echo "Installing As ROOT."
	pacman -Syu
	pacman -S lxqt openbox obconf kwantum
		while true; do
		echo "Would you like to create the vnc-start script?"
		read -p "[Y/N] : " yn1
		case $yn1 in
		y|Y)
		echo "Enter your screen resolution."
		read -p "Height : " h1
		read -p "Weight : " w1
		echo "Ok, creating the vnc-start script."
		cat <<- EOF > vnc-start
#!/bin/sh
case \$1 in
h|H)
 if cat .vnc/config | grep 'geometry=${h1}x${w1}'
 then
 vncserver :1
 else
 sed -i 's/${w1}x${h1}/${h1}x${w1}/g' .vnc/config
 vncserver :1
 fi
;;
v|V)
 if cat .vnc/config | grep 'geometry=${w1}x${h1}'
 then
 vncserver :1
 else
 sed -i 's/${h1}x${w1}/${w1}x${h1}/g' .vnc/config
 vncserver :1
 fi
;;
*)
echo "Unrecognized option, use v or h."
;;
esac
		EOF
		echo "Done."
		sleep 1.5
		clear
		break
		;;
		n|N)
		echo "Skip making vnc-script."
		sleep 1.5
		clear
		break
		;;
		*)
		echo "Unrecognised option."
		clear
		sleep 1.5
		;;
		esac
		done
	else
	echo "Installing As $(whoami)."
	sleep 1.5
	sudo pacman -Syu
	sudo pacman -S lxqt openbox obconf kwantum
		while true; do
		echo "Would you like to create the vnc-start script?"
		read -p "[Y/N] : " yn2
		case $yn2 in
		y|Y)
		echo "Enter your screen resolution."
		read -p "Height : " h2
		read -p "Weight : " w2
		echo "Ok, creating the vnc-start script."
		cat <<- EOF > vnc-start
#!/bin/sh
case \$1 in
h|H)
 if cat .vnc/config | grep 'geometry=${h2}x${w2}'
 then
 vncserver :1
 else
 sed -i 's/${w2}x${h2}/${h2}x${w2}/g' .vnc/config
 vncserver :1
 fi
;;
v|V)
 if cat .vnc/config | grep 'geometry=${w2}x${h2}'
 then
 vncserver :1
 else
 sed -i 's/${h2}x${w2}/${w2}x${h2}/g' .vnc/config
 vncserver :1
 fi
;;
*)
echo "Unrecognized option, use v or h."
;;
esac
		EOF
		echo "Done."
		sleep 1.5
		clear
		break
		;;
		n|N)
		echo "Skip making vnc-script."
		sleep 1.5
		clear
		break
		;;
		*)
		echo "Unrecognised option."
		clear
		sleep 1.5
		;;
		esac
		done
	fi
}

function sccrt {
	echo "Enter your screen resolution."
	read -p "Height : " h3
	read -p "Weight : " w3
	echo "Ok, creating the vnc-start script."
	cat <<- EOF > vnc-start
#!/bin/sh
case \$1 in
h|H)
 if cat .vnc/config | grep 'geometry=${h3}x${w3}'
 then
 vncserver :1
 else
 sed -i 's/${w3}x${h3}/${h3}x${w3}/g' .vnc/config
 vncserver :1
 fi
;;
v|V)
 if cat .vnc/config | grep 'geometry=${w3}x${h3}'
 then
 vncserver :1
 else
 sed -i 's/${h3}x${w3}/${w3}x${h3}/g' .vnc/config
 vncserver :1
 fi
;;
*)
echo "Unrecognized option, use v or h."
;;
esac
	EOF
	echo "Done."
	sleep 1.5
}

function mminstall {
while true; do
clear
echo "Multimedia Installer."
echo "======================="
echo -e "1. Audacious Audio player. \n2. MPV Audio and Video player. \n3. FFMPEG codec support. \n4. All of them. \n5. Exit."
read -p "Choose an option : " opt2
	if [ $opt2 -eq 1 ]; then
		if [ whoami == root ]; then
		echo "Installing Audacious as ROOT."
		pacman -Syu
		pacman -S audacious audacious-plugins
		echo "Done."
		sleep 1.5
		clear
		else
		echo "Installing Audacious as $(whoami)."
		sudo pacman -Syu
		sudo pacman -S audacious audacious-plugins
		echo "Done."
		sleep 1.5
		clear
		fi
	elif [ $opt2 -eq 2 ]; then
		if [ whoami == root ]; then
		echo "Installing MPV as ROOT."
		pacman -Syu
		pacman -S mpv
		echo "Done."
		sleep 1.5
		clear
		else
		echo "Installing MPV as $(whoami)."
		sudo pacman -Syu
		sudo pacman -S mpv
		echo "Done."
		sleep 1.5
		clear
		fi
	elif [ $opt2 -eq 3 ]; then
		if [ whoami == root ]; then
		echo "Installing FFMPEG as ROOT."
		pacman -Syu
		pacman -S ffmpeg
		echo "Done."
		sleep 1.5
		clear
		else
		echo "Installing FFMPEG as $(whoami)."
		sudo pacman -Syu
		sudo pacman -S ffmpeg
		echo "Done."
		sleep 1.5
		clear
		fi
	elif [ $opt2 -eq 4 ]; then
		if [ whoami == root ]; then
		echo "Installing all of them as ROOT."
		pacman -Syu
		pacman -S ffmpeg audacious audacious-plugins mpv
		echo "Done."
		sleep 1.5
		clear
		else
		echo "Installing all of them as $(whoami)."
		sudo pacman -Syu
		sudo pacman -S ffmpeg audacious audacious-plugins mpv
		echo "Done."
		sleep 1.5
		clear
		fi
	elif [ $opt2 -eq 5 ]; then
	echo "Retuning to main menu."
	sleep 1.5
	clear
	break
	else
	echo "Unrecognized option."
	sleep 1.5
	clear
	fi
done
}

function abtsec {
	clear
	cat deps/.about
	read -p "Press ENTER to return."
	clear
	return
}
while true; do
mainmenu
clear
done
