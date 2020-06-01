<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Barcelona Air Quality - Exploratory Data Analysis
*Miguel Estepa & Beto Sibileau*

*Data FT BCN March 2020*

## Content
- [Project Description](#project-description)
- [Questions & Hypotheses](#questions-hypotheses)
- [Dataset](#dataset)
- [Database](#database)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)


## Project Description
This project is an introductory data analysis of Air Quality in the city of Barcelona. It is focus on data acquisition and data cleaning, with no visualisations performed as part of the Ironhack project requirements.

## Questions & Hypotheses
For the whole year 2019, we would perform the data acquisition of Barcelona ambient air pollution, from the 8 air quality stations located around the city. We focus on three evaluations of pollution provided by the World Health Organization (WHO) *Air quality guidelines* from 2005:
* Particle matter ($P\!M_{10}$), complex mixture of particles suspended in the air.
* Ozone ($O_3$) at ground level, formed by sunlight reaction with pollutants.
* Nitrogen dioxide ($N\!O_2$), whose major sources are combustion processes.

We would evaluate the montly evolution of these pollutants, expecting to see variations along seasons and drops of $N\!O_2$ pollution from during school summer holiday months. In addition, we extend the analysis to measure variations of ambient air pollution along daily hours, expecting higher peaks of $N\!O_2$ at rush hours. Finally, we expect to extend our analysis to measure the impact of the COVID-19 lockdown in ambient air quality, as well as the new public policy (ZBE) about car movility restrictions implemented in Barcelona from January 2020.

## Dataset
Barcelona city council provides the data acquired at 8 different air quality stations, measuring the concentration of different pollutants every day for every hour. The data is open to the public and available through the initiative [Open Data BCN](https://opendata-ajuntament.barcelona.cat/en). The data is published monthly in a `csv` format.

<!---
What dataset (or datasets) did you use? What is the source of your data? Provide links to the data if available and describe the data briefly.
-->

## Database
We focus on the year 2019 and we discovered that from April onwards, a change in the data structure was implemented. We thus process one of the data structures using MySQL while the other using Pandas library in Python. For each month, one table is created, and these are related by the type of contaminant measured.

In addition, depending on the analysis carried out, the measurements can be averaged for all hours and all days of the months to provide an insight on the montly variations of pollutants. In contrast, these measurments can be average for all months of the year to provide an insight on the hourly variations of pollution.

Finally, we would average the measurements along the whole year and provide the results for the 8 different air quality stations distributed in Barcelona. We found that the stations located in Eixample and Gracia have the annual year average of $N\!O_2$ above the air quality guidelines provided by the World Health Organization (WHO). With respect to particle matter suspended in the air $P\!M_{10}$, none of the stations in Barcelona meet the annual year average suggested by the WHO, having the station located in Poblenou the worst record (about 50% higher than the suggested guideline).

<!---
What is the structure of your database? Have you created more than one table and if yes, how are they related to each other? Include a drawing or computer-generated image of the ERD (Entity Relationship Diagram) of your database.
-->


## Workflow
The project begun with a research and brainstorming stage the first day of remote meeting. We came up with a list of research questions to answer with the support of data analytics. After this initial stage, we would split the teamwork load in a list of To-Do's and begun coding data queries in MySQL and the process of data cleaning and data transformation in Pandas. The final stage was covered by the actual data analysis and preparation of the project presentation.

<!---
Outline the workflow you used in your project. What are the steps you went through?
-->

## Organization
Our teamwork in remote was organized with a kanban board in Trello.

With respect to our repository, we worked together in different Git branches until the final merge. In the folder `your-project` the interested reader would find the MySQL queries in file `queryMonth_A.sql` and the data cleaning and transformation process done with Pandas in the Jupyter Notebook file `week2_project.ipynb`. In addition, you will find the folder `datasets` containing the different `csv` files with air quality data from 2019 by [Open Data BCN](https://opendata-ajuntament.barcelona.cat/en). Finally, the results from the MySQL queries and Pandas data transformation are saved in `csv` files located in folders `results_sql` and `export_pandas` respectively.

<!---
What does your repository look like? Explain your folder and file structure.
-->

## Links

[Repository](https://github.com/beto-Sibileau/Project-Week-2-Barcelona/tree/master/your-project)  
[Slides](https://docs.google.com/presentation/d/1r8JTi5BwLtCMKE2_Yjmiy5fF3vHeDRqEJxNvW0HLcd4/edit?usp=sharing)  
[Trello](https://trello.com/b/tXtp0Nvg/ironhack-project-week2)  
