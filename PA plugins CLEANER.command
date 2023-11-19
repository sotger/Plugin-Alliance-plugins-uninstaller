#!/bin/sh

# -----------------------------------------------
# script by Boris Kukoba 11.2023
# last edited by Boris Kukoba 11.2023
# script version 0.1
# -----------------------------------------------

# define plugin locations paths
# RTAS="/Library/Application Support/Digidesign/Plug-Ins"
AAX="/Library/Application Support/Avid/Audio/Plug-Ins"
#VST="/Library/Audio/Plug-Ins/VST/Plugin Alliance"
VST3="/Library/Audio/Plug-Ins/VST3"
AU="/Library/Audio/Plug-Ins/Components"

# define console outpul coloring codes
BOLD="\033[1m"
GREEN="\033[1m\033[32m"
RED="\033[1m\033[31m"
BLUE="\033[1m\033[34m"
DEF="\033[0m"

# define functions
rmfile () {
  if [ -d "$1" ]
  then
  sudo rm -rf "$1"
  echo "$1 - ${GREEN}was removed!${DEF}"
  else
  echo "$1 - ${RED}not installed${DEF}"
  fi
}

removeAll () {
echo "${BLUE}delete ${1}${DEF}"
rmfile "$AU/${1}.component"
rmfile "$AAX/${1}.aaxplugin"
# rmfile "$VST/${1}.vst"
rmfile "$VST3/${1}.vst3"
echo
}

function askUser() {
  read -p "$1" -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
      echo no
	  echo " ${GREEN}Cancelled... OK. When you decide clean ${DEF} "
	  echo " ${GREEN}your Mac from PA again - come back and RUN ME again${DEF} "
	  echo " ${RED}---------BYE-BYE-------${DEF} "
      exit 1
    else
      echo yes
      return 0
  fi
}

###############################################################################
#############################   MAIN SCRIPT  ##################################
###############################################################################
clear
echo "script version 0.1"
echo " ===HI=== "
echo " I gonna clean "
echo " Your mac from PA who have already fucked you up, "
echo " And who deserve to be destroyed )"
echo ""
echo " ${RED}ATTENSION${DEF} "
echo " ${RED}SCRIPT WILL DESTROY ALL PLUGINA ALLIANCE PLUGINS NOW${DEF} "
echo ""
askUser " CONTINUE(y/n)?"
echo "Lets go..."


