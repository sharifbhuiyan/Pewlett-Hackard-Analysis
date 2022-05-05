## **<h1 Pewlett-Hackard-Analysis**




  ## Overview of the PyBer_Analysis: 
<p align="justify">The analysis shows how the data differs by city type and how those differences can be used by decision-makers at PyBer. A summary DataFrame of the ride-sharing data has been created by city type. This dataframe shows the weekly fare by city type.  Then, using Pandas and Matplotlib, a multiple-line graph has been created that shows the total weekly fares for each city type. <p>

<p align="justify">This analysis consists of two technical analysis.<p>

  - A ride-sharing summary DataFrame by city type
  - A multiple-line chart of total fares for each city type

 
  PyBer Analysis ipynb file link -  [ PyBer Analysis](https://github.com/sharifbhuiyan/PyBer_Analysis/blob/main/PyBer_Challenge.ipynb)  

  
- Resources :
  - Data source : city_data.csv, ride_data.csv
  - Software : Pandas library, Matplotlib library. Jupyter Notebook


  
  
 ## PyBer_Analysis Results: 
  
<p align="justify"> Analysis is demonstrated by describing details summary, ride-sharing data among the different city types and multiple-line chart.<p>

- <p align="justify">Ride-sharing data summary shows the total rides, total drivers, total fares, average fare per ride and average fare per driver, the summary is furnished with the 'city type' as index.<p>

  
<p align="center">
  <img width="500" src=https://github.com/sharifbhuiyan/PyBer_Analysis/blob/main/analysis/pyber%20summary.png
</p>

  
  
  - <p align="justify">DataFrame has been created on date range: 2019-01-01 through 2019-04-28. It shows the weekly basis total fare according to different city type. Before that a pivot table has been created with the ‘date' as the index, the columns ='type', and values='fare'.<p>

  Command is used for Pivot table to get the total fares for each type of city by the date. 

```ruby
  pyber_fare_pivot_df = pd.pivot_table(pyber_fare_df,values='fare',index=['date'], columns=["type"])
```
  
  Command is used for create DataFrame using the "resample()" function by week 'W' and get the sum of the fares for each week.
  ```ruby
    
    pyber_fare_resample_df=pyber_fare_range_df.resample("w").sum()

``` 
<p align="center">
  <img width="200" src=https://github.com/sharifbhuiyan/PyBer_Analysis/blob/main/analysis/pyber%20weekly%20fare.png
</p>
  
 

  
  
 

  
- <p align="justify">A multiple-line chart has been created to visualise the the differences in ride-sharing data among the different city types.<p>

<p align="center">
  <img width="800" src=https://github.com/sharifbhuiyan/PyBer_Analysis/blob/main/analysis/PyBer_fare_summary.png
</p>
  


A graph style 'fivethirtyeight' is used for mmultiple-line chart.

```ruby
    
    style.use('fivethirtyeight')

```
  

   
To save the figure as png in analysis folder, code :
```ruby
      
  plt.savefig("analysis/PyBer_fare_summary.png")

```
 
  
  
 

     
    
    
    
## Summary:
<p align="justify">Summary: Based on the results, a great difference is observed on fare by city type. </p>

- Overall ride fare of urban city is higher than Suburban and Rural city. 

<p align="center">
   
|city type  |Total Fare | 
| :-------- |:---------:|
| Urban     | $37,066   |
| Suburban  | $17,883   |
| Rural     | $3,914    |

</p>
  

- The total highest ride fare shows in march.  
  <p align="center">
   
|Month  |Total Fare of all city type | 
| :---- |:----------:|
| Jan   | $12,770.00 |
| Feb   | $14,390.00 |
| Mar   | $16,934.00 |
| Apr   | $14,770.00 |

</p>

- The highest ride fare month for Rural city is April, whereas March is for Urban and Suburban city.   
  
|City       | Highest fare Month | Fare|
| :-------- |:----------:|:----------:|
| Rural     | Apr     |$1,177.00| 
| Suburaban | Mar     |$4,857.00| 
| Urban     | Mar     |$11,045.00| 

- The lowest ride fare month for all city type is January. 
  
|City       | lowest fare Month | Fare|
| :-------- |:----------:|:----------:|
| Rural     | Jan     |$741.00| 
| Suburaban | Jan     |$4,248.00| 
| Urban     | Jan     |$7,781.00| 




