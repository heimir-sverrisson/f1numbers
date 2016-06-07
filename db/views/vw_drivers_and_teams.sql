drop view if exists vw_drivers_and_teams;
create view vw_drivers_and_teams
as
with last_team as (
  select d1.id as driver_id, t1.id as team_id, t1.name as last_team,
      rank() over (partition by d1.id order by td1.started desc) as rank
  from teams as t1
  inner join team_drivers as td1 on td1.team_id = t1.id
  inner join drivers as d1 on d1.id = td1.driver_id
)
select d.id as driver_id, lt.team_id, d.first_name, d.last_name,
  lt.last_team, c.iso2code
from drivers as d
inner join countries as c on c.id = d.country_id
inner join last_team as lt on lt.driver_id = d.id
where lt.rank = 1
order by d.last_name
;
