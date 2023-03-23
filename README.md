# World-Happiness-Capstone

## World Happiness Report
[Final Presentation](https://docs.google.com/presentation/d/1Dt9I_qmnNMduy1YAxSd3_vaHaq-KnmU-d4XY1RsncrM/edit#slide=id.g2236420c9a6_1_0).


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

The chosen dataset for this project is oriented around the concept of happiness, more specifically, citizen happiness by country. In this instance, the way Happiness was measured was based on several metrics, including but not limited to freedom, strength of a nation’s economy, and levels of government corruption. For this project, we asked ourselves a question: What metrics bear the biggest impact on the happiness of a country?  With the provided metrics for happiness in mind, we are confident that we can accurately predict the future happiness levels of the listed countries to a substantial degree of precision.


## Technology Overview:

To answer the question and to get the answers we need, we will need to go through the following workflow:

   from A CSV file was downloaded from The World Happiness Report website.  The file contained data for various countries 
    from 2008 to 2021. The country data was extracted from the file and matched with a country list that included regions
    and sun regions. The database schema was created using the QuickDBD website.
![schema](https://user-images.githubusercontent.com/110853496/224196018-3475a502-c982-4cc5-9f9e-bd1d3109e05b.png)

    1. A Postgres database was created on AWS that contains a country table with region information 
    and the happiness scores for each country and year.
    
    2. A mockup of the data was created in Excel along is numbers and foreigvitaley numbers.  
    The data was exported into 2 separate files, one with the, country data and one with the 
    happiness data. 
    
    3.The files were then imported into the corresponding Postgres tables.
    
    4. A Jupyter Notebook was created in order to run the Machine Learning model.  For this dataset, 
    a Random Forrest model chosen because the data was similar to other datasets that used a Random Forrest
    model and also because of it's ability to generate a feature importance ranking.
    
    5. A data connection was made to the Postgres database on AWS using sqlalchemy. The data was queried
    using an inner join and imported into a pandas dataframe.
    
    6. In order to use the Random Forrest model, the data needed a positive(happy) and negative(unhappy)
    binary classification. First, the rows that had null values were removed.  A "happiness score" was
    generated by simply adding all the positive categories. From there, an average was taken of the 
    happiness scores and anything above the mean was scored as a 1, happy, and anything below was 
    scored a 0, unhappy. The data was then scaled.
         
    7.The data was then split into test and training and fit to a Random Forrest model. 
    
[Happiness-RandomForrest Jupyter Notebook](Notebook/Happiness-RandomForrest.ipynb)

![report](https://user-images.githubusercontent.com/110853496/225783515-e4270114-f2aa-49be-bd0c-35767c64c535.png)

## Happiness Report Visualization:

Data analysis and visualization applied to the world happiness report.  The world happiness report is a landmark survey organizations and governments use, and civil societies increasingly use happiness reports to inform their policy-making decisions.  The report surveys include economic, social, and health, the most critical questions applied to humans. 

![heatmap](https://user-images.githubusercontent.com/114379268/226523145-9dad5077-d3af-4ac2-8045-d4e22934d763.png)

The heatmap above shows that life ladder, gdp per capita, freedom to make choices, healthy life, generosity, perception of corruption, social support, and confidence in the government all contribute to the happiness score.  Most categories scored between vmin=-0.50 and vmin=-1.00

![heatmap2](https://user-images.githubusercontent.com/114379268/226523245-12819f5a-bca3-4114-99e5-0750a0b817f9.png)

The heatmap above shows that life ladder, gdp per capita, freedom to make choices, healthy life, generosity, perception of corruption, social support, and confidence in the government all contribute to the happiness score. However, people's perceptions of corruption and the freedom to make life choices scored higher.

## Summary:
The following columns: GDP per Capita, Life ladder, Social Support, Healthy life expectancy, Freedom to make life choices, Generosity, and Perceptions of Government corruption, describe the extent to which these factors contribute to evaluating the happiness in each country. After conducting the visual analysis for the world happiness report from (2015-2021), the scores of these factors differed for each country and each region. But Northern and Western Europe, Australia/New Zealand dominated the top of the charts in most of the categories.  While countries such as Afghanistan and Lebanon, listed as one of the bottom ten countries, consistently scored low within their region in most categories.  While these factors were an essential part of the evaluations of happiness reports, many other variables influence life satisfaction, but they are hard to measure perfectly.

## Dashboard
https://public.tableau.com/app/profile/samira.hassan2901/viz/WorldHappinessReport_16778122795140/Dashboard1?publish=yes


## Data:

https://happiness-report.s3.amazonaws.com/2022/DataForTable2.1.xls

