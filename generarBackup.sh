fecha=$(date +%Y-%m-%d-%H-%M-%S)
sqlDump="sqlDump-$fecha.sql"
path="db_backups"
mkdir -p $path 
docker exec mysql-dev sh -c "exec mysqldump --all-databases -u root -pbrizzomRoot2022@ db_brizzom" > $path/$sqlDump
