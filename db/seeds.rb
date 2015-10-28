puts 'Seeding'
continents = Continent.create([{ name: 'Asia' }, { name: 'Europe' }, { name: 'North America' },
                               { name: 'South America' }, { name: 'Australia' }])
country_data = [{ name: 'England', cont: 'Europe' }, { name: 'Belgium', cont: 'Europe' },
                { name: 'Germany', cont: 'Europe' }, { name: 'Italy', cont: 'Europe' },
                { name: 'France', cont: 'Europe' }, { name: 'Austria', cont: 'Europe' },
                { name: 'Hungary', cont: 'Europe' }, { name: 'Australia', cont: 'Australia' },
                { name: 'Malaysia', cont: 'Asia' }, { name: 'China', cont: 'Asia' },
                { name: 'Bahrain', cont: 'Asia' }, { name: 'Spain', cont: 'Europe' },
                { name: 'Monaco', cont: 'Europe' }, { name: 'Canada', cont: 'North America' },
                { name: 'Singapore', cont: 'Asia' }, { name: 'Japan', cont: 'Asia' },
                { name: 'Russia', cont: 'Europe' }, { name: 'USA', cont: 'North America' },
                { name: 'Mexico', cont: 'North America' }, { name: 'Brazil', cont: 'South America' },
                { name: 'UAE', cont: 'Asia' }, { name: 'Finland', cont: 'Europe' },
                { name: 'Holland', cont: 'Europe' }, { name: 'Switzerland', cont: 'Europe' },
                { name: 'Venezuela', cont: 'South America' }, { name: 'Sweden', cont: 'Europe' }]
country_data.each do |country|
  continent =  Continent.find_by_name(country[:cont])
  Country.create!(name: country[:name], continent: continent)
end
track_data = [
  { name: 'Melbourne', city: 'Melbourne', country: 'Australia', time_zone: 'Australia/Melbourne',
    year_started: 1996, laps: 58, length: 5303, distance: 307574 },
  { name: 'Sepang', city: 'Kuala Lumpur', country: 'Malaysia', time_zone: 'Asia/Kuala_Lumpur',
    year_started: 1999, laps: 56, length: 5543, distance: 310408 },
  { name: 'Shanghai', city: 'Shanghai', country: 'China', time_zone: 'Asia/Shanghai',
    year_started: 2004, laps: 56, length: 5451, distance: 305066 },
  { name: 'Bahrain', city: 'Bahrain', country: 'China', time_zone: 'Asia/Shanghai',
    year_started: 2004, laps: 57, length: 5412, distance: 308238 },
  { name: 'Catalunya', city: 'Barcelona', country: 'Spain', time_zone: 'Europe/Madrid',
    year_started: 1991, laps: 66, length: 4655, distance: 307104 },
  { name: 'Monaco', city: 'Monte Carlo', country: 'Monaco', time_zone: 'Europe/Monaco',
    year_started: 1950, laps: 78, length: 3337, distance: 260286 },
  { name: 'Circuit Gilles-Villeneuve', city: 'Montreal', country: 'Canada',
    time_zone: 'America/Montreal',
    year_started: 1978, laps: 70, length: 4361, distance: 305270 },
  { name: 'Grosser Preis von Österreigh', city: 'Spielberg', country: 'Austria',
    time_zone: 'Europe/Vienna',
    year_started: 1970, laps: 71, length: 4326, distance: 307020 },
  { name: 'Silverstone', city: 'Towchester', country: 'England', time_zone: 'Europe/London',
    year_started: 1950, laps: 52, length: 5891, distance: 306198 },
  { name: 'Hungaroring', city: 'Mogyoród,Versenypálya ', country: 'Hungary',
    time_zone: 'Europe/Budapest',
    year_started: 1986, laps: 69, length: 4381, distance: 302249 },
  { name: 'Spa', city: 'Spa', country: 'Belgium', time_zone: 'Europe/Brussels',
    year_started: 1950, laps: 43, length: 7004, distance: 301048 },
  { name: 'Monza', city: 'Monza', country: 'Italy', time_zone: 'Europe/Rome',
    year_started: 1950, laps: 53, length: 5793, distance: 306720 },
  { name: 'Singapore', city: 'Singapore', country: 'Singapore', time_zone: 'Asia/Singapore',
    year_started: 2008, laps: 61, length: 5065, distance: 308828 },
  { name: 'Suzuka', city: 'Suzuka', country: 'Japan', time_zone: 'Asia/Tokyo',
    year_started: 1987, laps: 53, length: 5807, distance: 307471 },
  { name: 'Sochi', city: 'Sochi', country: 'Russia', time_zone: 'Europe/Moscow',
    year_started: 2014, laps: 53, length: 5848, distance: 309745 },
  { name: 'Austin', city: 'Austin', country: 'USA', time_zone: 'America/Chicago',
    year_started: 2012, laps: 56, length: 5513, distance: 308405 },
  { name: 'Mexico City', city: 'Mexico City', country: 'Mexico', time_zone: 'America/Mexico_City',
    year_started: 1963, laps: 71, length: 4304, distance: 305354 },
  { name: 'Interlagos', city: 'Sao Paulo', country: 'Brazil', time_zone: 'America/Sao_Paulo',
    year_started: 1973, laps: 71, length: 4309, distance: 305909 },
  { name: 'Yas Marina', city: 'Abu Dhabi', country: 'UAE', time_zone: 'Asia/Dubai',
    year_started: 2009, laps: 55, length: 5554, distance: 305355 },
]
track_data.each do |t|
  country = Country.find_by_name(t[:country])
  Track.create!(t.except(:country).merge(country: country))
