/*cobgrp81

This code groups countries similarly to 2001, but without category 46 (Other Oceania):
1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" 6 "Republic of Ireland" 
7 "Ireland part not specified" 8 "Channel Islands and Isle of Man" 
9 "France" 10 "Germany" 11 "Italy" 12 "Netherlands" 13 "Spain" 
14 "Other country in European Union" 15 "Other countries in Western Europe not in EU" 
16 "Poland" 17 "Other Eastern Europe" 
18 "North Africa" 19 "Nigeria" 20 "Other Central and Western Africa" 
21 "Kenya" 22 "South Africa" 23 "Zimbabwe" 24 "Other South and Eastern Africa" 
25 "Cyprus" 26 "Iran" 27 "Other Middle East" 
28 "China" 29 "Hong Kong" 30 "Japan" 31 "Malaysia" 32 "Singapore" 33 "Other Far East" 
34 "Bangladesh" 35 "India" 36 "Pakistan" 37 "Other South Asia" 
38 "Canada" 39 "Jamaica" 40 "Other Caribbean and West Indies" 41 "USA" 
42 "Other North America" 43 "South America" 
44 "Australia" 45 "New Zealand" 98 "Not stated" 99 "Other"

Variables needed for the code:
	cob8 (country of birth 1981)
*/

/*Make sure that you change your working directory to your project area
cd "P:\......"
*/

/*Open the dataset that you want to add the derived variable to. Make sure that it has all the variables that are in the variables list above)*/
********************************************************************************


tab cob8
gen cobgrp81=.

replace cobgrp81=1 if cob8==5
replace cobgrp81=2 if cob8==7
replace cobgrp81=3 if cob8==1
replace cobgrp81=4 if cob8==2
replace cobgrp81=6 if cob8==3
replace cobgrp81=7 if cob8==6
replace cobgrp81=8 if cob8==4

replace cobgrp81=9 if cob8==14
replace cobgrp81=10 if (cob8==20 | cob8==22)
replace cobgrp81=11 if cob8==18
replace cobgrp81=12 if cob8==12
replace cobgrp81=13 if cob8==15
replace cobgrp81=14 if (cob8==9 | cob8==10 | cob8==11 | cob8==13 | cob8==16 | cob8==19 | cob8==23)
replace cobgrp81=15 if (cob8==21 | cob8==31 | cob8==32)

replace cobgrp81=16 if cob8==29
replace cobgrp81=17 if (cob8==17 | cob8==24 | cob8==25 | cob8==26 | cob8==27 | cob8==28 | cob8==30 | cob8==79)

replace cobgrp81=18 if (cob8==66 | cob8==68 | cob8==69 | cob8==70 | cob8==71)
replace cobgrp81=19 if cob8==36
replace cobgrp81=20 if (cob8==33 | cob8==34 | cob8==35 | cob8==65)
replace cobgrp81=21 if cob8==39
replace cobgrp81=22 if cob8==67
replace cobgrp81=23 if cob8==38
replace cobgrp81=24 if (cob8==37 | cob8==40 | cob8==41 | cob8==42 | cob8==43 | cob8==44)

replace cobgrp81=25 if cob8==45
replace cobgrp81=26 if cob8==73
replace cobgrp81=27 if (cob8==72 | cob8==74)
replace cobgrp81=28 if cob8==77
replace cobgrp81=29 if cob8==50
replace cobgrp81=30 if cob8==78
replace cobgrp81=31 if cob8==49

replace cobgrp81=33 if (cob8==75 | cob8==76)
replace cobgrp81=34 if cob8==46
replace cobgrp81=35 if cob8==47
replace cobgrp81=36 if cob8==80
replace cobgrp81=37 if cob8==48

replace cobgrp81=38 if cob8==53
replace cobgrp81=39 if cob8==56
replace cobgrp81=40 if (cob8==55 | cob8==57 | cob8==58 | cob8==59 | cob8==63)
replace cobgrp81=41 if cob8==61
replace cobgrp81=42 if (cob8==54 | cob8==62)
replace cobgrp81=43 if (cob8==60 | cob8==64)

replace cobgrp81=44 if cob8==51
replace cobgrp81=45 if cob8==52
replace cobgrp81=98 if cob8==8
replace cobgrp81=99 if cob8==81

lab var cobgrp81 "Country of birth 1981:  grouped variable"
lab def  cob 1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" ///
	6 "Republic of Ireland" 7 "Ireland part not specified" ///
	8 "Channel Islands and Isle of Man" ///
	9 "France" 10 "Germany" 11 "Italy" 12 "Netherlands" 13 "Spain" ///
	14 "Other country in European Union" ///
	15 "Other countries in Western Europe not in EU" ///
	16 "Poland" 17 "Other Eastern Europe" ///
	18 "North Africa" 19 "Nigeria" 20 "Other Central and Western Africa" ///
	21 "Kenya" 22 "South Africa" 23 "Zimbabwe" 24 "Other South and Eastern Africa" ///
	25 "Cyprus" 26 "Iran" 27 "Other Middle East" ///
	28 "China" 29 "Hong Kong" 30 "Japan" 31 "Malaysia" 32 "Singapore" ///
	33 "Other Far East" ///
	34 "Bangladesh" 35 "India" 36 "Pakistan" 37 "Other South Asia" ///
	38 "Canada" 39 "Jamaica" 40 "Other Caribbean and West Indies" 41 "USA" ///
	42 "Other North America" 43 "South America" ///
	44 "Australia" 45 "New Zealand" 98 "Not stated" 99 "Other"

lab val cobgrp81 cob

tab cobgrp81

*SAVE YOUR DATA