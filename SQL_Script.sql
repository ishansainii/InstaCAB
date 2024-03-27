-- drop database instacab;
CREATE DATABASE IF NOT EXISTS InstaCAB;


USE InstaCAB;

CREATE TABLE IF NOT EXISTS Admin(
AdminID INT NOT NULL UNIQUE,
FirstName VARCHAR(255) NOT NULL,
LastName VARCHAR(255),
Password VARCHAR(255) NOT NULL,
PRIMARY KEY (AdminID)
);




INSERT INTO Admin
	(AdminID, FirstName, LastName, Password) VALUES
		
(1, 'Alexa', 'Ashtonhurst', 'rpjAtm'),
(2, 'Cris', 'Lomax', 'JYNzOokaL'),
(3, 'Emmy', 'Spurdens', 'h7zdxTp'),
(4, 'Bevan', 'Licquorish', '5Eb7JKrH9X'),
(5, 'Earlie', 'Diggles', 'Q1AoF49Vr'),
(6, 'Dee dee', 'Shuttlewood', 'ix5aWRdNoo'),
(7, 'Marin', 'Matysik', 'G1J2FL'),
(8, 'Buddie', 'Farrier', '8S3PM7f0'),
(9, 'Adoree', 'Folan', 'FBS1dnn'),
(10, 'Bernadina', 'Norris', '9xFOqXlWtA'),
(11, 'Vance', 'O''Grada', 'S5WuVtWROA'),
(12, 'Rod', 'Stollman', 'rWW7mUL6Jd'),
(13, 'Gare', 'Tottie', 'Nusqgn4PZ'),
(14, 'Salomi', 'Bartosch', 'r88k3YdnK'),
(15, 'Elnar', 'Hardwich', 'WzazTHz'),
(16, 'Myrvyn', 'Impy', 'hyOGsv'),
(17, 'Bord', 'Branchett', 'dXlYNU'),
(18, 'Leonid', 'Orpwood', 'ienMJgvv'),
(19, 'Ceil', 'Bodiam', 'LVmxush4H'),
(20, 'Brittni', 'Huban', '06B69vOCsB'),
(21, 'Paulita', 'McArdell', 'ybDGm9WHM1'),
(22, 'Jeri', 'Laity', 'BxmbZe6'),
(23, 'Teddy', 'Domleo', 'WGssgJPidbIb'),
(24, 'Xenia', 'Bossel', '0cSNjL'),
(25, 'Ricard', 'Cresser', 'BPOFVaVI14r'),
(26, 'Bern', 'Everix', 'wu6xpzUJQNuC'),
(27, 'Maurie', 'Coveley', 'mRPa6D8VAId'),
(28, 'Isahella', 'Goodram', 'keAv8keIH0'),
(29, 'Prentice', 'Pearson', 't53VYtlQg8f'),
(30, 'Giorgio', 'Barber', 'IW2s3RNvhYy8'),
(31, 'Neille', 'Haslum', 'h0blZVLmU'),
(32, 'Ibby', 'Whitnall', 'h01mJzHjoaMo'),
(33, 'Codi', 'Masseo', 'JbZdZus01o'),
(34, 'Seumas', 'Carthew', 'dsZg3uo4'),
(35, 'Nyssa', 'Organ', 'PE3j5Aw3qK'),
(36, 'Sylvester', 'Huish', '1rXqR3'),
(37, 'Mabel', 'Connow', 'mqCviuBWN8'),
(38, 'Holmes', 'Colleck', 'nSGjO9Hp'),
(39, 'Town', 'Camplejohn', 'vMO4r0'),
(40, 'Consuela', 'Lynd', 'zqfLFHgEz8x'),
(41, 'Susanetta', 'Sybe', 'z8shSlVa'),
(42, 'Thaine', 'Scraney', 'eV1MT1R'),
(43, 'Rudolph', 'Kytley', 'B1uVSk8emBR'),
(44, 'Loraine', 'McNee', 'Nvg4fQ1EKmP5'),
(45, 'Isaak', 'Secombe', '92j0ch7YIe4e'),
(46, 'Aundrea', 'Scholz', 'NQMCsB2'),
(47, 'Karola', 'Huge', 'wfzbhMvskUR'),
(48, 'Sargent', 'Mussard', '6TzZw6'),
(49, 'Rockwell', 'Dongall', 'uMaWH8qh'),
(50, 'Jarrod', 'Churchard', 'vm87mx8Fbmp'),
(51, 'Brion', 'Boutellier', 'tE8jmJpwB'),
(52, 'Imojean', 'Sink', 'GIRb4c7'),
(53, 'Crichton', 'Stripp', 'T8xhqsttV'),
(54, 'Mersey', 'Bolden', 'u0flBeSq'),
(55, 'Maddie', 'Van Geffen', 'L8uCon5An'),
(56, 'Lorilee', 'Wilford', 'g02qNxRwnOL5'),
(57, 'Brandon', 'Littlejohns', 'RBMRJFr70n5'),
(58, 'Birch', 'Eagle', 'X6uHdlZ4n'),
(59, 'Markus', 'Redish', 'vXxnc7dv'),
(60, 'Camala', 'Pothergill', 'r0xvvDxGN6Cu'),
(61, 'Cherida', 'Blaschek', 'Rj7IJC4px'),
(62, 'Pablo', 'Stoke', 'FU0CzsvTt'),
(63, 'Guglielmo', 'Gilkison', 'Nk0hP0Wv'),
(64, 'Del', 'Llop', 'AtLRfPYzf'),
(65, 'Avrom', 'Kolis', 'uWRwFXXLV'),
(66, 'Kent', 'Nisco', 'kNUo1TCLvE'),
(67, 'Elisa', 'Thomazet', 'eNHgJRGT4'),
(68, 'Fernande', 'Pegrum', 'rguMHdVMn'),
(69, 'Micheil', 'Sprade', 'DnOjD5g8'),
(70, 'Winona', 'Dumbar', 'vwQYOA'),
(71, 'Guillaume', 'Sorey', 'RDtpyIk'),
(72, 'Arnoldo', 'Erbain', '986IWnAg672q'),
(73, 'Ettie', 'Novkovic', 'o7ozO2NkK'),
(74, 'Coleman', 'Cranmore', 'L6GyPi'),
(75, 'Galen', 'Denkel', 'R5bTiiZqE'),
(76, 'Cami', 'Gierhard', 'yYmszL93'),
(77, 'Janet', 'Gainsboro', 'SkHjhm'),
(78, 'Jacob', 'Ferne', '8am3py5'),
(79, 'Sandye', 'Stockle', 'YHAWKuv'),
(80, 'Edin', 'Gopsill', '2tyIauB42hCo'),
(81, 'Marven', 'Filoniere', 'RILg04Zi'),
(82, 'Natty', 'Polack', 'loDWI02'),
(83, 'Joyann', 'McCloughen', 'nwsdUv5iGT'),
(84, 'Simone', 'Linkie', 'pUJVYncm2td'),
(85, 'Ingunna', 'Jossel', 'mEKmSj'),
(86, 'Paola', 'Andersch', 'vUk6zOsNi7i'),
(87, 'Shalne', 'Hearn', 'yZkqMja'),
(88, 'Adrian', 'Pree', 'HX0cqu'),
(89, 'Chadd', 'Smalecombe', 'zziiOYBM'),
(90, 'Berry', 'Werndly', 'flXAhga5GGc'),
(91, 'Cody', 'Clace', 'wYEwvjXKa'),
(92, 'Otes', 'Rheubottom', 'l33R6ZdZTzy'),
(93, 'Cesare', 'Trevorrow', 'QUhOrRas'),
(94, 'Munroe', 'Tharme', 'vDx89EHlt'),
(95, 'Yank', 'Deeks', '7Bu8S0w'),
(96, 'Ford', 'Daventry', 'okWsxxbU'),
(97, 'Harrietta', 'Toderini', 'WLgpcazjOn'),
(98, 'Rurik', 'Foote', 'i6rIdG9JJbe'),
(99, 'Jed', 'Killock', 'AB3LbncFc'),
(100, 'Anthea', 'Brigstock', 'cXGqzwX');





