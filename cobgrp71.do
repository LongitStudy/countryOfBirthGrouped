/*cobgrp71

This code groups countries similarly to 2001, but no categories for:
North Africa (18 in 2001)
Japan (30), Malaysia (31), Singapore (32)
Bangladesh (34 in 2001) (not a country in 1971)
Other North America (42 in 2001)
Other Oceania (46 in 2001).

1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" 6 "Republic of Ireland" 
7 "Ireland part not specified" 8 "Channel Islands and Isle of Man" 9 "France" 
10 "Germany" 11 "Italy" 12 "Netherlands" 13 "Spain" 14 "Other country in European Union" 
15 "Other countries in Western Europe not in EU" 
16 "Poland" 17 "Other Eastern Europe" 
19 "Nigeria" 20 "Other Central and Western Africa" 21 "Kenya" 22 "South Africa" 
23 "Zimbabwe" 24 "Other South and Eastern Africa" 
25 "Cyprus" 26 "Iran" 27 "Other Middle East" 
28 "China" 29 "Hong Kong" 33 "Other Far East" 
35 "India" 36 "Pakistan" 37 "Other South Asia" 
38 "Canada" 39 "Jamaica" 40 "Other Caribbean and West Indies" 41 "USA" 
43 "South America" 44 "Australia" 45 "New Zealand" 99 "Other"

Variables needed for the code:
	pob7 (country of birth 1971)
*/

/*Make sure that you change your working directory to your project area
cd "P:\......"
*/

/*Open the dataset that you want to add the derived variable to. Make sure that it has all the variables that are in the variables list above)*/
********************************************************************************

tab pob7
gen cobgrp71=.

replace cobgrp71=1 if pob7==5
replace cobgrp71=2 if pob7==7
replace cobgrp71=3 if pob7==1
replace cobgrp71=4 if pob7==2
replace cobgrp71=6 if pob7==3
replace cobgrp71=7 if pob7==6
replace cobgrp71=8 if pob7==4

replace cobgrp71=9 if pob7==11
replace cobgrp71=10 if pob7==15
replace cobgrp71=11 if pob7==13
replace cobgrp71=12 if pob7==10
replace cobgrp71=13 if pob7==12
replace cobgrp71=14 if (pob7==9 | pob7==14)
replace cobgrp71=15 if (pob7==16 | pob7==19 | pob7==20)

replace cobgrp71=16 if pob7==18
replace cobgrp71=17 if (pob7==17 | pob7==48 | pob7==52)

*replace cobgrp71=18 if pob7==
replace cobgrp71=19 if pob7==23
replace cobgrp71=20 if (pob7==21 | pob7==22)
replace cobgrp71=21 if pob7==25
replace cobgrp71=22 if pob7==46
replace cobgrp71=23 if pob7==24
replace cobgrp71=24 if (pob7==26 | pob7==27 | pob7==28 | pob7==29 | pob7==30)

replace cobgrp71=25 if pob7==31
replace cobgrp71=26 if pob7==49
replace cobgrp71=27 if pob7==47
replace cobgrp71=28 if pob7==51
replace cobgrp71=29 if pob7==35
*replace cobgrp71=30 if pob7==""
*replace cobgrp71=31 if pob7==""
*replace cobgrp71=32 if pob7==""
replace cobgrp71=33 if (pob7==34 | pob7==50) 
*replace cobgrp71=34 if 
replace cobgrp71=35 if pob7==32
replace cobgrp71=36 if pob7==53
replace cobgrp71=37 if pob7==33

replace cobgrp71=38 if pob7==38
replace cobgrp71=39 if pob7==40
replace cobgrp71=40 if (pob7==39 | pob7==41 | pob7==42)
replace cobgrp71=41 if pob7==44
*replace cobgrp71=42 if pob7==""
replace cobgrp71=43 if (pob7==43 | pob7==45)

replace cobgrp71=44 if pob7==36
replace cobgrp71=45 if pob7==37
replace cobgrp71=99 if pob7==8

lab var cobgrp71 "Country of birth 1971:  grouped variable"
lab def  cob 1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" ///
	6 "Republic of Ireland" 7 "Ireland part not specified" ///
	8 "Channel Islands and Isle of Man" 9 "France" 10 "Germany" 11 "Italy" ///
	12 "Netherlands" 13 "Spain" 14 "Other country in European Union" ///
	15 "Other countries in Western Europe not in EU" ///
	16 "Poland" 17 "Other Eastern Europe" ///
	19 "Nigeria" 20 "Other Central and Western Africa" 21 "Kenya" ///
	22 "South Africa" 23 "Zimbabwe" 24 "Other South and Eastern Africa" ///
	25 "Cyprus" 26 "Iran" 27 "Other Middle East" ///
	28 "China" 29 "Hong Kong" 33 "Other Far East" ///
	35 "India" 36 "Pakistan" 37 "Other South Asia" ///
	38 "Canada" 39 "Jamaica" 40 "Other Caribbean and West Indies" 41 "USA" ///
	43 "South America" 44 "Australia" 45 "New Zealand" 99 "Other"

lab val cobgrp71 cob

*SAVE YOUR DATA