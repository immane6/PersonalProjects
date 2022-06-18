select * from PortfolioProject.dbo.OnyxForbes


--Final worth by rank
select personName, finalWorth from PortfolioProject.dbo.OnyxForbes

--Categories by rank in percentage
select category, count(category) as Numbers, (count(category) * 100.0 / (select count(category) from PortfolioProject.dbo.OnyxForbes)) as Percentage
from PortfolioProject.dbo.OnyxForbes
group by category  
order by Numbers desc


--Phylanthropies by rank
select personName, philanthropyScore from PortfolioProject.dbo.OnyxForbes
where philanthropyScore is not null
order by philanthropyScore desc

--Number of billionaires in each country
select country, count (country) as CountryCount
from PortfolioProject.dbo.OnyxForbes
group by country
order by CountryCount desc 

--Checking for oldest and youngest billionaire
select personName, age
from PortfolioProject.dbo.OnyxForbes
order by age desc

--Oldest Billionaire and youngest billionaire
select personName, age, category
from PortfolioProject.dbo.OnyxForbes
WHERE age = 100 or personName = 'Wang Zelong'

--Counting number of male and female billionaires
select gender , count (gender) as GenderCount from PortfolioProject.dbo.OnyxForbes
group by gender

--Number of countries, categories and billionaires
select 
count(distinct(country)) as NoOfCountries, 
count (distinct(category)) as NoOfCategories,
count (personName) as NoOfBillioniares
from PortfolioProject.dbo.OnyxForbes






