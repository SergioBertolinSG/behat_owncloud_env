sudo mysql -u root << EOF
update mysql.user set plugin='' where user='root';
EOF
