/*DERIVING GROUPED COUNTRY OF BIRTH IN 2011 AS PER THE GROUPS USED IN 2001

This code groups countries in 2001 into 47 categories.
1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" 5 "UK, part not specified" 
6 "Republic of Ireland" 7 "Ireland part not specified" 8 "Channel Islands and Isle of Man"
9 "France" 10 "Germany" 11 "Italy" 12 "Netherlands" 13 "Spain" 14 "Poland"
15 "Other country in European Union" 16 "Other countries in in W. Europe not in EU" 
17 "Other countries in in E. Europe not in EU" 
18 "North Africa" 
19 "Nigeria" 20 "Other Central and Western Africa" 
21 "Kenya" 22 "South Africa" 23 "Zimbabwe" 24 "Other South and Eastern Africa" 
25 "Cyprus (not EU) 26 "Iran" 27 "Other Middle East" 
28 "China" 29 "Hong Kong" 30 "Japan" 31 "Malaysia" 32 "Singapore" 33 "Other Far East"
34 "Bangladesh" 35 "India" 36 "Pakistan" 37 "Other South Asia" 
38 "Central Asia"
39 "Canada" 40 "Jamaica" 41 "Other Caribbean and West Indies" 
42 "USA" 43 "Other North America" 
44 "South America" 
45 "Australia" 46 "New Zealand" 47  "Other Oceania" 
99 "Other"

Variables needed for the code:
	cobp11 (country of birth 2011)
	cobp11_imp (cob imputation flag in 2011)
*/

/*Make sure that you change your working directory to your project area
cd "P:\......"
*/

/*Open the dataset that you want to add the derived variable to. Make sure that it has all the variables that are in the variables list above)*/
********************************************************************************

gen cobgroup11=.
tab cobp11_imp
tab cobp11_imp, nolab

replace cobgroup11=1 if cobp11==921
replace cobgroup11=2 if cobp11==924
replace cobgroup11=3 if cobp11==923
replace cobgroup11=4 if cobp11==922
replace cobgroup11=5 if (cobp11==925 | cobp11==926 | cobp11==941)
replace cobgroup11=6 if cobp11==372
replace cobgroup11=7 if cobp11==373
replace cobgroup11=8 if (cobp11==831 | cobp11==832 | cobp11==833 | cobp11==931)

replace cobgroup11=9 if cobp11==250
replace cobgroup11=10 if cobp11==276
replace cobgroup11=11 if cobp11==380
replace cobgroup11=12 if cobp11==528
replace cobgroup11=13 if (cobp11==911 | cobp11==912 | cobp11==913)
replace cobgroup11=14 if cobp11==616
replace cobgroup11=15 if (cobp11==40 | cobp11==56 | cobp11==100 | cobp11==191 ///
	 | cobp11==203 | cobp11==208 | cobp11==233 | cobp11==246 | cobp11==300 ///
	 | cobp11==304 | cobp11==336 | cobp11==348 | cobp11==420 | cobp11==440 ///
	 | cobp11==442 | cobp11==470 | cobp11==620 | cobp11==642 | cobp11==674 ///
	 | cobp11==703 | cobp11==705 | cobp11==752 | cobp11==901 | cobp11==971)
replace cobgroup11=16 if (cobp11==20 | cobp11==292 | cobp11==352 | cobp11==438 ///
	 | cobp11==492 | cobp11==578 | cobp11==756)
replace cobgroup11=17 if (cobp11==8 | cobp11==70 | cobp11==112 | cobp11==268 ///
	 | cobp11==498 | cobp11==499 | cobp11==643 | cobp11==688 | cobp11==792 ///
	 | cobp11==804 | cobp11==807 | cobp11==951 | cobp11==972 | cobp11==973 ///
	 | cobp11==974)
	 
replace cobgroup11=18 if (cobp11==12 | cobp11==478 | cobp11==504 | cobp11==728 ///
	 | cobp11==729 | cobp11==732 | cobp11==736 | cobp11==788 | cobp11==818)
replace cobgroup11=19 if cobp11==566
replace cobgroup11=20 if (cobp11==120 | cobp11==132 | cobp11==140 | cobp11==148 ///
	 | cobp11==178 | cobp11==180 | cobp11==204 | cobp11==226 | cobp11==266 ///
	 | cobp11==270 | cobp11==288 | cobp11==324 | cobp11==384 | cobp11==430 ///
	 | cobp11==466 | cobp11==562 | cobp11==624 | cobp11==678 | cobp11==686 ///
	 | cobp11==694 | cobp11==854)
replace cobgroup11=21 if cobp11==404
replace cobgroup11=22 if cobp11==710
replace cobgroup11=23 if cobp11==716
replace cobgroup11=24 if (cobp11==24 | cobp11==72 | cobp11==108 | cobp11==174 ///
	| cobp11==231 | cobp11==232 | cobp11==262 | cobp11==426 | cobp11==450 | ///
	cobp11==454 | cobp11==480 | cobp11==508 | cobp11==516 | cobp11==638 | ///
	cobp11==646 | cobp11==690 | cobp11==706 | cobp11==748 | cobp11==800 | ///
	cobp11==834 | cobp11==894)

