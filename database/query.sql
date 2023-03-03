select c.*, 
h.year, 
h.life_ladder_log,
h.gdp_per_capita,
h.social_support,
h.healthy_life_expectancy_at_birth,
h.freedom_to_make_life_choices,
h.generosity,
h.perceptions_of_corruption,
h.positive_affect,
h.negative_affect,
h.confidence_in_national_government
from happiness h
join countries c on  c.country_id=h.country_id
