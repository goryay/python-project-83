export DATABASE_URL=postgresql://goryay:9121@localhost:5432/page_analyze
make install && psql -a -d $DATABASE_URL -f database.sql
