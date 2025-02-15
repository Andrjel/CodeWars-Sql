Select
  player_name,
  games,
  Cast(Round(Cast(hits as decimal) / at_bats, 3) as varchar(5)) as batting_average 
From
  yankees
Where
  at_bats >= 100
Order By
  Cast(hits as decimal) / at_bats Desc