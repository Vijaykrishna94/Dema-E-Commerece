## Description
This Project Consists of Setting up  DBT and Database Architecture Using Snowflake Storage and Compute to run the queries locally.

### Objective
To Answer Business questions such as - How Effective Channels are ? , How is the campaign Monetary Performance ? How are the sales overall.


### Setting Up
1. Create Dema Folder 
2. Create a virtual Environment - Python==3.12.3
3. Install dbt-snowflake==1.7.1, 
4. Setting Up DBT 
   - Create \.dbt inside the user folder to store profiles.yml - `mkdir %userprofile%\.dbt`
   - Initiate dbt - `dbt init demadbt` 
   - Connect Snowflake(Account Already setup) - Credentials or Setup(queries) Will be shared in  mail(if required)
   - Check the connection - `dbt debug`
   - Open VS code or any ide actvate the virtual env and `cd demadbt` and Install dbt Packages in packeges.yml - `dbt deps`
Now We are ready !!

### Testing
1. `dbt run` will initiate the pipeline and tests Or you can use `dbt test` to test the sql's explicitly.
2. Total of six tests  4 inbuilt  2 custom tests have been used to validate the data. You can find the detailed list under `schema.yml`
3. You can Use `dbt docs serve` Command to look at the database-documentation and Lineage.

![image](https://github.com/user-attachments/assets/3c975ac9-fa1f-474b-9d87-ab458f459f40)




#### POST SCRIPT
If I had some more time I would have Created a dashboard using Preset, orchestrated this pipeline with Dagster and dockerised.
