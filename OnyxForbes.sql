select * from PortfolioProject.dbo.OnyxForbes


--Final worth by rank
select personName, finalWorth from PortfolioProject.dbo.OnyxForbes

--Categories by rank in percentage
select category, count(category) as Numbers, (count(category) * 100.0 / (select count(category) from PortfolioProject.dbo.OnyxForbes)) as Percentage
from PortfolioProject.dbo.OnyxForbes
group by category  
order by Numbers desc


--Philanthropies by rank
select personName, philanthropyScore from PortfolioProject.dbo.OnyxForbes
where philanthropyScore is not null
order by philanthropyScore desc

--Number of billionaires per country
select country, count (country) as CountryCount
from PortfolioProject.dbo.OnyxForbes
group by country
order by CountryCount desc 

--Checking for oldest and youngest billionaire
select personName, age
from PortfolioProject.dbo.OnyxForbes
where age is not null
order by age desc

--Oldest Billionaire and youngest billionaire
select personName, age
from PortfolioProject.dbo.OnyxForbes
WHERE age = 100 or age = 19;

--Counting number of male and female billionaires
select gender , count (gender) as GenderCount, (count(gender) * 100.0 / (select count(gender) from PortfolioProject.dbo.OnyxForbes)) as Percentage from PortfolioProject.dbo.OnyxForbes
where gender is not null
group by gender


--Number of countries, categories and billionaires
select 
count(distinct(country)) as NoOfCountries, 
count (distinct(category)) as NoOfCategories,
count (personName) as NoOfBillioniares
from PortfolioProject.dbo.OnyxForbes