CREATE TABLE IF NOT EXISTS AdminEmail(
AdminID INT NOT NULL ,
Email VARCHAR(255) UNIQUE,
PRIMARY KEY (AdminID, Email),
FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

INSERT INTO AdminEmail (AdminID, Email) VALUES 

(1, 'mkolin0@omniture.com'),
(2, 'kellaway1@latimes.com'),
(3, 'edwelley2@irs.gov'),
(4, 'dsparshutt3@51.la'),
(5, 'sstove4@earthlink.net'),
(6, 'jmalden5@boston.com'),
(7, 'lrevelle6@ow.ly'),
(8, 'owhyler7@ow.ly'),
(9, 'sstorms8@senate.gov'),
(10, 'cshorto9@home.pl'),
(11, 'asollarsa@bloglovin.com'),
(12, 'rharkinb@cdc.gov'),
(13, 'rohalliganc@xinhuanet.com'),
(14, 'elagdend@furl.net'),
(15, 'aknewstubbe@twitpic.com'),
(16, 'bhealdf@washingtonpost.com'),
(17, 'gwaymang@state.tx.us'),
(18, 'csebbornh@qq.com'),
(19, 'rjaukovici@yale.edu'),
(20, 'pantonopoulosj@vinaora.com'),
(21, 'rdeverk@hao123.com'),
(22, 'vdormonl@gnu.org'),
(23, 'ntrousdalem@163.com'),
(24, 'btempestn@jugem.jp'),
(25, 'mgermanno@blogger.com'),
(26, 'hprewettp@businessinsider.com'),
(27, 'mpeakeq@xing.com'),
(28, 'gloftingr@google.de'),
(29, 'ddanters@pagesperso-orange.fr'),
(30, 'lcuttlert@php.net'),
(31, 'fmilsomu@utexas.edu'),
(32, 'erosenbergv@godaddy.com'),
(33, 'mboswellw@goo.ne.jp'),
(34, 'madamx@goo.ne.jp'),
(35, 'jweipperty@economist.com'),
(36, 'fbruggemanz@altervista.org'),
(37, 'ibauld10@adobe.com'),
(38, 'acrebbin11@51.la'),
(39, 'clefebre12@ucla.edu'),
(40, 'jjaime13@oracle.com'),
(41, 'eglanester14@rediff.com'),
(42, 'ndauney15@un.org'),
(43, 'hlequesne16@trellian.com'),
(44, 'nmathews17@go.com'),
(45, 'bprovis18@aboutads.info'),
(46, 'psummerton19@wp.com'),
(47, 'kdunaway1a@senate.gov'),
(48, 'mnewgrosh1b@sun.com'),
(49, 'gplover1c@imageshack.us'),
(50, 'kpringle1d@usnews.com'),
(51, 'tmcilwreath1e@altervista.org'),
(52, 'imartinek1f@naver.com'),
(53, 'mwhorlow1g@surveymonkey.com'),
(54, 'amclinden1h@ameblo.jp'),
(55, 'fluis1i@china.com.cn'),
(56, 'emaughan1j@npr.org'),
(57, 'asekulla1k@cbc.ca'),
(58, 'eskedgell1l@prweb.com'),
(59, 'slistone1m@simplemachines.org'),
(60, 'bgronav1n@squidoo.com'),
(61, 'fgeck1o@simplemachines.org'),
(62, 'gmurdoch1p@hugedomains.com'),
(63, 'emcchruiter1q@livejournal.com'),
(64, 'cschurcke1r@cpanel.net'),
(65, 'ateager1s@yale.edu'),
(66, 'rgurley1t@ebay.com'),
(67, 'hvanleeuwen1u@bbb.org'),
(68, 'lblees1v@house.gov'),
(69, 'ahannigane1w@mediafire.com'),
(70, 'cpietruszka1x@gnu.org'),
(71, 'vlaimable1y@irs.gov'),
(72, 'pgerler1z@sun.com'),
(73, 'cbrion20@webeden.co.uk'),
(74, 'tkeene21@shutterfly.com'),
(75, 'rwhetnell22@youku.com'),
(76, 'dpreuvost23@wufoo.com'),
(77, 'bcelli24@alexa.com'),
(78, 'ccharlo25@ovh.net'),
(79, 'tbuchan26@bluehost.com'),
(80, 'bspurdens27@macromedia.com'),
(81, 'cfincher28@noaa.gov'),
(82, 'hwebley29@tmall.com'),
(83, 'rkobiela2a@hatena.ne.jp'),
(84, 'ebendel2b@symantec.com'),
(85, 'jwasiela2c@newsvine.com'),
(86, 'fflockhart2d@deviantart.com'),
(87, 'gjarry2e@meetup.com'),
(88, 'jkenwright2f@ftc.gov'),
(89, 'scabral2g@zdnet.com'),
(90, 'csummerill2h@reuters.com'),
(91, 'acarroll2i@google.co.uk'),
(92, 'dgreen2j@boston.com'),
(93, 'kdogerty2k@ameblo.jp'),
(94, 'glittlejohns2l@bandcamp.com'),
(95, 'hcaitlin2m@symantec.com'),
(96, 'mrand2n@marketwatch.com'),
(97, 'drousel2o@studiopress.com'),
(98, 'lmorford2p@berkeley.edu'),
(99, 'emaloney2q@barnesandnoble.com'),
(100, 'krobker2r@woothemes.com');



CREATE TABLE IF NOT EXISTS AdminMobile(
AdminID INT,
Mobile BIGINT NOT NULL UNIQUE,
CHECK(Mobile>0),
PRIMARY KEY (AdminID, Mobile),
FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

INSERT INTO AdminMobile (AdminID, Mobile) VALUES 

(1, 9455957751),
(2, 5047477588),
(3, 9174381521),
(4, 5804590620),
(5, 9441375427),
(6, 7762709246),
(7, 7567108805),
(8, 9891993174),
(9, 3833413817),
(10, 2073279602),
(11, 1845426328),
(12, 3932633839),
(13, 1444825923),
(14, 4863544561),
(15, 2566606395),
(16, 9219976479),
(17, 9303671046),
(18, 3091707069),
(19, 2647472061),
(20, 2705565781),
(21, 8012978822),
(22, 6635517815),
(23, 2582343968),
(24, 9738044891),
(25, 7196358705),
(26, 8144105292),
(27, 3588067270),
(28, 7297497239),
(29, 7277151889),
(30, 8244289077),
(31, 2844720249),
(32, 1268637125),
(33, 2719624748),
(34, 7959701237),
(35, 7693474325),
(36, 2946636207),
(37, 7499565139),
(38, 3259576084),
(39, 1416696809),
(40, 2557960707),
(41, 2237534626),
(42, 1559487485),
(43, 3635919744),
(44, 9503268739),
(45, 3069855857),
(46, 3945940446),
(47, 4869315826),
(48, 8307950885),
(49, 2711364709),
(50, 1144884230),
(51, 3826638747),
(52, 9672489544),
(53, 9892939234),
(54, 9685143883),
(55, 7355140202),
(56, 6584306299),
(57, 2651820834),
(58, 9263703746),
(59, 3082894133),
(60, 2549226221),
(61, 5555093071),
(62, 3256744433),
(63, 8222395120),
(64, 4397478529),
(65, 5352627367),
(66, 7096380198),
(67, 9804460636),
(68, 6238876610),
(69, 7036288720),
(70, 8213937783),
(71, 8071747349),
(72, 3344649668),
(73, 8288795620),
(74, 3673749878),
(75, 8417443388),
(76, 4035290290),
(77, 2017596080),
(78, 1507274852),
(79, 3813803245),
(80, 4669934066),
(81, 6808544824),
(82, 9179469995),
(83, 1839021579),
(84, 2706623685),
(85, 6297546257),
(86, 5706648339),
(87, 2178300658),
(88, 9343176105),
(89, 4205297592),
(90, 9991074250),
(91, 4978791141),
(92, 5837951718),
(93, 2211545213),
(94, 1579225676),
(95, 5451143383),
(96, 2636024343),
(97, 4574651667),
(98, 1648875166),
(99, 3042622846),
(100,6374208613);



CREATE TABLE IF NOT EXISTS Driver(
AdminID INT,
DriverID INT NOT NULL,
FirstName VARCHAR(255) NOT NULL,
LastName VARCHAR(255),
Rating FLOAT(23),
Location TEXT(65535) NOT NULL,
Password VARCHAR(255) NOT NULL UNIQUE,
LicenseNumber VARCHAR(255),
PRIMARY KEY (DriverID),
FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

INSERT INTO Driver (AdminID, DriverID, FirstName, LastName, Rating, Location, Password, LicenseNumber) VALUES 

(1, 1, 'Aleda', 'Seman', 9.9, '000 Carpenter Point', 'E4MkoHSxrMux', 'EC365U1650'),
(2, 2, 'Ailsun', 'Kasting', 9.4, '53 Ramsey Court', '8LlJ7Kuu1uI', 'NB946T1534'),
(3, 3, 'Minor', 'Fatharly', 9.9, '34 High Crossing Alley', '78DFCF5cqY', 'BU022O3963'),
(4, 4, 'Gallard', 'Elsey', 9.6, '4422 Corscot Circle', 'YXIpYiO', 'YB569S4756'),
(5, 5, 'Dannel', 'Guille', 9.8, '94 Merrick Point', 'uEt2klm', 'ZU536O5537'),
(6, 6, 'Correy', 'Ethridge', 3.5, '9444 Burning Wood Hill', 'dO80VxAj', 'VK028L6463'),
(7, 7, 'Cecil', 'Kilbane', 2.5, '8676 Michigan Center', 'FiHLzYpE', 'MM343U0377'),
(8, 8, 'Perceval', 'Torrent', 9.4, '3 Johnson Court', 'z1M5OaTCNCPQ', 'ET302N3401'),
(9, 9, 'Tammi', 'Rhodes', 2.6, '1 Fordem Avenue', 'fXfaTW', 'VW372L2919'),
(10, 10, 'Marketa', 'Dommersen', 8.3, '69 Sloan Avenue', 'UtATgfhJvK7', 'EF681D7398'),
(11, 11, 'Nathalie', 'Calbrathe', 6.3, '59406 Hanson Drive', 'GeasVuPMMKu', 'ZO465I4902'),
(12, 12, 'Jon', 'Tidmarsh', 9.0, '91112 Marcy Alley', 'aQ1tvKM', 'BS522E7176'),
(13, 13, 'Debby', 'Mirfield', 6.5, '8 Ryan Hill', 'LFjzGH', 'FR784S7404'),
(14, 14, 'Konrad', 'Russel', 4.6, '495 Tennessee Street', 'mEsbKxb7w7iQ', 'YR941T2035'),
(15, 15, 'Colette', 'Tomanek', 2.1, '898 Dovetail Avenue', 'V3xTtnZaL', 'BY658L9782'),
(16, 16, 'Debbie', 'Goburn', 7.3, '7 Gale Drive', 'a3Lw3y', 'CJ238L5559'),
(17, 17, 'Henri', 'Lapish', 4.5, '565 Northport Parkway', '9AjO03Q43TjR', 'YM085Y0185'),
(18, 18, 'Win', 'Derks', 2.3, '17526 Kedzie Drive', 'jggwAodZzT', 'HA409M5032'),
(19, 19, 'Angel', 'Baggett', 2.0, '94 Gerald Avenue', 'hlhf6YyeyM', 'DI083X3996'),
(20, 20, 'Shelby', 'Blakely', 2.0, '84267 Glacier Hill Road', 'HGkvskWH', 'OT890V8675'),
(21, 21, 'Yank', 'O''Hearn', 4.8, '991 Stang Alley', '2eHn81eR6', 'QA834S0762'),
(22, 22, 'Allistir', 'Scupham', 2.3, '42 Namekagon Park', 'PqpO1PoG4l', 'EP537V0721'),
(23, 23, 'Roselin', 'Gluyus', 8.2, '3 Golden Leaf Crossing', 'IRmLuMAueW2', 'WJ230M0353'),
(24, 24, 'Laraine', 'Perris', 5.5, '68606 American Ash Center', 'Iu0zRf8AAa', 'BN099A7471'),
(25, 25, 'Hubert', 'Rubartelli', 8.6, '3 Northport Hill', 'YdsS1Jk', 'VK557T4825'),
(26, 26, 'Reine', 'Cancutt', 1.3, '221 Sutherland Lane', 'Dvv2tFWUhcc', 'YF249T3047'),
(27, 27, 'Joela', 'Greenshields', 6.0, '1246 Larry Crossing', 'hcuwouLCcW', 'XJ011F9484'),
(28, 28, 'Simon', 'Lehr', 2.3, '670 Northfield Hill', 'VEXQX7zv', 'JL201V8814'),
(29, 29, 'Fanni', 'Tearney', 1.8, '02 Lakeland Lane', 'P1e1k9', 'WI104K7626'),
(30, 30, 'Heath', 'Treharne', 8.8, '50917 Blaine Center', 'amxKcG6W0kK1', 'IM215S7304'),
(31, 31, 'Annmaria', 'Stathor', 2.5, '22 Artisan Avenue', 'Ktvxx0', 'WP945Z7221'),
(32, 32, 'Berna', 'Whichelow', 8.7, '582 Paget Terrace', 'V0QW9PYuc', 'AQ131J3732'),
(33, 33, 'Tabina', 'Learmond', 5.0, '15284 Pennsylvania Way', 'P1V9hHYuISq', 'RC490D1306'),
(34, 34, 'Chariot', 'Janjusevic', 2.1, '3 Eastwood Circle', 'b9IMdvshx', 'BF799T3197'),
(35, 35, 'Ingaborg', 'Semeradova', 9.9, '556 North Street', 'v3EV1obM9j', 'XI439F9844'),
(36, 36, 'Danita', 'Caswill', 2.5, '92879 Beilfuss Crossing', 'hCa3UpHrmrR', 'SA638C0563'),
(37, 37, 'Ernst', 'Perillo', 2.5, '3 Knutson Drive', 'JG8voEyQtPW', 'KB126P0047'),
(38, 38, 'Junie', 'Coalbran', 1.2, '72216 Warrior Road', 'eN9yK3jorgS', 'UL535O3475'),
(39, 39, 'Hadlee', 'Tallowin', 1.6, '23 Clyde Gallagher Court', 'lM33Gv', 'IY117F8095'),
(40, 40, 'Vivyan', 'Naylor', 5.1, '72653 Weeping Birch Parkway', 'vPANz57TeYg3', 'RJ756B1270'),
(41, 41, 'Leyla', 'Ebanks', 7.1, '0485 Lunder Parkway', 'B8IvdUFv7A0b', 'KJ095E1567'),
(42, 42, 'Lisetta', 'Gerlack', 8.9, '894 East Court', 'hiVocmXSHFO', 'CK324N8789'),
(43, 43, 'Alta', 'Upstell', 7.6, '4 Westport Terrace', 'UGpZUE', 'CY352C4476'),
(44, 44, 'Cosmo', 'Antham', 9.3, '33 Iowa Center', 'E1ZHnSWkX3V', 'HE320Z9610'),
(45, 45, 'Reyna', 'Marshman', 6.3, '38 Aberg Hill', '7GHEAJL', 'PY628K2888'),
(46, 46, 'Aryn', 'Landeg', 3.8, '079 Derek Alley', '0lJJrd', 'LL138M1366'),
(47, 47, 'Neila', 'Tranter', 7.9, '4159 Coolidge Street', 'Tafrz4B6Z', 'ZO093I7068'),
(48, 48, 'Trenna', 'Philimore', 9.3, '75268 Carioca Avenue', '6jSDU8dmga', 'WS115H4959'),
(49, 49, 'Claudio', 'Stoffler', 3.9, '56 Glacier Hill Parkway', 'vCcHjBEK5KG1', 'US338G6296'),
(50, 50, 'Ted', 'Jewis', 6.7, '1172 Sutteridge Parkway', 'EmCjBI', 'PP300Y4005'),
(51, 51, 'Drucie', 'Busain', 3.8, '58676 Tennyson Terrace', 'DiuKPovg', 'RP864N9901'),
(52, 52, 'Wilbert', 'Daintree', 8.4, '4750 Blackbird Alley', 'ipK87aE', 'UR405Y1236'),
(53, 53, 'Mariellen', 'Damsell', 4.5, '0425 Fieldstone Place', 'dT2IjGQRVCvU', 'CT497U5768'),
(54, 54, 'Michele', 'Gaitley', 4.3, '77271 Grasskamp Place', 'lyBlP7ya3i', 'TN977Z5266'),
(55, 55, 'Meade', 'Radmore', 8.0, '892 Stone Corner Crossing', 'mYxqkkRh0m0d', 'DW467Z9596'),
(56, 56, 'Mirna', 'Layson', 6.0, '8 Debs Alley', 'YLEWCnY1', 'CP412Y7640'),
(57, 57, 'Hyacintha', 'Hume', 7.9, '51401 Monica Terrace', 'r40jEvqIdPWx', 'TG611T9342'),
(58, 58, 'Raeann', 'Shave', 9.5, '4 Oxford Park', 'LiTqg5A', 'FO558Z0821'),
(59, 59, 'Dominica', 'MacGillespie', 2.1, '2293 Roxbury Lane', 'RLFZoL', 'WB443T2375'),
(60, 60, 'Erika', 'Vasyushkhin', 1.2, '02314 Sunnyside Alley', 'ptzPgtEDuMR', 'DW719I5500'),
(61, 61, 'Wallie', 'Pavlov', 7.1, '3 Bunting Plaza', 'h9zcdRxVb', 'NM605Q2640'),
(62, 62, 'Tally', 'Waith', 2.0, '51 Florence Street', 'fv7HYH3E', 'WX077R2459'),
(63, 63, 'Kaleena', 'Oris', 3.5, '00802 Sugar Pass', 'nJR4YUL7X0', 'ER623U8406'),
(64, 64, 'Winslow', 'Brum', 7.3, '4 Manitowish Plaza', 'uQPAeIvFIb', 'KU299A1798'),
(65, 65, 'Korry', 'Hyne', 4.2, '05486 Steensland Way', '7da5Ho0sK', 'JX906N3835'),
(66, 66, 'Emylee', 'Danilovich', 6.5, '384 Fisk Point', 'OvNZsP', 'WE291T3696'),
(67, 67, 'Zedekiah', 'Catlette', 7.4, '23185 Petterle Terrace', '1XhBskE2Tokf', 'LI013J6060'),
(68, 68, 'Arlyn', 'Landsman', 2.3, '6 Arrowood Place', 'rMuj1fZOhreU', 'VK016Z0854'),
(69, 69, 'Ezri', 'Singyard', 6.3, '82570 Nevada Court', 'YaFlKIV', 'FK835X3412'),
(70, 70, 'Jacqueline', 'Noods', 5.1, '7811 Birchwood Court', 'O8aDaPuwjvUP', 'KN171D3452'),
(71, 71, 'Elena', 'Rosenberg', 9.7, '3407 Spaight Park', 'vKAp7RhCP3g3', 'VC028D4470'),
(72, 72, 'Ruthanne', 'Vallentine', 8.7, '953 1st Crossing', 'cHOk1SjM', 'YN648W1727'),
(73, 73, 'Gretna', 'Battye', 8.1, '9 Hauk Court', 'nOuq2uLLOiE', 'DB809Y5763'),
(74, 74, 'Marjorie', 'Habbeshaw', 2.4, '78 Briar Crest Street', 'xaGSmpomJo', 'IZ670E2038'),
(75, 75, 'Peder', 'Lutsch', 2.3, '948 Miller Court', 'QVAeqHv', 'RL614B6741'),
(76, 76, 'Kass', 'Scutchings', 2.5, '78387 Elka Court', 'L5kcY4Hgl5', 'NS263C4786'),
(77, 77, 'Gae', 'Trimming', 1.6, '4400 Center Plaza', 'pYSY6ep03T', 'VY575S0521'),
(78, 78, 'Neddie', 'Brigginshaw', 3.6, '4 Roxbury Drive', 'VBVfzASQ8', 'ZC044G8181'),
(79, 79, 'Arlan', 'Hailston', 6.5, '37765 Westridge Hill', 'JGPlWxIUPp', 'EE223F8308'),
(80, 80, 'Madeleine', 'Sawdy', 6.9, '9 Oak Lane', 'vHf1IRQgZ', 'QD010H6940'),
(81, 81, 'Wilmer', 'Ciobutaro', 8.1, '08975 Northfield Hill', 'vWnogE1Q6nAy', 'QD617X6538'),
(82, 82, 'Decca', 'Hambly', 2.9, '3151 Jackson Road', 'pTtkAg1gyGh', 'OZ352E6603'),
(83, 83, 'Marla', 'Sloss', 8.9, '0226 Susan Parkway', 'jg4gkwqXm', 'AB323P4414'),
(84, 84, 'Monte', 'Praundl', 8.2, '4554 Morning Lane', '4tkxZqajn', 'OF288X6955'),
(85, 85, 'Anselm', 'Godbehere', 5.9, '26 Manley Point', '8ke5A2BO', 'SC150Y9182'),
(86, 86, 'Valene', 'Toulson', 4.7, '99 Eastwood Drive', '344GEjmzf', 'YJ760F2953'),
(87, 87, 'Deina', 'Borles', 9.1, '79050 Vahlen Point', 'NPB71EyLe0Ge', 'WC716G5035'),
(88, 88, 'Joete', 'Lauritzen', 2.1, '7637 Shopko Center', 'o5znb7', 'TA937S2088'),
(89, 89, 'Patton', 'Epsley', 7.7, '7 Kim Drive', 'LBGjDeJe', 'TG274V7893'),
(90, 90, 'Paxon', 'Hotchkin', 2.9, '096 Corben Avenue', 'sWeycX', 'TY928K3697'),
(91, 91, 'Guthrey', 'Stubbin', 8.2, '78570 Barby Avenue', 'JTQDlolwOU', 'YN340R7819'),
(92, 92, 'Kaia', 'Groocock', 5.2, '21 Pennsylvania Plaza', '1VNsCTa', 'MP239H6390'),
(93, 93, 'Alvira', 'Carvell', 5.0, '666 David Park', 'wvsN2TR0DQK', 'CB292U8060'),
(94, 94, 'Audry', 'Tweedle', 4.5, '062 Westport Drive', 'MVKjcMj', 'TA397U2928'),
(95, 95, 'Royal', 'Lee', 2.5, '69 Division Terrace', 'tEoNZIUVlA', 'ME395R1121'),
(96, 96, 'Armand', 'Swinburne', 3.6, '95 6th Hill', 'YDeiKPs0JU', 'JK499F4086'),
(97, 97, 'Rochette', 'Lukesch', 4.5, '25 Moland Point', '33To25ytiJw9', 'AO910O2387'),
(98, 98, 'Averil', 'Rosensaft', 8.1, '90215 Shoshone Way', 'knA8QQChutI', 'FZ706U1575'),
(99, 99, 'Marylin', 'Tilt', 8.3, '5 Orin Parkway', 'RUOToP', 'KH180N4854'),
(100, 100, 'Sybyl', 'Rein', 2.3, '540 Gerald Terrace', 'hTahR64FZ', 'VW353I0781');



CREATE TABLE IF NOT EXISTS DriverEmail(
DriverID INT NOT NULL,
Email VARCHAR(255),
PRIMARY KEY (DriverID, Email),
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID)
);

INSERT INTO DriverEmail (DriverID, Email) VALUES 

(1, 'mfitzmaurice0@sogou.com'),
(2, 'clansdown1@ibm.com'),
(3, 'cgarrison2@aol.com'),
(4, 'rbonin3@apache.org'),
(5, 'mbaxster4@etsy.com'),
(6, 'dlambersen5@mayoclinic.com'),
(7, 'tfolder6@netlog.com'),
(8, 'fkieff7@microsoft.com'),
(9, 'gatwill8@hugedomains.com'),
(10, 'gsultan9@constantcontact.com'),
(11, 'lcadagana@forbes.com'),
(12, 'ctattersdillb@sohu.com'),
(13, 'cgiorgettic@xrea.com'),
(14, 'sprysd@icio.us'),
(15, 'tpetersene@prnewswire.com'),
(16, 'pthirskf@odnoklassniki.ru'),
(17, 'cseagarg@over-blog.com'),
(18, 'clelandh@patch.com'),
(19, 'lkirszi@wikimedia.org'),
(20, 'anarrawayj@tuttocitta.it'),
(21, 'dcestardk@stanford.edu'),
(22, 'chailstonl@yale.edu'),
(23, 'cstegersm@seesaa.net'),
(24, 'mhammantn@skyrock.com'),
(25, 'amatthissono@tinypic.com'),
(26, 'slendonp@amazon.com'),
(27, 'mclappq@yahoo.com'),
(28, 'mtrayhornr@dyndns.org'),
(29, 'ecolmans@digg.com'),
(30, 'smitchelsont@acquirethisname.com'),
(31, 'jtithecoteu@friendfeed.com'),
(32, 'mfootev@lycos.com'),
(33, 'nwhittleseaw@eventbrite.com'),
(34, 'lbeckensallx@typepad.com'),
(35, 'lwheatmany@businessinsider.com'),
(36, 'hupstellz@bloglines.com'),
(37, 'bwinmill10@gov.uk'),
(38, 'mwindross11@biglobe.ne.jp'),
(39, 'joates12@goodreads.com'),
(40, 'cscopes13@wikispaces.com'),
(41, 'jcandie14@nifty.com'),
(42, 'slomaz15@tripod.com'),
(43, 'sklezmski16@hp.com'),
(44, 'palbasiny17@hud.gov'),
(45, 'tgodbehere18@jiathis.com'),
(46, 'dhenzley19@smugmug.com'),
(47, 'alangman1a@g.co'),
(48, 'mhowkins1b@github.com'),
(49, 'cweber1c@qq.com'),
(50, 'rcavanaugh1d@ustream.tv'),
(51, 'lchambers1e@bloglines.com'),
(52, 'stytcomb1f@seattletimes.com'),
(53, 'kwilby1g@google.de'),
(54, 'hcallis1h@time.com'),
(55, 'dlindborg1i@exblog.jp'),
(56, 'ubush1j@disqus.com'),
(57, 'carkell1k@redcross.org'),
(58, 'emorland1l@wiley.com'),
(59, 'rgorman1m@toplist.cz'),
(60, 'ashane1n@patch.com'),
(61, 'mocarran1o@rambler.ru'),
(62, 'escurr1p@tripadvisor.com'),
(63, 'bdecruce1q@seattletimes.com'),
(64, 'etrelease1r@earthlink.net'),
(65, 'cskacel1s@ftc.gov'),
(66, 'kcoldbath1t@dot.gov'),
(67, 'gbelchamp1u@telegraph.co.uk'),
(68, 'tmcmurraya1v@issuu.com'),
(69, 'etolussi1w@g.co'),
(70, 'vblacktin1x@list-manage.com'),
(71, 'glippini1y@joomla.org'),
(72, 'fheugh1z@ucoz.com'),
(73, 'npeche20@princeton.edu'),
(74, 'tcullip21@cnn.com'),
(75, 'erenihan22@qq.com'),
(76, 'dkearney23@sohu.com'),
(77, 'dwinchurst24@patch.com'),
(78, 'mcharte25@ezinearticles.com'),
(79, 'sdyas26@google.de'),
(80, 'rlemonby27@mac.com'),
(81, 'imacknight28@tripod.com'),
(82, 'kkesby29@hostgator.com'),
(83, 'stordiffe2a@hhs.gov'),
(84, 'ddecristoforo2b@feedburner.com'),
(85, 'bhairyes2c@oakley.com'),
(86, 'erisbridge2d@salon.com'),
(87, 'jsimenot2e@patch.com'),
(88, 'nwauchope2f@zdnet.com'),
(89, 'lluter2g@businessweek.com'),
(90, 'lkareman2h@theatlantic.com'),
(91, 'sbletsor2i@github.io'),
(92, 'jiaduccelli2j@state.tx.us'),
(93, 'pcaldayrou2k@guardian.co.uk'),
(94, 'hlyman2l@europa.eu'),
(95, 'ebeaves2m@arstechnica.com'),
(96, 'etiller2n@europa.eu'),
(97, 'cgillbee2o@microsoft.com'),
(98, 'adegoey2p@creativecommons.org'),
(99, 'smetschke2q@mlb.com'),
(100, 'cblunsen2r@mtv.com');



CREATE TABLE IF NOT EXISTS DriverMobile(
DriverID INT NOT NULL,
Mobile BIGINT,
PRIMARY KEY (DriverID, Mobile),
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID)
);

INSERT INTO DriverMobile (DriverID, Mobile) VALUES 
(1, 7425651187),
(2, 5336701093),
(3, 4121281960),
(4, 2621552300),
(5, 7256501147),
(6, 6078780309),
(7, 9803396213),
(8, 4395743336),
(9, 8063864167),
(10, 9538097276),
(11, 9587316917),
(12, 1429552825),
(13, 8148077194),
(14, 3646535116),
(15, 6807468665),
(16, 2751726598),
(17, 8641871490),
(18, 6864007996),
(19, 3236251565),
(20, 6735255248),
(21, 5358737068),
(22, 1205042024),
(23, 5915674889),
(24, 2682405657),
(25, 3326109311),
(26, 1346323799),
(27, 2848033257),
(28, 4883870029),
(29, 6601200228),
(30, 2669921853),
(31, 9847063225),
(32, 3726125735),
(33, 6961094215),
(34, 2713546952),
(35, 4766657326),
(36, 1595573264),
(37, 3278099915),
(38, 6215842897),
(39, 3678930084),
(40, 6336307309),
(41, 9535983227),
(42, 9615226236),
(43, 6908165268),
(44, 7689803431),
(45, 9024765514),
(46, 3739588365),
(47, 6633734813),
(48, 4423835889),
(49, 7898528633),
(50, 6044000742),
(51, 9921530415),
(52, 7872535506),
(53, 1228936170),
(54, 2601145178),
(55, 7357612624),
(56, 8469955828),
(57, 3826896699),
(58, 8847816355),
(59, 9091443252),
(60, 3749765872),
(61, 2908293090),
(62, 3722865318),
(63, 5872591558),
(64, 8124821279),
(65, 1466208511),
(66, 3254643847),
(67, 2111319440),
(68, 1179098007),
(69, 4154891007),
(70, 7601804454),
(71, 3145720316),
(72, 3649209177),
(73, 1044661524),
(74, 7804124708),
(75, 7981174621),
(76, 5255064769),
(77, 8106192973),
(78, 3684416843),
(79, 3187604243),
(80, 3046296594),
(81, 3952206438),
(82, 4834234911),
(83, 3959448110),
(84, 1168595727),
(85, 8335346671),
(86, 1591498050),
(87, 2817854031),
(88, 3047620784),
(89, 1558385257),
(90, 2056051627),
(91, 8746992651),
(92, 8699081981),
(93, 8171694798),
(94, 4079747687),
(95, 3265548139),
(96, 2373550837),
(97, 8548559993),
(98, 2223418438),
(99, 3135463576),
(100, 4885947172);


CREATE TABLE IF NOT EXISTS Passenger(
AdminID INT NOT NULL,
RiderID INT NOT NULL,
FirstName VARCHAR(255) NOT NULL,
LastName VARCHAR(255),
HomeNumber INT,
StreetNumber INT,
Area VARCHAR(255),
State VARCHAR(255),
Pincode INT,
CurrentLocation TEXT(65535) ,
PRIMARY KEY (RiderID),
FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);



INSERT INTO Passenger (AdminID, RiderID, FirstName, LastName, HomeNumber, StreetNumber, Area, State, Pincode) VALUES 

(1, 1, 'Philippe', 'Wrankling', 302, 16, 'dapibus', 'nulla', 483852),
(2, 2, 'Patten', 'Foulstone', 549, 1, 'adipiscing', 'ante', 843075),
(3, 3, 'Velvet', 'Churchard', 743, 16, 'sed', 'ante', 103943),
(4, 4, 'Marcie', 'Robart', 721, 11, 'ac', 'ac', 133749),
(5, 5, 'Burr', 'Butt Gow', 596, 14, 'ac', 'nullam', 543711),
(6, 6, 'Kelly', 'McGriele', 890, 12, 'ultrices', 'blandit', 798280),
(7, 7, 'Alyssa', 'Espin', 868, 3, 'sem', 'phasellus', 722122),
(8, 8, 'Berget', 'Puttergill', 560, 9, 'sapien', 'est', 430442),
(9, 9, 'Thornie', 'Francioli', 429, 23, 'vitae', 'in', 373922),
(10, 10, 'Wayne', 'Loving', 452, 2, 'purus', 'ullamcorper', 485265),
(11, 11, 'Darrell', 'Paoli', 454, 6, 'elit', 'sollicitudin', 731098),
(12, 12, 'Amabel', 'Love', 776, 14, 'morbi', 'aenean', 452888),
(13, 13, 'Gates', 'Hitzke', 543, 13, 'ultrices', 'sapien', 430033),
(14, 14, 'Cari', 'Snalom', 767, 5, 'odio', 'sed', 235737),
(15, 15, 'Arvin', 'Laval', 678, 23, 'ante', 'non', 746472),
(16, 16, 'Dasi', 'Ruzic', 465, 4, 'ut', 'ut', 329837),
(17, 17, 'Karel', 'Bradshaw', 485, 15, 'sapien', 'orci', 349610),
(18, 18, 'Issi', 'Earl', 744, 25, 'ut', 'quis', 507490),
(19, 19, 'Tandie', 'Player', 141, 18, 'mauris', 'volutpat', 530522),
(20, 20, 'Theobald', 'Whistan', 784, 4, 'donec', 'aliquet', 454554),
(21, 21, 'Alexandre', 'Eadmead', 637, 24, 'nunc', 'libero', 641478),
(22, 22, 'Goldie', 'Sturgis', 432, 13, 'lectus', 'mi', 661236),
(23, 23, 'Cammi', 'Miller', 499, 1, 'vestibulum', 'ipsum', 725743),
(24, 24, 'Faun', 'Corro', 340, 14, 'quis', 'felis', 282629),
(25, 25, 'Jacquelyn', 'Dorkin', 775, 5, 'rhoncus', 'erat', 235910),
(26, 26, 'Dulcie', 'Burtwhistle', 420, 20, 'tellus', 'eget', 185716),
(27, 27, 'Debra', 'Werlock', 325, 10, 'nulla', 'ornare', 489097),
(28, 28, 'Rouvin', 'Osgarby', 779, 15, 'vel', 'consequat', 304435),
(29, 29, 'Ernestus', 'Waples', 459, 13, 'maecenas', 'lacus', 327548),
(30, 30, 'Sheryl', 'MacKill', 491, 9, 'sit', 'justo', 701589),
(31, 31, 'Daisey', 'Dark', 861, 7, 'nascetur', 'ante', 558257),
(32, 32, 'Lindsay', 'Ligertwood', 756, 3, 'consequat', 'amet', 192773),
(33, 33, 'Henderson', 'Pascow', 586, 13, 'ornare', 'a', 713785),
(34, 34, 'Camilla', 'Stagge', 189, 8, 'sit', 'curae', 159368),
(35, 35, 'Llywellyn', 'Malin', 595, 4, 'nisi', 'morbi', 591650),
(36, 36, 'Odetta', 'Impy', 607, 12, 'nulla', 'tortor', 313467),
(37, 37, 'Cirillo', 'Mitten', 704, 20, 'pede', 'accumsan', 507051),
(38, 38, 'Fleurette', 'Fenlon', 747, 3, 'sit', 'porttitor', 766197),
(39, 39, 'Theodora', 'Lambdin', 837, 22, 'quisque', 'id', 207256),
(40, 40, 'Temple', 'MacTerrelly', 229, 6, 'non', 'platea', 641219),
(41, 41, 'Lewes', 'Skyrme', 618, 22, 'nulla', 'laoreet', 777575),
(42, 42, 'Boniface', 'Asplen', 244, 15, 'mattis', 'odio', 859607),
(43, 43, 'Belita', 'Yellowlea', 803, 7, 'est', 'vulputate', 124206),
(44, 44, 'Gus', 'Keppy', 555, 2, 'et', 'etiam', 859676),
(45, 45, 'Corabella', 'Waterstone', 726, 11, 'sapien', 'venenatis', 634733),
(46, 46, 'Margarita', 'Byk', 555, 12, 'vestibulum', 'sit', 182885),
(47, 47, 'Millisent', 'Albery', 415, 9, 'urna', 'magna', 475707),
(48, 48, 'Aguste', 'McWilliams', 761, 5, 'ante', 'ac', 167438),
(49, 49, 'Dukie', 'Macer', 711, 13, 'turpis', 'nascetur', 627325),
(50, 50, 'Cad', 'Sancias', 607, 3, 'justo', 'a', 502100),
(51, 51, 'Isidore', 'Jamrowicz', 313, 9, 'ligula', 'commodo', 820445),
(52, 52, 'Caryn', 'Bremner', 322, 15, 'elementum', 'sapien', 456241),
(53, 53, 'Jinny', 'Spacy', 219, 12, 'sem', 'cum', 330273),
(54, 54, 'Gussy', 'Sarre', 299, 19, 'dis', 'eget', 613387),
(55, 55, 'Buddie', 'Serjeant', 284, 19, 'eu', 'sagittis', 554806),
(56, 56, 'Thorstein', 'Rubinov', 709, 19, 'vestibulum', 'varius', 435428),
(57, 57, 'Helen', 'Keasy', 252, 9, 'magna', 'nunc', 545710),
(58, 58, 'Alick', 'Latour', 548, 19, 'nec', 'felis', 735725),
(59, 59, 'Lisha', 'Roundtree', 628, 2, 'semper', 'habitasse', 361560),
(60, 60, 'Francyne', 'Knok', 665, 23, 'phasellus', 'quis', 397021),
(61, 61, 'Bev', 'Southerns', 581, 12, 'pellentesque', 'bibendum', 195683),
(62, 62, 'Hilarius', 'Greenlies', 371, 1, 'augue', 'imperdiet', 388491),
(63, 63, 'Luelle', 'Czaja', 713, 19, 'etiam', 'nec', 224440),
(64, 64, 'Ethelbert', 'Adenot', 171, 18, 'id', 'faucibus', 336990),
(65, 65, 'Francesca', 'Bernucci', 831, 6, 'eget', 'ut', 529713),
(66, 66, 'Karin', 'Magner', 593, 2, 'eget', 'morbi', 863785),
(67, 67, 'Aviva', 'Coorington', 219, 4, 'lectus', 'duis', 105236),
(68, 68, 'Ingeborg', 'Simenel', 296, 11, 'id', 'vehicula', 825960),
(69, 69, 'Ferdie', 'Jagiello', 317, 10, 'ut', 'erat', 121186),
(70, 70, 'Cornell', 'Sessuns', 284, 5, 'sapien', 'cubilia', 751069),
(71, 71, 'Lorrayne', 'Elphinstone', 148, 22, 'sapien', 'platea', 474453),
(72, 72, 'Leyla', 'Croisdall', 424, 20, 'dolor', 'aliquam', 115870),
(73, 73, 'Ethelda', 'Loughnan', 805, 19, 'a', 'at', 345034),
(74, 74, 'Pascale', 'Escritt', 513, 1, 'dolor', 'aliquam', 411072),
(75, 75, 'Krystal', 'Pavlenko', 412, 23, 'primis', 'posuere', 774747),
(76, 76, 'Glen', 'Readhead', 356, 3, 'tellus', 'sit', 397203),
(77, 77, 'Joete', 'Reichert', 216, 4, 'sociis', 'nibh', 264312),
(78, 78, 'Gerald', 'Thurston', 415, 1, 'sed', 'nec', 786955),
(79, 79, 'Annecorinne', 'Fishbourn', 472, 6, 'id', 'lorem', 681488),
(80, 80, 'Clay', 'Capell', 320, 8, 'primis', 'consequat', 810729),
(81, 81, 'Ludwig', 'Daly', 673, 2, 'rhoncus', 'primis', 404289),
(82, 82, 'Kanya', 'Gunningham', 568, 22, 'laoreet', 'eleifend', 508009),
(83, 83, 'Grace', 'Molloy', 293, 17, 'vulputate', 'molestie', 119245),
(84, 84, 'Penelopa', 'Petegree', 843, 22, 'maecenas', 'sed', 362406),
(85, 85, 'Abrahan', 'MacKey', 565, 5, 'sapien', 'id', 134341),
(86, 86, 'Lucinda', 'Give', 581, 17, 'sit', 'duis', 449004),
(87, 87, 'Shirlee', 'Skelhorn', 141, 23, 'hac', 'interdum', 204228),
(88, 88, 'Abbye', 'Brunger', 118, 1, 'cubilia', 'ut', 628878),
(89, 89, 'Delbert', 'Gregolin', 714, 17, 'pellentesque', 'vel', 472626),
(90, 90, 'Babs', 'Allain', 680, 12, 'pretium', 'urna', 740343),
(91, 91, 'Laurette', 'Pickton', 866, 25, 'sit', 'libero', 162703),
(92, 92, 'Kory', 'Moralas', 525, 4, 'massa', 'amet', 225711),
(93, 93, 'Sondra', 'Shipcott', 161, 19, 'duis', 'morbi', 209987),
(94, 94, 'Christiana', 'Hudel', 670, 2, 'orci', 'vestibulum', 354240),
(95, 95, 'Saundra', 'Martinec', 842, 20, 'cubilia', 'quis', 727113),
(96, 96, 'Zaccaria', 'Garces', 390, 18, 'ipsum', 'sapien', 489750),
(97, 97, 'Ravi', 'Karleman', 801, 23, 'lectus', 'lorem', 326396),
(98, 98, 'Kristi', 'Sculley', 275, 18, 'pede', 'feugiat', 862532),
(99, 99, 'York', 'Rickeard', 150, 1, 'primis', 'lectus', 532422),
(100, 100, 'Alexa', 'Poyser', 688, 3, 'in', 'pulvinar', 539236);

CREATE TABLE IF NOT EXISTS TripRequest(
DriverID INT NOT NULL,
RiderID INT NOT NULL,
RequestID INT NOT NULL,
Date DATE,
Time TIME,
StartLocation TEXT(65535) NOT NULL,
DropLocation TEXT(65535) NOT NULL,
CarType varchar(255),
PRIMARY KEY (DriverID, RiderID, RequestID),
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID),
FOREIGN KEY (RiderID) REFERENCES Passenger(RiderID)
);

