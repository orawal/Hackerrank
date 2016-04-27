SELECT SUM(c1.Population)FROM City c1 INNER JOIN Country c2 ON c1.COUNTRYCODE=c2.Code WHERE c2.Continent='Asia';
