
/* As one of my favorite hobbies is watching football matches especially of my favorite team SC Freiburg, I noticed that over the last few years quite a lot of attented matches has been accumulated. <br>
As there comes a lot of data together and with the fact how much I love statistics, I decided to come up with a brief data exploration with SQL about my attended matches. 
*/

drop table games;
drop table scfgames;

# First I created the table of my attended matches

CREATE TABLE games (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    date TIMESTAMP,
    stadium VARCHAR(255) NOT NULL,
    home_team VARCHAR(255) NOT NULL,
    away_team VARCHAR(255) NOT NULL,
    home_score INT,
    away_score INT,
    competition VARCHAR(255) NOT NULL
);

INSERT INTO games (date,stadium,home_team,away_team,home_score,away_score,competition) VALUES 
(20210925,"Stadion Dyskobolii","Warta Poznań","Zagłębie Lubin",0,2,"Ekstraklasa"),
(20210917,"INEA Stadion","Lech Poznań","Wisła Kraków",5,0,"Ekstraklasa"),
(20210825,"Dreisamstadion","SC Freiburg II","Würzburger Kickers",1,0,"3. Liga"),
(20210726,"Dreisamstadion","SC Freiburg II","SV Wehen Wiesbaden",0,0,"3. Liga"),
(20191214,"Olympiastadion (Berlin)","Hertha BSC","SC Freiburg",1,0,"Bundesliga"),
(20191019,"Stadion An der Alten Försterei","1. FC Union Berlin","SC Freiburg",2,0,"Bundesliga"),
(20190810,"MDCC-Arena","1. FC Magdeburg","SC Freiburg",0,1,"DFB-Pokal"),
(20190518,"Dreisamstadion","SC Freiburg","1. FC Nürnberg",5,1,"Bundesliga"),
(20190421,"Dreisamstadion","SC Freiburg","Borussia Dortmund",0,4,"Bundesliga"),
(20190315,"INEA Stadion","Lech Poznań","Górnik Zabrze",0,3,"Ekstraklasa"),
(20190127,"Estadio Libertadores de América","Independiente","Talleres de Córdoba",1,1,"Superliga Argentina"),
(20190120,"Estadio Pedro Bidegain","CA San Lorenzo","CA Huracan",0,0,"Superliga Argentina"),
(20181203,"Estadio Monumental Antonio Vespucio Liberti","River Plate","Gimnasia y Esgrima La Plata",3,1,"Superliga Argentina"),
(20181123,"Estadio Diego Armando Maradona","Argentinos Juniors","Talleres de Córdoba",0,2,"Superliga Argentina"),
(20181104,"Estadio Presidente Perón","Racing Club","Newell's Old Boys",1,0,"Superliga Argentina"),
(20181021,"Estadio Jorge Luis Hirschi","Estudiantes","Club Atletico Tucuman",1,1,"Superliga Argentina"),
(20180925,"Dreisamstadion","SC Freiburg","FC Schalke 04",1,0,"Bundesliga"),
(20180916,"Dreisamstadion","SC Freiburg","VfB Stuttgart",3,3,"Bundesliga"),
(20180825,"Dreisamstadion","SC Freiburg","Eintracht Frankfurt",0,2,"Bundesliga"),
(20180820,"Stadion der Freundschaft (Cottbus)","Energie Cottbus","SC Freiburg",3,5,"DFB-Pokal"),
(20180428,"Dreisamstadion","SC Freiburg","1. FC Köln",3,2,"Bundesliga"),
(20180304,"Dreisamstadion","SC Freiburg","FC Bayern München",0,4,"Bundesliga"),
(20180217,"Dreisamstadion","SC Freiburg","Werder Bremen",1,0,"Bundesliga"),
(20180113,"Deutsche Bank Park","Eintracht Frankfurt","SC Freiburg",1,1,"Bundesliga"),
(20171216,"WWK ARENA","FC Augsburg","SC Freiburg",3,3,"Bundesliga"),
(20171212,"Dreisamstadion","SC Freiburg","Borussia Mönchengladbach",1,0,"Bundesliga"),
(20171210,"Möslestadion","SC Freiburg II","SV Waldhof Mannheim",2,0,"Regionalliga Südwest"),
(20171201,"Dreisamstadion","SC Freiburg","Hamburger SV",0,0,"Bundesliga"),
(20171125,"Dreisamstadion","SC Freiburg","1. FSV Mainz 05",2,1,"Bundesliga"),
(20171025,"Dreisamstadion","SC Freiburg","Dynamo Dresden",3,1,"DFB-Pokal"),
(20171022,"Dreisamstadion","SC Freiburg","Hertha BSC",1,1,"Bundesliga"),
(20171014,"Allianz Arena","FC Bayern München","SC Freiburg",5,0,"Bundesliga"),
(20171001,"Dreisamstadion","SC Freiburg","TSG 1899 Hoffenheim",3,2,"Bundesliga"),
(20170920,"Dreisamstadion","SC Freiburg","Hannover 96",1,1,"Bundesliga"),
(20170917,"BayArena","Bayer 04 Leverkusen","SC Freiburg",4,0,"Bundesliga"),
(20170909,"Dreisamstadion","SC Freiburg","Borussia Dortmund",0,0,"Bundesliga"),
(20170902,"Möslestadion","SC Freiburg II","Kickers Offenbach",5,1,"Regionalliga Südwest"),
(20170823,"Möslestadion","SC Freiburg II","1. FC Saarbrücken",3,1,"Regionalliga Südwest"),
(20170820,"Dreisamstadion","SC Freiburg","Eintracht Frankfurt",0,0,"Bundesliga"),
(20170806,"Stadion Wankdorf","BSC Young Boys","FC Lausanne-Sport",3,0,"Raiffeisen Super League"),
(20170803,"Štadion Stožice","NK Domžale","SC Freiburg",2,0,"UEFA Europa League Qualification"),
(20170727,"Dreisamstadion","SC Freiburg","NK Domžale",1,0,"UEFA Europa League Qualification"),
(20170513,"Dreisamstadion","SC Freiburg","FC Ingolstadt 04",1,1,"Bundesliga"),
(20170507,"Dreisamstadion","SC Freiburg","FC Schalke 04",2,0,"Bundesliga"),
(20170507,"Möslestadion","SC Freiburg II","Sport-Union Neckarsulm",4,0,"Oberliga Baden-Württemberg"),
(20170429,"Stadion am Böllenfalltor","SV Darmstadt 98","SC Freiburg",3,0,"Bundesliga"),
(20170408,"Dreisamstadion","SC Freiburg","1. FSV Mainz 05",1,0,"Bundesliga"),
(20170401,"Dreisamstadion","SC Freiburg","Werder Bremen",2,5,"Bundesliga"),
(20170318,"WWK ARENA","FC Augsburg","SC Freiburg",1,1,"Bundesliga"),
(20170311,"Dreisamstadion","SC Freiburg","TSG 1899 Hoffenheim",1,1,"Bundesliga"),
(20170225,"Dreisamstadion","SC Freiburg","Borussia Dortmund",0,3,"Bundesliga"),
(20170219,"Möslestadion","SC Freiburg II","Bahlinger SC",0,0,"Oberliga Baden-Württemberg"),
(20170212,"Dreisamstadion","SC Freiburg","1. FC Köln",2,1,"Bundesliga"),
(20170204,"Borussia-Park","Borussia Mönchengladbach","SC Freiburg",3,0,"Bundesliga"),
(20170129,"Dreisamstadion","SC Freiburg","Hertha BSC",2,1,"Bundesliga"),
(20170120,"Dreisamstadion","SC Freiburg","FC Bayern München",1,2,"Bundesliga"),
(20161221,"Audi Sportpark","FC Ingolstadt 04","SC Freiburg",1,2,"Bundesliga"),
(20161217,"Veltins-Arena","FC Schalke 04","SC Freiburg",1,1,"Bundesliga"),
(20161210,"Dreisamstadion","SC Freiburg","SV Darmstadt 98",1,0,"Bundesliga"),
(20161127,"Möslestadion","SC Freiburg II","SV Oberachern",5,0,"Oberliga Baden-Württemberg"),
(20161029,"Weserstadion","Werder Bremen","SC Freiburg",1,3,"Bundesliga"),
(20161025,"Dreisamstadion","SC Freiburg","SV Sandhausen",3,4,"DFB-Pokal"),
(20161023,"Möslestadion","SC Freiburg II","SSV Reutlingen",2,0,"Oberliga Baden-Württemberg"),
(20161022,"Dreisamstadion","SC Freiburg","FC Augsburg",2,1,"Bundesliga"),
(20161001,"Dreisamstadion","SC Freiburg","Eintracht Frankfurt",1,0,"Bundesliga"),
(20160923,"Signal Iduna Park","Borussia Dortmund","SC Freiburg",3,1,"Bundesliga"),
(20160920,"Dreisamstadion","SC Freiburg","Hamburger SV",1,0,"Bundesliga"),
(20160820,"Karl-Liebknecht-Stadion","SV Babelsberg 03","SC Freiburg",0,4,"DFB-Pokal"),
(20160810,"St. Jakob Park","FC Basel","BSC Young Boys",3,0,"Raiffeisen Super League"),
(20160807,"Möslestadion","SC Freiburg II","SV Spielberg",2,1,"Oberliga Baden-Württemberg"),
(20160511,"Swissporarena","FC Luzern","Grasshopper Club Zürich",3,0,"Raiffeisen Super League"),
(20160508,"Dreisamstadion","SC Freiburg","1. FC Heidenheim",2,0,"2. Bundesliga"),
(20160422,"Dreisamstadion","SC Freiburg","MSV Duisburg",3,0,"2. Bundesliga"),
(20160410,"Dreisamstadion","SC Freiburg","FC St. Pauli",4,3,"2. Bundesliga"),
(20160321,"Dreisamstadion","SC Freiburg","Karlsruher SC",1,0,"2. Bundesliga"),
(20160214,"Dreisamstadion","SC Freiburg","Fortuna Düsseldorf",1,2,"2. Bundesliga"),
(20160207,"Volksparkstadion","Hamburger SV","1. FC Köln",1,1,"Bundesliga"),
(20160205,"Vonovia Ruhrstadion","VfL Bochum","SC Freiburg",2,0,"2. Bundesliga"),
(20151220,"Dreisamstadion","SC Freiburg","TSV 1860 München",3,0,"2. Bundesliga"),
(20151212,"Weserstadion","Werder Bremen","1. FC Köln",1,1,"Bundesliga"),
(20151205,"Dreisamstadion","SC Freiburg","1. FC Union Berlin",3,0,"2. Bundesliga"),
(20151127,"Voith-Arena","1. FC Heidenheim","SC Freiburg",1,2,"2. Bundesliga"),
(20151122,"Dreisamstadion","SC Freiburg","SC Paderborn 07",4,1,"2. Bundesliga"),
(20151107,"Schauinsland-Reisen-Arena","MSV Duisburg","SC Freiburg",1,1,"2. Bundesliga"),
(20151101,"Dreisamstadion","SC Freiburg","Eintracht Braunschweig",2,2,"2. Bundesliga"),
(20151025,"Millerntor-Stadion","FC St. Pauli","SC Freiburg",1,0,"2. Bundesliga"),
(20151018,"Dreisamstadion","SC Freiburg","SpVgg Greuther Fürth",5,2,"2. Bundesliga"),
(20151004,"BBBank Wildpark","Karlsruher SC","SC Freiburg",1,1,"2. Bundesliga"),
(20150927,"Dreisamstadion","SC Freiburg","FSV Frankfurt",2,0,"2. Bundesliga"),
(20150918,"Dreisamstadion","SC Freiburg","Arminia Bielefeld",2,2,"2. Bundesliga"),
(20150911,"Fritz-Walter-Stadion","1. FC Kaiserslautern","SC Freiburg",0,2,"2. Bundesliga"),
(20150828,"Dreisamstadion","SC Freiburg","SV Sandhausen",4,1,"2. Bundesliga"),
(20150819,"Möslestadion","SC Freiburg II","KSV Hessen Kassel",0,2,"Regionalliga Südwest"),
(20150815,"Dreisamstadion","SC Freiburg","VfL Bochum",1,3,"2. Bundesliga"),
(20150812,"St. Jakob Park","FC Basel","FC Thun",3,1,"Raiffeisen Super League"),
(20150809,"Edmund-Plambeck-Stadion","HSV Barmbek-Uhlenhorst","SC Freiburg",0,5,"DFB-Pokal"),
(20150808,"Hänsch-Arena","SV Meppen","1. FC Köln",0,4,"DFB-Pokal"),
(20150727,"Dreisamstadion","SC Freiburg","1. FC Nürnberg",6,3,"2. Bundesliga"),
(20150523,"HDI-Arena","Hannover 96","SC Freiburg",2,1,"Bundesliga"),
(20150516,"Dreisamstadion","SC Freiburg","FC Bayern München",2,1,"Bundesliga"),
(20150502,"Dreisamstadion","SC Freiburg","SC Paderborn 07",1,2,"Bundesliga"),
(20150418,"Dreisamstadion","SC Freiburg","1. FSV Mainz 05",2,3,"Bundesliga"),
(20150407,"Volkswagen Arena","VfL Wolfsburg","SC Freiburg",1,0,"DFB-Pokal"),
(20150404,"Dreisamstadion","SC Freiburg","1. FC Köln",1,0,"Bundesliga"),
(20150331,"EWR-Arena","Wormatia Worms","SC Freiburg II",1,4,"Regionalliga Südwest"),
(20150321,"Dreisamstadion","SC Freiburg","FC Augsburg",2,0,"Bundesliga"),
(20150307,"Dreisamstadion","SC Freiburg","Werder Bremen",0,1,"Bundesliga"),
(20150303,"Dreisamstadion","SC Freiburg","1. FC Köln",2,1,"DFB-Pokal"),
(20150228,"Möslestadion","SC Freiburg II","SV Eintracht Trier 05",0,0,"Regionalliga Südwest"),
(20150222,"Stadion An der Alten Försterei","1. FC Union Berlin","1. FC Heidenheim",3,1,"2. Bundesliga"),
(20150221,"Alfred-Kunze-Sportpark","BSG Chemie Leipzig","FC Grimma",0,2,"Sachsenliga"),
(20150220,"Erzgebirgsstadion","Erzgebirge Aue","SV Darmstadt 98",0,1,"2. Bundesliga"),
(20150207,"Dreisamstadion","SC Freiburg","Borussia Dortmund",0,3,"Bundesliga"),
(20150131,"Dreisamstadion","SC Freiburg","Eintracht Frankfurt",4,1,"Bundesliga"),
(20141221,"Dreisamstadion","SC Freiburg","Hannover 96",2,2,"Bundesliga"),
(20141213,"Dreisamstadion","SC Freiburg","Hamburger SV",0,0,"Bundesliga"),
(20141212,"Stade de la Meinau","RC Strasbourg Alsace","Étoile Fréjus Saint-Raphaël",0,1,"Championnat National"),
(20141130,"Stadion Letzigrund","FC Zürich","FC Basel",1,2,"Raiffeisen Super League"),
(20141129,"Möslestadion","SC Freiburg II","1. FC Saarbrücken",1,2,"Regionalliga Südwest"),
(20141128,"Dreisamstadion","SC Freiburg","VfB Stuttgart",1,4,"Bundesliga"),
(20141108,"Dreisamstadion","SC Freiburg","FC Schalke 04",2,0,"Bundesliga"),
(20141102,"RheinEnergieStadion","1. FC Köln","SC Freiburg",0,1,"Bundesliga"),
(20141018,"Dreisamstadion","SC Freiburg","VfL Wolfsburg",1,2,"Bundesliga"),
(20140927,"Dreisamstadion","SC Freiburg","Bayer 04 Leverkusen",0,0,"Bundesliga"),
(20140924,"HDI-Arena","Hannover 96","1. FC Köln",1,0,"Bundesliga"),
(20140919,"Dreisamstadion","SC Freiburg","Hertha BSC",2,2,"Bundesliga"),
(20140913,"Signal Iduna Park","Borussia Dortmund","SC Freiburg",3,1,"Bundesliga"),
(20140912,"Vonovia Ruhrstadion","VfL Bochum","Karlsruher SC",1,1,"2. Bundesliga"),
(20140831,"Dreisamstadion","SC Freiburg","Borussia Mönchengladbach",0,0,"Bundesliga"),
(20140809,"Möslestadion","SC Freiburg II","1. FC Kaiserslautern II",1,1,"Regionalliga Südwest"),
(20140802,"Möslestadion","SC Freiburg II","SV Waldhof Mannheim",1,1,"Regionalliga Südwest"),
(20140503,"Dreisamstadion","SC Freiburg","FC Schalke 04",0,2,"Bundesliga"),
(20140412,"Dreisamstadion","SC Freiburg","Eintracht Braunschweig",2,0,"Bundesliga"),
(20140406,"Allianz Arena","TSV 1860 München","Karlsruher SC",0,3,"2. Bundesliga"),
(20140405,"Mercedes-Benz Arena","VfB Stuttgart","SC Freiburg",2,0,"Bundesliga"),
(20140329,"Dreisamstadion","SC Freiburg","1. FC Nürnberg",3,2,"Bundesliga"),
(20140321,"Dreisamstadion","SC Freiburg","Werder Bremen",3,1,"Bundesliga"),
(20140309,"Dreisamstadion","SC Freiburg","Borussia Dortmund",0,1,"Bundesliga"),
(20140222,"Dreisamstadion","SC Freiburg","FC Augsburg",2,4,"Bundesliga"),
(20140208,"Dreisamstadion","SC Freiburg","TSG 1899 Hoffenheim",1,1,"Bundesliga"),
(20140125,"Dreisamstadion","SC Freiburg","Bayer 04 Leverkusen",3,2,"Bundesliga"),
(20131221,"Dreisamstadion","SC Freiburg","Hannover 96",2,1,"Bundesliga"),
(20131212,"Dreisamstadion","SC Freiburg","Sevilla FC",0,2,"UEFA Europa League"),
(20131208,"Dreisamstadion","SC Freiburg","VfL Wolfsburg",0,3,"Bundesliga"),
(20131204,"Dreisamstadion","SC Freiburg","Bayer 04 Leverkusen",1,2,"DFB-Pokal"),
(20131110,"Dreisamstadion","SC Freiburg","VfB Stuttgart",1,3,"Bundesliga"),
(20131027,"Dreisamstadion","SC Freiburg","Hamburger SV",0,3,"Bundesliga"),
(20131024,"Dreisamstadion","SC Freiburg","GD Estoril",1,1,"UEFA Europa League"),
(20131006,"Dreisamstadion","SC Freiburg","Eintracht Frankfurt",1,1,"Bundesliga"),
(20131003,"Estadio Ramón Sánchez Pizjuán","Sevilla FC","SC Freiburg",2,0,"UEFA Europa League"),
(20130925,"Dreisamstadion","SC Freiburg","VfB Stuttgart",2,1,"DFB-Pokal"),
(20130922,"Dreisamstadion","SC Freiburg","Hertha BSC",1,1,"Bundesliga"),
(20130919,"Dreisamstadion","SC Freiburg","FC Slovan Liberec",2,2,"UEFA Europa League"),
(20130827,"Dreisamstadion","SC Freiburg","FC Bayern München",1,1,"Bundesliga"),
(20130824,"PreZero Arena","TSG 1899 Hoffenheim","SC Freiburg",3,3,"Bundesliga"),
(20130823,"Stadion am Hardtwald","SV Sandhausen","Karlsruher SC",1,1,"2. Bundesliga"),
(20130817,"Dreisamstadion","SC Freiburg","1. FSV Mainz 05",1,2,"Bundesliga"),
(20130525,"Möslestadion","SC Freiburg II","TSG 1899 Hoffenheim II",4,2,"Regionalliga Südwest"),
(20130518,"Dreisamstadion","SC Freiburg","FC Schalke 04",1,2,"Bundesliga"),
(20130511,"Sportpark Ronhof","SpVgg Greuther Fürth","SC Freiburg",1,2,"Bundesliga"),
(20130505,"Dreisamstadion","SC Freiburg","FC Augsburg",2,0,"Bundesliga"),
(20130417,"Mercedes-Benz Arena","VfB Stuttgart","SC Freiburg",2,1,"DFB-Pokal"),
(20130412,"Dreisamstadion","SC Freiburg","Hannover 96",3,1,"Bundesliga"),
(20130316,"Signal Iduna Park","Borussia Dortmund","SC Freiburg",5,1,"Bundesliga"),
(20130309,"Dreisamstadion","SC Freiburg","VfL Wolfsburg",2,5,"Bundesliga"),
(20130222,"Dreisamstadion","SC Freiburg","Eintracht Frankfurt",0,0,"Bundesliga"),
(20130210,"Dreisamstadion","SC Freiburg","Fortuna Düsseldorf",1,0,"Bundesliga"),
(20130202,"PreZero Arena","TSG 1899 Hoffenheim","SC Freiburg",2,1,"Bundesliga"),
(20130126,"Dreisamstadion","SC Freiburg","Bayer 04 Leverkusen",0,0,"Bundesliga"),
(20121218,"BBBank Wildpark","Karlsruher SC","SC Freiburg",0,1,"DFB-Pokal"),
(20121208,"Dreisamstadion","SC Freiburg","SpVgg Greuther Fürth",1,0,"Bundesliga"),
(20121128,"Dreisamstadion","SC Freiburg","FC Bayern München",0,2,"Bundesliga"),
(20121125,"Dreisamstadion","SC Freiburg","VfB Stuttgart",3,0,"Bundesliga"),
(20121110,"Dreisamstadion","SC Freiburg","Hamburger SV",0,0,"Bundesliga"),
(20121030,"Eintracht-Stadion","Eintracht Braunschweig","SC Freiburg",0,2,"DFB-Pokal"),
(20121028,"HDI-Arena","Hannover 96","Borussia Mönchengladbach",2,3,"Bundesliga"),
(20121027,"Dreisamstadion","SC Freiburg","Borussia Dortmund",0,2,"Bundesliga"),
(20121006,"Dreisamstadion","SC Freiburg","1. FC Nürnberg",3,0,"Bundesliga"),
(20120930,"Deutsche Bank Park","Eintracht Frankfurt","SC Freiburg",2,1,"Bundesliga"),
(20120926,"Dreisamstadion","SC Freiburg","Werder Bremen",1,2,"Bundesliga"),
(20120825,"Dreisamstadion","SC Freiburg","1. FSV Mainz 05",1,1,"Bundesliga"),
(20120526,"St. Jakob Park","Schweiz","Deutschland",5,2,"Freundschaftsspiel"),
(20120520,"Stade Auguste Bonal","FC Sochaux","Olympique de Marseille",1,0,"Ligue 1"),
(20120505,"Signal Iduna Park","Borussia Dortmund","SC Freiburg",4,0,"Bundesliga"),
(20120415,"Dreisamstadion","SC Freiburg","TSG 1899 Hoffenheim",0,0,"Bundesliga"),
(20120225,"Mercedes-Benz Arena","VfB Stuttgart","SC Freiburg",4,1,"Bundesliga"),
(20120205,"Dreisamstadion","SC Freiburg","Werder Bremen",2,2,"Bundesliga"),
(20120129,"Mewa-Arena","1. FSV Mainz 05","SC Freiburg",3,1,"Bundesliga"),
(20111029,"Stadio Olimpico","AS Roma","AC Milan",2,3,"Serie A"),
(20110130,"Mercedes-Benz Arena","VfB Stuttgart","SC Freiburg",0,1,"Bundesliga"),
(20111016,"Dreisamstadion","SC Freiburg","Hamburger SV",1,2,"Bundesliga"),
(20110916,"Dreisamstadion","SC Freiburg","VfB Stuttgart",1,2,"Bundesliga"),
(20110806,"WWK ARENA","FC Augsburg","SC Freiburg",2,2,"Bundesliga"),
(20110130,"Mercedes-Benz Arena","VfB Stuttgart","SC Freiburg",0,1,"Bundesliga"),
(20101212,"Dreisamstadion","SC Freiburg","Borussia Mönchengladbach",3,0,"Bundesliga"),
(20101002,"Dreisamstadion","SC Freiburg","1. FC Köln",3,2,"Bundesliga"),
(20100911,"Dreisamstadion","SC Freiburg","VfB Stuttgart",2,1,"Bundesliga"),
(20100206,"Dreisamstadion","SC Freiburg","FC Schalke 04",0,0,"Bundesliga"),
(20090503,"Dreisamstadion","SC Freiburg","FSV Frankfurt",4,1,"2. Bundesliga"),
(20080518,"Dreisamstadion","SC Freiburg","SV Wehen Wiesbaden",0,2,"2. Bundesliga"),
(20040908,"Olympiastadion (Berlin)","Deutschland","Brasilien",1,1,"Freundschaftsspiel"),
(20031029,"Dreisamstadion","SC Freiburg","FC Schalke 04",7,3,"DFB-Pokal"),
(20030413,"Dreisamstadion","SC Freiburg","FC St. Pauli",1,1,"2. Bundesliga");

