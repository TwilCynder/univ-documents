param fichier := "./shift-scheduling-5.zplread" ;
do print fichier ;


####################
# Horizon = nb days

param horizon := read fichier as "2n" comment "#" match "^h";
do print "horizon : ", horizon, " jours" ;


############################################
# Sets of days, week-ends, services, staff :

set Days := {0..horizon-1} ;
# All instances start on a Monday
# planning horizon is always a whole number of weeks (h mod 7 = 0)
set WeekEnds := {1..horizon/7} ;
do print card(WeekEnds), " week-ends :" ;
do print WeekEnds ;

set Services := { read fichier as "<2s>" comment "#" match "^d" } ;
do print card(Services), " services" ; 

set Personnes := { read fichier as "<2s>" comment "#" match "^s" } ;
do print card(Personnes) , " personnels" ;


############
# Parameters

param duree[Services] := read fichier as "<2s> 3n" comment "#" match "^d";
# do forall <t> in Services  do print "durée ", t, " : ", duree[t] ;

param ForbiddenSeq[Services*Services] :=
	read fichier as "<2s,3s> 4n" comment "#"  match "c" default 0 ;


param MaxTotalMinutes[Personnes] :=
  read fichier as "<2s> 3n" comment "#" match "^s"  ;
param MinTotalMinutes[Personnes] :=
  read fichier as "<2s> 4n" comment "#" match "^s"  ;
param MaxConsecutiveShifts[Personnes] :=
  read fichier as "<2s> 5n" comment "#" match "^s"  ;
param MinConsecutiveShifts[Personnes] :=
  read fichier as "<2s> 6n" comment "#" match "^s"  ;
param MinConsecutiveDaysOff[Personnes] :=
  read fichier as "<2s> 7n" comment "#" match "^s"  ;
param MaxWeekends[Personnes] :=
  read fichier as "<2s> 8n" comment "#" match "^s"  ;

param MaxShift[Personnes*Services] :=
  read fichier as "<2s,3s> 4n" comment "#" match "^m" default 0 ;

param requirement[Days*Services] :=
  read fichier as "<2n,3s> 4n" comment "#" match "^r" ;

param belowCoverPen[Days*Services] :=
  read fichier as "<2n,3s> 5n" comment "#" match "^r" ;

param aboveCoverPen[Days*Services] :=
  read fichier as "<2n,3s> 6n" comment "#" match "^r" ;

param dayOff[Personnes*Days] :=
  read fichier as "<2s,3n> 4n" comment "#" match "^f" default 0 ;

# penalité si jour "pas off" = "on"
param prefOff[Personnes*Days*Services] :=
  read fichier as "<2s,3n,4s> 5n" comment "#" match "^n" default 0 ;

# penalité si jour "pas on" = "off"
param prefOn[Personnes*Days*Services] :=
  read fichier as "<2s,3n,4s> 5n" comment "#" match "^y" default 0 ;

# do print "Services" ;
# do forall <s> in Services do print s, duree[s] ;
# do forall <s1,s2> in Services*Services with ForbiddenSeq[s1,s2] == 1
#   do print s1, s2, ForbiddenSeq[s1,s2] ;
# do print "Staff" ; 
# do forall <p> in Personnes
#   do print p, MaxTotalMinutes[p], MinTotalMinutes[p],
#     MaxConsecutiveShifts[p], MinConsecutiveShifts[p],
#     MinConsecutiveDaysOff[p], MaxWeekends[p] ;
# do print "Days Off" ;
# do forall<p,d> in Personnes * Days with dayOff[p,d] == 1 do print p,d,dayOff[p,d] ;
# do print "Pref Shifts On" ;
# do forall<p,d,s> in Personnes * Days * Services
#   with prefOn[p,d,s] >= 1 do print p,d,s,prefOn[p,d,s] ;
# do print "Pref Shifts Off" ;
# do forall<p,d,s> in Personnes * Days * Services
#   with prefOff[p,d,s] >= 1 do print p,d,s,prefOff[p,d,s] ;
# do print "Cover" ;
# do forall<d,s> in Days * Services
#   do print d,s,requirement[d,s], belowCoverPen[d,s], aboveCoverPen[d,s] ;



###########
# Variables

var assigned[Days*Services*Personnes] binary ;
var y[Services*Days] integer >= 0;
var z[Services*Days] integer >= 0;
subto personnesParServiceParJour : forall <d> in Days: forall <s> in Services: ((sum<p> in Personnes: assigned[d, s, p]) - y[s, d] + z[s, d]) == requirement[d, s];

var jourTravaille[Personnes*Days];
subto jourTravailleC: forall <d> in Days: forall <p> in Personnes: jourTravaille[p, d] == (sum<s> in Services: assigned[d, s, p]);

subto unServiceParJour: forall <d> in Days: forall <p> in Personnes: jourTravaille[p, d] <= 1;
subto joursRepos: forall <d> in Days: forall <p> in Personnes: jourTravaille[p, d] * dayOff[p, d] == 0;
subto shitfsMax: forall <p> in Personnes: forall <s> in Services: (sum<d> in Days: assigned[d, s, p]) <= MaxShift[p, s];
var dureeTotaleService[Personnes];
subto dureeC: forall <p> in Personnes: dureeTotaleService[p] == (sum<s> in Services: sum <d> in Days: (assigned[d, s, p] * duree[s]));
subto dureeMinMax: forall <p> in Personnes: dureeTotaleService[p] >= MinTotalMinutes[p] and dureeTotaleService[p] <= MaxTotalMinutes[p];

subto seqMax: forall <p> in Personnes: forall <d> in Days with (d <= horizon - MaxConsecutiveShifts[p] - 2) : (sum <dd> in {d..(d+MaxConsecutiveShifts[p] + 1)}: jourTravaille[p, d] ) <= MaxConsecutiveShifts[p];
subto seqInterdites: forall <p> in Personnes: forall <d> in Days with d > 0: forall<s1> in Services: forall<s2> in Services with s1 != s2 and ForbiddenSeq[s1, s2] == 1: assigned[d, s1, p] * assigned[d, s2, p] == 0;

subto seqMinJourOff: forall <p> in Personnes: forall <d> in Days with (d <= (horizon - MinConsecutiveDaysOff[p] - 1)): vif (d==0 or (jourTravaille[p, d-1] == 1)) and jourTravaille[p, d] == 0 then  sum <dd> in {d..(d+MinConsecutiveDaysOff[p])}: jourTravaille[p, dd] == 0 end;  

minimize ecart: sum<s> in Services: sum<d> in Days: (y[s, d] + z[s, d]);