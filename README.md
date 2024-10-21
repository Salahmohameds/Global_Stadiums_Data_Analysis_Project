# **Global_Stadiums_Data_Analysis_Project**

This project focuses on analyzing stadiums worldwide by leveraging various data processing tools and platforms. The goal is to extract, clean, and analyze data related to stadiums across the globe to derive meaningful insights, such as the largest stadiums by capacity and regional distribution of stadiums.

Using technologies like Python for web scraping and Microsoft Azure for data storage and processing, the project follows a full data engineering workflow, from data collection to visualization. Final results and insights are presented using Tableau, an interactive data visualization tool.

## **Project Workflow**
1. **Web Scraping**: Data related to stadiums is collected from Wikipedia and YouTube videos using Python libraries like BeautifulSoup and Selenium.
2. **Data Cleaning**: The extracted data is cleaned by removing duplicates, handling missing values, and standardizing formats.
3. **Azure Data Lake**: Cleaned data is stored in Azure Data Lake for further processing.
4. **Azure Data Factory**: A data pipeline is created using Azure Data Factory to automate the Extract, Transform, and Load (ETL) process.
5. **Azure Synapse and Databricks**: Large datasets are processed and analyzed using Azure Synapse and Azure Databricks, focusing on key metrics like stadium capacities and geographical distributions.
6. **Tableau**: The final insights are presented in interactive dashboards on Tableau, allowing users to filter and explore the data by location, capacity, and other factors.

## **Technologies Used**
- **Python**: For web scraping and initial data processing (BeautifulSoup, Selenium).
- **Azure Data Lake**: Data storage.
- **Azure Data Factory**: ETL pipeline for data transformation.
- **Azure Synapse**: Querying and analyzing large datasets.
- **Azure Databricks**: Processing data for insights.
- **Tableau**: Visualization of stadium data.

## **Project Structure**
```
- data/
  - raw_data/
  - cleaned_data/
- notebooks/
  - web_scraping.ipynb
  - data_cleaning.ipynb
  - analysis.ipynb
- reports/
  - Global_Stadiums_Analysis_Project_Report.docx
- visualizations/
  - tableau_dashboard.png
- README.md
- LICENSE
```

## **Team Members**
- Eng. Salah Mohamed
- Eng. Omar Nouh
- Eng. Kerolos Magdy
- Eng. Ahmed Hassan

## **Presentation**
Check out the project representation in the following link:
[Canva Presentation](https://www.canva.com/design/DAGTWJ20Jro/oOq-tqITPx7lJiBtefdUhA/view?utm_content=DAGTWJ20Jro&utm_campaign=designshare&utm_medium=link&utm_source=editor)

## **Usage**
1. Clone the repository:
   ```
   git clone https://github.com/yourusername/Global_Stadiums_Data_Analysis_Project.git
   ```

2. Run the web scraping scripts to collect data:
   ```
   cd notebooks
   python web_scraping.ipynb
   ```

3. Data processing and analysis can be done using Azure Synapse and Databricks based on the workflow.

4. Visualizations can be viewed through Tableau using the prepared dashboards.