INSERT INTO TripRequest (DriverID, RiderID, RequestID, Date, Time, StartLocation, DropLocation, CarType) VALUES 
(1, 1, 1, '2022-03-25', '11:56:51', '16 American Lane', '967 Sutteridge Pass', 'Sedan'),
(2, 2, 2, '2022-11-14', '20:22:55', '333 Blaine Park', '1 Stoughton Circle', 'Mini'),
(3, 3, 3, '2022-03-15', '9:03:55', '9767 Utah Road', '3 Shelley Way', 'Auto'),
(4, 4, 4, '2022-06-28', '9:17:28', '17512 Lake View Circle', '0105 Red Cloud Way', 'Mini'),
(5, 5, 5, '2022-02-02', '17:10:54', '92728 Hermina Point', '6 Ridgeway Alley', 'Auto'),
(6, 6, 6, '2022-12-23', '14:40:54', '30782 Village Green Crossing', '693 Goodland Avenue', 'Sedan'),
(7, 7, 7, '2022-11-27', '18:53:47', '564 Florence Alley', '65759 Moose Trail', 'Prime'),
(8, 8, 8, '2022-08-18', '4:43:25', '78 La Follette Circle', '5 Lillian Park', 'Mini'),
(9, 9, 9, '2022-11-11', '7:10:54', '00 Vahlen Alley', '510 Cascade Park', 'Auto'),
(10, 10, 10, '2022-09-16', '22:25:20', '31797 Arkansas Court', '66753 Stone Corner Road', 'Auto'),
(11, 11, 11, '2022-10-10', '16:19:26', '636 Valley Edge Crossing', '464 Melody Parkway', 'Mini'),
(12, 12, 12, '2022-04-12', '13:50:47', '4109 Rigney Hill', '7004 Hazelcrest Junction', 'Sedan'),
(13, 13, 13, '2022-11-04', '3:25:59', '5825 David Pass', '00089 Myrtle Circle', 'Sedan'),
(14, 14, 14, '2022-12-17', '23:25:16', '43094 Arizona Circle', '16 Hauk Trail', 'Auto'),
(15, 15, 15, '2023-01-12', '3:55:06', '942 Green Ridge Terrace', '1 Oriole Trail', 'XUV'),
(16, 16, 16, '2022-05-10', '20:45:00', '509 Larry Point', '2 Londonderry Pass', 'Auto'),
(17, 17, 17, '2022-03-20', '5:13:29', '0972 Eastwood Circle', '97294 3rd Junction', 'Prime'),
(18, 18, 18, '2022-01-03', '4:35:38', '82395 Muir Road', '712 Summer Ridge Crossing', 'Auto'),
(19, 19, 19, '2022-05-22', '22:44:58', '6079 Meadow Ridge Avenue', '6 Old Gate Park', 'Sedan'),
(20, 20, 20, '2022-07-03', '19:42:12', '1 Northfield Alley', '11 3rd Alley', 'XUV'),
(21, 21, 21, '2022-01-13', '16:17:43', '604 Drewry Place', '69805 Mcbride Plaza', 'Auto'),
(22, 22, 22, '2022-06-01', '23:09:36', '8 Swallow Point', '6 Lakeland Drive', 'Mini'),
(23, 23, 23, '2022-12-02', '12:32:10', '025 Hansons Alley', '2617 East Center', 'XUV'),
(24, 24, 24, '2022-08-24', '0:36:51', '29185 Scoville Way', '0996 Sauthoff Park', 'Prime'),
(25, 25, 25, '2022-01-02', '18:21:50', '61 Boyd Road', '3659 Starling Court', 'Mini'),
(26, 26, 26, '2022-12-26', '10:39:06', '56789 Waubesa Lane', '9648 Union Terrace', 'Prime'),
(27, 27, 27, '2022-09-08', '4:53:46', '1279 Novick Court', '4651 Lake View Center', 'Sedan'),
(28, 28, 28, '2022-05-06', '15:03:57', '06794 Center Center', '8312 Ronald Regan Road', 'Mini'),
(29, 29, 29, '2023-01-21', '5:12:18', '5115 John Wall Park', '268 Westerfield Circle', 'Auto'),
(30, 30, 30, '2022-05-02', '16:35:04', '2304 Kings Avenue', '9 Morrow Center', 'Auto'),
(31, 31, 31, '2022-09-15', '3:27:01', '7 Stoughton Hill', '9 2nd Road', 'Mini'),
(32, 32, 32, '2022-03-04', '0:27:32', '8175 Jackson Pass', '6 Hansons Avenue', 'XUV'),
(33, 33, 33, '2022-02-11', '18:02:27', '937 Weeping Birch Terrace', '92 Ronald Regan Plaza', 'Prime'),
(34, 34, 34, '2022-02-09', '15:29:16', '5318 Bellgrove Place', '639 Lunder Avenue', 'Prime'),
(35, 35, 35, '2022-12-04', '12:12:10', '9 Sundown Street', '5 Gateway Court', 'XUV'),
(36, 36, 36, '2022-06-05', '15:17:10', '00 Utah Court', '1161 Maple Circle', 'XUV'),
(37, 37, 37, '2022-04-07', '22:10:03', '8594 Carberry Trail', '7 Kenwood Place', 'Prime'),
(38, 38, 38, '2023-01-14', '9:53:34', '4907 Grasskamp Street', '10 Bay Hill', 'Sedan'),
(39, 39, 39, '2022-03-07', '0:15:59', '500 Eagle Crest Street', '2 Ludington Plaza', 'XUV'),
(40, 40, 40, '2022-09-24', '7:14:47', '74 Butterfield Crossing', '04813 Basil Plaza', 'Prime'),
(41, 41, 41, '2022-09-24', '19:17:02', '82 Comanche Parkway', '4 Bonner Street', 'Sedan'),
(42, 42, 42, '2022-03-14', '16:57:30', '1303 Utah Park', '390 Mifflin Park', 'Sedan'),
(43, 43, 43, '2022-11-19', '18:51:27', '794 Scott Place', '42850 Riverside Avenue', 'Prime'),
(44, 44, 44, '2022-05-26', '3:58:20', '944 Oneill Park', '968 Forest Dale Crossing', 'Auto'),
(45, 45, 45, '2022-02-07', '6:46:09', '83968 Commercial Terrace', '16032 Sloan Parkway', 'Prime'),
(46, 46, 46, '2022-08-12', '9:52:26', '159 Myrtle Road', '57 Butterfield Avenue', 'Mini'),
(47, 47, 47, '2022-04-04', '6:33:03', '4 Northland Junction', '43 Beilfuss Point', 'XUV'),
(48, 48, 48, '2022-07-13', '10:34:52', '4 Saint Paul Circle', '5344 Magdeline Parkway', 'XUV'),
(49, 49, 49, '2022-12-28', '14:34:39', '0 Ramsey Terrace', '042 Surrey Court', 'Auto'),
(50, 50, 50, '2022-04-22', '13:45:36', '6419 Grover Drive', '95272 Thompson Parkway', 'Mini'),
(51, 51, 51, '2023-01-12', '20:56:26', '890 Veith Way', '9855 Kenwood Parkway', 'Mini'),
(52, 52, 52, '2022-03-25', '20:29:40', '1393 Fair Oaks Point', '19540 Basil Center', 'Sedan'),
(53, 53, 53, '2022-06-19', '18:28:39', '6 Golf Course Drive', '20436 Golden Leaf Plaza', 'XUV'),
(54, 54, 54, '2022-04-02', '6:55:18', '3 Evergreen Alley', '567 Forest Circle', 'Sedan'),
(55, 55, 55, '2022-11-14', '10:34:59', '45 Clyde Gallagher Lane', '0 Autumn Leaf Place', 'Prime'),
(56, 56, 56, '2023-01-01', '23:57:33', '13 Monument Crossing', '88 Wayridge Way', 'XUV'),
(57, 57, 57, '2022-08-20', '8:50:18', '5 Blue Bill Park Lane', '74349 Blackbird Terrace', 'XUV'),
(58, 58, 58, '2022-02-28', '14:52:59', '4 Gerald Drive', '462 Carpenter Court', 'Prime'),
(59, 59, 59, '2023-01-15', '1:28:30', '17815 Sunfield Alley', '744 Dapin Street', 'Auto'),
(60, 60, 60, '2022-05-15', '21:41:30', '68499 Lawn Alley', '958 Morrow Place', 'Prime'),
(61, 61, 61, '2022-05-16', '21:48:50', '63140 Rutledge Hill', '66 Thompson Parkway', 'XUV'),
(62, 62, 62, '2023-01-05', '5:31:40', '1650 Schlimgen Avenue', '296 Hanover Way', 'Prime'),
(63, 63, 63, '2022-11-10', '15:35:06', '9765 Golf View Pass', '2 Mifflin Street', 'XUV'),
(64, 64, 64, '2022-04-30', '5:38:14', '8301 Arrowood Center', '629 International Point', 'Auto'),
(65, 65, 65, '2022-10-28', '11:48:10', '04 Magdeline Avenue', '4279 Morningstar Street', 'XUV'),
(66, 66, 66, '2022-09-18', '13:30:53', '7 Stoughton Place', '11154 Anhalt Pass', 'Sedan'),
(67, 67, 67, '2022-12-31', '0:47:22', '6227 Rowland Court', '5926 Maryland Terrace', 'Sedan'),
(68, 68, 68, '2022-04-12', '0:04:03', '0 Kingsford Trail', '391 Kedzie Pass', 'Prime'),
(69, 69, 69, '2022-10-21', '9:45:38', '9344 Arapahoe Crossing', '258 Eastwood Circle', 'Auto'),
(70, 70, 70, '2022-04-20', '18:26:07', '710 Butternut Parkway', '49 Laurel Drive', 'Prime'),
(71, 71, 71, '2022-03-26', '9:54:51', '83 Badeau Pass', '2312 Bobwhite Drive', 'Sedan'),
(72, 72, 72, '2022-09-15', '12:32:09', '38241 Kipling Avenue', '2 Surrey Point', 'Mini'),
(73, 73, 73, '2022-02-10', '21:43:35', '588 Waywood Junction', '6005 Kenwood Pass', 'Auto'),
(74, 74, 74, '2022-10-18', '17:08:00', '971 Everett Way', '89262 Lakeland Point', 'Sedan'),
(75, 75, 75, '2022-09-26', '13:39:02', '328 Hoepker Trail', '9 Dakota Center', 'Prime'),
(76, 76, 76, '2022-07-07', '10:24:21', '84 Muir Plaza', '35 Vera Park', 'Auto'),
(77, 77, 77, '2023-01-28', '8:57:19', '6054 Coleman Hill', '83 Bluejay Circle', 'Prime'),
(78, 78, 78, '2023-02-08', '6:15:35', '7 Mariners Cove Drive', '092 Anniversary Park', 'Mini'),
(79, 79, 79, '2022-01-18', '17:14:14', '4529 Novick Way', '392 Buhler Alley', 'Prime'),
(80, 80, 80, '2022-02-12', '9:48:32', '80 Autumn Leaf Lane', '2 Bartillon Trail', 'Mini'),
(81, 81, 81, '2022-03-09', '22:17:20', '0 Almo Circle', '35 Towne Junction', 'XUV'),
(82, 82, 82, '2022-03-19', '21:23:20', '73 Dunning Lane', '29 South Lane', 'Sedan'),
(83, 83, 83, '2022-08-28', '5:02:33', '6 Manitowish Court', '73775 Onsgard Alley', 'Prime'),
(84, 84, 84, '2022-07-01', '6:04:25', '7384 Forster Lane', '7 Becker Hill', 'XUV'),
(85, 85, 85, '2022-01-15', '20:02:07', '59 Bluestem Hill', '5 Jana Circle', 'Auto'),
(86, 86, 86, '2022-02-20', '18:41:28', '1395 6th Crossing', '401 Arizona Hill', 'Auto'),
(87, 87, 87, '2022-02-24', '10:28:38', '1 Springview Pass', '43 Moland Crossing', 'Mini'),
(88, 88, 88, '2022-11-17', '0:13:10', '3889 Starling Circle', '6964 Ridgeway Crossing', 'Mini'),
(89, 89, 89, '2022-11-02', '17:31:21', '1753 Morrow Terrace', '9878 Rusk Place', 'Prime'),
(90, 90, 90, '2022-05-20', '5:49:16', '29 Fairfield Plaza', '0883 Talmadge Circle', 'Prime'),
(91, 91, 91, '2023-01-11', '10:28:02', '351 Wayridge Alley', '86795 Goodland Terrace', 'Prime'),
(92, 92, 92, '2022-02-11', '11:16:30', '8882 Rieder Park', '629 Alpine Crossing', 'Auto'),
(93, 93, 93, '2022-11-10', '12:15:01', '3617 Transport Lane', '032 High Crossing Point', 'Mini'),
(94, 94, 94, '2022-02-23', '5:23:34', '92386 Del Sol Terrace', '415 Truax Plaza', 'Sedan'),
(95, 95, 95, '2022-08-05', '5:20:35', '21522 Lien Court', '83 Novick Drive', 'Mini'),
(96, 96, 96, '2022-04-06', '21:57:24', '1 Eliot Crossing', '87 Westridge Junction', 'Auto'),
(97, 97, 97, '2022-12-04', '21:34:30', '49 Gale Plaza', '1 Fisk Avenue', 'Sedan'),
(98, 98, 98, '2022-09-02', '17:22:44', '32802 Corry Street', '1376 Texas Lane', 'XUV'),
(99, 99, 99, '2022-10-21', '2:38:21', '787 Lunder Plaza', '41828 Upham Lane', 'Prime'),
(100, 100, 100, '2022-12-27', '17:32:24', '2 8th Court', '1742 Waxwing Plaza', 'Sedan');



