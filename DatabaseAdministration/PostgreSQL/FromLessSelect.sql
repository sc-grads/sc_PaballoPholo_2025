Select ( 
    Select max(price)  from phones 
) as max_price,
(
    Select min(price)  from phones
) as min_price,
(
    Select avg(price)  from phones
) as avg_price;