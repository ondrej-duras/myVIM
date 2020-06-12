"
" ITN / Data Centers
" 20070301, Ing. Ondrej DURAS (dury)
" VERSION=2017.021202
"

set iskeyword=@,48-57,_,192-255,:,.,/,-
set iskeyword+=>
set iskeyword+=<
set iskeyword+=[
set iskeyword+=]
"set iskeyword+=.,/,-
syntax match Xipaddr /\<[0-9]\{1,3}\(\.[0-9]\{1,3}\)\{3}\>/
syntax match Xipaddr /\<[0-9]\{1,3}\(\.[0-9]\{1,3}\)\{3}-[0-9]\+\>/
syntax match Xipaddr /\<[0-9]\{1,3}\(\.[0-9]\{1,3}\)\{3}\/[0-9]\+\>/
syntax match Xipaddr /\<[0-9a-fA-F]\{4}\.[0-9a-fA-F]\{4}\.[0-9a-fA-F]\{4}\>/
syntax match Xipaddr /\<[0-9a-fA-F]\{2}\([:-][0-9a-fA-F]\{2}\)\{5}\>/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-ADC-[0-9]\{2,3}-[0-9]\{1,3}\>/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-\(AP\|SW\)-[0-9A-Z]\{2,10}\>/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-[0-9]\{2,4}\>/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-[0-9]\{2,4}[#>$]/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-\>\*/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-[0-9]\{2,4}\/[0-9]\{2,4}\>/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-[0-9]\{2,4}-\(OLD\|NEW\)\>/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-[0-9]\{1,3}x-\(OLD\|NEW\)\>/
syntax match Xhost   /\<[DNLECHPOVA]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-[0-9]\{2,4}\/[0-9]\{2,4}-\(OLD\|NEW\)\>/
syntax match Xhost   /^RP\/[0-9]\/RSP[0-9]\/CPU[0-9]:[DNLECHP]-[0-9]\{3,4}-\([A-Z]\{2}\)-[A-Z]\+-[0-9]\{2,4}\>/
syntax match Xhost   /\<C-210[1-9]-[A-Z]\{2}-[0-9A-Za-z]\{2,30}\>/
syntax match Xhost   /\<C-210[1-9]-[A-Z]\{2}-SZLH-STADION\>/
syntax match Xhost   /\<STADION-[A-Z]\{2}\>/
syntax match Xhost   /\<STADION-[A-Z]\{2}[1-9]\>/
syntax match Xhost   /\<[-0-9A-Za-z_]\+-\(802\.11a\|802\.11bgn\?\|2\.4GHz\|5GHz\)\>/
syntax match Xsite   /\<[DNLECHPA]-[0-9]\{3,4}-\([A-Z]\{2}\)\>/
syntax match Xsite   /\<[DNLECHPA]-[0-9]\{3,4}-\([A-Z]\{2}\): /
syntax match Xteam   /^\ *@[-A-Z0-9,]\{2,15}:/
syntax match Xvlan   /\<[A-Z][0-9A-Z]\{1,}_[0-9A-Za-z_]\{2,}-\(IBGP\|EBGP\|HUB\)\>/
syntax match Xvlan   /\<[A-Z][0-9A-Z]\{1,}-\(IBGP\|EBGP\|HUB\)\>/
syntax match Xvlan   /\<[A-Z][0-9A-Z]\{1,}_[0-9A-Za-z_]\{2,}\>/
syntax match Xvlan   /\<[A-Z][0-9A-Z]\{2,}\>/
syntax match Xvlan   /"[A-Z][0-9A-Z]\{1,}_[0-9A-Za-z_]\{2,}"/
syntax match Xfwzone /\<zb[ab]-ag-[-0-9a-z_]\{8,}\>/
syntax match Xfwzone /\<zb[ab]-co-[-0-9a-z_]\{8,}\>/
"syntax match Xrack   /BA1R[0-9][A-Z][0-9][0-9]\?/
"syntax match Xrack   /R[0-9][0-9][0-9][0-9]/
"syntax match Xrack   /R[0-9]\.[0-9][0-9]\?/
syntax match Xrack   /\[[A-Z0-9.\/]\+\]/
"syntax match Xrack   /\[[A-Z0-9]\+.R[0-9]\+\.[0-9]+\]/
syntax match XcrqBad /\<\(CRQ\|RFE\|TAS\)[0-9]\{1,11}\>/
syntax match XcrqBad /\<\(CRQ\|RFE\|TAS\)[0-9]\{13,}\>/
syntax match XcrqOK  /\<\(CRQ\|RFE\|TAS\|FRR\)[0-9]\{12}\>/
syntax match Xmrdoc  /\<1000[0-9]\{6}\>/
syntax match XcrqBad /\<10000\{6}\>/
syntax match XcrqBad /\<R0000\|RX.[0-9]\+\|BAXR[0-9][A-Z][0-9]\+\>/
syntax match XcrqBad /\<\(Vlan\|Po\|Eth\|Gig\|Fas\|Ten\)x[0-9]\+\>/
syntax match XcrqBad /\<\(Vlan\|Po\|Eth\|Gig\|Fas\|Ten\)x[0-9]\+\/[0-9]\+\>/
syntax match XcrqBad /\<X-000-B[ABX]:\?\>/
syntax match XcrqBad /\<X-[0-9]\{3,4}-[A-Z]\{2}-[0-9A-Z]\{2,4}-[0-9A-Z]\+\>/
syntax match XcrqBad /\<X-[0-9]\{3,4}-[A-Z]\{2}-[0-9A-Z]\+-[0-9]\{2,4}\/[0-9]\{2,4}\>/
syntax match XcrqBad /\<X-[0-9]\{3,4}-[A-Z]\{2}-[0-9A-Z]\{2,4}-[0-9A-Z]\+-NEW\>/
syntax match XcrqBad /\<01\.03\. 2017\>/
syntax match XcrqBad /\<X[0-9]\{1,3}\(\.[0-9]\{1,3}\)\{3}\>/
syntax match XcrqBad /\<X[0-9]\{1,3}\(\.[0-9]\{1,3}\)\{3}-[0-9]\+\>/
syntax match XcrqBad /\<X[0-9]\{1,3}\(\.[0-9]\{1,3}\)\{3}\/[0-9]\+\>/
syntax match XcrqBad /\<X[0-9a-fA-F]\{4}\.[0-9a-fA-F]\{4}\.[0-9a-fA-F]\{4}\>/
syntax match XcrqBad /\<X[0-9a-fA-F]\{2}\([:-][0-9a-fA-F]\{2}\)\{5}\>/
"syntax match XjuInt  /\<reth0\.[0-9]\+\|\(Fa\|Gi\|Te\|Eth\|Ethernet\)1\?[0-9]\/[0-9]\+\(\/[0-9]\+\)\?\|Vlan[0-9]\+\>/
syntax match XjuInt  /\<reth0\.[0-9]\+\|\(Fa\|Gi\|Te\|Eth\|Ethernet\)[0-9\/]\+\|Vlan[0-9]\+\>/
syntax match XjuInt  /\<\(Eth\|\(TenGigabit\|Gigabit\)\?Ethernet\)[0-9\/]\+\>/
"syntax match XjuInt  /\<\(Eth\|\(TenGigabit\|Gigabit\)\?Ethernet\)[0-9]\{3}\/[0-9]\/[0-9]\+\>/
"syntax match XjuInt  /\<\(Eth\|Ethernet\)[0-9]\+\/[0-9]\+-[0-9]\+\>/
syntax match XjuInt  /\<[0-9]\/[0-9]\.[0-9]\>/
"syntax match XjuInt  /\<line[0-9][0-9]\>/
syntax match XjuInt  /\<\(Po\|[Pp]ort-channel\)[0-9]\+\(\.[0-9]\+\)\?\>/
syntax match XjuInt  /\<\(Be\|[Bb]undle-[Ee]ther\)[0-9]\+\(\.[0-9]\+\)\?\>/
syntax match XjuInt  /\<po[01]\>/
syntax match XjuInt  /\<[Ll]o[0-9]\+\>/
syntax match XjuInt  /\<Fa[0-9]\(\.[0-9]\+\)\?\>/
syntax match XjuInt  /\<\(L_\?\|M_\?\|[Ll]ink_\|[Mm]onitor_\)\?[A-Z][WE]\?\>/
syntax match XjuInt  /\<\([Ll]ine\|CON\|MGM\?T\|[Pp]ort\)[0-9]\+\>/
syntax match Xcnote  /^! .*$/
syntax match Xcn     /^ *! .*$/
syntax match Xqqq    /\<#. .*/
syntax match Xsd     /^  \?shutdown$/
syntax match Xsd     /^delete interfaces reth0 unit [0-9]\+ disable$/
syntax match Xsd     /<[_A-Za-z0-9-]\+>/
syntax match Xgui    /\v\>\>/
syntax match Xgui    /\v\|\>/
syntax match Xgui    /([-O])/
syntax match Xgui    /\[[-0-9A-Za-z_]\+\]/
syntax match Xgui    /\<TAB:[-0-9A-Za-z_]\+\>/
syntax match comment /^[Rr][Ee][Mm] .*$/
syntax match Xcable  /\<<-[A-Z0-9-]\+\/[A-Z0-9\/-]\+->\>/


" Bednicky 
" N7k# show inventory | include "^PID:" | sed "s/,.*//" | sed "s/^PID: //" | sort -u
" N7k# show interface transceiver | include "product id" | sed "s/^.*is//" | sort -u
syntax keyword XpartB N7K-AC-6.0KW N7K-C7010 N7K-C7010-FAB-1 N7K-C7010-FAN-F N7K-C7010-FAN-S N7K-M108X2-12L N7K-M148GS-11L N7K-SUP1
syntax keyword XpartB N5K-C56128P N56128-FAN-B NXA-PAC-1100W-B
syntax keyword XpartB CISCO7609-S 76-ES+T-4TG 76-ES+T-4TGQ 7600-ES+3CXL 7600-ES+4TG 7600-ES+4TG3CXL   
syntax keyword XpartB 7600-MSFC4 7600-PFC3CXL CLK-7600 FAN-MOD-9SHS PWR-4000-DC RSP720-3CXL-GE WS-C6K-VTT-E      

syntax keyword XpartB N9K-C9504= N9K-SUP-A N9K-SUP-A+ N9K-PAC-3000W-B N9K-C9504-FM-E N9K-X9736C-FX N9K-X97160YC-EX 
syntax keyword XpartB N95-LAN1K9 N9K-C9504 N9K-SUP-A
syntax keyword XpartB ASR-9010-AC ASR-9010-FAN ASP-9010-DC ASR-9922-AC A9K-MOD400-CM A9K-MPA2X100GE-CM A9K-RSP880-SE A9K-AIP-LIC-E
" CPE Bizuteria : C1111 C4331 ... C3750 C9200 C9300
syntax keyword XpartB WS-C3750X-48T-S C3KX-NM-10G C3KX-PWR-350WAC C9200L-24P-4G-E PWR-C5-600WAC WS-C3560CX-8PC-S WS-C2960L-8PS-LL
syntax keyword XpartB C9300-24UX PWR-C1-1100WAC C9300-NM-8X
syntax keyword XpartB C1111-4P PWR-12V C1111-2x1GE GLC-LH-SMD C1111-ES-4 C881-K9

"Cisco WiFi
syntax keyword XpartB AIR-WLC2106-K9 AIR-WLC4402-25-K9 AIR-WLC4402-50-K9 AIR-CT5508-K9 AIR-CT5520-K9
syntax keyword XpartB AIR-AP1542D-E-K9  AIR-AP1562E-E-K9  AIR-AP1562I-E-K9 AIR-CAP2702E-E-K9  
syntax keyword XpartB AIR-LAP1142N-E-K9 AIR-AP2802E-E-K9 AIR-AP2802I-E-K9 AIR-AP3802I-E-K9 
syntax keyword XpartB AIR-CAP2702I-E-K9 AIR-LAP1121B-A-K9 AIR-LAP1121G-A-K9 

"Mikrotiky
syntax keyword XpartB RB260GS RB260GS CRS106-1C-5S CRS109-8G-1S-2HnD-IN CRS112-8G-4S-IN  CRS112-8P-4S-IN CRS212-1G-10S-1S+IN
syntax keyword XpartB CRS309-1G-8S+IN CRS312-4C+8XG-RM CRS326-24S+2Q+RM CRS354-48G-4S+2Q+RM CRS125-24G-1S-2HnD-IN
syntax keyword XpartB CSS326-24G-2S+RM CRS326-24G-2S+RM CRS354-48P-4S+2Q+RM CRS328-4C-20S-4S+RM CRS317-1G-16S+RM RB951Ui-2HnD RB951G-2HnD
syntax keyword XpartB RB2011UiAS-2HnD-IN RB4011iGS+5HacQ2HnD-IN
"Mikrotik - routerboardy
syntax keyword XpartB RBM11G RB911G-5HPnD RB450Gx4 RB953GS-5HnT-RP RBM33G RB922UAGS-5HPacD
syntax keyword XpartB R11e-LTE6 R11e-LTE R11e-4G 

"Cisco Firewalls / ASA-y
syntax keyword XpartB ASA5550 ASA5555 SSM-4GE-INC ASA-180W-PWR-AC ASA-PWR-AC ASA5585-SSP-10 ASA5585 ASA5585-PWR-AC

"Juniper FireWally
syntax keyword XpartB SRX5600X-BASE SRX5K-SCB3-R SRX5K-RE-1800X4 SRX5600-HPWR-AC-R CBL-M-PWR-RA-EU SRX5K-MPC3-100G10G
syntax keyword XpartB SRX5K-SPC-4-15-320 SRX5600-APPSEC-A-1 SRX5600-ADEF
" Juniperacke trasceivre 
syntax keyword XpartC SRX-SFP-10GE-SR
syntax keyword XpartR SRX-SFP-1GE-LH SFPP-10GE-ER 
syntax keyword XpartG SRX-SFP-1GE-LX SRX-SFPP-10G-LR CFP2-100GBASE-LR4

"Cisco Trasceivers
syntax keyword XpartR QSFP-100G-ER4LS GLC-LH-SMD X2-10GB-ER S-55DLC80D S-3553LC20D
syntax keyword XpartG QSFP-100G-LR4-S CFP2-100G-LR4 XFP-10GLR-OC192SR CPAK-100G-LR4 S-31DLC20D S+31DLC10D
syntax keyword XpartC QSFP-100G-SR4-S SFP-10G-SR X2-10GB-SR XFP-10G-MM-SR Q+85MP01D S-85DLC05D
syntax keyword XpartT SFP-GE-S S-RJ01 S+RJ10

"chujoviny
syntax keyword XpartX JQSFP-100G-LR4 SRX5600HPWR-AC-R SRX5KMPC3100G10G SRX5KSPC4-15-320 SRX5600-APPSECA1

"Mixtura z papierov
syntax keyword XpartB T-SRX5600X-BASE T-SRX5K-SCB3-R T-SRX5K-RE-1800X4 T-SRX5600HPWR-AC-R T-CBL-M-PWR-RA-EU T-SRX5KMPC3100G10G
syntax keyword XpartB T-SRX5KSPC4-15-320 T-SRX5600-APPSECA1 T-SRX5600-ADEF
syntax keyword XpartC T-SRX-SFP-10GE-SR
syntax keyword XpartR T-SRX-SFP-1GE-LH T-SFPP-10GE-ER 
syntax keyword XpartG T-SRX-SFP-1GE-LX T-SRX-SFPP-10G-LR T-JQSFP-100G-LR4
syntax keyword XpartB T-N9K-C9504= T-N9K-SUP-A+ T-N9K-PAC-3000W-B T-N9K-C9504-FM-E T-N9K-X9736C-FX T-N9K-X97160YC-EX 
syntax keyword XpartB T-N95-LAN1K9 T-N9K-C9504 T-N9K-SUP-A
syntax keyword XpartR T-QSFP-100G-ER4LS
syntax keyword XpartG T-QSFP-100G-LR4-S
syntax keyword XpartC T-QSFP-100G-SR4-S
syntax keyword XpartX T-CFP2-100GBASE-LR4 T-SRX5600-HPWR-AC-R T-SRX5K-MPC3-100G10G T-SRX5K-SPC-4-15-320 T-SRX5600-APPSEC-A-1

high Xipaddr ctermfg=brown
high Xhost   ctermfg=darkcyan
high Xsite   ctermfg=yellow
high Xteam   ctermfg=yellow
high Xvlan   ctermfg=darkgreen
high Xfwzone ctermfg=darkcyan
high Xrack   ctermfg=brown
high XcrqBad ctermfg=yellow ctermbg=red
high XcrqOK  ctermfg=darkcyan
high Xmrdoc  ctermfg=darkcyan
high XjuInt  ctermfg=brown
high Xcnote  ctermfg=brown
high Xcn     ctermfg=darkgreen
high Xqqq    ctermfg=darkblue
high Xsd     ctermfg=red ctermbg=black
high comment ctermfg=darkgreen
high confString ctermfg=darkcyan
high Xgui    ctermfg=brown
high Xcable  ctermfg=darkmagenta

high XpartB  ctermfg=brown
high XpartR  ctermfg=darkred ctermbg=black
high XpartG  ctermfg=darkgreen
high XpartC  ctermfg=darkcyan
high XpartX  ctermfg=red
high XpartT  ctermfg=brown

syntax match Xok /^.*<<n.*/
syntax match Xcy /^.*<<c.*/
syntax match Xre /^.*<<r.*/
syntax match Xgr /^.*<<g.*/
syntax match Xbl /^.*<<b.*/
syntax match Xye /^.*<<y.*/
syntax match Xwi /^.*<<w.*/
syntax match Xco /^.*<<\..*/
high   Xok ctermfg=brown
high   Xcy ctermfg=darkcyan
high   Xre ctermfg=red
high   Xgr ctermfg=darkgreen
high   Xbl ctermfg=blue
high   Xye ctermfg=yellow
high   Xwi ctermfg=white
high   Xco ctermfg=darkblue

" Cisco things

"syntax region Xcisco start=/^\S\+# configure terminal/ end=/^\S\+# write/ contains=Xhname,Xios,Xnote,Xshow,Xwarn
"syntax match Xhname /^\S\+# configure terminal/ contained
"syntax match Xhname /^\S\+# write/ contained
"syntax match Xhname /^\s*end\s*$/ contained
"syntax match Xios   /^interface\s\+.*$/ contained
"syntax match Xios   /^\s*description\s\+.*$/ contained 
""syntax match Xios   /^\s*switchport trunk encapsulation dot1q/ contained
""syntax match Xios   /^\s*switchport trunk allowed vlan .*/ contained
"syntax match Xios   /^\s*switchport\s*/ contained
"syntax match Xios   /^\s*switchport access vlan [0-9]\+/ contained
"syntax match Xios   /^\s*switchport mode \(access\|trunk\)/ contained
"syntax match Xios   /^\s*no cdp enable\s*/ contained
"syntax match Xios   /^\s*spanning-tree portfast\s*/ contained
"syntax match Xios   /^\s*exit\s*/ contained
"syntax match Xnote  /^\! .*/ contained
"syntax match Xshow  /^\s*show .*/ contained
"syntax match Xshow  /^\s*do show .*/ contained
"syntax match Xwarn  /\<shutdown\>/ contained
""high Xcisco ctermfg=white
"high Xhname ctermfg=cyan
"high Xios   ctermfg=darkcyan
"high Xnote  ctermfg=brown
"high Xshow  ctermfg=darkgreen
"high Xwarn  ctermfg=white ctermbg=red



" --- end ---
