# World-Happiness-Capstone

## World Happiness Report

The World Happiness Report was first released at an event at the UN on International Happiness Day on March 20, eventually becoming an annual report.  The report continues to gain global recognition because it provides necessary data to researchers and policymakers to plan for the well-being and happiness of the citizens.
The happiness scores and rankings use data from the Gallup World Poll.  Citizens or respondents are then asked to answer questions known as the Cantil ladder, with the best possible life for them being a 10 and the worst possible life being a 0.  The questions are split into the following categories or columns:

         1.  Life Ladder    
         2.  Generosity    
         3.  GDP per Capita    
         4.  Freedom to Make Life Choices
         5.  Perceptions of Corruption
         6.  Social Support
         7.  Health life expectancy at birth
         8.  Positive Effects
         9.  Negative Effects
         10. Confidence in national government

These factors are essential to impacting the total score reported for each country because they explain why some countries rank higher than others.

## Purpose of the Project:

The chosen dataset for this project is oriented around the concept of happiness, more specifically citizen happiness by country. In this instance, the way Happiness was measured was based on several metrics, including but not limited to freedom, strength of a nation’s economy, and levels of government corruption. For this project we asked ourselves two questions: One, what metrics bear the biggest impact on the happiness of a country? Two, if these metrics are capable of effectively assessing happiness, then which countries will become the happiest and unhappiest countries for the 2023 calendar year? With the provided metrics for happiness in mind, we are confident that we can accurately predict the future happiness levels of the listed countries to a substantial degree of precision.


## Technology Overview:

To answer the question and to get the answers we need, we will need to go through the following workflow:

    1. A CSV file was downloaded from The World Happiness Report website.  The file contained data for various countries 
    from 2008 to 2021. The country data was extracted from the file and matched with a country list that included regions
    and sun regions. The database schema was created using the QuickDBD website.
![schema](https://user-images.githubusercontent.com/110853496/224196018-3475a502-c982-4cc5-9f9e-bd1d3109e05b.png)

    2. A Postgres database was created on AWS that contains a country table with region information and the happiness scores 
    for each country and year.
    
    3. A mockup of the data was created in Excel along is numbers and foreign key numbers.  The data was exported into 2 separate 
    files, one with the, country data and one with the happiness data. The files were then imported into the corresponding
    Postgres tables.


## Data:

https://happiness-report.s3.amazonaws.com/2022/DataForTable2.1.xls

https://public.tableau.com/app/profile/jeremy.lopez8376/viz/WorldHappinessCapstone_16781816081730/WorldHappinessCapstone?publish=yes