# Another table are the Bundesliga games of my favorite club SC Freiburg from 2009 - 2018. This is for a comparison to calculate a possible positive effect, whether I have an influence on the result, when I attend the game.

CREATE TABLE scfgames (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    date TIMESTAMP,
    home_team VARCHAR(255) NOT NULL,
    away_team VARCHAR(255) NOT NULL,
    home_score INT,
    away_score INT,
    result VARCHAR(255) NOT NULL
);

INSERT INTO scfgames (date,home_team,away_team,home_score,away_score,result) VALUES 
 (20090809,"SC Freiburg","Hamburg",1,1,"D"),
 (20090815,"Stuttgart","SC Freiburg",4,2,"H"),
 (20090822,"SC Freiburg","Leverkusen",0,5,"A"),
 (20090829,"Schalke 04","SC Freiburg",0,1,"A"),
 (20090912,"SC Freiburg","Ein Frankfurt",0,2,"A"),
 (20090920,"Hertha","SC Freiburg",0,4,"A"),
 (20090927,"SC Freiburg","M'gladbach",3,0,"H"),
 (20091003,"Hannover","SC Freiburg",5,2,"H"),
 (20091017,"SC Freiburg","Bayern München",1,2,"A"),
 (20091024,"Mainz","SC Freiburg",3,0,"H"),
 (20091101,"SC Freiburg","Hoffenheim",0,1,"A"),
 (20091107,"Bochum","SC Freiburg",1,2,"A"),
 (20091121,"SC Freiburg","Werder Bremen",0,6,"A"),
 (20091128,"Nurnberg","SC Freiburg",0,1,"A"),
 (20091205,"Wolfsburg","SC Freiburg",2,2,"D"),
 (20091212,"SC Freiburg","FC Koln""",0,0,"D"),
 (20091219,"Dortmund","SC Freiburg",1,0,"H"),
 (20100116,"Hamburg","SC Freiburg",2,0,"H"),
 (20100122,"SC Freiburg","Stuttgart",0,1,"A"),
 (20100131,"Leverkusen","SC Freiburg",3,1,"H"),
 (20100206,"SC Freiburg","Schalke 04",0,0,"D"),
 (20100214,"Ein Frankfurt","SC Freiburg",2,1,"H"),
 (20100221,"SC Freiburg","Hertha",0,3,"A"),
 (20100227,"M'gladbach","SC Freiburg",1,1,"D"),
 (20100306,"SC Freiburg","Hannover",1,2,"A"),
 (20100313,"Bayern München","SC Freiburg",2,1,"H"),
 (20100320,"SC Freiburg","Mainz",1,0,"H"),
 (20100328,"Hoffenheim","SC Freiburg",1,1,"D"),
 (20100403,"SC Freiburg","Bochum",1,1,"D"),
 (20100410,"Werder Bremen","SC Freiburg",4,0,"H"),
 (20100417,"SC Freiburg","Nurnberg",2,1,"H"),
 (20100425,"SC Freiburg","Wolfsburg",1,0,"H"),
 (20100501,"FC Koln","SC Freiburg",2,2,"D"),
 (20100508,"SC Freiburg","Dortmund",3,1,"H"),
 (20100821,"SC Freiburg","St Pauli",1,3,"A"),
 (20100828,"Nurnberg","SC Freiburg",1,2,"A"),
 (20100911,"SC Freiburg","Stuttgart",2,1,"H"),
 (20100917,"Ein Frankfurt","SC Freiburg",0,1,"A"),
 (20100922,"SC Freiburg","Schalke 04",1,2,"A"),
 (20100926,"Wolfsburg","SC Freiburg",2,1,"H"),
 (20101002,"SC Freiburg","FC Koln",3,2,"H"),
 (20101016,"Werder Bremen","SC Freiburg",2,1,"H"),
 (20101023,"SC Freiburg","Kaiserslautern",2,1,"H"),
 (20101029,"Bayern München","SC Freiburg",4,2,"H"),
 (20101106,"SC Freiburg","Mainz",1,0,"H"),
 (20101114,"Hoffenheim","SC Freiburg",0,1,"A"),
 (20101120,"SC Freiburg","Dortmund",1,2,"A"),
 (20101127,"Hannover","SC Freiburg",3,0,"H"),
 (20101204,"SC Freiburg","Hamburg",1,0,"H"),
 (20101212,"SC Freiburg","M'gladbach",3,0,"H"),
 (20101219,"Leverkusen","SC Freiburg",2,2,"D"),
 (20110115,"St Pauli","SC Freiburg",2,2,"D"),
 (20110122,"SC Freiburg","Nurnberg",1,1,"D"),
 (20110130,"Stuttgart","SC Freiburg",0,1,"A"),
 (20110206,"SC Freiburg","Ein Frankfurt",0,0,"D"),
 (20110212,"Schalke 04","SC Freiburg",1,0,"H"),
 (20110219,"SC Freiburg","Wolfsburg",2,1,"H"),
 (20110226,"FC Koln","SC Freiburg",1,0,"H"),
 (20110306,"SC Freiburg","Werder Bremen",1,3,"A"),
 (20110312,"Kaiserslautern","SC Freiburg",2,1,"H"),
 (20110319,"SC Freiburg","Bayern München",1,2,"A"),
 (20110402,"Mainz","SC Freiburg",1,1,"D"),
 (20110409,"SC Freiburg","Hoffenheim",3,2,"H"),
 (20110417,"Dortmund","SC Freiburg",3,0,"H"),
 (20110421,"SC Freiburg","Hannover",1,3,"A"),
 (20110430,"Hamburg","SC Freiburg",0,2,"A"),
 (20110507,"M'gladbach","SC Freiburg",2,0,"H"),
 (20110514,"SC Freiburg","Leverkusen",0,1,"A"),
 (20110806,"Augsburg","SC Freiburg",2,2,"D"),
 (20110813,"SC Freiburg","Mainz",1,2,"A"),
 (20110820,"Werder Bremen","SC Freiburg",5,3,"H"),
 (20110827,"SC Freiburg","Wolfsburg",3,0,"H"),
 (20110910,"Bayern München","SC Freiburg",7,0,"H"),
 (20110916,"SC Freiburg","Stuttgart",1,2,"A"),
 (20110924,"Schalke 04","SC Freiburg",4,2,"H"),
 (20111001,"SC Freiburg","M'gladbach",1,0,"H"),
 (20111016,"SC Freiburg","Hamburg",1,2,"A"),
 (20111022,"Kaiserslautern","SC Freiburg",1,0,"H"),
 (20111028,"SC Freiburg","Leverkusen",0,1,"A"),
 (20111105,"Nurnberg","SC Freiburg",1,2,"A"),
 (20111119,"SC Freiburg","Hertha",2,2,"D"),
 (20111126,"Hoffenheim","SC Freiburg",1,1,"D"),
 (20111203,"SC Freiburg","Hannover",1,1,"D"),
 (20111210,"FC Koln","SC Freiburg",4,0,"H"),
 (20111217,"SC Freiburg","Dortmund",1,4,"A"),
 (20120121,"SC Freiburg","Augsburg",1,0,"H"),
 (20120129,"Mainz","SC Freiburg",3,1,"H"),
 (20120205,"SC Freiburg","Werder Bremen",2,2,"D"),
 (20120210,"Wolfsburg","SC Freiburg",3,2,"H"),
 (20120218,"SC Freiburg","Bayern München",0,0,"D"),
 (20120225,"Stuttgart","SC Freiburg",4,1,"H"),
 (20120303,"SC Freiburg","Schalke 04",2,1,"H"),
 (20120310,"M'gladbach","SC Freiburg",0,0,"D"),
 (20120317,"Hamburg","SC Freiburg",1,3,"A"),
 (20120324,"SC Freiburg","Kaiserslautern",2,0,"H"),
 (20120331,"Leverkusen","SC Freiburg",0,2,"A"),
 (20120407,"SC Freiburg","Nurnberg",2,2,"D"),
 (20120410,"Hertha","SC Freiburg",1,2,"A"),
 (20120415,"SC Freiburg","Hoffenheim",0,0,"D"),
 (20120422,"Hannover","SC Freiburg",0,0,"D"),
 (20120428,"SC Freiburg","FC Koln",4,1,"H"),
 (20120505,"Dortmund","SC Freiburg",4,0,"H"),
 (20120825,"SC Freiburg","Mainz",1,1,"D"),
 (20120901,"Leverkusen","SC Freiburg",2,0,"H"),
 (20120916,"SC Freiburg","Hoffenheim",5,3,"H"),
 (20120922,"Fortuna Dusseldorf","SC Freiburg",0,0,"D"),
 (20120926,"SC Freiburg","Werder Bremen",1,2,"A"),
 (20120930,"Ein Frankfurt","SC Freiburg",2,1,"H"),
 (20121006,"SC Freiburg","Nurnberg",3,0,"H"),
 (20121020,"Wolfsburg","SC Freiburg",0,2,"A"),
 (20121027,"SC Freiburg","Dortmund",0,2,"A"),
 (20121103,"M'gladbach","SC Freiburg",1,1,"D"),
 (20121110,"SC Freiburg","Hamburg",0,0,"D"),
 (20121117,"Hannover","SC Freiburg",1,2,"A"),
 (20121125,"SC Freiburg","Stuttgart",3,0,"H"),
 (20121128,"SC Freiburg","Bayern München",0,2,"A"),
 (20121201,"Augsburg","SC Freiburg",1,1,"D"),
 (20121208,"SC Freiburg","Greuther Furth",1,0,"H"),
 (20121215,"Schalke 04","SC Freiburg",1,3,"A"),
 (20130119,"Mainz","SC Freiburg",0,0,"D"),
 (20130126,"SC Freiburg","Leverkusen",0,0,"D"),
 (20130202,"Hoffenheim","SC Freiburg",2,1,"H"),
 (20130210,"SC Freiburg","Fortuna Dusseldorf",1,0,"H"),
 (20130216,"Werder Bremen","SC Freiburg",2,3,"A"),
 (20130222,"SC Freiburg","Ein Frankfurt",0,0,"D"),
 (20130302,"Nurnberg","SC Freiburg",1,1,"D"),
 (20130309,"SC Freiburg","Wolfsburg",2,5,"A"),
 (20130316,"Dortmund","SC Freiburg",5,1,"H"),
 (20130330,"SC Freiburg","M'gladbach",2,0,"H"),
 (20130406,"Hamburg","SC Freiburg",0,1,"A"),
 (20130412,"SC Freiburg","Hannover",3,1,"H"),
 (20130421,"Stuttgart","SC Freiburg",2,1,"H"),
 (20130427,"Bayern München","SC Freiburg",1,0,"H"),
 (20130505,"SC Freiburg","Augsburg",2,0,"H"),
 (20130511,"Greuther Furth","SC Freiburg",1,2,"A"),
 (20130518,"SC Freiburg","Schalke 04",1,2,"A"),
 (20130810,"Leverkusen","SC Freiburg",3,1,"H"),
 (20130817,"SC Freiburg","Mainz",1,2,"A"),
 (20130824,"Hoffenheim","SC Freiburg",3,3,"D"),
 (20130827,"SC Freiburg","Bayern München",1,1,"D"),
 (20130914,"Augsburg","SC Freiburg",2,1,"H"),
 (20130922,"SC Freiburg","Hertha",1,1,"D"),
 (20130928,"Dortmund","SC Freiburg",5,0,"H"),
 (20131006,"SC Freiburg","Ein Frankfurt",1,1,"D"),
 (20131019,"Werder Bremen","SC Freiburg",0,0,"D"),
 (20131027,"SC Freiburg","Hamburg",0,3,"A"),
 (20131102,"Nurnberg","SC Freiburg",0,3,"A"),
 (20131110,"SC Freiburg","Stuttgart",1,3,"A"),
 (20131123,"Braunschweig","SC Freiburg",0,1,"A"),
 (20131201,"M'gladbach","SC Freiburg",1,0,"H"),
 (20131208,"SC Freiburg","Wolfsburg",0,3,"A"),
 (20131215,"Schalke 04","SC Freiburg",2,0,"H"),
 (20131221,"SC Freiburg","Hannover",2,1,"H"),
 (20140125,"SC Freiburg","Leverkusen",3,2,"H"),
 (20140201,"Mainz","SC Freiburg",2,0,"H"),
 (20140208,"SC Freiburg","Hoffenheim",1,1,"D"),
 (20140215,"Bayern München","SC Freiburg",4,0,"H"),
 (20140222,"SC Freiburg","Augsburg",2,4,"A"),
 (20140228,"Hertha","SC Freiburg",0,0,"D"),
 (20140309,"SC Freiburg","Dortmund",0,1,"A"),
 (20140316,"Ein Frankfurt","SC Freiburg",1,4,"A"),
 (20140321,"SC Freiburg","Werder Bremen",3,1,"H"),
 (20140326,"Hamburg","SC Freiburg",1,1,"D"),
 (20140329,"SC Freiburg","Nurnberg",3,2,"H"),
 (20140405,"Stuttgart","SC Freiburg",2,0,"H"),
 (20140412,"SC Freiburg","Braunschweig",2,0,"H"),
 (20140419,"SC Freiburg","M'gladbach",4,2,"H"),
 (20140426,"Wolfsburg","SC Freiburg",2,2,"D"),
 (20140503,"SC Freiburg","Schalke 04",0,2,"A"),
 (20140510,"Hannover","SC Freiburg",3,2,"H"),
 (20140823,"Ein Frankfurt","SC Freiburg",1,0,"H"),
 (20140831,"SC Freiburg","M'gladbach",0,0,"D"),
 (20140913,"Dortmund","SC Freiburg",3,1,"H"),
 (20140919,"SC Freiburg","Hertha",2,2,"D"),
 (20140923,"Hoffenheim","SC Freiburg",3,3,"D"),
 (20140927,"SC Freiburg","Leverkusen",0,0,"D"),
 (20141004,"Werder Bremen","SC Freiburg",1,1,"D"),
 (20141018,"SC Freiburg","Wolfsburg",1,2,"A"),
 (20141025,"Augsburg","SC Freiburg",2,0,"H"),
 (20141102,"FC Koln","SC Freiburg",0,1,"A"),
 (20141108,"SC Freiburg","Schalke 04",2,0,"H"),
 (20141122,"Mainz","SC Freiburg",2,2,"D"),
 (20141128,"SC Freiburg","Stuttgart",1,4,"A"),
 (20141206,"Paderborn","SC Freiburg",1,1,"D"),
 (20141213,"SC Freiburg","Hamburg",0,0,"D"),
 (20141216,"Bayern München","SC Freiburg",2,0,"H"),
 (20141221,"SC Freiburg","Hannover",2,2,"D"),
 (20150131,"SC Freiburg","Ein Frankfurt",4,1,"H"),
 (20150203,"M'gladbach","SC Freiburg",1,0,"H"),
 (20150207,"SC Freiburg","Dortmund",0,3,"A"),
 (20150215,"Hertha","SC Freiburg",0,2,"A"),
 (20150221,"SC Freiburg","Hoffenheim",1,1,"D"),
 (20150228,"Leverkusen","SC Freiburg",1,0,"H"),
 (20150307,"SC Freiburg","Werder Bremen",0,1,"A"),
 (20150315,"Wolfsburg","SC Freiburg",3,0,"H"),
 (20150321,"SC Freiburg","Augsburg",2,0,"H"),
 (20150404,"SC Freiburg","FC Koln",1,0,"H"),
 (20150411,"Schalke 04","SC Freiburg",0,0,"D"),
 (20150418,"SC Freiburg","Mainz",2,3,"A"),
 (20150425,"Stuttgart","SC Freiburg",2,2,"D"),
 (20150502,"SC Freiburg","Paderborn",1,2,"A"),
 (20150508,"Hamburg","SC Freiburg",1,1,"D"),
 (20150516,"SC Freiburg","Bayern München",2,1,"H"),
 (20150523,"Hannover","SC Freiburg",2,1,"H"),
 (20160828,"Hertha","SC Freiburg",2,1,"H"),
 (20160910,"SC Freiburg","M'gladbach",3,1,"H"),
 (20160916,"FC Koln","SC Freiburg",3,0,"H"),
 (20160920,"SC Freiburg","Hamburg",1,0,"H"),
 (20160923,"Dortmund","SC Freiburg",3,1,"H"),
 (20161001,"SC Freiburg","Ein Frankfurt",1,0,"H"),
 (20161015,"Hoffenheim","SC Freiburg",2,1,"H"),
 (20161022,"SC Freiburg","Augsburg",2,1,"H"),
 (20161029,"Werder Bremen","SC Freiburg",1,3,"A"),
 (20161105,"SC Freiburg","Wolfsburg",0,3,"A"),
 (20161119,"Mainz","SC Freiburg",4,2,"H"),
 (20161125,"SC Freiburg","Leipzig",1,4,"A"),
 (20161203,"Leverkusen","SC Freiburg",1,1,"D"),
 (20161210,"SC Freiburg","Darmstadt",1,0,"H"),
 (20161217,"Schalke 04","SC Freiburg",1,1,"D"),
 (20161221,"Ingolstadt","SC Freiburg",1,2,"A"),
 (20170120,"SC Freiburg","Bayern München",1,2,"A"),
 (20170129,"SC Freiburg","Hertha",2,1,"H"),
 (20170204,"M'gladbach","SC Freiburg",3,0,"H"),
 (20170212,"SC Freiburg","FC Koln",2,1,"H"),
 (20170218,"Hamburg","SC Freiburg",2,2,"D"),
 (20170225,"SC Freiburg","Dortmund",0,3,"A"),
 (20170305,"Ein Frankfurt","SC Freiburg",1,2,"A"),
 (20170311,"SC Freiburg","Hoffenheim",1,1,"D"),
 (20170318,"Augsburg","SC Freiburg",1,1,"D"),
 (20170401,"SC Freiburg","Werder Bremen",2,5,"A"),
 (20170405,"Wolfsburg","SC Freiburg",0,1,"A"),
 (20170408,"SC Freiburg","Mainz",1,0,"H"),
 (20170415,"Leipzig","SC Freiburg",4,0,"H"),
 (20170423,"SC Freiburg","Leverkusen",2,1,"H"),
 (20170429,"Darmstadt","SC Freiburg",3,0,"H"),
 (20170507,"SC Freiburg","Schalke 04",2,0,"H"),
 (20170513,"SC Freiburg","Ingolstadt",1,1,"D"),
 (20170520,"Bayern München","SC Freiburg",4,1,"H"),
 (20170820,"SC Freiburg","Ein Frankfurt",0,0,"D"),
 (20170827,"Leipzig""","SC Freiburg",4,1,"H"),
 (20170909,"SC Freiburg","Dortmund",0,0,"D"),
 (20170917,"Leverkusen","SC Freiburg",4,0,"H"),
 (20170920,"SC Freiburg","Hannover",1,1,"D"),
 (20170923,"Werder Bremen","SC Freiburg",0,0,"D"),
 (20171001,"SC Freiburg","Hoffenheim",3,2,"H"),
 (20171014,"Bayern München","SC Freiburg",5,0,"H"),
 (20171022,"SC Freiburg","Hertha",1,1,"D"),
 (20171029,"Stuttgart","SC Freiburg",3,0,"H"),
 (20171104,"SC Freiburg","Schalke 04",0,1,"A"),
 (20171118,"Wolfsburg","SC Freiburg",3,1,"H"),
 (20171125,"SC Freiburg","Mainz",2,1,"H"),
 (20171201,"SC Freiburg","Hamburg",0,0,"D"),
 (20171210,"FC Koln","SC Freiburg",3,4,"A"),
 (20171212,"SC Freiburg","M'gladbach",1,0,"H"),
 (20171216,"Augsburg","SC Freiburg",3,3,"D"),
 (20180113,"Ein Frankfurt","SC Freiburg",1,1,"D"),
 (20180120,"SC Freiburg","Leipzig",2,1,"H"),
 (20180127,"Dortmund","SC Freiburg",2,2,"D"),
 (20180203,"SC Freiburg","Leverkusen",0,0,"D"),
 (20180210,"Hannover","SC Freiburg",2,1,"H"),
 (20180217,"SC Freiburg","Werder Bremen",1,0,"H"),
 (20180224,"Hoffenheim","SC Freiburg",1,1,"D"),
 (20180304,"SC Freiburg","Bayern München",0,4,"A"),
 (20180310,"Hertha","SC Freiburg",0,0,"D"),
 (20180316,"SC Freiburg","Stuttgart",1,2,"A"),
 (20180331,"Schalke 04","SC Freiburg",2,0,"H"),
 (20180407,"SC Freiburg","Wolfsburg",0,2,"A"),
 (20180416,"Mainz","SC Freiburg",2,0,"H"),
 (20180421,"Hamburg","SC Freiburg",1,0,"H"),
 (20180428,"SC Freiburg","FC Koln",3,2,"H"),
 (20180505,"M'gladbach","SC Freiburg",3,1,"H"),
 (20180512,"SC Freiburg","Augsburg",2,0,"H");

