#!/bin/sh
#I been bash'n away in the Bourne Again Shell!
# mac? brew install wget
# deb? apt install wget
wget -c https://github.com/dtag-dev-sec/tpotce/releases/download/18.11/tpot.iso -O tpot-multi-honeypot.iso
#tpot.iso	https://github.com/dtag-dev-sec/tpotce
#git clone https://github.com/dtag-dev-sec/tpotce &
#firefox https://n0where.net/multi-honeypot-platform &
#Lab26.zip	https://www.vulnhub.com/entry/lab26-11,190/
#wget -c https://lab26.net/static/files/Lab26.zip -O Lab26_1.1WebApp-CyberFiringRange.zip
# T-Pot is a multi-honeypot (US:DoD:DMZ_ONLY.)(T-MobileSponsored)
#################################################################
#gsm_ce_*.iso					#a.k.a. OpenVAS Open-Source Nessus fork
# Greenbone Security Assistant is a dashboard (EU:CE=CommunityEdition) (Greenbone Ltd.)
#firefox https://www.greenbone.net/en/install_use_gce/ &
#sleep 9
wget -c https://dl.greenbone.net/download/VM/gsm-ce-4.2.24.iso
#echo "Opening Greenbone Forums https://community.greenbone.net"
#firefox https://community.greenbone.net/ &
#echo "Yet Another Shameless Plug for Greenbone:"
#firefox https://www.greenbone.net/en/community-edition/ &
#######################################################################################
#securityonion*.iso							securityonion.net
wget -c https://github.com/Security-Onion-Solutions/security-onion/releases/download/v16.04.5.5_20181212/securityonion-16.04.5.5.iso
# Security Onion is a virtual firewall "appliance" (contains Suricata, Sagan, and Snort.)
# N.B: Should also be deployed on either end of the DMZ, for proper Zone Segmentation
#####################################################################################
#cd wifite2
#sudo python Wifite2.py
# Wifite.py is the best way to Crack WiFi short of the KRACK attack: krackattacks.com
#####################################################################################
# THE'FUN'STUFF # DANGER ZONE! # GONNA TAKE A RIDE INTO THE DANGER ZONE! DANGER ZONE!
# http://blog.rootcon.org/2012/02/10-pentesting-linux-distributions-you.html <3 > *
# "Are we still doing phrasing? Because if we stopped doing phrasing and nobody told"
#####################################################################################
#kali-*.iso								kali.org
wget -c cdimage.kali.org/kali-2018.4/kali-linux-light-2018.4-amd64.iso
#firefox https://github.com/Security-Onion-Solutions/security-onion/blob/master/Verify_ISO.md#160455-iso-image-built-on-20181212 &
# Previously BackTrack, a distro based on Auditor, Whax... & WifiSlax/Knoppix...
#             🙏MUTS🙇                    remote-exploit.org;backtrack-linux.org
# Penetration testing "swiss-army knife" w/ over 500 tools... incl. wifite.py
#############################################################################
#tails-*.iso								tails.boum.org
wget -c https://mirrors.edge.kernel.org/tails/stable/tails-amd64-3.13.1/tails-amd64-3.13.1.iso
#firefox https://tails.boum.org/install/download/index.en.html &
# Privacy & Anonymity focused distro, runs Tor, wipes RAM after shutdown, etc.
##############################################################################
# Qubes-OS.org
##############
# A newcomer to the game, this Snowden-tested-Mother-approved Operating System...
# comes smack-dab with all the Xen hypervisor introspection instrumentation vulns
# already pre-built and packaged with enough Spectre to Melt-down your face! : ))
#################################################################################
# Just try to remember it's CTRL+SHIFT+V and CTRL+SHIFT+P to Cut & Paste vm-to-vm
#################################################################################
wget -c https://mirrors.edge.kernel.org/qubes/iso/Qubes-R4.0.1-x86_64.iso
echo "Done!"
