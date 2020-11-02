#!/bin/sh
#
# Event handler script for restarting the TopNET  on the remote machine
#
# Note: This script will only restart TopNET  if the service is
#       retried 3 times (in a "soft" state) or if the TopNET  somehow
#       manages to fall into a "hard" error state.
#


# restart function contains hardcoded SERVICEDESC to HOSTADDRESS translation. Function is called from the main code bellow. 
restart()
{
# Date format: "2016-03-29 13:10 CEST"
date=`date +"%Y-%m-%d %H:%M %Z"`
echo "*************************************************" >> $logfile
echo "$date | ${0##*/} Service <$servicedesc> got state <$servicestate> and statetype <$servicestatetype> and serviceattempt <$serviceattempt> with command <$command> and argument <$cmdarg> for execution on host <$host>" >> $logfile

service=$1
case $service in
"NTRIP Glopos NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix1/TopNET-Glopos/46.234.104.142 (3rd soft critical state)..." >> $logfile
	# Call the script on the remote machine (according to servicedesc) to restart the TopNET on that machine 
	/usr/local/nagios/libexec/check_nrpe -H 46.234.104.142 -c restart_topnet
	;;
"NTRIP AG NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix13/TopNET-AG/46.234.120.108 (3rd soft critical state)..." >> $logfile
	# Call the script on the remote machine (according to servicedesc) to restart the TopNET on that machine 
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.108 -c restart_topnet
	;;
"NTRIP AG2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix12/TopNET-AG2/46.234.104.149 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.104.149 -c restart_topnet
	;;
"NTRIP DK NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix8/TopNET-DK/46.234.120.107 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.107 -c restart_topnet
	;;
"NTRIP DK2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix24/TopNET-DK2/46.234.120.99 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.99 -c restart_topnet
	;;
"NTRIP GR NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix9/TopNET-GR/46.234.120.109 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.109 -c restart_topnet
	;;
"NTRIP GR2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix19/TopNET-GR2/46.234.104.151 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.104.151 -c restart_topnet
	;;
"NTRIP IE NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix16/TopNET-IE/46.234.120.106 (3rd soft critical state)..." >> $logfile 
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.106 -c restart_topnet
	;;
"NTRIP 2IE NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix37/TopNET-2IE/185.203.84.33 (3rd soft critical state)..." >> $logfile 
	/usr/local/nagios/libexec/check_nrpe -H 185.203.84.33 -c restart_topnet
	;;
"NTRIP 2IE2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix42/TopNET-2IE2/88.86.109.131 (3rd soft critical state)..." >> $logfile 
	/usr/local/nagios/libexec/check_nrpe -H 88.86.109.131 -c restart_topnet
	;;
"NTRIP N27DEV NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix27/TopNET-DEV/46.234.120.111 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.111 -c restart_topnet
	;;
"NTRIP NO SOUTH NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix44/TopNET-NO-SOUTH/46.234.120.100 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.100 -c restart_topnet
	;;
"NTRIP NO NORTH NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix45/TopNET-NO-NORTH/46.234.120.104 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.104 -c restart_topnet
	;;
"NTRIP NO2 NORTH NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix50/TopNET-NO2-NORTH/46.234.120.102 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.102 -c restart_topnet
	;;
"NTRIP NO2 SOUTH NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix25/TopNET-NO2-SOUTH/46.234.120.101 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.101 -c restart_topnet
	;;
"NTRIP PL NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix33/TopNET-PL/46.234.120.123 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.123 -c restart_topnet
	;;
"NTRIP PL2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix26/TopNET-PL2/46.234.120.103 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.103 -c restart_topnet
	;;
"NTRIP UK NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix6/TopNET-UK/46.234.120.105 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.105 -c restart_topnet
	;;
"NTRIP UK2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix7/TopNET-UK2/88.86.109.137 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 88.86.109.137 -c restart_topnet
	;;
"NTRIP IT NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix32/TopNET-IT/46.234.120.121 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.121 -c restart_topnet
	;;
"NTRIP IT2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix5/TopNET-IT2/46.234.120.110 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.120.110 -c restart_topnet
	;;
"NTRIP RUS1P NET")
	echo    "Restarting TopNET application on machine RUS-TN-1P/TopNET1 Primary/82.202.176.54 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 82.202.176.54 -c restart_topnet
	;;