CREATE TABLE IF NOT EXISTS Trip(
DriverID INT NOT NULL,
RiderID INT NOT NULL,
TripID INT NOT NULL,
Fare FLOAT(23),
TripRating FLOAT(23),
PRIMARY KEY (DriverID, RiderID, TripID),
FOREIGN KEY (DriverID) REFERENCES Driver(DriverID),
FOREIGN KEY (RiderID) REFERENCES Passenger(RiderID)
);

INSERT INTO Trip (DriverID, RiderID, TripID, Fare, TripRating) VALUES

(1, 1, 1, 267, 10),
(1, 2, 2, 221, 9.9),
(1, 3, 3, 469, 9.8),
(3, 4, 4, 608, 9.9),
(3, 5, 5, 403, 9.8),
(5, 6, 6, 288, 9.8),
(5, 7, 7, 585, 9.8),
(5, 8, 8, 159, 9.8),
(9, 9, 9, 739, 7.1),
(10, 10, 10, 159, 9.1),
(11, 11, 11, 960, 4.0),
(12, 12, 12, 270, 7.6),
(13, 13, 13, 921, 4.4),
(14, 14, 14, 965, 3.8),
(15, 15, 15, 797, 1.8),
(16, 16, 16, 305, 8.5),
(17, 17, 17, 179, 5.4),
(18, 18, 18, 188, 3.1),
(19, 19, 19, 63, 9.8),
(20, 20, 20, 366, 4.8),
(21, 21, 21, 663, 9.9),
(22, 22, 22, 335, 3.1),
(23, 23, 23, 337, 4.0),
(24, 24, 24, 72, 7.4),
(25, 25, 25, 754, 10.0),
(26, 26, 26, 582, 1.0),
(27, 27, 27, 709, 4.6),
(28, 28, 28, 354, 8.8),
(29, 29, 29, 866, 7.0),
(30, 30, 30, 118, 3.3),
(31, 31, 31, 289, 3.7),
(32, 32, 32, 685, 3.5),
(33, 33, 33, 198, 7.9),
(34, 34, 34, 43, 1.1),
(35, 35, 35, 50, 5.0),
(36, 36, 36, 389, 3.6),
(37, 37, 37, 717, 1.0),
(38, 38, 38, 168, 3.1),
(39, 39, 39, 814, 2.2),
(40, 40, 40, 296, 3.5),
(41, 41, 41, 565, 5.2),
(42, 42, 42, 229, 6.0),
(43, 43, 43, 342, 7.3),
(44, 44, 44, 577, 4.2),
(45, 45, 45, 621, 2.9),
(46, 46, 46, 673, 4.6),
(47, 47, 47, 986, 2.8),
(48, 48, 48, 655, 6.4),
(49, 49, 49, 38, 7.8),
(50, 50, 50, 670, 6.8),
(51, 51, 51, 378, 8.0),
(52, 52, 52, 59, 9.9),
(53, 53, 53, 216, 5.4),
(54, 54, 54, 59, 2.2),
(55, 55, 55, 371, 3.7),
(56, 56, 56, 457, 7.1),
(57, 57, 57, 583, 7.3),
(58, 58, 58, 142, 2.5),
(59, 59, 59, 796, 5.2),
(60, 60, 60, 456, 3.4),
(61, 61, 61, 804, 7.4),
(62, 62, 62, 980, 6.8),
(63, 63, 63, 763, 6.6),
(64, 64, 64, 900, 3.3),
(65, 65, 65, 906, 2.1),
(66, 66, 66, 227, 7.2),
(67, 67, 67, 84, 5.2),
(68, 68, 68, 97, 7.7),
(69, 69, 69, 357, 6.7),
(70, 70, 70, 658, 5.5),
(71, 71, 71, 611, 5.4),
(72, 72, 72, 212, 1.7),
(73, 73, 73, 145, 7.2),
(74, 74, 74, 770, 9.7),
(75, 75, 75, 680, 5.5),
(76, 76, 76, 182, 8.5),
(77, 77, 77, 30, 3.7),
(78, 78, 78, 407, 1.3),
(79, 79, 79, 904, 3.9),
(80, 80, 80, 220, 1.9),
(81, 81, 81, 874, 3.6),
(82, 82, 82, 523, 10.0),
(83, 83, 83, 803, 1.1),
(84, 84, 84, 52, 5.4),
(85, 85, 85, 942, 6.6),
(86, 86, 86, 400, 7.9),
(87, 87, 87, 399, 4.6),
(88, 88, 88, 318, 8.8),
(89, 89, 89, 387, 5.1),
(90, 90, 90, 371, 9.0),
(91, 91, 91, 285, 6.2),
(92, 92, 92, 367, 8.7),
(93, 93, 93, 451, 5.6),
(94, 94, 94, 545, 5.8),
(95, 95, 95, 630, 8.5),
(96, 96, 96, 252, 8.5),
(97, 97, 97, 136, 3.5),
(98, 98, 98, 456, 8.5),
(99, 99, 99, 250, 3.6),
(100, 100, 100, 447, 2.6);



