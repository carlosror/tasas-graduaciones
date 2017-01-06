## URL
https://carlosgg.shinyapps.io/tasas-graduaciones-pr/

## Motivation
I wanted to interactively visualize the performance of high schools in Puerto Rico across regions, districts, and cities.

## Data source
The data was obtained from [Portal de Interconexión de Datos Abiertos de Puerto Rico](https://data.pr.gov/en/Educaci-n/Tasas-de-graduaci-n-en-las-escuelas-superiores-p-b/aysg-wxf9).
It consists of the graduation rates of every high school in Puerto Rico for the academic year 2013-2014. About 2,000 records.

## Technologies

[R](https://leanpub.com/rprogramming), [R Studio](https://www.rstudio.com/), [Shiny R server](http://shiny.rstudio.com/articles/)

## Features

### Island-wide plots
In the "Regiones" tab, the distribution of graduation rate performance of each of the seven regions is summarized via a boxplot.
The distribution is shown for various student categories: below poverty level, male, female, handicapped students, as well as all students.

The graduation rates across various student categories for the island as a whole are diaplayed in a barplot as well.

![Alt](docs_images/regiones.PNG?raw=true "Island-wide plots")

Both plots are independent of the choices on the left panel of the app.

### Region-wide plots
Similar to the plots in the "Regiones" tab, The "Distritos" tab shows a boxplot and a barplot 
of the graduation rates of all the districts in the region chosen on the left panel. Below is a pair of
plots for all the districts in the Caguas region.

![Alt](docs_images/distritos.PNG?raw=true "Caguas reagion plots")

### District-wide plots
The "Municipios" tab shows a scatterplot of the performance of all the high schools in the district chosen on the left panel.
Below is an example of the performance of the municipalities in the Santa Isabel district, in the region of Ponce.

![Alt](docs_images/municipios.PNG?raw=true "Santa Isabel district")

### Individual high school performance
The "Municipios" tab summarizes the performance of each individual high school in a municipality. The following plot 
shows the performance of the schools in "San Juan I", in the district of the same name, in the region of San Juan.

![Alt](docs_images/escuelas.PNG?raw=true "Individual high schools in San Juan I")

### Interactive table
The "Tabla" tab allows the user to search, filter, and view individual high school performance in a given district. 
For example, we can see the performance of the Pedro Falú Orellano high school by searching for "Orellano" in the 
search bar at the top right.

![Alt](docs_images/tabla_1.PNG?raw=true "Searchable table")

## References
1. Dr. Disdier. (2015). ***Tasas de graduación en las escuelas superiores públicas de Puerto Rico: Año escolar 2013-2014*** [CSV file]. Retrieved from https://data.pr.gov/en/Educaci-n/Tasas-de-graduaci-n-en-las-escuelas-superiores-p-b/aysg-wxf9

2. Adler, Joseph. ***R in a Nutshell, Second Edition***. Sebastopol: O'Reilly Media, 2012. PDF.

3. Chang, Winston. ***Cookbook for R***. Sebastopol: O'Reilly Media, 2013. Retrieved from http://www.cookbook-r.com/

4. Mine Çetinkaya-Rundel. ***Data Analysis and Statistical Inference***, Spring 2014. Coursera.

5. Chi Yau. ***R tutorials: Percentile***. Retrieved from http://www.r-tutor.com/elementary-statistics/numerical-measures/percentile

6. Forester, James. ***Reorder factor levels***. Retrieved from http://quantitative-ecology.blogspot.com/2007/10/reorder-factor-levels.html

7. Shiny Articles. Retrieved from http://shiny.rstudio.com/articles/

8. soosus and sgibb. ***The condition has length > 1 and only the first element will be used***. Retrieved from http://stackoverflow.com/questions/23316161/the-condition-has-length-1-and-only-the-first-element-will-be-used

9. DuBois, Christopher and Chang, Jonathan. ***Rotating and spacing axis labels in ggplot2*** Retrieved from http://stackoverflow.com/questions/1330989/rotating-and-spacing-axis-labels-in-ggplot2

10. Nederlof, Trevor and jlhoward. ***Legend on bottom, two rows wrapped in ggplot2 in r*** Retrieved from http://stackoverflow.com/questions/27130610/legend-on-bottom-two-rows-wrapped-in-ggplot2-in-r

11. Henrik and Peyton. ***Controlling both the major and minor grid lines on the y axis*** Retrieved from http://stackoverflow.com/questions/18081746/controlling-both-the-major-and-minor-grid-lines-on-the-y-axis

12. Cheng, Joe. (2013, 4, 23). ***Re: suppress red error messages in shiny webpage [Online forum comment]*** Retrieved from https://groups.google.com/forum/#!topic/shiny-discuss/FyMGa2R_Mgs
