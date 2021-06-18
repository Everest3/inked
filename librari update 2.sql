-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 03:43 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librari`
--

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

-- CREATE TABLE `following` (
--   `USER_ID` int(11) NOT NULL,
--   `FOLLOWERS_ID` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `libra`
--

CREATE TABLE `libra` (
  `ID` int(11) NOT NULL ,
  `EMER` varchar(50) NOT NULL,
  `AUTORI` varchar(30) NOT NULL,
  `VLERESIMI` decimal(3,2) NOT NULL,
  `PERSHKRIMI` text NOT NULL,
  `KOPERTINA` varchar(200) NOT NULL,
  `CMIMI` decimal(6,2) NOT NULL,
  `KATEGORIA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `libra`
--

INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('In Search of Lost Time', 'Marcel Proust', 3.00, "Swann's Way, the first part of A la recherche de temps perdu, Marcel Proust's seven-part cycle, was published in 1913. In it, Proust introduces the themes that run through the entire work. The narrator recalls his childhood, aided by the famous madeleine and describes M. Swann's passion for Odette. The work is incomparable. Edmund Wilson said  has supplied for the first time in literature an equivalent in the full scale for the new theory of modern physics.", 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1325095874l/13329904.jpg', 4.00, 'philosophical');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Ulysses ', 'James Joyce', 3.00, "Ulysses chronicles the passage of Leopold Bloom through Dublin during an ordinary day, June 16, 1904. The title parallels and alludes to Odysseus (Latinised into Ulysses), the hero of Homer's Odyssey (e.g., the correspondences between Leopold Bloom and Odysseus, Molly Bloom and Penelope, and Stephen Dedalus and Telemachus). Joyce fans worldwide now celebrate June 16 as Bloomsday.", 'https://images-na.ssl-images-amazon.com/images/I/A1AtM0maYJL.jpg', 6.00, 'domestic fiction');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Don Quixote', 'Miguel de Cervantes', 9.00, "Alonso Quixano, a retired country gentleman in his fifties, lives in an unnamed section of La Mancha with his niece and a housekeeper. He has become obsessed with books of chivalry, and believes their every word to be true, despite the fact that many of the events in them are clearly impossible. Quixano eventually appears to other people to have lost his mind from little sleep and food and because of so much reading.", 'https://images-na.ssl-images-amazon.com/images/I/41JKGW9P6AL._SX372_BO1,204,203,200_.jpg', 9.00, 'parody');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('One Hundred Years of Solitude ', 'Gabriel Garcia Marquez', '8.00', "One of the 20th century's enduring works, One Hundred Years of Solitude is a widely beloved and acclaimed novel known throughout the world, and the ultimate achievement in a Nobel Prize–winning career. The novel tells the story of the rise and fall of the mythical town of Macondo through the history of the Buendía family. It is a rich and brilliant chronicle of life and death, and the tragicomedy of humankind. In the noble, ridiculous, beautiful, and tawdry story of the Buendía family, one sees all of humanity, just as in the history, myths, growth, and decay of Macondo, one sees all of Latin America.", 'https://m.media-amazon.com/images/I/41oBY3oKQJL.jpg', 0.00, 'fantasy');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('The Great Gatsby ', 'F. Scott Fitzgerald', 4.00, "The novel chronicles an era that Fitzgerald himself dubbed the 'Jazz Age'. Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the 'roaring' 1920s as the economy soared. At the same time, Prohibition, the ban on the sale and manufacture of alcohol as mandated by the Eighteenth Amendment, made millionaires out of bootleggers and led to an increase in organized crime, for example the Jewish mafia. Although Fitzgerald, like Nick Carraway in his novel, idolized the riches and glamor of the age, he was uncomfortable with the unrestrained materialism and the lack of morality that went with it, a kind of decadence.", 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg', 4.00, 'tragedy');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Moby Dick ', 'Herman Melville', 7.00, "First published in 1851, Melville's masterpiece is, in Elizabeth Hardwick's words, 'the greatest novel in American literature.' The saga of Captain Ahab and his monomaniacal pursuit of the white whale remains a peerless adventure story but one full of mythic grandeur, poetic majesty, and symbolic power. Filtered through the consciousness of the novel's narrator, Ishmael, Moby-Dick draws us into a universe full of fascinating characters and stories, from the noble cannibal Queequeg to the natural history of whales, while reaching existential depths that excite debate and contemplation to this day.", 'https://couverture.numilog.com/9789895621606_w300.jpg', 1.00, 'adventure');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('War and Peace', 'Leo Tolstoy', 5.00, "Epic in scale, War and Peace delineates in graphic detail events leading up to Napoleon's invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes of five Russian aristocratic families.", 'https://images-na.ssl-images-amazon.com/images/I/A1aDb5U5myL.jpg', 5.00, 'historical');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Hamlet ', 'William Shakespeare', 4.00, "The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601. The play, set in Denmark, recounts how Prince Hamlet exacts revenge on his uncle Claudius, who has murdered Hamlet's father, the King, and then taken the throne and married Gertrude, Hamlet's mother. The play vividly charts the course of real and feigned madness—from overwhelming grief to seething rage—and explores themes of treachery, revenge, incest, and moral corruption.", 'https://www.ustarnovels.com/media/1000x1000/cover_hamlet.jpg', 3.00, 'tragedy');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('The Odyssey', 'Homer', '4.00', "The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work traditionally ascribed to Homer. The poem is fundamental to the modern Western canon. Indeed it is the second—the Iliad being the first—extant work of Western literature. It was probably composed near the end of the eighth century BC, somewhere in Ionia, the Greek-speaking coastal region of what is now Turkey. The poem mainly centers on the Greek hero Odysseus (or Ulysses, as he was known in Roman myths) and his long journey home following the fall of Troy. It takes Odysseus ten years to reach Ithaca after the ten-year Trojan War", 'https://images-na.ssl-images-amazon.com/images/I/81QAAnCNM7L.jpg', 2.00, 'epic');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Madame Bovary', 'Gustave Flaubert', 3.00, "For daring to peer into the heart of an adulteress and enumerate its contents with profound dispassion, the author of Madame Bovary was tried for offenses against morality and religion. What shocks us today about Flaubert's devastatingly realized tale of a young woman destroyed by the reckless pursuit of her romantic dreams is its pure artistry: the poise of its narrative structure, the opulence of its prose (marvelously captured in the English translation of Francis Steegmuller), and its creation of a world whose minor figures are as vital as its doomed heroine. In reading Madame Bovary, one experiences a work that remains genuinely revolutionary almost a century and a half after its creation.", 'https://summarybook.online/wp-content/uploads/2020/04/Madame-Bovary.jpg', 0.00, 'literary realism');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('The Divine Comedy', 'Dante Alighieri', 7.00, "Belonging in the immortal company of the great works of literature, Dante Alighieri's poetic masterpiece, The Divine Comedy, is a moving human drama, an unforgettable visionary journey through the infinite torment of Hell, up the arduous slopes of Purgatory, and on to the glorious realm of Paradise — the sphere of universal harmony and eternal salvation.", 'https://images-na.ssl-images-amazon.com/images/I/91096cQuABL.jpg', 9.00, 'epic poetry');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Lolita', 'Vladimir Nabokov', 9.00, "The book is internationally famous for its innovative style and infamous for its controversial subject: the protagonist and unreliable narrator, middle aged Humbert Humbert, becomes obsessed and sexually involved with a twelve-year-old girl named Dolores Haze.", 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Lolita_1955.JPG/220px-Lolita_1955.JPG', 5.00, 'novel');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('The Brothers Karamazov', 'Schuppe', 6.00, "Dostoevsky's last and greatest novel, The Karamazov Brothers, is both a brilliantly told crime story and a passionate philosophical debate. The dissolute landowner Fyodor Pavlovich Karamazov is murdered; his sons — the atheist intellectual Ivan, the hot-blooded Dmitry, and the saintly novice Alyosha — are all at some level involved. Bound up with this intense family drama is Dostoevsky's exploration of many deeply felt ideas about the existence of God, the question of human freedom, the collective nature of guilt, the disastrous consequences of rationalism. ", 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/4864/9780486437910.jpg', 7.00, 'philosophical');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Crime and Punishment ', 'Fyodor Dostoyevsky', 5.00, "It is a murder story, told from a murder;s point of view, that implicates even the most innocent reader in its enormities. It is a cat-and-mouse game between a tormented young killer and a cheerfully implacable detective. It is a preternaturally acute investigation of the forces that impel a man toward sin, suffering, and grace. Ever since its publication in 1866 Crime and Punishment has intrigued readers and sorely tested translators, the best of whom seemed to capture one facet of Dostoevsky's masterpiece while missing the rest.", 'https://images-na.ssl-images-amazon.com/images/I/71CcO-jvRUL.jpg', 1.00, 'philosophical');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Wuthering Heights ', 'Emily Brontë', 1.00, "The narrative is non-linear, involving several flashbacks, and two primary narrators: Mr. Lockwood and Ellen 'Nelly' Dean. The novel opens in 1801, with Mr. Lockwood arriving at Thrushcross Grange, a grand house on the Yorkshire moors that he is renting from the surly Heathcliff, who lives at nearby Wuthering Heights. Lockwood is treated rudely, and coldly by the brooding, unsociable Heathcliff, and is forced to stay at Wuthering Heights for a night because one of the savage dogs of the Heights attacks him, and the weather turns against him. The housekeeper cautiously takes him to a chamber to sleep through the night and warns him to not speak to Heathcliff about where he is sleeping, for he would get in deep trouble.", 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4351/9781435159662.jpg', 3.00, 'tragedy');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('The Catcher in the Rye', 'J. D. Salinger', 9.00, "The Catcher in the Rye is a 1945 novel by J. D. Salinger. Originally published for adults, the novel has become a common part of high school and college curricula throughout the English-speaking world; it has also been translated into almost all of the world's major languages. Around 250,000 copies are sold each year, with total sales of more than sixty-five million. The novel's antihero, Holden Caulfield, has become an icon for teenage rebellion.", 'https://images-na.ssl-images-amazon.com/images/I/91LvoDqkF1L.jpg', 1.00, 'fiction');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Pride and Prejudice ', 'Jane Austen', 7.00, "The book is narrated in free indirect speech following the main character Elizabeth Bennet as she deals with matters of upbringing, marriage, moral rightness and education in her aristocratic society. Though the book's setting is uniquely turn of the 19th century, it remains a fascination of modern readership, continuing to remain at the top of lists titled 'most loved books of all time', and receiving considerable attention from literary critics. This modern interest has resulted in a number of dramatic adaptations and a plethora of books developing Austen's memorable characters further.", 'https://englishcentral.net/wp-content/uploads/2015/07/CCR_L5_Pride-and-Prejudice_cover.jpg', 1.00, 'romance');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('The Adventures of Huckleberry Finn ', 'Mark Twain', 1.00, "Revered by all of the town's children and dreaded by all of its mothers, Huckleberry Finn is indisputably the most appealing child-hero in American literature. Unlike the tall-tale, idyllic world of Tom Sawyer, The Adventures of Huckleberry Finn is firmly grounded in early reality. From the abusive drunkard who serves as Huckleberry's father, to Huck's first tentative grappling with issues of personal liberty and the unknown, Huckleberry Finn endeavors to delve quite a bit deeper into the complexities — both joyful and tragic of life.", 'https://www.adrionltd.com/79794-large_default/the-adventures-of-huckleberry-finn.jpg', 8.00, 'picaresque');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES ('Anna Karenina ', 'Leo Tolstoy', 8.00, "Anna Karenina tells of the doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky. Tragedy unfolds as Anna rejects her passionless marriage and must endure the hypocrisies of society. Set against a vast and richly textured canvas of nineteenth-century Russia, the novel's seven major characters create a dynamic imbalance, playing out the contrasts of city and country life and all the variations on love and family happiness. ", 'https://images4.penguinrandomhouse.com/cover/9780553902297', 7.00, 'fiction');
INSERT INTO `libra` (`EMER`, `AUTORI`, `VLERESIMI`, `PERSHKRIMI`, `KOPERTINA`, `CMIMI`, `KATEGORIA`) VALUES  ("Alice's Adventures in Wonderland ", 'Lewis Carroll', '5.00', "In 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole. Thus began the immortal adventures of Alice, perhaps the most popular heroine in English literature. Countless scholars have tried to define the charm of the Alice books–with those wonderfully eccentric characters the Queen of Hearts, Tweedledum, and Tweedledee, the Cheshire Cat, Mock Turtle, the Mad Hatter et al.–by proclaiming that they really comprise a satire on language, a political allegory, a parody of Victorian children’s literature, even a reflection of contemporary ecclesiastical history", 'https://blackwells.co.uk/jacket/l/9781447279990.jpg', 4.00, 'fiction');


