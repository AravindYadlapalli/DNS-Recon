#! /bin/bash
echo "Welcome to DNS Recon Tool"
echo ""
echo ""
echo "Designed and Developed by AravindYadlapalli"
echo "_ _  _ _  _ _  _ _  _ _  _ _  _ _  _ _  _ _ "
echo ""
echo ""
echo " About this Tool "
echo "-------------------------------------------------------------------------"
echo "DNS recon is a kind of information gathering tool on a penetration test engagement."
echo "When they were trying to obtain as much as information as he can regarding  DNS "
echo "servers and their records the information that can be gathered it can disclose network"
echo "infrastructure of the company without alerting the IDS/IPS."
echo "-------------------------------------------------------------------------"
echo ""
exit1=no
while [ $exit1 == no ]
do
echo "Enter Target's Domain Name :"
read domain_name
echo ""
echo ""

#DIG TOOL
#A Record
echo "A record for the $domain_name "
dig $domain_name A +short
echo ""
echo ""

#AAAA Record
echo "AAAA record for the $domain_name "
dig $domain_name AAAA +short
echo ""
echo ""

#CNAME Record
echo "CNAME for the $domain_name "
dig $domain_name CNAME +short
echo ""
echo ""

#MX Entry
echo "MX Entry for $domain_name "
dig $domain_name MX +short
echo ""
echo ""

#NS Record
echo "NS records for the $domain_name "
dig $domain_name NS +short
echo ""
echo ""

#TXT Record
echo "TXT Record for the $domain_name "
dig $domain_name TXT +short
echo ""
echo ""
echo "End"
echo ""
echo ""

                                  echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       -------------------------------------------------------------------------------------       \e[0m'
                                  echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m          !!   THANKS FOR USING :) HOPE YOU GATHERED SOME INFORMATION   !!         \e[0m'
                                  echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       -------------------------------------------------------------------------------------       \e[0m'

echo "Do you want to exit the tool  (yes or no)? "
read exit1
echo ""
echo ""
done
