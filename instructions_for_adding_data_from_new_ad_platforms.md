# Instructions for adding data from new ad platforms
This guide will walk you through the process of adding data from a new ad platform to our system. Follow the steps below to integrate the new ad platform and start collecting data.

## Prerequisites
- A CSV file containing relevant data from the new ad platform.

### Step 1: Prepare the CSV File
- Rename the CSV file to a descriptive and unique name that represents the data source (e.g., src_ads_$(new_ad_platform)_all_data.csv).
- Copy or move the CSV file to the "seeds" folder.

### Step 2: Create Staging SQL for Data Mapping
- Create a new SQL file for the staging SQL script.
- Map the new ad data from the row data field to MCDM structure.
- Create mapped staging table of new ad platform.

If the new ad platform does not provide a specific field, set that field to NULL in the staging table.

### Step 3: Incorporate New Ad Platform's Staging Table
- Integrate the new ad platform's staging table into the 'paid_ads__basic_performance.sql'
- Merge the new ad platform's staging table with other staging tables using 'UNION ALL'

If you need to handle a specific field being set to NULL in the staging table, and the data type of that field is a string, you can use the COALESCE function and the CAST function in your SQL statement.

Here's an example of how you can select the field while handling NULL values:
```sql
COALESCE(CAST($(field) AS STRING), '') AS $(field)