# How many times have I been in each stadium?
SELECT stadium, COUNT(*) AS total_visits
FROM games
GROUP BY stadium 
ORDER BY total_visits DESC;

# In which years did I attend the most football games?
SELECT 
    YEAR(date) AS year,
    COUNT(*) AS total
FROM games
GROUP BY year;

# Which competitions have I seen so far?
SELECT competition, COUNT(*) AS total
FROM games
GROUP BY competition 
ORDER BY total DESC;

# How many goals have I seen in total?
SELECT SUM(home_score + away_score) AS total_goals
FROM games;

# What are the average goals per game? 
SELECT AVG(home_score) AS avg_home, AVG(away_score) AS avg_away
FROM games;

#How much total goals in a SC Freiburg match have I seen?
SELECT SUM(home_score + away_score) AS total_scf
FROM games
WHERE home_team = "SC Freiburg" OR away_team = "SC Freiburg";

#What is the average number of goals in a SC Freiburg match?
SELECT AVG(home_score + away_score) AS avg_goals
FROM games
WHERE home_team = "SC Freiburg" OR away_team = "SC Freiburg";

#How many goals have I seen from SC Freiburg?
SELECT sum(home_score) as sc_home
From games
WHERE home_team = "SC Freiburg";

SELECT sum(away_score) as sc_away
FROM games
WHERE away_team = "SC Freiburg";