INSERT INTO `libra_te_preferuar` (`LIBRA_ID`,`USER_ID`) VALUES (1,2);
INSERT INTO `libra_te_preferuar` (`LIBRA_ID`,`USER_ID`) VALUES (2,2);
INSERT INTO `libra_te_preferuar` (`LIBRA_ID`,`USER_ID`) VALUES (3,2);
INSERT INTO `libra_te_preferuar` (`LIBRA_ID`,`USER_ID`) VALUES (14,2);
INSERT INTO `libra_te_preferuar` (`LIBRA_ID`,`USER_ID`) VALUES (15,2);
INSERT INTO `libra_te_preferuar` (`LIBRA_ID`,`USER_ID`) VALUES (16,2);

INSERT INTO `libra_te_lexuar` (`LIBRA_ID`,`USER_ID`) VALUES (16,2);
INSERT INTO `libra_te_lexuar` (`LIBRA_ID`,`USER_ID`) VALUES (14,2);
INSERT INTO `libra_te_lexuar` (`LIBRA_ID`,`USER_ID`) VALUES (13,2);
INSERT INTO `libra_te_lexuar` (`LIBRA_ID`,`USER_ID`) VALUES (12,2);
INSERT INTO `libra_te_lexuar` (`LIBRA_ID`,`USER_ID`) VALUES (11,2);
INSERT INTO `libra_te_lexuar` (`LIBRA_ID`,`USER_ID`) VALUES (2,2);

INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (14,2);
INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (2,2);
INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (3,2);
INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (16,2);
INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (12,2);
INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (13,2);
INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (18,2);
INSERT INTO `libra_te_blere` (`LIBRA_ID`,`USER_ID`) VALUES (9,2);


INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (16,2);
INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (14,2);
INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (9,2);
INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (11,2);
INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (12,2);
INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (15,2);
INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (7,2);
INSERT INTO `libra_te_arkivuar` (`LIBRA_ID`,`USER_ID`) VALUES (8,2);

-- --------------------------------------------------------

--
-- Table structure for table `libra_te_blere`
--

CREATE TABLE `libra_te_blere` (
  `LIBRA_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `libra_te_preferuar`
--

CREATE TABLE `libra_te_preferuar` (
  `LIBRA_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `libra_te_arkivuar` (
  `LIBRA_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `libra_te_lexuar` (
  `ID` int(11),
  `LIBRA_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
);
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `EMRI` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PASSWORD` binary(64) NOT NULL,
  `TIPI` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




ALTER TABLE `libra_te_preferuar` ADD FOREIGN KEY (`LIBRA_ID`) REFERENCES LIBRA (`ID`) ON DELETE CASCADE;
ALTER TABLE `libra_te_preferuar` ADD FOREIGN KEY (`USER_ID`) REFERENCES USERS (`ID`);

ALTER TABLE `libra_te_lexuar` ADD FOREIGN KEY (`LIBRA_ID`) REFERENCES LIBRA (`ID`) ON DELETE CASCADE;
ALTER TABLE `libra_te_lexuar` ADD FOREIGN KEY (`USER_ID`) REFERENCES USERS (`ID`) ON DELETE CASCADE;

ALTER TABLE `libra_te_blere` ADD FOREIGN KEY (`LIBRA_ID`) REFERENCES LIBRA (`ID`) ON DELETE CASCADE;
ALTER TABLE `libra_te_blere` ADD FOREIGN KEY (`USER_ID`) REFERENCES USERS (`ID`) ON DELETE CASCADE;

ALTER TABLE `libra_te_arkivuar` ADD FOREIGN KEY (`LIBRA_ID`) REFERENCES LIBRA (`ID`) ON DELETE CASCADE;
ALTER TABLE `libra_te_arkivuar` ADD FOREIGN KEY (`USER_ID`) REFERENCES USERS (`ID`) ON DELETE CASCADE;


ALTER TABLE `LIBRA` CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ADD PRIMARY KEY (`id`);
 ALTER TABLE `users` ADD ID int NOT NULL AUTO_INCREMENT ADD primary key;
 ALTER TABLE `libra_te_lexuar` ADD ID int NOT NULL AUTO_INCREMENT ADD primary key;
 ALTER TABLE `libra_te_preferuar` ADD ID int NOT NULL AUTO_INCREMENT ADD primary key;
 ALTER TABLE `libra_te_blere` ADD ID int NOT NULL AUTO_INCREMENT ADD primary key;
 ALTER TABLE `libra_te_arkivuar` ADD ID int NOT NULL AUTO_INCREMENT ADD primary key;
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `libra`
--
-- ALTER TABLE `libra`
--   MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
-- ALTER TABLE `user`
--   MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `following`
--
-- ALTER TABLE `following`
--   ADD CONSTRAINT `following_ibfk_1` FOREIGN KEY (`FOLLOWERS_ID`) REFERENCES `user` (`ID`),
--   ADD CONSTRAINT `following_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `libra_te_blere`
--
-- ALTER TABLE `libra_te_blere`
--   ADD CONSTRAINT `libra_te_blere_ibfk_1` FOREIGN KEY (`LIBRA_ID`) REFERENCES `libra` (`ID`),
--   ADD CONSTRAINT `libra_te_blere_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `libra_te_preferuar`
--
-- ALTER TABLE `libra_te_preferuar`
--   ADD CONSTRAINT `libra_te_preferuar_ibfk_1` FOREIGN KEY (`LIBRA_ID`) REFERENCES `libra` (`ID`),
--   ADD CONSTRAINT `libra_te_preferuar_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`);
-- COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- QUERIES
-- GET LIBRA TE PREFERUAR
SELECT L.EMER,L.AUTORI,L.VLERESIMI,L.PERSHKRIMI,L.KOPERTINA,L.CMIMI,L.KATEGORIA FROM `libra_te_preferuar` LP JOIN USERS U ON U.ID=LP.USER_ID
JOIN LIBRA L ON L.ID=LP.LIBRA_ID

-- Get trending books
SELECT * FROM LIBRA L WHERE L.VLERESIMI>8 LIMIT 3

--get bought books 
SELECT L.ID,L.EMER,L.VLERESIMI,L.KOPERTINA FROM `libra_te_blere` LL JOIN USERS U ON U.ID=LL.USER_ID
JOIN LIBRA L ON L.ID=LL.LIBRA_ID WHERE U.ID=$user_id $limitQuery

--get archived books
SELECT L.ID,L.EMER,L.VLERESIMI,L.KOPERTINA FROM `libra_te_arkivuar` LL JOIN USERS U ON U.ID=LL.USER_ID
JOIN LIBRA L ON L.ID=LL.LIBRA_ID WHERE U.ID=$user_id $limitQuery