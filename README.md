# Market.se site repository.



## Site specific notes:

* Migration of Episerver data from Microsoft SQL server requires FreeTDS configuration  
in the [global] section of /etc/freetds/freetds.conf with settings:

> client charset = UTF-8  
> tds version = 7.0

Otherwise SQL server will awkwardly return complete rubbish for Swedish characters.
