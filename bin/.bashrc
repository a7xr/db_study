alias cdmy='cd /c/wamp/bin/mysql/mysql5.5.16/bin/'

alias cdreading='cd /d/disk_f/doc/reading_doc/'

alias cdqcm='cd /c/Users/User/Documents/NetBeansProjects/QCM01'

alias cpqcm='cp /c/wamp/bin/mysql/mysql5.5.16/bin/qcm01.sql /c/Users/User/Documents/NetBeansProjects/QCM01/'

# in project qcm01, i have to add (program, db) in git
#   and after that, i_ll commit
alias gitqcm='cd /c/Users/User/Documents/NetBeansProjects/QCM01; git add src/qcm01/*; git add qcm01.sql; git commit -m automated_commit; cd -'

# to auto_commit db_study
alias gitdb_study='cd /c/wamp/bin/mysql/mysql5.5.16/bin/; ./mysqldump.exe -u root -ptestTESTte900117 --opt db_study > db_study.sql; git add db_study.sql; git commit -m automated_commit; cd -'

alias commitauto='cd /d/disk_f/doc/reading_doc/; printf "\n\n\n"; echo "        $(pwd)"; echo; echo; git add *.pdf; git commit -m "auto_commit"; printf "\n\n\n"; echo "added and commited the reading_doc"; printf "\n\n\n"; cd /c/wamp/bin/mysql/mysql5.5.16/bin/; echo "       $(pwd)"; ./mysqldump.exe -u root -ptestTESTte900117 --opt db_study > db_study.sql; cp /c/Users/User/.bashrc /C/Users/User/.vimrc ./; echo "adding and commiting the db_study"; printf "\n\n\n"; git add db_study.sql; git add .bashrc; git add .vimrc; git commit -m "auto_commit"; ./mysqldump.exe -u rx7a -ptestTESTte900117 --opt qcm01 > qcm01.sql; mv qcm01.sql /c/Users/User/Documents/NetBeansProjects/QCM01; cd /c/Users/User/Documents/NetBeansProjects/QCM01/; echo "        $(pwd)"; git add src/*; echo; echo; echo; echo "adding and commiting the project qcm, and its db"; echo; echo; echo; echo; git add qcm01.sql; git commit -m "auto_commit"; echo; echo; echo; echo "committing the project qcm01 with success"; echo "commiting db_study with success"'