replace cobgroup11=25 if (cobp11==902 | cobp11==903)
replace cobgroup11=26 if cobp11==364
replace cobgroup11=27 if (cobp11==31 | cobp11==48 | cobp11==51 | cobp11==275 ///
	| cobp11==368 | cobp11==376 | cobp11==400 | cobp11==414 | cobp11==422 | ///
	cobp11==434 | cobp11==512 | cobp11==634 | cobp11==682 | cobp11==760 ///
	| cobp11==784 | cobp11==887 | cobp11==983)

replace cobgroup11=28 if cobp11==156
replace cobgroup11=29 if cobp11==344
replace cobgroup11=30 if cobp11==392
replace cobgroup11=31 if cobp11==458
replace cobgroup11=32 if cobp11==702
replace cobgroup11=33 if (cobp11==96 | cobp11==104 | cobp11==116 | cobp11==158 ///
	| cobp11==360 | cobp11==408 | cobp11==410 | cobp11==418 | cobp11==446 | ///
	cobp11==598 | cobp11==608 | cobp11==626 | cobp11==704 | cobp11==764)
	
replace cobgroup11=34 if cobp11==50
replace cobgroup11=35 if cobp11==356
replace cobgroup11=36 if cobp11==586
replace cobgroup11=37 if (cobp11==4 | cobp11==64 | cobp11==86 | cobp11==144 ///
	| cobp11==462 | cobp11==524)
replace cobgroup11=38 if (cobp11==4 | cobp11==398 | cobp11==417 | cobp11==496 ///
	| cobp11==762 | cobp11==795 | cobp11==860)
	
replace cobgroup11=39 if cobp11==124
replace cobgroup11=40 if cobp11==388
replace cobgroup11=41 if (cobp11==28 | cobp11==44 | cobp11==52 | cobp11==60 ///
	| cobp11==92 | cobp11==136 | cobp11==192 | cobp11==212 | cobp11==214 | ///
	cobp11==308 | cobp11==312 | cobp11==474 | cobp11==500 | cobp11==530 | ///
	cobp11==531 | cobp11==533 | cobp11==534 | cobp11==535 | cobp11==630 ///
	| cobp11==652  | cobp11==659  | cobp11==660  | cobp11==662  | cobp11==663 ///
	| cobp11==670  | cobp11==780  | cobp11==796  | cobp11==850  | cobp11==988 ///
    | cobp11==999)	
replace cobgroup11=42 if cobp11==840
replace cobgroup11=43 if (cobp11==68 | cobp11==84 | cobp11==170 | cobp11==188 ///
	| cobp11==222 | cobp11==320 | cobp11==340 | cobp11==484 | cobp11==558 | ///
	cobp11==666 | cobp11==985 | cobp11==986 | cobp11==764 | cobp11==608 ///
	| cobp11==591)
replace cobgroup11=44 if (cobp11==32 | cobp11==76 | cobp11==152 | cobp11==218 ///
	| cobp11==254 | cobp11==328 | cobp11==600 | cobp11==604 | cobp11==740 | ///
	cobp11==858 | cobp11==862 | cobp11==987)
	
replace cobgroup11=45 if cobp11==36
replace cobgroup11=46 if cobp11==554
replace cobgroup11=47 if (cobp11==90 | cobp11==184 | cobp11==242 | cobp11==258 ///
	| cobp11==296 | cobp11==316 | cobp11==520 | cobp11==540 | cobp11==548 | ///
	cobp11==570 | cobp11==574 | cobp11==583 | cobp11==584 | cobp11==585 ///
	| cobp11==612 | cobp11==768 | cobp11==772 | cobp11==776 | cobp11==798 ///
	| cobp11==876 | cobp11==882)
	
replace cobgroup11=99 if (cobp11==991 | cobp11==992)

replace cobgroup11=. if (cobp11_imp==1 | cobp11_imp==2)

lab var cobgroup11 "Country of birth 2011:  grouped variable"
lab def  cobgroup11 1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" ///
 5 "UK, part not specified" 6 "Republic of Ireland" 7 "Ireland part not specified" ///
 8 "Channel Islands and Isle of Man" 9 "France" 10 "Germany" 11 "Italy" ///
 12 "Netherlands" 13 "Spain" 14 "Poland" 15 "Other country in European Union" ///
 16 "Other countries in W Europe not in EU" 17 "Other countries in E Europe not in EU" ///
 18 "North Africa" 19 "Nigeria" 20 "Other Central and Western Africa" 21 "Kenya" ///
 22 "South Africa" 23 "Zimbabwe" 24 "Other South and Eastern Africa" ///
 25 "Cyprus (Not EU)" 26 "Iran" 27 "Other Middle East" 28 "China" 29 "Hong Kong" ///
 30 "Japan" 31 "Malaysia" 32 "Singapore" 33 "Other Far East" ///
 34 "Bangladesh" 35 "India" 36 "Pakistan" 37 "Other South Asia" ///
 38 "Central Asia" 39 "Canada" 40 "Jamaica" 41 "Other Caribbean and West Indies" ///
 42 "USA" 43 "Other North America" 44 "South America" 45 "Australia" 46 "New Zealand" ///
 47 "Other Oceania" 99 "Other"

lab val cobgroup11 cobgroup11

tab cobgroup11

*SAVE YOUR DATA