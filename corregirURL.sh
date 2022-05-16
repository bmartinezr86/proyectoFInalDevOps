# Corregir en la base de datos mysql
echo "corrigiendo urls en la base de datos..."
kubectl exec mysql-wp-74b4cc6fb8-tv847 -- mysql -u root -pbrizzom2022@ db_brizzom -c "UPDATE wp_options SET option_value='http://192.168.49.2:30080' where option_name='siteurl';"
kubectl exec mysql-wp-74b4cc6fb8-tv847 -- mysql -u root -pbrizzom2022@ db_brizzom -c "UPDATE wp_options SET option_value='http://192.168.49.2:30080' where option_name='home';"
 