sudo killall PA-InstallationManager
#sudo launchctl unload -w "/Library/LaunchDaemons/com.plugin-alliance.pa-installationhelper.plist"
echo "${BLUE}delete PA Installation Manager helpers ${1}${DEF}"
sudo rm -rf "/Library/LaunchDaemons/com.plugin-alliance.pa-installationhelper.plist"
sudo rm -rf "/Library/PrivilegedHelperTools/com.plugin-alliance.pa-installationhelper"
echo ""
echo "${BLUE}deleting Plugin Alliance directory in VST ${1}${DEF}"
sudo rm -rf "/Library/Audio/Plug-Ins/VST/Plugin Alliance"
echo ""
echo "${BLUE}deleting Plugin Alliance directory in Applications ${1}${DEF}"
sudo rm -rf "/Applications/Plugin Alliance"
echo ""
echo "${BLUE}deleting Plugin Alliance directory in systemwide Library ${1}${DEF}"
sudo rm -rf "/Library/Application Support/Plugin Alliance"
echo ""
echo "${BLUE}deleting Plugin Alliance directory in User Library ${1}${DEF}"
sudo rm -rf "~/Library/Application Support/Plugin Alliance"
sudo rm -rf "~/Library/Application Support/Plugin Alliance Installation Manager"
sudo rm -rf "~/Library/Saved Application State/com.plugin-alliance.plugins.PAInstallationManager.savedState"
echo ""
rmfile "/Users/sotger/Library/Preferences/com.plugin-alliance.plugins.PAInstallationManager.plist"
echo ""
removeAll "ADA Flanger"
removeAll "ADA STD-1 Stereo Tapped Delay"
removeAll "ADPTR MetricAB"
removeAll "ADPTR Sculpt"
removeAll "ADPTR StreamLiner"
removeAll "AMEK EQ 200"
removeAll "AMEK EQ 250"
removeAll "AMEK Mastering Compressor"
removeAll "Acme Opticom XLA-3"
removeAll "Ampeg B15N"
removeAll "Ampeg SVT3Pro"
removeAll "Ampeg SVTVR Classic"
removeAll "Ampeg SVTVR"
removeAll "Ampeg V4B"
removeAll "Bettermaker EQ232D"
removeAll "Black Box Analog Design HG-2"
removeAll "Black Box Analog Design HG-2MS"
removeAll "Chandler GAV19T"
removeAll "DS Tantra 2"
removeAll "DS Thorn"
removeAll "Dangerous BAX EQ Master"
removeAll "Dangerous BAX EQ Mix"
removeAll "Diezel Herbert"
removeAll "Diezel VH4"
removeAll "ENGL E646 VS"
removeAll "ENGL E765 RT"
removeAll "ENGL Savage 120"
removeAll "Friedman BE100"
removeAll "Friedman Buxom Betty"
removeAll "Friedman DS40"
removeAll "Fuchs Overdrive Supreme 50"
removeAll "Fuchs Train II"
removeAll "Gallien Krueger 800RB"
removeAll "Harris Doyle Natalus DSCEQ"
removeAll "Kiive Tape Face"
removeAll "Kiive Xtressor"
removeAll "Knif Audio Knifonium"
removeAll "Knif Audio Soma"
removeAll "LTL Chop Shop EQ"
removeAll "LTL SILVER BULLET mk2"
removeAll "Lindell 254E"
removeAll "Lindell 354E"
removeAll "Lindell 50 Buss"
removeAll "Lindell 50 Channel"
removeAll "Lindell 69 Buss"
removeAll "Lindell 69 Channel"
removeAll "Lindell 6X-500"
removeAll "Lindell 7X-500"
removeAll "Lindell 80 Bus"
removeAll "Lindell 80 Channel"
removeAll "Lindell 902 De-esser"
removeAll "Lindell ChannelX"
removeAll "Lindell MBC"
removeAll "Lindell PEX-500"
removeAll "Lindell SBC"
removeAll "Lindell TE-100"
removeAll "Looptrotter SA2RATE2"
removeAll "MEGA Sampler"
removeAll "Maag EQ2"
removeAll "Maag EQ4"
removeAll "Maag MAGNUM-K"
removeAll "Millennia NSEQ-2"
removeAll "Millennia TCL-2"
removeAll "Mixland Vac Attack"
removeAll "NEOLD BIG AL"
removeAll "NEOLD U17"
removeAll "NEOLD U2A"
removeAll "NEOLD V76U73"
removeAll "NEOLD WARBLE"
removeAll "Noveltech Character"
removeAll "Noveltech Vocal Enhancer"
removeAll "Pro Audio DSP DSM V3"
removeAll "Purple Audio MC 77"
removeAll "SPL Attacker Plus"
removeAll "SPL De-Esser Dual-Band"
removeAll "SPL De-Esser"
removeAll "SPL De-Verb Plus"
removeAll "SPL DrumXchanger"
removeAll "SPL EQ Ranger Plus"
removeAll "SPL Free Ranger"
removeAll "SPL HawkEye"
removeAll "SPL IRON"
removeAll "SPL Mo-Verb Plus"
removeAll "SPL PQ"
removeAll "SPL Passeq Single"
removeAll "SPL Passeq"
removeAll "SPL Transient Designer Plus"
removeAll "SPL TwinTube"
removeAll "SPL Vitalizer MK2-T"
removeAll "Schoeps Double MS"
removeAll "Schoeps Mono Upmix 1to2"
removeAll "Schoeps Mono Upmix 1to3"
removeAll "Shadow Hills Class A Mastering Comp"
removeAll "Shadow Hills Mastering Compressor"
removeAll "Suhr PT100"
removeAll "Suhr SE100"
removeAll "TBTECH Kirchhoff-EQ"
removeAll "THE OVEN"
removeAll "THX Spatial Creator"
removeAll "TOMO Audiolabs LISA"
removeAll "Unfiltered Audio BYOME"
removeAll "Unfiltered Audio Bass Mint"
removeAll "Unfiltered Audio Dent 2"
removeAll "Unfiltered Audio Fault"
removeAll "Unfiltered Audio G8"
removeAll "Unfiltered Audio Indent 2"
removeAll "Unfiltered Audio Instant Delay"
removeAll "Unfiltered Audio LION"
removeAll "Unfiltered Audio Needlepoint"
removeAll "Unfiltered Audio Sandman Pro"
removeAll "Unfiltered Audio Sandman"
removeAll "Unfiltered Audio Silo"
removeAll "Unfiltered Audio SpecOps"
removeAll "Unfiltered Audio Tails"
removeAll "Unfiltered Audio Triad"
removeAll "Unfiltered Audio Zip"
removeAll "Unfiltered Audio lo-fi-af"
removeAll "Vertigo VSC-2"
removeAll "Vertigo VSM-3"
removeAll "WEDGE FORCE Hydro"
removeAll "WEDGE FORCE Keemun"
removeAll "WEDGE FORCE Matcha"
removeAll "WEDGE FORCE Oolong"
removeAll "archive"
removeAll "bx_2098 EQ"
removeAll "bx_XL V2"
removeAll "bx_bassdude"
removeAll "bx_blackdist2"
removeAll "bx_bluechorus2"
removeAll "bx_boom"
removeAll "bx_cleansweep Pro"
removeAll "bx_cleansweep V2"
removeAll "bx_clipper"
removeAll "bx_console AMEK 200"
removeAll "bx_console AMEK 9099"
removeAll "bx_console Focusrite SC"
removeAll "bx_console N"
removeAll "bx_console SSL 4000 E"
removeAll "bx_console SSL 4000 G"
removeAll "bx_console SSL 9000 J"
removeAll "bx_control V2"
removeAll "bx_crispyscale"
removeAll "bx_crispytuner"
removeAll "bx_delay2500"
removeAll "bx_digital V3 mix"
removeAll "bx_digital V3"
removeAll "bx_distorange"
removeAll "bx_dynEQ V2 Mono"
removeAll "bx_dynEQ V2"
removeAll "bx_greenscreamer"
removeAll "bx_hybrid V2 mix"
removeAll "bx_hybrid V2"
removeAll "bx_limiter True Peak"
removeAll "bx_limiter"
removeAll "bx_masterdesk Classic"
removeAll "bx_masterdesk Pro"
removeAll "bx_masterdesk True Peak"
removeAll "bx_masterdesk"
removeAll "bx_megadual"
removeAll "bx_megasingle"
removeAll "bx_metal2"
removeAll "bx_meter"
removeAll "bx_oberhausen"
removeAll "bx_opto Pedal"
removeAll "bx_opto"
removeAll "bx_panEQ"
removeAll "bx_refinement"
removeAll "bx_rockergain100"
removeAll "bx_rockrack V3 Player"
removeAll "bx_rockrack V3"
removeAll "bx_rooMS"
removeAll "bx_saturator V2"
removeAll "bx_shredspread"
removeAll "bx_solo"
removeAll "bx_stereomaker"
removeAll "bx_subfilter"
removeAll "bx_subsynth"
removeAll "bx_townhouse Buss Compressor"
removeAll "bx_tuner"
removeAll "bx_yellowdrive"
removeAll "dearVR music"
removeAll "dearVR pro"
removeAll "elysia alpha master"
removeAll "elysia alpha mix"
removeAll "elysia karacter master"
removeAll "elysia karacter mix"
removeAll "elysia mpressor"
removeAll "elysia museq master"
removeAll "elysia museq mix"
removeAll "elysia niveau filter"
removeAll "elysia nvelope"
removeAll "elysia phils cascade"
removeAll "fiedler audio stage"
