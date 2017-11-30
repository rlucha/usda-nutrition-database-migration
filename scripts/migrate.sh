# Convert original files to UTF8
for f in ./db/usda_files/*.txt; 
do iconv -f CP1251 -t UTF-8 $f > $f.utf8; 
done

# Create the DB tables
psql usda -c "\i db/migrations/01_create_db.sql"

# Copy the data from the files to the DB
psql usda -c "$(sed "s|PWD|$PWD|g" db/migrations/02_bulk_insert.sql)"