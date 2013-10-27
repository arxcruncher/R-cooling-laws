# IMPLEMENTATION OF COMMON COLLING LAWS
# Currently implemented:
#  -Newton
#  -Dulon-Petit
#  -Stefan law
#  -Netwon-Stefan

# The naming of the functions goes as follows:
# f_*, cooling law in the form of DT/dt
# f_*_solution, the solution to the cooling low of the form DT/dt

# The following constants are used
# T = temperature of the system
# t = time
# Ta = ambient temperature of the fluid surrounding the system
# Tr = mean temperature of sources of thermal radiation in the environment of the system
# k,h,n = constants


#Newton's law of cooling
f_netwon <- function(T,Ta,h) {return(-h*(T-Ta))}
f_newton_solution <- function(t,T0,Ta,beta) {return(Ta+(T0-Ta)*exp(-beta*t))}

#Dulong-Petit law of cooling
f_dulong_petit <- function(T,Ta,g,n=5/4) {return(g*(T-Ta)^n)}

#Stefan Law of cooling
f_stefan <- function(T,Tr,k) {return(k*(T^4-Tr^4))}

#Netwon-Stefan law of cooling
f_netwon_stefan <- function(T,Ta,Tr,k,h) {return(-h*(T-Ta)+k*(T^4-Tr^4))}
