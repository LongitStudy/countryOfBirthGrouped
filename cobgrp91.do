/*cobgrp91

This code groups countries similarly to 2001:
1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" 5 "UK, part not specified" 
6 "Republic of Ireland" 7 "Ireland part not specified" 
8 "Channel Islands and Isle of Man" 
9 "France" 10 "Germany" 11 "Italy" 12 "Netherlands" 13 "Spain" 
14 "Other country in European Union" 15 "Other countries in Western Europe not in EU" 
16 "Poland" 17 "Other Eastern Europe" 
18 "North Africa" 19 "Nigeria" 20 "Other Central and Western Africa" 
21 "Kenya" 22 "South Africa" 23 "Zimbabwe" 24 "Other South and Eastern Africa" 
25 "Cyprus" 26 "Iran" 27 "Other Middle East" 
28 "China" 29 "Hong Kong" 30 "Japan" 31 "Malaysia" 32 "Singapore" 
33 "Other Far East" 
34 "Bangladesh" 35 "India" 36 "Pakistan" 37 "Other South Asia" 
38 "Canada" 39 "Jamaica" 40 "Other Caribbean and West Indies" 41 "USA" 
42 "Other North America" 43 "South America" 
44 "Australia" 45 "New Zealand" 46 "Other Oceania" 
99 "Other"

Variables needed for the code:
	cob9 (country of birth 1991)
*/

/*Make sure that you change your working directory to your project area
cd "P:\......"
*/

/*Open the dataset that you want to add the derived variable to. Make sure that it has all the variables that are in the variables list above)*/
********************************************************************************

tab cob9
gen cobgrp91=.

replace cobgrp91=1 if cob9==601
replace cobgrp91=2 if cob9==603 
replace cobgrp91=3 if cob9==602
replace cobgrp91=4 if cob9==604
replace cobgrp91=5 if cob9==608
replace cobgrp91=6 if cob9==605
replace cobgrp91=7 if cob9==609
replace cobgrp91=8 if (cob9==606 | cob9==607)

replace cobgrp91=9 if cob9==647
replace cobgrp91=10 if (cob9==651 | cob9==652 | cob9==661)
replace cobgrp91=11 if cob9==648
replace cobgrp91=12 if cob9==650
replace cobgrp91=13 if cob9==655
replace cobgrp91=14 if (cob9==645 | cob9==646 | cob9==649 | cob9==653 | ///
	cob9==654 | cob9==657 | cob9==660 | cob9==666)
replace cobgrp91=15 if (cob9==640 | cob9==641 | cob9==663 | cob9==667)

replace cobgrp91=16 if cob9==664
replace cobgrp91=17 if (cob9==656 | cob9==657 | cob9==658 | cob9==659 | ///
	cob9==662 | cob9==665 | cob9==668 | cob9==669 | cob9==670 | cob9==671)

replace cobgrp91=18 if (cob9==672 | cob9==673 | cob9==674 | cob9==675 | cob9==676)
replace cobgrp91=19 if cob9==622
replace cobgrp91=20 if (cob9==620 | cob9==621 | cob9==623 | cob9==678)
replace cobgrp91=21 if cob9==613
replace cobgrp91=22 if cob9==677
replace cobgrp91=23 if cob9==618
replace cobgrp91=24 if (cob9==614 | cob9==615 | cob9==616 | cob9==617 | ///
	cob9==619 | cob9==642 | cob9==643)

replace cobgrp91=25 if cob9==639
replace cobgrp91=26 if cob9==685
replace cobgrp91=27 if (cob9==686 | cob9==687 | cob9==688 | cob9==689 | ///
	cob9==690 | cob9==691 | cob9==692)
replace cobgrp91=28 if cob9==693
replace cobgrp91=29 if cob9==636
replace cobgrp91=30 if cob9==694
replace cobgrp91=31 if cob9==637
replace cobgrp91=32 if cob9==638
replace cobgrp91=33 if (cob9==695 | cob9==696 | cob9==697 | cob9==698 | cob9==699)
replace cobgrp91=34 if cob9==632
replace cobgrp91=35 if cob9==633
replace cobgrp91=36 if cob9==634
replace cobgrp91=37 if (cob9==635 | cob9==700)

replace cobgrp91=38 if cob9==611
replace cobgrp91=39 if cob9==625
replace cobgrp91=40 if (cob9==624 | cob9==626 | cob9==627 | cob9==628 | ///
	cob9==629 | cob9==680)
replace cobgrp91=41 if cob9==679
replace cobgrp91=42 if (cob9==681 | cob9==630)
replace cobgrp91=43 if (cob9==631 | cob9==682 | cob9==683 | cob9==684)

replace cobgrp91=44 if cob9==610
replace cobgrp91=45 if cob9==612
replace cobgrp91=46 if cob9==644
replace cobgrp91=99 if (cob9==701 | cob9==702)

lab var cobgrp91 "Country of birth 1991: compatible with 2001"
lab def cobgrp91 1 "England" 2 "Wales" 3 "Scotland" 4 "Northern Ireland" ///
	5 "UK, part not specified" 6 "Republic of Ireland" ///
	7 "Ireland part not specified" 8 "Channel Islands and Isle of Man" ///
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
	44 "Australia" 45 "New Zealand" 46 "Other Oceania" ///
	99 "Other"

lab val cobgrp91 cobgrp91

tab cobgrp91

*SAVE YOUR DATA