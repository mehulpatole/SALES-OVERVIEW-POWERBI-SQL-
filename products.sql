SELECT 
  p.[ProductKey] as productkey, 
  p.[ProductAlternateKey] AS ProductItemCode, 
  --      ,[ProductSubcategoryKey], 
  --      ,[WeightUnitMeasureCode]
  --      ,[SizeUnitMeasureCode] 
  p.[EnglishProductName] AS ProductName, 
  ps.EnglishProductSubcategoryName AS SubCategory,
  pc.EnglishProductCategoryName AS ProductCategory, 
  --      ,[SpanishProductName]
  --      ,[FrenchProductName]
  --      ,[StandardCost]
  --      ,[FinishedGoodsFlag] 
  p.[Color] AS ProductColor, 
  --      ,[SafetyStockLevel]
  --      ,[ReorderPoint]
  --      ,[ListPrice] 
  p.[Size] AS ProductSize, 
  --      ,[SizeRange]
  --      ,[Weight]
  --      ,[DaysToManufacture]
  p.[ProductLine] AS ProductLine, 
  --     ,[DealerPrice]
  --      ,[Class]
  --      ,[Style] 
  p.[ModelName] AS ModelName, 
  --      ,[LargePhoto]
  p.[EnglishDescription] AS productDescription, 
  --      ,[FrenchDescription]
  --      ,[ChineseDescription]
  --      ,[ArabicDescription]
  --      ,[HebrewDescription]
  --      ,[ThaiDescription]
  --      ,[GermanDescription]
  --      ,[JapaneseDescription]
  --      ,[TurkishDescription]
  --      ,[StartDate], 
  --      ,[EndDate], 
  ISNULL (p.Status, 'Outdated') AS ProductStatus 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc