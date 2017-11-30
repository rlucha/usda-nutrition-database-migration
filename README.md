## USDA Nutrition Database migration scripts

The USDA Nutrition database is delivered in a not very convenient set of files with weird CSV encoding.

Follow this steps to migrate it to a postgreSQL database.

### Steps

* Clone this repo and navigate to the created folder.

* Download the [USDA files](https://www.ars.usda.gov/northeast-area/beltsville-md/beltsville-human-nutrition-research-center/nutrient-data-laboratory/docs/usda-national-nutrient-database-for-standard-reference/) from their website. The files should be under a section called __Download SRxx files__.

* Unzip the files in the __db/usda_files__ folder. 

* Run the migration script
```
chmod +x ./scripts/migrate.sh && ./scripts/migrate.sh
```

[Stack Overflow discussion](https://stackoverflow.com/questions/24792638/how-can-i-import-data-from-ascii-iso-iec-8859-1-to-my-rails-pgsql-database) that pointed me in the direction to create this migration script.

## TODO
* Be able to change the name of the DB on the migration scripts
- Fix primary keys