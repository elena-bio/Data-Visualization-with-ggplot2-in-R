# Gapminder Data Visualization

This project focuses on visualizing the Gapminder dataset for the year 1957 using R. The goal is to explore the relationships between population, life expectancy, and GDP per capita across different continents through various plots.

## Requirements

To run this project, you will need the following R packages:

- `ggplot2`: For data visualization
- `dplyr`: For data manipulation
- `gapminder`: The dataset used for analysis

You can install the required packages using the following commands in R:

```r
install.packages("ggplot2")
install.packages("dplyr")
install.packages("gapminder")
```
## Dataset

The dataset used in this project is the Gapminder dataset, which contains information about various countries over several years. In this project, we focus specifically on the data from the year 1957.

## Plots

The project creates several visualizations to analyze the Gapminder data for 1957. Below are the types of plots included:

### Scatter Plots

- **Population vs. Life Expectancy**
- **Population vs. GDP per Capita**
- **GDP per Capita vs. Life Expectancy**

### Log-Scale Scatter Plots

- **Population vs. GDP per Capita** (with log scales on both axes)

### Colored Scatter Plots

- **Population vs. Life Expectancy** (colored by continent)
- **Population vs. Life Expectancy** (with point sizes based on GDP per Capita)

### Faceted Scatter Plot

- **Population vs. Life Expectancy**, faceted by continent

### Median Life Expectancy Over Time

- A scatter plot showing the change in median life expectancy by year.

### Median GDP per Capita Over Time

- A line plot illustrating the change in median GDP per Capita over the years.

### Median GDP per Capita by Continent Over Time

- A line plot displaying median GDP per Capita trends by continent.

### Bar Plot

- A bar plot showing the median GDP per Capita by continent for the year 1957.

### Histogram

- A histogram of the population (in millions) for the year 1957.

### Box Plot

- A box plot comparing GDP per Capita among continents with a descriptive title.
