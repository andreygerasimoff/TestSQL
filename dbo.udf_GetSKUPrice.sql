create function udf_GetSKUPrice
 (@ID_SKU int)
returns decimal(18, 2)
 begin
  declare @Summ decimal(18, 2)
  select @Summ = ((Value + @ID_SKU)/(Quantity + @ID_SKU))
  from dbo.Basket
  where ID_SKU=@ID_SKU
  return @Summ
 end
