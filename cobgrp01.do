/*cobgrp01

This code groups countries in 2001 into 46 categories:
	1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" 5 "UK, part not specified" 
	6 "Republic of Ireland" 7 "Ireland part not specified" 8 "Channel Islands and Isle of Man" 
	9 "France" 10 "Germany" 11 "Italy" 12 "Netherlands" 13 "Spain" 
	14 "Other country in European Union" 15 "Other countries in Western Europe not in EU" 
	16 "Poland" 17 "Other Eastern Europe" 18 "North Africa" 19 "Nigeria" 
	20 "Other Central and Western Africa" 21 "Kenya" 22 "South Africa" 23 "Zimbabwe" 
	24 "Other South and Eastern Africa" 25 "Cyprus" 26 "Iran" 27 "Other Middle East" 
	28 "China" 29 "Hong Kong" 30 "Japan" 31 "Malaysia" 32 "Singapore" 33 "Other Far East" 
	34 "Bangladesh" 35 "India" 36 "Pakistan" 37 "Other South Asia" 38 "central Asia" 39 "Canada" 
	40 "Jamaica" 41 "Other Caribbean and West Indies" 42 "USA" 43 "Other North America" 
	44 "South America" 45 "Australia" 46 "New Zealand" 47 "Other Oceania" 99 "Other"

Variables needed for the code:
	cobp0 (country of birth 2001)
	cobpimp (cob imputation flag in 2001)
*/

/*Make sure that you change your working directory to your project area
cd "P:\......"
*/

/*Open the dataset that you want to add the derived variable to. Make sure that it has all the variables that are in the variables list above)*/
********************************************************************************

gen cobgroup=.

replace cobgroup=1 if cobp0==64
replace cobgroup=2 if cobp0==220
replace cobgroup=3 if cobp0==179
replace cobgroup=4 if cobp0==152
replace cobgroup=5 if (cobp0==78 | cobp0==213)
replace cobgroup=6 if cobp0==97
replace cobgroup=7 if cobp0==930
replace cobgroup=8 if (cobp0==3 | cobp0==44 | cobp0==83 | cobp0==103 | cobp0==177 | cobp0==128)

replace cobgroup=9 if cobp0==71
replace cobgroup=10 if cobp0==75
replace cobgroup=11 if cobp0==99
replace cobgroup=12 if cobp0==144
replace cobgroup=13 if (cobp0==190 | cobp0==3190 | cobp0==1190)
replace cobgroup=14 if (cobp0==12 | cobp0==19 | cobp0==57 | cobp0==70 | cobp0==80 | ///
	cobp0==79 | cobp0==120 | cobp0==164 | cobp0==195 | cobp0==1079 | cobp0==2079 ///
	 | cobp0==3079 | cobp0==1164)
replace cobgroup=15 if (cobp0==5 | cobp0==77 | cobp0==92 | cobp0==118 | cobp0==127 ///
	| cobp0==135 | cobp0==153 | cobp0==175 | cobp0==196 | cobp0==927 | cobp0==1099)

replace cobgroup=16 if cobp0==163
replace cobgroup=17 if (cobp0==2 | cobp0==18 | cobp0==25 | cobp0==88 | cobp0==32 ///
	| cobp0==48 | cobp0==53 | cobp0==56 | cobp0==227 | cobp0==66 | cobp0==91 | ///
	cobp0==113 | cobp0==119 | cobp0==121 | cobp0==138 | cobp0==134 | cobp0==168 ///
	| cobp0==169 | cobp0==181 | cobp0==185 | cobp0==186 | cobp0==206 | cobp0==231 ///
	| cobp0==228 | cobp0==223 | cobp0==1181 | cobp0==74 | cobp0==227)

replace cobgroup=18 if (cobp0==4 | cobp0==190 | cobp0==62 | cobp0==117 ///
	| cobp0==130 | cobp0==139 | cobp0==192 | cobp0==205 | cobp0==921)
replace cobgroup=19 if cobp0==150
replace cobgroup=20 if (cobp0==21 | cobp0==33 | cobp0==37 | cobp0==39 | ///
	cobp0==42 | cobp0==43 | cobp0==50 | cobp0==65 | cobp0==72 | cobp0==73 | ///
	cobp0==76 | cobp0==84 | cobp0==85 | cobp0==100 | cobp0==116 | cobp0==126 | ///
	cobp0==149 | cobp0==176 | cobp0==180 | cobp0==183 | cobp0==202 | cobp0==224 ///
	| cobp0==922 | cobp0==939)
replace cobgroup=21 if cobp0==106 
replace cobgroup=22 if (cobp0==189 | cobp0==1189 | cobp0==2189 | cobp0==3189)
replace cobgroup=23 if cobp0==226
replace cobgroup=24 if (cobp0==6 | cobp0==26 | cobp0==35 | cobp0==49 | cobp0==58 ///
	| cobp0==67 | cobp0==115 | cobp0==122 | cobp0==123 | cobp0==131 | cobp0==140 ///
	| cobp0==141 | cobp0==167 | cobp0==170 | cobp0==172 | cobp0==182 | cobp0==188 ///
	| cobp0==194 | cobp0==200 | cobp0==210 | cobp0==225 | cobp0==229 | cobp0==920 ///
	| cobp0==5189)

replace cobgroup=25 if cobp0==55
replace cobgroup=26 if cobp0==95
replace cobgroup=27 if (cobp0==13 | cobp0==15 | cobp0==96 | cobp0==98 ///
	| cobp0==104 | cobp0==110 | cobp0==114 | cobp0==156 | cobp0==154 | cobp0==166 ///
	| cobp0==178 | cobp0==197 | cobp0==212 | cobp0==222 | cobp0==230 | cobp0==931 ///
	| cobp0==1212 | cobp0==1222 | cobp0==3212 | cobp0==1098)
replace cobgroup=28 if (cobp0==46 | cobp0==2164)
replace cobgroup=29 if cobp0==2046
replace cobgroup=30 if cobp0==102
replace cobgroup=31 if cobp0==124
replace cobgroup=32 if cobp0==184
replace cobgroup=33 if (cobp0==31 | cobp0==34 | cobp0==36 | cobp0==94 | cobp0==105 ///
	| cobp0==108 | cobp0==109 | cobp0==112 | cobp0==161 | cobp0==198 | ///
	cobp0==201 | cobp0==219)
replace cobgroup=34 if cobp0==16
replace cobgroup=35 if (cobp0==93)
replace cobgroup=36 if cobp0==155
replace cobgroup=37 if (cobp0==1 | cobp0==29 | cobp0==23 | cobp0==125 | cobp0==143 ///
	| cobp0==191 | cobp0==924)
replace cobgroup=38 if (cobp0==105 | cobp0==111 | cobp0==199 | cobp0==207 | ///
	cobp0==136 |cobp0==216)

replace cobgroup=39 if (cobp0==38)
replace cobgroup=40 if cobp0==101
replace cobgroup=41 if (cobp0==7 | cobp0==8 | cobp0==14 | cobp0==17 | cobp0==22 ///
	| cobp0==30 | cobp0==41 | cobp0==54 | cobp0==59 | cobp0==60 |cobp0==81 | ///
	cobp0==87 | cobp0==137 | cobp0==145 | cobp0==165 | cobp0==171 | cobp0==173 ///
	| cobp0==174 | cobp0==204 | cobp0==208 | cobp0==937 | cobp0==5071 | cobp0==1008)
replace cobgroup=42 if cobp0==214
replace cobgroup=43 if (cobp0==20 | cobp0==52 | cobp0==63 | cobp0==82 ///
	| cobp0==89 | cobp0==132 | cobp0==148 | cobp0==157)
replace cobgroup=44 if (cobp0==9 | cobp0==24 | cobp0==27 | cobp0==45 | cobp0==47 ///
	| cobp0==61 | cobp0==68 | cobp0==86 | cobp0==159 | cobp0==160 | cobp0==193 ///
	| cobp0==215 | cobp0==218 | cobp0==934)

replace cobgroup=45 if cobp0==11
replace cobgroup=46 if cobp0==147
replace cobgroup=47 if (cobp0==40 | cobp0==51 | cobp0==69 | cobp0==107 | ///
	cobp0==129 | cobp0==133 | cobp0==142 | cobp0==151 | cobp0==158 | cobp0==162 ///
	| cobp0==187 | cobp0==203 | cobp0==209 | cobp0==217 | cobp0==221)
replace cobgroup=99 if (cobp0==900 | cobp0==903 | cobp0==299)

replace cobgroup=. if cobpimp==1

lab var cobgroup "Country of birth 2001:  grouped variable"
lab def  cob 1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" ///
	5 "UK, part not specified" 6 "Republic of Ireland" ///
	7 "Ireland part not specified" 8 "Channel Islands and Isle of Man" ///
	9 "France" 10 "Germany" 11 "Italy" 12 "Netherlands" 13 "Spain" ///
	14 "Other country in European Union" 15 "Other countries in Western Europe not in EU" ///
	16 "Poland" 17 "Other Eastern Europe" ///
	18 "North Africa" 19 "Nigeria" 20 "Other Central and Western Africa" ///
	21 "Kenya" 22 "South Africa" 23 "Zimbabwe" 24 "Other South and Eastern Africa" ///
	25 "Cyprus" 26 "Iran" 27 "Other Middle East" ///
	28 "China" 29 "Hong Kong" 30 "Japan" 31 "Malaysia" 32 "Singapore" 33 "Other Far East" ///
	34 "Bangladesh" 35 "India" 36 "Pakistan" 37 "Other South Asia" 38 "Central Asia" ///
	39 "Canada" 40 "Jamaica" 41 "Other Caribbean and West Indies" 42 "USA" ///
	43 "Other North America" 44 "South America" 45 "Australia" 46 "New Zealand" ///
	47 "Other Oceania" 99 "Other"

lab val cobgroup cob

tab cobgroup

*SAVE YOUR DATA
