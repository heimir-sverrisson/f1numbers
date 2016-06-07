ALTER TABLE countries DROP COLUMN IF EXISTS iso2code;
ALTER TABLE countries ADD COLUMN iso2code VARCHAR(2);
UPDATE countries
  SET iso2code='gb' WHERE name='England';
UPDATE countries
  SET iso2code='be' WHERE name='Belgium';
UPDATE countries
  SET iso2code='de' WHERE name='Germany';
UPDATE countries
  SET iso2code='it' WHERE name='Italy';
UPDATE countries
  SET iso2code='fr' WHERE name='France';
UPDATE countries
  SET iso2code='at' WHERE name='Austria';
UPDATE countries
  SET iso2code='hu' WHERE name='Hungary';
UPDATE countries
  SET iso2code='au' WHERE name='Australia';
UPDATE countries
  SET iso2code='my' WHERE name='Malaysia';
UPDATE countries
  SET iso2code='cn' WHERE name='China';
UPDATE countries
  SET iso2code='bh' WHERE name='Bahrain';
UPDATE countries
  SET iso2code='es' WHERE name='Spain';
UPDATE countries
  SET iso2code='mc' WHERE name='Monaco';
UPDATE countries
  SET iso2code='ca' WHERE name='Canada';
UPDATE countries
  SET iso2code='sg' WHERE name='Singapore';
UPDATE countries
  SET iso2code='jp' WHERE name='Japan';
UPDATE countries
  SET iso2code='ru' WHERE name='Russia';
UPDATE countries
  SET iso2code='us' WHERE name='USA';
UPDATE countries
  SET iso2code='mx' WHERE name='Mexico';
UPDATE countries
  SET iso2code='br' WHERE name='Brazil';
UPDATE countries
  SET iso2code='ae' WHERE name='UAE';
UPDATE countries
  SET iso2code='fi' WHERE name='Finland';
UPDATE countries
  SET iso2code='nl' WHERE name='Holland';
UPDATE countries
  SET iso2code='ch' WHERE name='Switzerland';
UPDATE countries
  SET iso2code='ve' WHERE name='Venezuela';
UPDATE countries
  SET iso2code='se' WHERE name='Sweden';
ALTER TABLE countries ALTER COLUMN iso2code SET NOT NULL;