----------------------------------------------------------------

#Do I bring luck to the my team? 
#In how many Bundesliga matches have I seen a Freiburg win vs. total Freiburg wins between 2009-2018

# first adding a new column whether I attended a match or not
ALTER TABLE scfgames
ADD attendance varchar(255) NOT NULL DEFAULT "not attended";

#ALTER TABLE scfgames DROP COLUMN attendance;

UPDATE scfgames, games
SET attendance = 
CASE WHEN scfgames.date = games.date AND scfgames.home_score = games.home_score AND scfgames.away_score = games.away_score 
THEN "attended" ELSE "not attended" END;

# alternative way to count the home-/aways wins/draws
# adding a new column for the game result
ALTER TABLE games
ADD result varchar(255);

UPDATE games
SET result = "H"
WHERE home_score > away_score;

UPDATE games
SET result = "A"
WHERE home_score < away_score;

UPDATE games
SET result = "D"
WHERE home_score = away_score;

SELECT result, COUNT("H") AS total_home_win
FROM games
WHERE home_team = "SC Freiburg" AND competition = "Bundesliga"
GROUP BY result;

SELECT result, COUNT("A") AS total_away_win
FROM games
WHERE away_team = "SC Freiburg"
GROUP BY result;

SELECT result, COUNT("D") AS total_draw
FROM games
WHERE  home_team = "SC Freiburg" OR away_team = "SC Freiburg"
GROUP BY result;

# now counting the same for the total SC Freiburg matches
SELECT result, COUNT("H") AS scf_home_win
FROM scfgames
WHERE home_team = "SC Freiburg"
GROUP BY result;

SELECT result, COUNT("A") AS scf_away_win
FROM scfgames
WHERE away_team = "SC Freiburg"
GROUP BY result;

SELECT result, COUNT("D") AS total_draw
FROM scfgames
WHERE  home_team = "SC Freiburg" OR away_team = "SC Freiburg"
GROUP BY result;



