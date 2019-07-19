set more off
cd "/Users/angiekim/code/econ1660/final-project"

clear all

import delimited "/Users/angiekim/code/econ1660/final-project/totals.csv", encoding(ISO-8859-1)

//check if the differences are meaningful
//ttest real2017 == simulated2017, unpaired
//ttest cap20 == cap30, unpaired
//ttest cap20 == simulated2018, unpaired 
//ttest cap30 == simulated2018, unpaired

summarize real2017 simulated2017 simulated2018

//esttab using all.tex, cells("mean sd sum min max") noobs nonumber title("Summary of Monthly Visits")

//eststo clear

summarize simulated2017 cap20 cap225 cap25 cap30 cap325 cap35

//esttab using caps.tex, cells("mean sd sum min max") noobs nonumber title("Summary of Monthly Visits with Charging Caps") 
//eststo clear

summarize simulated2018 missing1 missing2 missing3

//esttab using missing.tex, cells("mean sd sum min max") noobs nonumber title("Summary of Monthly Visits with Missing Stations") 
//eststo clear
