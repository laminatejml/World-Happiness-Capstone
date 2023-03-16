# World-Happiness-Capstone

## World Happiness Report

The World Happiness Report was first released at an event at the UN on International Happiness Day on March 20, eventually becoming an annual report.  The report continues to gain global recognition because it provides necessary data to researchers and policymakers to plan for the well-being and happiness of the citizens.
The happiness scores and rankings use data from the Gallup World Poll.  Citizens or respondents are then asked to answer questions known as the Cantil ladder, with the best possible life for them being a 10 and the worst possible life being a 0.  The questions are split into the following categories or columns:

         1.  Life Ladder: happiness index
         2.  Generosity: how generosity helps a person become happy.   
         3.  GDP per Capita:gross domestice product per capita. Measures the approx value of the country's GDP being contributed to each citizen.  
         4.  Freedom to Make Life Choices: people have more freedom to make their own choices in the country they live in.
         5.  Perceptions of Corruption: measures that rates countries based on their perceived level of corruption.
         6.  Social Support: to have a family, friends, and social life.
         7.  Healthy life expectancy at birth: years of healthy life.
         8.  Positive Effects: measures positive effects.
         9.  Negative Effects: measure negative effects.
         10. Confidence in national government: people having confidence in their own country.
         11. happiness_score: the higher the score is, the happier the country is.

These factors are essential to impacting the total score reported for each country because they explain why some countries rank higher than others.

## Purpose of the Project:

The chosen dataset for this project is oriented around the concept of happiness, more specifically, citizen happiness by country. In this instance, the way Happiness was measured was based on several metrics, including but not limited to freedom, strength of a nation’s economy, and levels of government corruption. For this project, we asked ourselves two questions: What metrics bear the biggest impact on the happiness of a country?  With the provided metrics for happiness in mind, we are confident that we can accurately predict the future happiness levels of the listed countries to a substantial degree of precision.


## Technology Overview:

To answer the question and to get the answers we need, we will need to go through the following workflow:

   from A CSV file was downloaded from The World Happiness Report website.  The file contained data for various countries 
    from 2008 to 2021. The country data was extracted from the file and matched with a country list that included regions
    and sun regions. The database schema was created using the QuickDBD website.
![schema](https://user-images.githubusercontent.com/110853496/224196018-3475a502-c982-4cc5-9f9e-bd1d3109e05b.png)

    2. A Postgres database was created on AWS that contains a country table with region information and the happiness scores 
    for each country and year.
    
    3. A mockup of the data was created in Excel along is numbers and foreigvitaley numbers.  The data was exported into 2 separate 
    files, one with the, country data and one with the happiness data. The files were then imported into the corresponding
    Postgres tables.
    
## Happiness Report Visualization:

### Happiness and Life Ladder:
Life Ladder impacts the happiness report, as we can see in the chart.  And if we look at the heatmap chart, we can see that there’s also a good impact between the life ladder and happiness.
![life ladder](https://user-images.githubusercontent.com/114379268/225767757-9ff0ada3-bfa7-470d-ae5d-aa5fbf3a64f7.png)

### Happiness and GDP (Economy):
Happiness has a good impact on the Economy in many regions of the world.  As you can see in the graph above, most of these regions are in North America, which is unsurprising, as the USA and Canada are known for their excellent economy.  Also, Eastern Asia and East Europe were ranked high on the chart.  The regions that ranked low were Sub-saharan Africa and Latin America, and the Caribbean. 

### Happiness and Social Support:
Social Support had some impact on happiness.  Southeastern Asia had the highest ranks, while Sub-saharan Africa had the lowest.
![social studies 1](https://user-images.githubusercontent.com/114379268/225768181-ee80d34f-bf3f-42cf-b436-e215e17f1cf6.png)

### Happiness and Healthy Life:
Happiness and a healthy life go together very well.  Every region scored high; they are all very close in their ranks.  The highest are East and West Europe, followed by Australia and New Zealand.  And the lowest, not by much, was Sub-Saharan and west Africa.
![health](https://user-images.githubusercontent.com/114379268/225768330-9661fc7d-05c5-44d9-9e04-1580e1d5863e.png)

### Happiness and Freedom to Make life Choices:
Freedom to make life choices had the highest impact on the happiness report.  If we look at the heatmap, it had a high correlation with the happiness score.

![freedom to make life choices](https://user-images.githubusercontent.com/114379268/225768463-4c632936-1693-4025-a743-53508245f6a7.png)

### Happiness and Generosity:
Generosity didn’t impact the happiness report much, but it's a big deal to some countries and regions.  The European Region had the highest generosity rate, while Africa scored low.
![generosity](https://user-images.githubusercontent.com/114379268/225768548-a8b97aa7-584b-4556-b2b8-e48254ade40b.png)

### Happiness and Corruption:
I used the Dataframe.groupby().mean() to get the results for the corruption visualization data.  As we can see from the chart above, Australia and New Zealand have the highest corruption rates, while West Europe and Western Asia have the lowest corruption rates.
![corruption](https://user-images.githubusercontent.com/114379268/225768650-24a61a7e-d882-4c6d-a01c-9cad705fa741.png)

### Happiness and Confidence in National Government:
Many of the countries trusted their surprising governments.  Northern America was the region that came on top; the lowest areas were Latin America, the Caribbean, and Central Asia.
![government](https://user-images.githubusercontent.com/114379268/225768731-e0d915ad-424b-4b25-84d1-812ad88ef9d8.png)


## Data:

https://happiness-report.s3.amazonaws.com/2022/DataForTable2.1.xls

https://public.tableau.com/app/profile/jeremy.lopez8376/viz/WorldHappinessCapstone_16781816081730/WorldHappinessCapstone?publish=yes