CREATE TABLE IF NOT EXISTS Payment(
RiderID INT NOT NULL,
TransactionID INT NOT NULL,
PaymentDate DATE,
Amount FLOAT(23),
PRIMARY KEY (RiderID, TransactionID),
FOREIGN KEY (RiderID) REFERENCES Passenger(RiderID)
);

INSERT INTO Payment (RiderID, TransactionID, PaymentDate, Amount) VALUES

(1, 1, '2022-11-14', 510.2),
(2, 2, '2022-01-22', 86.6),
(3, 3, '2022-10-24', 715.0),
(4, 4, '2022-10-02', 745.1),
(5, 5, '2022-02-10', 291.4),
(6, 6, '2022-09-01', 176.1),
(7, 7, '2022-07-18', 578.7),
(8, 8, '2022-05-01', 32.8),
(9, 9, '2022-09-12', 659.0),
(10, 10, '2022-02-15', 361.3),
(11, 11, '2022-12-02', 719.7),
(12, 12, '2022-12-16', 590.7),
(13, 13, '2022-05-12', 442.5),
(14, 14, '2022-10-13', 506.5),
(15, 15, '2022-06-13', 510.4),
(16, 16, '2022-07-04', 660.1),
(17, 17, '2022-07-15', 385.8),
(18, 18, '2022-01-25', 834.9),
(19, 19, '2022-12-24', 188.8),
(20, 20, '2022-12-06', 809.7),
(21, 21, '2022-09-10', 464.8),
(22, 22, '2022-06-05', 105.4),
(23, 23, '2022-05-16', 97.7),
(24, 24, '2022-10-31', 643.5),
(25, 25, '2022-06-29', 812.5),
(26, 26, '2022-11-07', 851.2),
(27, 27, '2022-10-16', 502.1),
(28, 28, '2022-01-29', 821.5),
(29, 29, '2022-12-19', 120.7),
(30, 30, '2022-02-24', 293.8),
(31, 31, '2022-12-23', 205.4),
(32, 32, '2022-06-24', 588.3),
(33, 33, '2022-12-29', 383.6),
(34, 34, '2022-07-01', 176.8),
(35, 35, '2022-12-26', 640.3),
(36, 36, '2022-07-11', 833.5),
(37, 37, '2022-04-06', 560.2),
(38, 38, '2022-10-31', 332.4),
(39, 39, '2022-09-12', 721.6),
(40, 40, '2022-07-15', 767.7),
(41, 41, '2022-07-18', 376.5),
(42, 42, '2022-02-09', 443.4),
(43, 43, '2022-07-13', 463.5),
(44, 44, '2022-08-14', 711.0),
(45, 45, '2022-01-31', 181.8),
(46, 46, '2022-02-03', 438.2),
(47, 47, '2022-07-14', 565.1),
(48, 48, '2022-02-23', 579.8),
(49, 49, '2022-04-28', 346.0),
(50, 50, '2022-09-02', 747.9),
(51, 51, '2022-02-10', 682.2),
(52, 52, '2022-03-22', 649.7),
(53, 53, '2022-01-03', 31.4),
(54, 54, '2022-04-29', 178.1),
(55, 55, '2022-09-10', 354.4),
(56, 56, '2022-07-17', 533.1),
(57, 57, '2022-04-04', 647.4),
(58, 58, '2022-05-13', 301.4),
(59, 59, '2022-09-26', 397.5),
(60, 60, '2022-07-22', 119.6),
(61, 61, '2022-01-01', 628.8),
(62, 62, '2022-04-13', 489.7),
(63, 63, '2022-06-22', 152.8),
(64, 64, '2022-12-26', 638.8),
(65, 65, '2022-09-02', 637.8),
(66, 66, '2022-06-27', 630.3),
(67, 67, '2022-02-23', 241.4),
(68, 68, '2022-06-27', 74.2),
(69, 69, '2022-11-24', 575.3),
(70, 70, '2022-04-06', 456.7),
(71, 71, '2022-10-16', 646.3),
(72, 72, '2022-02-13', 643.0),
(73, 73, '2022-11-17', 363.2),
(74, 74, '2022-07-02', 393.8),
(75, 75, '2022-01-25', 169.6),
(76, 76, '2022-10-31', 733.1),
(77, 77, '2022-10-14', 817.9),
(78, 78, '2022-07-07', 292.7),
(79, 79, '2022-11-18', 354.9),
(80, 80, '2022-01-21', 267.9),
(81, 81, '2022-12-01', 457.8),
(82, 82, '2022-11-14', 607.4),
(83, 83, '2022-07-26', 146.6),
(84, 84, '2022-10-29', 785.8),
(85, 85, '2022-09-24', 653.5),
(86, 86, '2022-02-27', 429.3),
(87, 87, '2022-05-21', 523.8),
(88, 88, '2022-04-14', 295.1),
(89, 89, '2022-05-15', 238.0),
(90, 90, '2022-06-23', 699.5),
(91, 91, '2022-04-06', 399.3),
(92, 92, '2022-09-05', 44.9),
(93, 93, '2022-06-05', 204.2),
(94, 94, '2022-11-20', 516.8),
(95, 95, '2022-11-04', 34.0),
(96, 96, '2022-12-18', 59.2),
(97, 97, '2022-05-21', 677.2),
(98, 98, '2022-03-03', 481.6),
(99, 99, '2022-10-02', 137.7),
(100, 100, '2022-07-15', 435.1);


