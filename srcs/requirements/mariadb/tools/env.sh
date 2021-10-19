sed -i 's/SQL_NAME/'${SQL_NAME}'/g' createdb.sql && sed -i 's/SQL_USER/'${SQL_USER}'/g' createdb.sql && sed -i 's/SQL_PASS/'${SQL_PASS}'/g' createdb.sql\
 && sed -i 's/SQL_ROOTPASS/'${SQL_ROOTPASS}'/g' createdb.sql