"NTRIP RUS1B NET")
	echo    "Restarting TopNET application on machine RUS-TN-1B/TopNET1 Backup/82.202.176.59 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 82.202.176.59 -c restart_topnet
	;;
"NTRIP RUS2P NET")
	echo    "Restarting TopNET application on machine RUS-TN-2P/TopNET2 Primary/82.202.176.55 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 82.202.176.55 -c restart_topnet
	;;
"NTRIP RUS2B NET")
	echo    "Restarting TopNET application on machine RUS-TN-2B/TopNET2 Backup/82.202.176.60 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 82.202.176.60 -c restart_topnet
	;;
"NTRIP DE NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix40/TopNET-DE/46.234.104.147 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.104.147 -c restart_topnet
	;;
"NTRIP DE2 NET_RTCM3")
	echo    "Restarting TopNET application on machine Navmatix41/TopNET-DE2/46.234.104.157 (3rd soft critical state)..." >> $logfile
	/usr/local/nagios/libexec/check_nrpe -H 46.234.104.157 -c restart_topnet
	;;
*)
	echo    "Provided servicedesc parameter doesn't match to any supported by this script. Nothing to restart." >> $logfile
	;;
esac
} #END of restat function


#set variables from arguments
servicedesc=$1 #service description according to service definition
servicestate=$2 # eg. "OK","CRITICAL,"WARNING","UNKNOWN"
servicestatetype=$3 # eg. "SOFT","HARD"
serviceattempt=$4 # eg. "1","2",etc
host=$5 # hostaddress of where to execute nrpe command (not used)
command=$6 # nrpe command to execute (not used)
cmdarg=$7 # (not used)
#set loging
logfile=/usr/local/nagios/libexec/eventhandlers/log.txt # logfile to store executions by this eventhandler

# Date format: "2016-03-29 13:10 CEST"
#date=`date +"%Y-%m-%d %H:%M %Z"`
#echo "*************************************************" >> $logfile
#echo "$date | ${0##*/} Service <$servicedesc> got state <$servicestate> and statetype <$servicestatetype> and serviceattempt <$serviceattempt> with command <$command> and argument <$cmdarg> for execution on host <$host>" >> $logfile

# What state is the TopNET service in?
case "$servicestate" in
OK)
	# The service just came back up, so don't do anything...
	;;
WARNING)
	# We don't really care about warning states, since the service is probably still running...
	;;
UNKNOWN)
	# We don't know what might be causing an unknown error, so don't do anything...
	;;
CRITICAL)
	# Aha!  The TopNET appears to have a problem - perhaps we should restart the server...
	# Is this a "soft" or a "hard" state?
	case "$servicestatetype" in

	# We're in a "soft" state, meaning that Nagios is in the middle of retrying the
	# check before it turns into a "hard" state and contacts get notified...
	SOFT)

		# What check attempt are we on?  We don't want to restart the TopNET on the first
		# check, because it may just be a fluke!
		case "$serviceattempt" in

		# Wait until the check has been tried 3 times before restarting the TopNET.
		# If the check fails on the 4th time (after we restart the TopNET), the state
		# type will turn to "hard" and contacts will be notified of the problem.
		# Hopefully this will restart the TopNET  successfully, so the 4th check will
		# result in a "soft" recovery.  If that happens no one gets notified because we
		# fixed the problem!
		3)
			echo -n "Trying to restart TopNET application on a remote server (3rd soft critical state)..."
			# Call the "restart" function with "servicedesc" parameter 
			restart "$servicedesc"
			;;
		esac
		;;

	# The service somehow managed to turn into a hard error without getting fixed.
	# It should have been restarted by the code above, but for some reason it didn't.
	# Let's give it one last try, shall we?  
	# Note: Contacts have already been notified of a problem with the sevice at this
	# point (unless you disabled notifications for this service)
	HARD)
		echo -n "Restarting TopNET application..."
		echo    "Restarting TopNET application..." >> $logfile
		# Call the "restart" function with "servicedesc" parameter 
		restart "$servicedesc"
		;;
	esac
	;;
esac
exit 0
