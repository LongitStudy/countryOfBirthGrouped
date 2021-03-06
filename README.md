# countryOfBirthGrouped
This repository consists of five Stata syntax files that create a grouped country of birth variable from the country of birth variable in each of the members' tables (ME71, ME81, ME91, ME01, ME11). The syntax is all based on the .do file written to group the 2001 country of birth variable into 48 categories.  

1 England; 2 Wales; 3 Scotland; 4 Northern Ireland; 5 UK, part not specified; 6 Republic of Ireland; 7 Ireland part not specified; 8 Channel Islands and Isle of Man; 9 France; 10 Germany; 11 Italy; 12 Netherlands; 13 Spain; 14 Other country in European Union; 15 Other countries in Western Europe not in EU; 16 Poland; 17 Other Eastern Europe; 18 North Africa; 19 Nigeria; 20 Other Central and Western Africa; 21 Kenya; 22 South Africa; 23 Zimbabwe; 24 Other South and Eastern Africa; 25 Cyprus; 26 Iran; 27 Other Middle East; 28 China; 29 Hong Kong; 30 Japan; 31 Malaysia; 32 Singapore; 33 Other Far East; 34 Bangladesh; 35 India; 36 Pakistan; 37 Other South Asia; 38 Central Asia; 39 Canada; 40 Jamaica; 41 Other Caribbean and West Indies; 42 USA; 43 Other North America; 44 South America; 45 Australia; 46 New Zealand; 47 Other Oceania; 99 Other.

- cobgrp71.do: uses pob7 from ME71 and derives a variable with 40 categories. It does not include categories for North Africa; Japan, Malaysia, Singapore, Bangladesh (which did not exist in 1971), Central Asia, Other North America, or Other Oceania.
- cobgrp81.do: uses cob8 from ME81 and derives a variable with 46 categories. It does not include category for Central Asia or Other Oceania.
- cobgrp91.do: uses cob9 from ME91 and derives a variable with 46 categories. It does not include category for Central Asia or Other Oceania.
- cobgrp01.do: uses cobp0 and cobpimp from ME01 and derives a variable with 48 categories.
- cobgrp11.do: uses cobp11 and cobp11_imp from ME11 and derives a variable with the same categorisation as used in 2001.
