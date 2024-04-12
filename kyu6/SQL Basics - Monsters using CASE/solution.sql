Select
  T0.id,
  heads,
  legs,
  arms,
  tails,
  Case
    When heads > arms Or tails > legs Then 'BEAST'
    Else 'WEIRDO'
  End as species
From
  top_half T0
Join
  bottom_half T1 On T0.id = T1.id
Order by species