end
driver_data = [
  { name: 'Lewis Hamilton', date_of_birth: '1985-07-01', country: 'England' },
  { name: 'Sebastian Vettel', nickname: 'Seb', date_of_birth: '1987-07-03', country: 'Germany' },
  { name: 'Nico Rosberg', date_of_birth: '1985-06-27', country: 'Germany' },
  { name: 'Kimi Räikkönen', date_of_birth: '1979-10-17', country: 'Finland' },
  { name: 'Valtteri Bottas', date_of_birth: '1989-08-28', country: 'Finland' },
  { name: 'Felipe Massa', date_of_birth: '1981-04-25', country: 'Brazil' },
  { name: 'Daniil Kvyat', date_of_birth: '1994-04-26', country: 'Russia' },
  { name: 'Daniel Ricciardo', date_of_birth: '1989-07-01', country: 'Australia' },
  { name: 'Sergio Perez', nickname: 'Cheeco', date_of_birth: '1990-01-26', country: 'Mexico' },
  { name: 'Max Verstappen', date_of_birth: '1997-09-30', country: 'Belgium' },
  { name: 'Romain Grosjean', date_of_birth: '1986-04-17', country: 'Switzerland' },
  { name: 'Nico Hulkenberg', date_of_birth: '1987-08-19', country: 'Germany' },
  { name: 'Felipe Nasr', date_of_birth: '1992-08-21', country: 'Brazil' },
  { name: 'Pastor Maldonado', date_of_birth: '1985-03-10', country: 'Venezuela' },
  { name: 'Carlos Sainz', date_of_birth: '1994-09-01', country: 'Spain' },
  { name: 'Jenson Button', date_of_birth: '1980-01-19', country: 'England' },
  { name: 'Fernando Alonso', date_of_birth: '1981-07-29', country: 'Spain' },
  { name: 'Marcus Ericsson', date_of_birth: '1990-09-02', country: 'Sweden' },
  { name: 'Roberto Merhi', date_of_birth: '1991-03-22', country: 'Spain' },
  { name: 'Alexander Rossi', date_of_birth: '1991-09-25', country: 'USA' },
  { name: 'Will Stevens', date_of_birth: '1991-06-28', country: 'England' },
]
driver_data.each do |d|
  country = Country.find_by_name(d[:country])
  Driver.create!(d.except(:country).merge(country: country))
end
team_data = [
  { name: 'Mercedes', principal: 'Toto Wolff', technical_chief: 'Paddy Lowe',
    power_unit: 'Mercedes', home_base: 'Brackley', country: 'England' },
  { name: 'Ferrari', principal: 'Maurizio Arrivabene', technical_chief: 'James Allison',
    power_unit: 'Ferrari', home_base: 'Maranello', country: 'Italy' },
  { name: 'Williams', principal: 'Frank Williams', technical_chief: 'Pat Symonds',
    power_unit: 'Mercedes', home_base: 'Grove', country: 'England' },
  { name: 'Red Bull Racing', principal: 'Christian Horner', technical_chief: 'Adrian Newey',
    power_unit: 'Renault', home_base: 'Milton Keynes', country: 'England' },
  { name: 'Force India', principal: 'Vijay Mallya', technical_chief: 'Andrew Green',
    power_unit: 'Mercedes', home_base: 'Silverstone', country: 'England' },
  { name: 'Lotus', principal: 'Gerard Lopez', technical_chief: 'Nick Chester',
    power_unit: 'Mercedes', home_base: 'Enstone', country: 'England' },
  { name: 'Toro Rosso', principal: 'Franz Tost', technical_chief: 'James Key',
    power_unit: 'Renault', home_base: 'Faenza', country: 'Italy' },
  { name: 'Sauber', principal: 'Monisha Kaltenborn', technical_chief: 'Mark Smith',
    power_unit: 'Ferrari', home_base: 'Hinwil', country: 'Switzerland' },
  { name: 'McLaren', principal: 'Eric Boullier', technical_chief: 'Tim Goss',
    power_unit: 'Honda', home_base: 'Woking', country: 'England' },
  { name: 'Marussia', principal: 'John Booth', technical_chief: 'John McQuilliam',
    power_unit: 'Ferrari', home_base: 'Dinnington', country: 'England' },
]
team_data.each do |t|
  country = Country.find_by_name(t[:country])
  Team.create!(t.except(:country).merge(country: country))
end
puts 'Seeding done'
