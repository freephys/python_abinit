# Copyright (C) 1998-2009 ABINIT group (XG)
# 
# The purpose of this script is to change the copyright year
# in a whole set of files. Should be called from the top director, with
# util/maintainers/change_year.sh */*.in */*/*.F90 */*/*.cf */*/*.html */*/*.tex */*/*.pl README */README */*/README */*/*.cnf */*/*.bat */*/*.com */*/*.src */*/*_ */*/*.mk */*/*.txt */*/*/*.pl */*/*.m4 */*/make* tests/*/*.sh */*/*.csh */*/*.py */*/*.in *.ac */*/*.am */*/*.help */*/*.c */*/*.m
# Warning : does not do the full work :  (C) 2008 ABINIT   has to be changed by hand to  (C) 2008-2009 ABINIT
# Also, in the previous list, files without an extension are not treated (except the README files), 
# and */*/*.sh are not treated (except tests/*/*.sh), because of conflict with the present script file extension !!
# So, one should complement the present script with a search 
# grep 'past_year ABINIT' * */* */*/* */*/*/* */*/*/*/*
# and treat by hand the remaining files ...

for file in "$@"
do
 echo "working on $file"
 rm -f tmp.yr*  
 sed -e 's&(C) 1987-2008 ABINIT&(C) 1987-2009 ABINIT&' $file > tmp.yr87
 sed -e 's&(C) 1991-2008 ABINIT&(C) 1991-2009 ABINIT&' tmp.yr87 > tmp.yr91
 sed -e 's&(C) 1993-2008 ABINIT&(C) 1993-2009 ABINIT&' tmp.yr91 > tmp.yr93
 sed -e 's&(C) 1996-2008 ABINIT&(C) 1996-2009 ABINIT&' tmp.yr93 > tmp.yr96
 sed -e 's&(C) 1997-2008 ABINIT&(C) 1997-2009 ABINIT&' tmp.yr96 > tmp.yr97
 sed -e 's&(C) 1998-2008 ABINIT&(C) 1998-2009 ABINIT&' tmp.yr97 > tmp.yr98
 sed -e 's&(C) 1999-2008 ABINIT&(C) 1999-2009 ABINIT&' tmp.yr98 > tmp.yr99
 sed -e 's&(C) 2000-2008 ABINIT&(C) 2000-2009 ABINIT&' tmp.yr99 > tmp.yr00
 sed -e 's&(C) 2001-2008 ABINIT&(C) 2001-2009 ABINIT&' tmp.yr00 > tmp.yr01
 sed -e 's&(C) 2002-2008 ABINIT&(C) 2002-2009 ABINIT&' tmp.yr01 > tmp.yr02
 sed -e 's&(C) 2003-2008 ABINIT&(C) 2003-2009 ABINIT&' tmp.yr02 > tmp.yr03
 sed -e 's&(C) 2004-2008 ABINIT&(C) 2004-2009 ABINIT&' tmp.yr03 > tmp.yr04
 sed -e 's&(C) 2005-2008 ABINIT&(C) 2005-2009 ABINIT&' tmp.yr04 > tmp.yr05
 sed -e 's&(C) 2006-2008 ABINIT&(C) 2006-2009 ABINIT&' tmp.yr05 > tmp.yr06
 sed -e 's&(C) 2007-2008 ABINIT&(C) 2007-2009 ABINIT&' tmp.yr06 > tmp.yr
 echo "changes done "
 # put the modified file at the correct place
 mv tmp.yr $file
 echo "file $file written "
done
rm -f tmp.yr*  
chmod 755 */*/*.sh */*/*.py */*/*.pl */*/*.com config/*/make* extras/*/make*