CREATE TABLE IF NOT EXISTS Account(
RiderID INT NOT NULL,
AccountNumber INT ,
Balance FLOAT(23),
PRIMARY KEY (RiderID),
FOREIGN KEY (RiderID) REFERENCES Passenger(RiderID)
);




INSERT INTO Account (RiderID, AccountNumber, Balance) VALUES 

(1, 1, 656.7),
(2, 2, 983.0),
(3, 3, 407.0),
(4, 4, 879.5),
(5, 5, 350.2),
(6, 6, 126.7),
(7, 7, 661.2),
(8, 8, 229.5),
(9, 9, 444.3),
(10, 10, 348.8),
(11, 11, 485.9),
(12, 12, 956.1),
(13, 13, 72.9),
(14, 14, 630.8),
(15, 15, 398.2),
(16, 16, 381.8),
(17, 17, 964.1),
(18, 18, 246.0),
(19, 19, 597.0),
(20, 20, 49.9),
(21, 21, 257.4),
(22, 22, 789.9),
(23, 23, 641.6),
(24, 24, 526.1),
(25, 25, 143.1),
(26, 26, 683.2),
(27, 27, 20.6),
(28, 28, 287.6),
(29, 29, 101.6),
(30, 30, 483.1),
(31, 31, 433.7),
(32, 32, 26.9),
(33, 33, 219.7),
(34, 34, 178.6),
(35, 35, 851.6),
(36, 36, 469.4),
(37, 37, 104.9),
(38, 38, 216.6),
(39, 39, 752.6),
(40, 40, 390.7),
(41, 41, 832.1),
(42, 42, 334.3),
(43, 43, 898.9),
(44, 44, 324.9),
(45, 45, 852.0),
(46, 46, 842.7),
(47, 47, 559.7),
(48, 48, 65.1),
(49, 49, 204.3),
(50, 50, 185.5),
(51, 51, 291.5),
(52, 52, 139.4),
(53, 53, 43.0),
(54, 54, 698.1),
(55, 55, 776.2),
(56, 56, 162.8),
(57, 57, 164.1),
(58, 58, 455.6),
(59, 59, 514.7),
(60, 60, 635.8),
(61, 61, 603.2),
(62, 62, 990.7),
(63, 63, 504.8),
(64, 64, 928.0),
(65, 65, 120.1),
(66, 66, 710.6),
(67, 67, 877.1),
(68, 68, 394.0),
(69, 69, 723.2),
(70, 70, 772.3),
(71, 71, 523.7),
(72, 72, 5.1),
(73, 73, 933.9),
(74, 74, 815.9),
(75, 75, 44.6),
(76, 76, 731.7),
(77, 77, 407.1),
(78, 78, 747.8),
(79, 79, 950.2),
(80, 80, 122.3),
(81, 81, 524.1),
(82, 82, 477.3),
(83, 83, 700.6),
(84, 84, 242.0),
(85, 85, 457.3),
(86, 86, 334.2),
(87, 87, 861.3),
(88, 88, 865.4),
(89, 89, 678.9),
(90, 90, 641.0),
(91, 91, 712.1),
(92, 92, 779.7),
(93, 93, 398.8),
(94, 94, 420.1),
(95, 95, 439.4),
(96, 96, 485.9),
(97, 97, 599.3),
(98, 98, 59.0),
(99, 99, 518.3),
(100, 100, 90.7);


