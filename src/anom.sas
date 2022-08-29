data temp;
  input Genetic_Line Mean_CryA1c Std_Dev;
  label 
    Genetic_Line=Genetic Line
	Mean_CryA1c=Mean CryA1c;
  cards;
 1 21.83 1.17
 2 20.40 1.09
 3 21.62 1.32
 4 21.06 1.11
 5 20.57 0.99
 run;

 proc print;
 run;

 proc sgplot;
   scatter x=Genetic_Line y=Mean_CryA1c;
   yaxis min=19 max=23;
   refline 21.096 / lineattrs=(pattern=dash); 
   refline 19.626 / lineattrs=(pattern=solid); 
   refline 22.566 / lineattrs=(pattern=solid); 
run;

