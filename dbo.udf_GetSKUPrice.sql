create function udf_GetSKUPrice
 (@ID_SKU int)
returns decimal(18, 2)
 begin
  select @ID_SKU = (sum(Value)/sum(Quantity))
  from dbo.Basket
  where ID_SKU=@ID_SKU
  return @ID_SKU
 end