CREATE TABLE IF NOT EXISTS PremiumAccount(
AccountNumber INT,
DailyWithdrawl INT,
Discount FLOAT(23),
PRIMARY KEY (AccountNumber),
FOREIGN KEY (AccountNumber) REFERENCES Account(RiderID)
);


INSERT INTO PremiumAccount (AccountNumber, DailyWithdrawl, Discount) VALUES 
(1, 10000, 18),
(2, 10000, 20),
(3, 10000, 22),
(4, 10000, 16),
(5, 10000, 55),
(6, 10000, 33),
(7, 10000, 15),
(8, 10000, 15),
(9, 10000, 15),
(10, 10000, 15),
(11, 10000, 15),
(12, 10000, 15),
(13, 10000, 15),
(14, 10000, 15),
(15, 10000, 15),
(16, 10000, 15),
(17, 10000, 15),
(18, 10000, 15),
(19, 10000, 15),
(20, 10000, 15),
(21, 10000, 15),
(22, 10000, 15),
(23, 10000, 15),
(24, 10000, 15),
(25, 10000, 15),
(26, 10000, 15),
(27, 10000, 15),
(28, 10000, 15),
(29, 10000, 15),
(30, 10000, 15),
(31, 10000, 15),
(32, 10000, 15),
(33, 10000, 15),
(34, 10000, 15),
(35, 10000, 15),
(36, 10000, 15),
(37, 10000, 15),
(38, 10000, 15),
(39, 10000, 15),
(40, 10000, 15),
(41, 10000, 15),
(42, 10000, 15),
(43, 10000, 15),
(44, 10000, 15),
(45, 10000, 15),
(46, 10000, 15),
(47, 10000, 15),
(48, 10000, 15),
(49, 10000, 15),
(50, 10000, 15),
(51, 10000, 15),
(52, 10000, 15),
(53, 10000, 15),
(54, 10000, 15),
(55, 10000, 15),
(56, 10000, 15),
(57, 10000, 15),
(58, 10000, 15),
(59, 10000, 15),
(60, 10000, 15),
(61, 10000, 15),
(62, 10000, 15),
(63, 10000, 15),
(64, 10000, 15),
(65, 10000, 15),
(66, 10000, 15),
(67, 10000, 15),
(68, 10000, 15),
(69, 10000, 15),
(70, 10000, 15),
(71, 10000, 15),
(72, 10000, 15),
(73, 10000, 15),
(74, 10000, 15),
(75, 10000, 15),
(76, 10000, 15),
(77, 10000, 15),
(78, 10000, 15),
(79, 10000, 15),
(80, 10000, 15),
(81, 10000, 15),
(82, 10000, 15),
(83, 10000, 15),
(84, 10000, 15),
(85, 10000, 15),
(86, 10000, 15),
(87, 10000, 15),
(88, 10000, 15),
(89, 10000, 15),
(90, 10000, 15),
(91, 10000, 15),
(92, 10000, 15),
(93, 10000, 15),
(94, 10000, 15),
(95, 10000, 15),
(96, 10000, 15),
(97, 10000, 15),
(98, 10000, 15),
(99, 10000, 15),
(100, 10000, 15);



CREATE TABLE IF NOT EXISTS NormalAccount(
AccountNumber INT NOT NULL,
DailyWithdrawl INT,
Discount FLOAT(23),
PRIMARY KEY (AccountNumber),
FOREIGN KEY (AccountNumber) REFERENCES Account(RiderID)
);


INSERT INTO NormalAccount (AccountNumber, DailyWithdrawl, Discount) VALUES 

(1, 5000, 10),
(2, 5000, 10),
(3, 5000, 10),
(4, 5000, 10),
(5, 5000, 10),
(6, 5000, 10),
(7, 5000, 10),
(8, 5000, 10),
(9, 5000, 10),
(10, 5000, 10),
(11, 5000, 10),
(12, 5000, 10),
(13, 5000, 10),
(14, 5000, 10),
(15, 5000, 10),
(16, 5000, 10),
(17, 5000, 10),
(18, 5000, 10),
(19, 5000, 10),
(20, 5000, 10),
(21, 5000, 10),
(22, 5000, 10),
(23, 5000, 10),
(24, 5000, 10),
(25, 5000, 10),
(26, 5000, 10),
(27, 5000, 10),
(28, 5000, 10),
(29, 5000, 10),
(30, 5000, 10),
(31, 5000, 10),
(32, 5000, 10),
(33, 5000, 10),
(34, 5000, 10),
(35, 5000, 10),
(36, 5000, 10),
(37, 5000, 10),
(38, 5000, 10),
(39, 5000, 10),
(40, 5000, 10),
(41, 5000, 10),
(42, 5000, 10),
(43, 5000, 10),
(44, 5000, 10),
(45, 5000, 10),
(46, 5000, 10),
(47, 5000, 10),
(48, 5000, 10),
(49, 5000, 10),
(50, 5000, 10),
(51, 5000, 10),
(52, 5000, 10),
(53, 5000, 10),
(54, 5000, 10),
(55, 5000, 10),
(56, 5000, 10),
(57, 5000, 10),
(58, 5000, 10),
(59, 5000, 10),
(60, 5000, 10),
(61, 5000, 10),
(62, 5000, 10),
(63, 5000, 10),
(64, 5000, 10),
(65, 5000, 10),
(66, 5000, 10),
(67, 5000, 10),
(68, 5000, 10),
(69, 5000, 10),
(70, 5000, 10),
(71, 5000, 10),
(72, 5000, 10),
(73, 5000, 10),
(74, 5000, 10),
(75, 5000, 10),
(76, 5000, 10),
(77, 5000, 10),
(78, 5000, 10),
(79, 5000, 10),
(80, 5000, 10),
(81, 5000, 10),
(82, 5000, 10),
(83, 5000, 10),
(84, 5000, 10),
(85, 5000, 10),
(86, 5000, 10),
(87, 5000, 10),
(88, 5000, 10),
(89, 5000, 10),
(90, 5000, 10),
(91, 5000, 10),
(92, 5000, 10),
(93, 5000, 10),
(94, 5000, 10),
(95, 5000, 10),
(96, 5000, 10),
(97, 5000, 10),
(98, 5000, 10),
(99, 5000, 10),
(100, 5000, 10);

/*1 Riders who have spent more than 700 on rides in the year 2022. */
SELECT p.RiderID, p.FirstName, p.LastName, SUM(py.Amount) as TotalSpent
FROM Passenger p 
INNER JOIN Payment py ON p.RiderID = py.RiderID
INNER JOIN Trip t ON p.RiderID = t.RiderID AND YEAR(py.PaymentDate) = 2022 AND t.TripID = py.TransactionID
GROUP BY p.RiderID 
HAVING SUM(py.Amount) > 700;

/* 2 Top 4 drivers with the highest average rating, along with their first and last names and total number of trips they have completed.
 Sort the result by the number of trips in descending order.*/
SELECT d.FirstName, d.LastName, COUNT(t.TripID) AS TotalTrips, AVG(d.Rating) AS AvgRating
FROM Driver d 
INNER JOIN Trip t ON d.DriverID = t.DriverID 
GROUP BY d.DriverID 
ORDER BY AvgRating DESC, TotalTrips DESC 
LIMIT 4;

/*3 Retrieving the first name, last name, and email of all drivers who have a rating greater than or equal to 4.5.  */

SELECT Driver.FirstName, Driver.LastName, DriverEmail.Email 
FROM Driver
INNER JOIN DriverEmail ON Driver.DriverID = DriverEmail.DriverID
WHERE Driver.Rating >= 4.5;

/*4 List all drivers who have completed at least 2 trips and have an average rating of 4 or higher.*/
SELECT d.DriverID, d.FirstName, d.LastName, AVG(t.TripRating) as AvgRating, COUNT(*) as TotalTrips 
FROM Driver d 
INNER JOIN Trip t ON d.DriverID = t.DriverID 
GROUP BY d.DriverID 
HAVING AVG(t.TripRating) >= 4 AND COUNT(*) >= 2;

/*5  Retrieve the first name, last name, and total number of completed trips for each driver.*/
SELECT Driver.FirstName, Driver.LastName, COUNT(*) AS NumTrips
FROM Driver
INNER JOIN Trip ON Driver.DriverID = Trip.DriverID
GROUP BY Driver.FirstName, Driver.LastName;

/*6 Count the number of passengers who have taken a ride with a specific driver.*/
SELECT COUNT(DISTINCT RiderID)
FROM Trip
WHERE DriverID = 1;

/*7 Calculate the total amount of money earned by a specific driver.*/
SELECT SUM(Fare)
FROM Trip
WHERE DriverID = 1;

/*8 List all riders who have made a payment on a specific date.*/
SELECT Passenger.RiderID, Passenger.FirstName, Passenger.LastName, Payment.Amount
FROM Passenger
INNER JOIN Payment ON Passenger.RiderID = Payment.RiderID
WHERE Payment.PaymentDate = '2022-04-06';

/*9 List all premium account holders with their account balance and discount.*/
SELECT Passenger.RiderID, Account.Balance, PremiumAccount.Discount
FROM Passenger
INNER JOIN Account ON Passenger.RiderID = Account.RiderID
INNER JOIN PremiumAccount ON Account.AccountNumber = PremiumAccount.AccountNumber;


/*10 Update the location for a specific driver.*/
UPDATE Driver
SET Location = 'Okhla'
WHERE DriverID = 1;



/*11 Update the fare for a specific trip*/
UPDATE Trip SET Fare = 20.50 WHERE DriverID = 1 AND RiderID = 2 AND TripID = 3;


/*12 Calculate the average rating for a specific driver. */
SELECT AVG(Rating)
FROM Driver
WHERE DriverID = 1;


/*13 List all trip requests made by a specific rider including the driver ID, request ID, date, time, start and drop locations, and car type. */
SELECT *
FROM TripRequest
WHERE RiderID = 1;


/*trigger */


/*1 */
DELIMITER $$
CREATE TRIGGER before_debit_trigger 
BEFORE UPDATE ON Account
FOR EACH ROW
BEGIN
    IF OLD.Balance - NEW.Balance < 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Insufficient balance';
    END IF;
END$$
DELIMITER ;

update account set balance = 200 where riderid = 1
select * from account

/*2 */
DELIMITER $$
CREATE TRIGGER adjust_ratingsa
BEFORE INSERT ON Trip
FOR EACH ROW
BEGIN
  IF NEW.TripRating < 0 THEN
    SET NEW.TripRating = 0;
  END IF;
END$$

CREATE TRIGGER adjust_ratings_update
BEFORE UPDATE ON Trip
FOR EACH ROW
BEGIN
  IF NEW.TripRating < 0 THEN
    SET NEW.TripRating = 0;
  END IF;
END$$
DELIMITER ;

update trip set triprating = -3 where riderid = 1

select * from trip











/*OLAP query*/



/*1 Total number of riders per account type per state:*/

SELECT Passenger.State, CASE 
    WHEN EXISTS(SELECT * FROM PremiumAccount WHERE AccountNumber = Account.RiderID) THEN 'Premium' 
    ELSE 'Normal'
  END AS AccountType, COUNT(*) AS Num_Riders
FROM Passenger
JOIN Account ON Passenger.RiderID = Account.RiderID
GROUP BY Passenger.State, AccountType WITH ROLLUP;

/*2 total number of trips and total fare earned by each driver, grouped by their first and last names*/
SELECT
    d.FirstName AS DriverFirstName,
    d.LastName AS DriverLastName,
    COUNT(t.TripID) AS TotalTrips,
    SUM(ABS(t.Fare)) AS TotalFare
FROM
    Driver d
    JOIN Trip t ON d.DriverID = t.DriverID
    JOIN Passenger p ON t.RiderID = p.RiderID
    JOIN Admin a ON a.AdminID = p.AdminID
GROUP BY
    d.FirstName,
    d.LastName
WITH ROLLUP;

/* 3 total number of trips and average rating for each driver, as well as the grand total for all drivers*/
SELECT
    d.FirstName,
    d.LastName,
    COUNT(t.TripID) AS TotalTrips,
    AVG(d.Rating) AS AvgRating
FROM
    Driver d
    JOIN Trip t ON d.DriverID = t.DriverID
GROUP BY
    d.FirstName,
    d.LastName
WITH ROLLUP
HAVING
    GROUPING(d.FirstName) = 0 AND
    GROUPING(d.LastName) = 0
ORDER BY
    AVG(d.Rating) DESC,
    TotalTrips DESC
LIMIT 4;


/*4 List all riders who have made a payment on a specific date */
SELECT Passenger.RiderID, Passenger.FirstName, Passenger.LastName, 
       Payment.PaymentDate, SUM(Payment.Amount) AS TotalAmount
FROM Passenger
INNER JOIN Payment ON Passenger.RiderID = Payment.RiderID
GROUP BY ROLLUP(Passenger.RiderID, Passenger.FirstName, Passenger.LastName, Payment.PaymentDate)
HAVING Payment.PaymentDate = '2022-04-06';


/*5 Total number of drivers per location*/
SELECT Location, COUNT(*) AS Num_Drivers
FROM Driver
GROUP BY Location WITH ROLLUP;





































