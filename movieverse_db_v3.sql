-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Nov 09, 2024 at 11:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `birthdate` datetime NOT NULL,
  `countryId` text NOT NULL,
  `biography` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `name`, `birthdate`, `countryId`, `biography`, `image`) VALUES
(1, 'John Doe', '1980-05-14 03:00:00', '0', 'John Doe is an American actor known for his role in numerous films and television series.', 'https://image.tmdb.org/t/p/w500/qKBWrohBYegm6AAaLrtxEqqouIK.jpg'),
(53, 'Peter Stormare', '0000-00-00 00:00:00', '0', 'Peter Stormare was born in Arbrå, Gävleborgs län, Sweden. He is a Swedish film, stage, voice and television actor as well as a theatrical director, playwright and musician. He is perhaps best known for his roles as John Abruzzi in Prison Break and as Gaear Grimsrud, one of the two kidnappers in Fargo.\r\n\r\nPeter Stormare began his acting career at the Royal National Theatre of Sweden, performing for eleven years. In 1990 he became the Associate Artistic Director at the Tokyo Globe Theatre and directed productions of many Shakespeare plays, including \"Hamlet\". In 1993 he moved to New York, where he appeared in English productions. He continues to work in both the United States and his his homeland of Sweden. He resides in Los Angeles, California, USA, with his wife.', 'https://image.tmdb.org/t/p/w500/5muzSVt66Qxc8KuVbq0phZIN9tj.jpg'),
(112, 'Cate Blanchett', '0000-00-00 00:00:00', '0', 'Catherine Elise Blanchett (born May 14, 1969) is an Australian actor and producer. Regarded as one of the best actresses of her generation, she is known for her versatile work across independent films, blockbusters, and the stage. Blanchett is the recipient of numerous accolades, including two Academy Awards, three British Academy Film Awards, three Screen Actors Guild Awards, and three Golden Globe Awards.\r\n\r\nAfter graduating from the National Institute of Dramatic Art, Blanchett began her acting career on the Australian stage, taking on roles in Electra in 1992 and Hamlet in 1994. She came to international attention as Elizabeth I in the drama film Elizabeth (1998), for which she won the Golden Globe and BAFTA Award for Best Actress, and received her first of seven Academy Award nominations. Her portrayal of Katharine Hepburn in Martin Scorsese\'s The Aviator (2004) won her the Academy Award for Best Supporting Actress. She later won the Academy Award for Best Actress for playing a neurotic former socialite in Woody Allen\'s comedy-drama Blue Jasmine (2013). Blanchett\'s other Oscar-nominated roles include Notes on a Scandal (2006), I\'m Not There (2007), Elizabeth: The Golden Age (2007), and Carol (2015). Her highest-grossing films include The Lord of the Rings (2001–2003) and The Hobbit (2012–2014) trilogies, The Curious Case of Benjamin Button (2008), Indiana Jones and the Kingdom of the Crystal Skull (2008), Cinderella (2015), Thor: Ragnarok (2017), and Ocean\'s 8 (2018).\r\n\r\nBlanchett has performed in over 20 theatre productions. From 2008 to 2013, she and her husband, Andrew Upton, were the artistic directors of the Sydney Theatre Company. Some of her stage roles during that period were in revivals of A Streetcar Named Desire, Uncle Vanya and The Maids, garnering several theatre awards and nominations. She made her Broadway debut in 2017 in The Present, for which she received a Tony Award for Best Actress in a Play nomination. Blanchett has also received Emmy Award nominations for Outstanding Lead Actress in a Limited Series or Movie and Outstanding Limited Series as producer for the FX/Hulu historical drama miniseries Mrs. America (2020).', 'https://image.tmdb.org/t/p/w500/vUuEHiAR0eD3XEJhg2DWIjymUAA.jpg'),
(287, 'Brad Pitt', '0000-00-00 00:00:00', '0', 'William Bradley Pitt (born December 18, 1963) is an American actor and film producer. He is the recipient of various accolades, including an Academy Award, a British Academy Film Award, and two Golden Globe Awards for his acting, in addition to a second Academy Award, a second British Academy Film Award, a third Golden Globe Award, and a Primetime Emmy Award as a producer under his production company, Plan B Entertainment.\r\n\r\nPitt first gained recognition as a cowboy hitchhiker in the road film Thelma & Louise (1991). His first leading roles in big-budget productions came with the drama films A River Runs Through It (1992) and Legends of the Fall (1994), and the horror film Interview with the Vampire (1994). He gave critically acclaimed performances in the crime thriller Seven (1995) and the science fiction film 12 Monkeys (1995), the latter earning him a Golden Globe Award for Best Supporting Actor and an Academy Award nomination.\r\n\r\nPitt starred in Fight Club (1999) and the heist film Ocean\'s Eleven (2001), as well as its sequels, Ocean\'s Twelve (2004) and Ocean\'s Thirteen (2007). His greatest commercial successes have been Ocean\'s Eleven (2001), Troy (2004), Mr. & Mrs. Smith (2005), World War Z (2013), and Once Upon a Time in Hollywood (2019), for which he won a second Golden Globe Award and the Academy Award for Best Supporting Actor. Pitt\'s other Academy Award nominated performances were in The Curious Case of Benjamin Button (2008) and Moneyball (2011). He produced The Departed (2006) and 12 Years a Slave (2013), both of which won the Academy Award for Best Picture, and also The Tree of Life (2011), Moneyball (2011) and The Big Short (2015), all of which were nominated for Best Picture. Pitt is the second actor to have won Academy Awards for both Best Supporting Actor and Best Picture.', 'https://image.tmdb.org/t/p/w500/9OfnD7lxgIj3BNQpJFnwxnwl6w5.jpg'),
(380, 'Robert De Niro', '0000-00-00 00:00:00', '0', 'Robert Anthony De Niro (born August 17, 1943) is an American actor. Known for his collaborations with Martin Scorsese, he is considered to be one of the best actors of his generation. De Niro is the recipient of various accolades, including two Academy Awards, a Golden Globe Award, the Cecil B. DeMille Award, and a Screen Actors Guild Life Achievement Award. In 2009, De Niro received the Kennedy Center Honor, and earned a Presidential Medal of Freedom from U.S. President Barack Obama in 2016.\r\n\r\nDe Niro studied acting at HB Studio, Stella Adler Conservatory, and Lee Strasberg\'s Actors Studio. His first collaboration with Scorsese was with the 1973 film Mean Streets. De Niro earned two Academy Awards, one for Best Supporting Actor for his role as Vito Corleone in Francis Ford Coppola\'s The Godfather Part II (1974) and the other for Best Actor portraying Jake LaMotta in Scorsese\'s drama Raging Bull (1980). His other Oscar-nominated roles were for Taxi Driver (1976), The Deer Hunter (1978), Awakenings (1990), Cape Fear (1991), and Silver Linings Playbook (2012).\r\n\r\nOther notable roles include in 1900 (1976), The King of Comedy (1982), Once Upon a Time in America (1984), Brazil (1985), The Mission (1986), Goodfellas (1990), This Boy\'s Life (1993), Mary Shelley’s Frankenstein (1994), Heat (1995), Casino (1995), Jackie Brown (1997), The Good Shepherd (2006), Joker (2019), and The Irishman (2019). He made his directorial film debut with A Bronx Tale (1993). His comedic roles include Midnight Run (1988), Wag the Dog (1997), Analyze This (1999), the Meet the Parents films (2000-2010), and The Intern (2015).\r\n\r\nAlso known for his television roles, De Niro portrayed Bernie Madoff in the HBO film The Wizard of Lies (2017), earning a Primetime Emmy Award for Outstanding Lead Actor in a Limited Series or Movie nomination. He received further Emmy Award nominations for producing the Netflix limited series When They See Us (2019), and for portraying Robert Mueller on Saturday Night Live.[1]\r\n\r\nDe Niro and producer Jane Rosenthal founded the film and television production company TriBeCa Productions in 1989, which has produced several films alongside his own. Also with Rosenthal, he founded the Tribeca Film Festival in 2002. Six of De Niro\'s films have been inducted into the United States National Film Registry by the Library of Congress as \"culturally, historically, or aesthetically significant\".', 'https://image.tmdb.org/t/p/w500/cT8htcckIuyI1Lqwt1CvD02ynTh.jpg'),
(418, 'Robert Patrick', '0000-00-00 00:00:00', '0', 'Robert Hammond Patrick was born on November 5, 1958 in Marietta, Georgia, raised there and Boston, Mass., Dayton, Ohio, Detroit, Michigan, and Cleveland, Ohio. The eldest of five children. He attended the Bowling Green State University in Ohio, but dropped out after he took a drama course and became interested in acting. After leaving college, he took a job as a house painter and continued as such until a boating accident in Lake Erie in 1984. He swam for three hours in order to save the others still stranded on the accident site, while he nearly drowned in his attempt. After the accident, he moved from Ohio to Los Angeles, California. He worked in a bar to supplement his income and even lived in his own car.\r\n\r\nPatrick starred in various direct-to-video television movies, and had a short appearance in Die Hard 2 (1990). His breakthrough role came as the liquid-metal, shape-shifting T-1000 in James Cameron\'s blockbuster Terminator 2: Judgment Day (1991). After that, he landed roles in various feature films such as Last Action Hero (1993), Fire in the Sky (1993) and Striptease (1996). His performance in Fire in the Sky caught the attention of Chris Carter, creator of the television series The X-Files (1993). After David Duchovny distanced himself from the series during its seventh season, Patrick was cast as FBI Special Agent John Doggett.\r\n\r\nOn the small screen, Robert was a series regular on Season Six of HBO\'s True Blood (2008) and also appeared in the final season. He had a memorable role in the final season of Sons of Anarchy (2008), did a cameo role on the sitcom Community (2009), and had a supporting role in Season One on Robert Rodriguez\'s From Dusk Till Dawn: The Series (2014) for the El Rey Network. In Spring 2017, it was announced that Robert would have a featured role in Gale Anne Hurd\'s highly anticipated Amazon series Lore (2017), based on the popular horror podcast. Recent film credits include Universal Pictures\' Identity Thief (2013) with Melissa McCarthy and Jason Bateman, Warner Brothers\' Gangster Squad (2013) in which he played Josh Brolin\'s squad member going up against Sean Penn as Mickey Cohan, Trouble with the Curve (2012) opposite Clint Eastwood, Lovelace (2013) opposite Sharon Stone and Amanda Seyfried, Universal\'s remake of Endless Love (2014) with Alex Pettyfer and Gabriella Wilde, Focus Features\' Kill the Messenger (2014) opposite Jeremy Renner, and The Road Within (2014) with Kyra Sedgwick and Zoë Kravitz.\r\n\r\nIn addition to his acting success, Patrick is a lifelong supporter of the military and the USO. The grandson of an Army veteran who served during World Wars I and II and the Korean War, Patrick grew up with a profound respect for troops. Devoted to giving back, he regularly goes on USO hospital visits and has participated in four USO tours in seven countries since 2008, visiting more than 8,100 service members and military families. He is a passionate Harley-Davidson enthusiast and is co-owner of Harley-Davidson of Santa Clarita. He currently resides in Los Angeles, California with his wife, Barbara and their two children.', 'https://image.tmdb.org/t/p/w500/qRv2Es9rZoloullTbzss3I5j1Mp.jpg'),
(454, 'Michael Peña', '1976-01-12 03:00:00', '0', 'Michael Anthony Peña (born January 13, 1976) is an American film and television actor, probably best known for his prominent roles in Crash, Observe and Report, and Oliver Stone\'s World Trade Center. He also appeared in the Nickelback music video for their song Savin\' Me. Peña portrays Luis in the Ant Man film series in the Marvel Cinematic Universe, appearing as the character in Ant-Man (2015) and Ant-Man and the Wasp (2018).\r\n\r\nDescription above from the Wikipedia article Michael Peña, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/afs4PCiwn8LR93a10drULLVeVLo.jpg'),
(884, 'Steve Buscemi', '0000-00-00 00:00:00', '0', 'An American actor, writer and director. He was born in Brooklyn, New York, the son of Dorothy, who worked as a hostess at Howard Johnson\'s, and John Buscemi, a sanitation worker and Korean War veteran. Buscemi\'s father was Sicilian American and his mother Irish American. He has three brothers: Jon, Ken, and Michael. Buscemi was raised Roman Catholic.\r\n\r\nBuscemi has starred and supported in successful Hollywood and indie films, including Parting Glances (1986), New York Stories (1989), Mystery Train (1989), Reservoir Dogs (1992), Pulp Fiction (1994), Desperado (1995), Con Air (1997), Armageddon (1998), The Grey Zone (2001), Ghost World (2001), Big Fish (2003), Lean on Pete (2017), and The Death of Stalin (2017). He is also known for his appearances in many films by Coen brothers: Miller\'s Crossing (1990), Barton Fink (1991), The Hudsucker Proxy (1994), Fargo (1996), and The Big Lebowski (1998). Buscemi provides the voice of Randall Boggs in the Monsters, Inc. franchise.\r\n\r\nFrom 2010 to 2014, he portrayed Enoch \"Nucky\" Thompson in the critically acclaimed series Boardwalk Empire, which earned him two Screen Actors Guild Awards, a Golden Globe, and two nominations for an Emmy Award. He made his directorial debut in 1996, with Trees Lounge, in which he also starred. Other works include Animal Factory (2000), Lonesome Jim (2005), and Interview (2007).\r\n\r\nBuscemi has one son, Lucian, with his wife Jo Andres.', 'https://image.tmdb.org/t/p/w500/n0pZumkrcZrAPMoPq684RhYnjPV.jpg'),
(1115, 'Stephen Graham', '1973-08-02 03:00:00', '0', 'Stephen Graham (born August 3, 1973) is a British film and television actor, best known for playing Andrew \'Combo\' Gascoigne in This Is England, Al Capone in the HBO series Boardwalk Empire, and Scrum in the Pirates of the Caribbean franchise.', 'https://image.tmdb.org/t/p/w500/AvBy4b55TtV9KQc4C35mZQZiuLk.jpg'),
(1245, 'Scarlett Johansson', '1984-11-21 03:00:00', '0', 'Scarlett Ingrid Johansson (born November 22, 1984) is an American actress. The world\'s highest-paid actress in 2018 and 2019, she has featured multiple times on the Forbes Celebrity 100 list. Her films have grossed over $14.3 billion worldwide, making Johansson the ninth-highest-grossing box office star of all time. She has received various accolades, including a Tony Award and a British Academy Film Award, in addition to nominations for two Academy Awards and five Golden Globe Awards.\r\n\r\nJohansson aspired to be an actress from an early age and first appeared on stage in an Off-Broadway play as a child actor. She made her film debut in the fantasy comedy North (1994), and gained early recognition for her roles in Manny & Lo (1996), The Horse Whisperer (1998), and Ghost World (2001). Johansson shifted to adult roles in 2003 with her performances in Lost in Translation, which won her a BAFTA Award for Best Actress, and Girl with a Pearl Earring. She was nominated for Golden Globe Awards for these films, and for playing a troubled teenager in the drama A Love Song for Bobby Long (2004) and a seductress in psychological thriller Match Point (2005). The latter was her first collaboration with Woody Allen, who later directed her in Scoop (2006) and Vicky Cristina Barcelona (2008).\r\n\r\nJohansson\'s other works of this period include The Prestige (2006) and the albums Anywhere I Lay My Head (2008) and Break Up (2009), both of which charted on the Billboard 200. In 2010, Johansson debuted on Broadway in a revival of A View from the Bridge, which won her a Tony Award for Best Featured Actress, and began portraying Black Widow in the Marvel Cinematic Universe film Iron Man 2. She reprised the role in eight films, most recently in her solo feature Black Widow (2021), gaining global recognition for her performances. During this period, Johansson starred in the science fiction films Her (2013), Under the Skin (2013) and Lucy (2014).\r\n\r\nShe received two simultaneous Academy Award nominations—Best Actress and Best Supporting Actress—for the respective roles of an actress going through a divorce in the drama Marriage Story (2019) and a single mother in Nazi Germany in the satire Jojo Rabbit (2019). Labeled a sex symbol, Johansson has been referred to as one of the world\'s most attractive women by various media outlets. She is a prominent brand endorser and supports several charitable causes. Divorced from actor Ryan Reynolds and businessman Romain Dauriac, Johansson has been married to comedian Colin Jost since 2020. She has two children, one with Dauriac and another with Jost.', 'https://image.tmdb.org/t/p/w500/6NsMbJXRlDZuDzatN2akFdGuTvx.jpg'),
(1461, 'George Clooney', '0000-00-00 00:00:00', '0', 'George Timothy Clooney (born May 6, 1961) is an American actor and filmmaker. He is the recipient of numerous accolades, including a British Academy Film Award, four Golden Globe Awards, and two Academy Awards, one for his acting and the other as a producer. In 2018, he was the recipient of the AFI Life Achievement Award, and in 2022, he was felicitated at the Kennedy Center Honors for a \"lifetime of contributions to American culture.\"', 'https://image.tmdb.org/t/p/w500/wa1zIsRfHpRITXSpG48M3ibJblQ.jpg'),
(1920, 'Winona Ryder', '1971-10-28 03:00:00', '0', 'Winona Laura Horowitz (born October 29, 1971), known professionally as Winona Ryder, is an American actress. She is the recipient of several awards, including a Golden Globe Award, and has been nominated for two Academy Awards. She is known for taking on quirky roles in her earlier films, later playing more prominent roles in the 1990s.\r\n\r\nAfter Ryder\'s film debut in Lucas (1986), she gained attention with her performance in Tim Burton\'s Beetlejuice (1988). She further rose to prominence with major roles in Heathers (1989), Mermaids (1990), Edward Scissorhands (1990), and Bram Stoker\'s Dracula (1992). She garnered critical acclaim and two consecutive Academy Award nominations for her portrayals of socialite May Welland in Martin Scorsese\'s The Age of Innocence (1993) and Jo March in the fifth film adaptation of Little Women (1994). Her other films during this period were Reality Bites (1994), How to Make an American Quilt (1995), The Crucible (1996), Alien Resurrection (1997), Celebrity (1998), and Girl, Interrupted (1999), which she also executive-produced.\r\n\r\nIn 2002, Ryder starred in the critically panned box office hit Mr. Deeds, after which her career declined and she took a break from films. In 2009, she returned in the high-profile film Star Trek. In 2010, she was nominated for two Screen Actors Guild Awards: as the lead actress in the television film When Love Is Not Enough: The Lois Wilson Story and as part of the cast of Black Swan. She also reunited with Burton for Frankenweenie (2012). She has starred as Joyce Byers in the Netflix science fiction horror series Stranger Things (2016–present), for which she has received Golden Globe and Screen Actors Guild nominations; and in 2020, she starred in the HBO drama miniseries The Plot Against America.\r\n\r\nHer relationship with Johnny Depp in the early 1990s and a 2001 arrest for shoplifting were both subjects of tabloid journalism. She has been open about her personal struggles with anxiety and depression. In 2000, Ryder received a star on the Hollywood Walk of Fame.', 'https://image.tmdb.org/t/p/w500/5yteOSY2lgGOgSWmRTlxqfY59MS.jpg'),
(1981, 'Alfre Woodard', '0000-00-00 00:00:00', '0', 'Alfre Ette Woodard (born November 8, 1952) is an American film, stage, and television actress. She has been nominated for an Academy Award and Grammy Award, 12 times for Emmy Awards (winning four), and has also won a Golden Globe and three Screen Actors Guild Awards. She is known for her role in films such as Cross Creek, Miss Firecracker, Grand Canyon, Passion Fish, Primal Fear, Star Trek: First Contact, Miss Evers\' Boys, K-PAX, Radio, Take the Lead and The Family That Preys.', 'https://image.tmdb.org/t/p/w500/70AVFDROBAeVhWDEMKWfXPpBVYq.jpg'),
(2039, 'Brendan Gleeson', '0000-00-00 00:00:00', '0', 'Brendan Gleeson (born 29 March 1955) is an Irish actor and film director. He is the recipient of three IFTA Awards, two BIFA\'s, and a Primetime Emmy Award and has been nominated twice for a BAFTA Award, five times for a Golden Globe Award and once for an Academy Award. In 2020, he was listed at number 18 on The Irish Times list of Ireland\'s greatest film actors. He is the father of actors Domhnall Gleeson and Brian Gleeson.\r\n\r\nHe is best known for his performance as Alastor Moody in the Harry Potter films (2005–2010). He is also known for his supporting roles in films such as Braveheart (1995), Michael Collins (1996), 28 Days Later (2002), Gangs of New York (2002), Cold Mountain (2003), Troy (2004), Suffragette (2015), Paddington 2 (2017), The Ballad of Buster Scruggs (2018), and The Tragedy of Macbeth (2021). He is also known for his leading roles in films such as The General (1998), In Bruges (2008), The Guard (2011), Calvary (2014), Frankie (2019), and The Banshees of Inisherin (2022). He received a nomination for the Academy Award for Best Supporting Actor for the lattermost film.\r\n\r\nHe won an Primetime Emmy Award in 2009 for his portrayal of Winston Churchill in the television film Into the Storm. He also received a Golden Globe Award nomination for his performance as Donald Trump in the Showtime series The Comey Rule (2020). From 2017 to 2019 he starred in the crime series Mr. Mercedes. He received an Emmy Award nomination for Stephen Frears\' Sundance TV series State of the Union (2022).', 'https://image.tmdb.org/t/p/w500/dTS2y7FLsnrskf0tPb8f9H7KAP3.jpg'),
(2224, 'Christian Slater', '0000-00-00 00:00:00', '0', 'Christian Michael Leonard Slater (born August 18, 1969) is an American actor. He made his film debut playing a leading role in the 1985 film The Legend of Billie Jean. He then played a monk\'s apprentice alongside Sean Connery in The Name of the Rose before gaining recognition for his breakthrough role in the cult film Heathers. In the 1990s Slater featured in many big budget films including Robin Hood: Prince of Thieves, Interview with the Vampire: The Vampire Chronicles, Broken Arrow and Hard Rain. He was also featured in the cult film True Romance. Since 2000 Slater has combined work in the film business with television, including appearances in The West Wing and Alias. Slater was married to Ryan Haddon between 2000 and 2005; they had two children together. Slater has had widely publicized brushes with the law, including being sentenced to three months in jail for assault in 1997.', 'https://image.tmdb.org/t/p/w500/6ww3uweEEXMlvtNjTlgBHxLErPF.jpg'),
(2229, 'Catherine Keener', '0000-00-00 00:00:00', '0', 'Catherine Ann Keener (born March 23, 1959) is an American actress. Considered one of the independent film industry\'s most reliable performers, Keener is known for portraying disgruntled and melancholic yet sympathetic women in independent films, as well as supporting roles in studio films. She has been twice nominated for the Academy Award for Best Supporting Actress for Being John Malkovich (1999) and for her portrayal of author Harper Lee in Capote (2005).\r\n\r\nKeener also appeared in the films The 40-Year-Old Virgin (2005), Into the Wild (2007), Synecdoche, New York (2008), and Get Out (2017), which were all well received by critics. Keener is the muse of director Nicole Holofcener, having appeared in each of Holofcener\'s first five films. She also appeared in each of director Tom DiCillo\'s first four films, and three films directed by Spike Jonze. From 2018 to 2020, she starred in the Showtime dramedy series Kidding.\r\n\r\n​From Wikipedia, the free encyclopedia', 'https://image.tmdb.org/t/p/w500/n4CTwGszs6cwS1wJRlDQ5Mlh7Ex.jpg'),
(2231, 'Samuel L. Jackson', '0000-00-00 00:00:00', '0', 'Samuel Leroy Jackson (born December 21, 1948) is an American actor and producer. One of the most widely recognized actors of his generation, the films in which he has appeared have collectively grossed over $27 billion worldwide, making him the second highest-grossing actor of all time. The Academy of Motion Picture Arts and Sciences gave him an Academy Honorary Award in 2022 as \"A cultural icon whose dynamic work has resonated across genres and generations and audiences worldwide\".\r\n\r\nJackson started his career on stage making his professional theatre debut in Mother Courage and her Children in 1980 at The Public Theatre. From 1981 to 1983 he originated the role of Private Louis Henderson in A Soldier\'s Play Off-Broadway. He also originated the role of Boy Willie in August Wilson\'s The Piano Lesson in 1987 at the Yale Repertory Theatre. He returned to the play in the 2022 Broadway revival playing Doaker Charles. Jackson early film roles include Coming to America (1988), Goodfellas (1990), Patriot Games (1992), Juice (1992), True Romance (1993), and Jurassic Park (1993), Menace II Society (1993), and Fresh (1994). His collaborations with Spike Lee led to greater prominence with films such as School Daze (1988), Do the Right Thing (1989), Mo\' Better Blues (1990), Jungle Fever (1991), Oldboy (2013), and Chi-Raq (2015).\r\n\r\nJackson\'s breakout role was in Quentin Tarantino\'s Pulp Fiction (1994) which earned him a BAFTA Award win and a nomination for the Academy Award for Best Supporting Actor. He further collaborated with Tarantino, acting in Jackie Brown (1997), Django Unchained (2012), and The Hateful Eight (2015). He\'s known for having appeared in a number of big-budget films, including Die Hard with a Vengeance (1995), A Time to Kill (1996), The Long Kiss Goodnight (1996), The Negotiator (1997), Deep Blue Sea (1999), Unbreakable (2000), Shaft (2000) and its reboot (2019), XXX (2002), S.W.A.T. (2003), Coach Carter (2005), Snakes on a Plane (2006), Kingsman: The Secret Service (2014), Kong: Skull Island (2017), and Glass (2019).\r\n\r\nHe also gained widespread recognition as the Jedi Mace Windu in the Star Wars prequel trilogy (1999–2005), later voicing the role in the animated film Star Wars: The Clone Wars (2008) and the video game Lego Star Wars: The Clone Wars (2011). With his permission, his likeness was used for the Ultimate version of the Marvel Comics character Nick Fury; he subsequently played Fury in 11 Marvel Cinematic Universe films, beginning with a cameo appearance in Iron Man (2008), as well as guest-starring in the television series Agents of S.H.I.E.L.D. He will reprise this role in the upcoming Disney+ series Secret Invasion, which is set to premiere on June 21, 2023. Jackson has provided his voice for several animated films, documentaries, television series, and video games, including Lucius Best / Frozone in the Pixar films The Incredibles (2004) and Incredibles 2 (2018).', 'https://image.tmdb.org/t/p/w500/AiAYAqwpM5xmiFrAIeQvUXDCVvo.jpg'),
(2232, 'Michael Keaton', '0000-00-00 00:00:00', '0', 'Michael John Douglas (born September 5, 1951), known professionally as Michael Keaton, is an American actor, producer, and director.\r\n\r\nHe is best known for portraying the DC Comics superhero Bruce Wayne / Batman in the films Batman (1989), Batman Returns (1992) and The Flash (2023), as well as Jack Butler in Mr. Mom (1983), Betelgeuse in Beetlejuice (1988), and Adrian Toomes / Vulture in Spider-Man: Homecoming (2017) and Morbius (2022)\r\n\r\nHis breakout role was as fast-talking schemer Bill \"Blaze\" Blazejowski in the 1982 film Night Shift (which was also Ron Howard\'s second job as a director). He later appeared in a variety of films ranging from dramas and romantic comedies to thriller and action films, such as Clean and Sober (1989), Much Ado About Nothing (1993), The Paper (1994), Multiplicity (1996), Jackie Brown (1997), Herbie: Fully Loaded (2005), The Other Guys (2010), Spotlight (2015), The Founder (2016), Dumbo (2019), The Trial of the Chicago 7 (2020) and Worth (2021). He has also provided voices for characters in animated films such as Porco Rosso (1992), Cars (2006), Toy Story 3 (2010), and Minions (2015).\r\n\r\nIn 2021, he starred in the limited series Dopesick on Hulu. In 2014, Keaton garnered critical acclaim for his performance in Alejandro González Iñárritu\'s black comedy film Birdman, winning a Golden Globe Award for Best Actor—Motion Picture Musical or Comedy and receiving a nomination for the Academy Award for Best Actor. He had previously received a Golden Globe Award nomination for his performance in Live from Baghdad (2002) and five Screen Actors Guild Award nominations, which ultimately yielded three wins for his performances in Birdman (2014), Spotlight (2015), and The Trial of the Chicago 7 (2020).', 'https://image.tmdb.org/t/p/w500/82rxrGxOqQW2NjKsIiNbDYHFfmb.jpg'),
(2282, 'Ben Kingsley', '0000-00-00 00:00:00', '0', 'Sir Ben Kingsley (born Krishna Pandit Bhanji; December 31, 1943) is an English actor. He has received various accolades throughout his career spanning five decades, including an Academy Award, a British Academy Film Award, a Grammy Award, and two Golden Globe Awards. Kingsley was appointed Knight Bachelor in 2002 for services to the British film industry. In 2010, he was awarded a star on the Hollywood Walk of Fame. In 2013, he received the Britannia Award for Worldwide Contribution to Filmed Entertainment.\r\n\r\nDescription above from the Wikipedia article Ben Kingsley, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/vQtBqpF2HDdzbfXHDzR4u37i1Ac.jpg'),
(2440, 'Bill Nighy', '0000-00-00 00:00:00', '0', 'William Francis Nighy (born 12 December 1949) is an English actor. Known for his work on screen and stage, he has received numerous awards, including two BAFTA Awards, a Golden Globe Award and nominations for an Academy Award and a Tony Award.\r\n\r\nNighy started his career with the Everyman Theatre, Liverpool and made his London debut with the Royal National Theatre starting with The Illuminatus! in 1977. There he gained acclaim for his roles in David Hare\'s Pravda in 1985, Harold Pinter\'s Betrayal in 1991, Tom Stoppard\'s Arcadia in 1993, and Anton Chekov\'s The Seagull in 1994. He received a Laurence Olivier Award for Best Actor nomination for his performance in Blue/Orange in 2001. He made his Broadway debut in Hare\'s The Vertical Hour in 2006, and returned in the 2015 revival of Hare\'s Skylight earning a Tony Award for Best Actor in a Play nomination.\r\n\r\nEarly film roles include in the comedies Still Crazy (1998), and Blow Dry (1999) before his breakout role in Love Actually (2003) which earned him a BAFTA Award for Best Supporting Actor. He soon gained recognition portraying Davy Jones in the Pirates of the Caribbean film series (2006-2007), and Viktor in the Underworld film series (2003-2009). Other films include Shaun of the Dead (2004), The Hitchhiker\'s Guide to the Galaxy (2005), The Constant Gardener (2005), Notes on a Scandal (2006), Hot Fuzz (2007), Valkyrie (2008), Harry Potter and the Deathly Hallows – Part 1 (2010), The Best Exotic Marigold Hotel (2012), About Time (2013), Emma (2020), and Living (2022), the last of these earning him his first career Academy Award nomination.\r\n\r\nNighy has gained acclaim for his roles in television earning a British Academy Television Award for Best Actor for his performance in BBC One series State of Play (2003), and a Golden Globe Award for Best Actor for the BBC film Gideon\'s Daughter (2007). He\'s also known for his roles in HBO\'s The Girl in the Café (2006) and PBS\'s Page Eight (2012).', 'https://image.tmdb.org/t/p/w500/ixFI2YCGNGJfwlpI8iyhvVZRg8C.jpg'),
(2524, 'Tom Hardy', '1977-09-14 03:00:00', '0', 'Edward Thomas Hardy CBE (born 15 September 1977) is an English actor, producer, writer and former model. After studying acting at the Drama Centre London, he made his film debut in Ridley Scott\'s Black Hawk Down (2001). He has since been nominated for the Academy Award for Best Supporting Actor, two Critics\' Choice Movie Awards and two British Academy Film Awards, receiving the 2011 BAFTA Rising Star Award.\r\n\r\nHardy has also appeared in films such as Star Trek: Nemesis (2002), RocknRolla (2008), Bronson (2008), Warrior (2011), Tinker Tailor Soldier Spy (2011), Lawless (2012), This Means War (2012), Locke (2013), The Drop (2014), and The Revenant (2015), for which he received a nomination for an Academy Award. In 2015, he portrayed \"Mad\" Max Rockatansky in Mad Max: Fury Road and both Kray twins in Legend. He has appeared in three Christopher Nolan films: Inception (2010) as Eames, The Dark Knight Rises (2012) as Bane, and Dunkirk (2017) as an RAF fighter-pilot. He starred as both Eddie Brock and Venom in the 2018 anti-hero film Venom and its sequel Venom: Let There Be Carnage (2021).\r\n\r\nHardy\'s television roles include the HBO war drama mini-series Band of Brothers (2001), the BBC historical drama mini-series The Virgin Queen (2005), Bill Sikes in the BBC\'s mini-series Oliver Twist (2007), Heathcliff in ITV\'s Wuthering Heights (2009), the Sky 1 drama series The Take (2009), and as Alfie Solomons in the BBC historical crime drama series Peaky Blinders (2014–present). He created, co-produced, and took the lead in the eight-part historical fiction series Taboo (2017) on BBC One and FX. In 2020, he also contributed narration work to the Amazon docuseries All or Nothing: Tottenham Hotspur.\r\n\r\nHardy has performed on both British and American stages. He was nominated for the Laurence Olivier Award for Most Promising Newcomer for his role as Skank in the production of In Arabia We\'d All Be Kings (2003), and was awarded the 2003 Evening Standard Theatre Award for Outstanding Newcomer for his performances in both In Arabia We\'d All Be Kings and Blood, in which he played Luca. He starred in the production of The Man of Mode (2007) and received positive reviews for his role in the play The Long Red Road (2010). Hardy is active in charity work and is an ambassador for the Prince\'s Trust. He was appointed a CBE in the 2018 Birthday Honours for services to drama.\r\n\r\nDescription above from the Wikipedia article Tom Hardy, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg'),
(2888, 'Will Smith', '0000-00-00 00:00:00', '0', 'Willard Carroll Smith II (born September 25, 1968) is an American actor and rapper. Known for variety of roles, Smith has received various accolades, including an Academy Award, a British Academy Film Award and four Grammy Awards.\r\n\r\nSmith began his acting career starring as a fictionalized version of himself on the NBC sitcom The Fresh Prince of Bel-Air (1990–1996). He first gained recognition as part of a hip hop duo with DJ Jazzy Jeff, with whom he released five studio albums and the US Billboard Hot 100 top 20 singles \"Parents Just Don\'t Understand\", \"A Nightmare on My Street\", \"Summertime\", \"Ring My Bell\", and \"Boom! Shake the Room\" from 1984 to 1994. He released the solo albums Big Willie Style (1997), Willennium (1999), Born to Reign (2002), and Lost and Found (2005), which contained the US number-one singles \"Gettin\' Jiggy wit It\" and \"Wild Wild West\". He has received four Grammy Awards for his rap performances.\r\n\r\nSmith achieved wider fame as a leading man in films such as the action film Bad Boys (1995), its sequels Bad Boys II (2003) and Bad Boys for Life (2020), and the sci-fi comedies Men in Black (1997), Men in Black II (2002), and Men in Black 3 (2012). After starring in the thrillers Independence Day (1996) and Enemy of the State (1998), he received Academy Award for Best Actor nominations for his portrayal as Muhammad Ali in Ali (2001), and as Chris Gardner in The Pursuit of Happyness (2006). He then starred in a range of commercially successful films, including I, Robot (2004), Shark Tale (2004), Hitch (2005), I Am Legend (2007), Hancock (2008), Seven Pounds (2008), Suicide Squad (2016) and Aladdin (2019).\r\n\r\nFor his portrayal of Richard Williams in the biographical sports drama King Richard (2021), Smith won the Academy Award, BAFTA Award, Golden Globe Award, and Screen Actors Guild Award for Best Actor.', 'https://image.tmdb.org/t/p/w500/1QqaRZ8neYlqLx7ODZC4as47wUV.jpg'),
(3292, 'Nicholas Hoult', '1989-12-06 03:00:00', '0', 'Nicholas Caradoc Hoult (born December 7, 1989) is an English actor. His body of work includes supporting work in big-budget mainstream productions and starring roles in independent projects in both the American and the British film industries. He has been nominated for awards such as a British Academy Film Award, a Golden Globe Award, and a Screen Actors Guild Award.\r\n\r\nBorn and raised in Wokingham, Berkshire, Hoult was drawn to acting from a young age and appeared in local theatre productions as a child. He made his screen debut at age seven in the 1996 film Intimate Relations, and appeared in several television programmes between 1998 and 2001. Hoult\'s breakthrough role came when he played Marcus Brewer in the 2002 comedy-drama film About a Boy, for which he was nominated for the Critics\' Choice Movie Award for Best Young Performer. He achieved wider recognition and praise for his performance as Tony Stonem in the E4 teen comedy-drama series Skins (2007–2008). His transition to adult roles began with the 2009 drama film A Single Man, for which he earned a BAFTA Rising Star Award nomination, and the fantasy film Clash of the Titans (2010). He was cast as the mutant Hank McCoy in Matthew Vaughn\'s 2011 superhero film X-Men: First Class, a role he reprised in later instalments of the series.\r\n\r\nIn 2013, Hoult played the lead title role in the fantasy adaptation Jack the Giant Slayer and starred as a zombie in romantic comedy Warm Bodies. Following a supporting role in Mad Max: Fury Road (2015), Hoult starred in a number of independent films before portraying various real-life figures such as Robert Harley, Earl of Oxford in the historical black comedy The Favourite (2018), writer J. R. R. Tolkien in Tolkien (2019), and Peter III in the Hulu comedy-drama series The Great (2020–present). In 2021, he starred in the survival thriller Those Who Wish Me Dead.', 'https://image.tmdb.org/t/p/w500/laeAYQVBV9U3DkJ1B4Cn1XhpT8P.jpg'),
(3300, 'Natalia Tena', '1984-10-31 03:00:00', '0', 'Natalia Gastiain Tena is an English actress and musician. She played Nymphadora Tonks in the Harry Potter film series, and the wildling Osha in the HBO series Game of Thrones.', 'https://image.tmdb.org/t/p/w500/7kN9NpECZoR4NLXb4SlpHOaJx7T.jpg'),
(3416, 'Demi Moore', '0000-00-00 00:00:00', '0', 'Demi Moore (born Demetria Gene Guynes) is an American actress and film producer.\r\n\r\nAfter making her film debut in 1981, she appeared on the soap opera General Hospital and subsequently gained recognition as a member of the Brat Pack with roles in Blame It on Rio (1984), St. Elmo\'s Fire (1985), and About Last Night... (1986). Her starring role in Ghost (1990), the highest-grossing film of that year, earned her a Golden Globe nomination. She had further box-office success in the early 1990s, with the films A Few Good Men (1992), Indecent Proposal (1993), and Disclosure (1994).\r\n\r\nShe portrayed Claire Donnelly in the drama film If These Walls Could Talk (1996), for which she was nominated for a Golden Globe Award and a Primetime Emmy Award. In 1996, Moore became the highest-paid actress in film history when she received an unprecedented $12.5 million salary to star in Striptease. She voiced the role of Esmeralda in The Hunchback of Notre Dame (1996) and The Hunchback of Notre Dame II (2002). Her next major role, G.I. Jane (1997), for which she shaved her head, was followed by a lengthy hiatus. She achieved further success in the following decades with the films Charlie\'s Angels: Full Throttle (2003), Bobby (2006), Mr. Brooks (2007), Margin Call (2011), and Rough Night (2017).\r\n\r\nIn 2019, Moore released a memoir titled Inside Out, which instantly became a New York Times Best Seller.', 'https://image.tmdb.org/t/p/w500/brENIHiNrGUpoBMPqIEQwFNdIsc.jpg'),
(4004, 'Jeffrey Jones', '0000-00-00 00:00:00', '0', 'Jeffrey Duncan Jones (born September 28, 1946, 6 feet 4 inches [1.94 m]) is an American character actor, best known for his roles as Emperor Joseph II in Amadeus (1984), Edward R. Rooney in Ferris Bueller\'s Day Off (1986), Charles Deetz in Beetlejuice (1988), Dr. Skip Tyler in The Hunt for Red October (1990), Eddie Barzoon in The Devil\'s Advocate (1997), and A. W. Merrick in both Deadwood (2004–2006) and Deadwood: The Movie (2019).\r\n\r\nJones was born in Buffalo, New York, and studied acting at the Putney School, the London Academy of Music and Dramatic Art, and Lawrence University. He began his acting career in small parts in film and television in the 1970s. In his best-known roles as Emperor Joseph II in Amadeus, Charles Deetz in Beetlejuice, and Edward R. Rooney in Ferris Bueller\'s Day Off, his dead-pan expression and distinctive face bring a comic flavor to his characters through their reactions to the situations in which they find themselves, more so than the wit in their scripted lines.\r\n\r\nJones has also had a successful career on stage, appearing in productions of The Crucible, The Importance of Being Earnest, and The Glass Menagerie. He has been nominated for two Tony Awards, for Best Featured Actor in a Play for his performance in The Crucible (1988) and Best Featured Actor in a Musical for his performance in The Secret Garden (1991).\r\n\r\nIn 2002, Jones was arrested on charges of child pornography. He pleaded guilty to one count of possession of child pornography and was sentenced to two years of probation. He has not appeared in any major film or television roles since his arrest.\r\n\r\nDespite his personal troubles, Jones is still considered to be one of the most talented character actors of his generation', 'https://image.tmdb.org/t/p/w500/zLodpqWUb9OzQLpK1ZY9im1Lh0p.jpg'),
(4432, 'Frances Conroy', '0000-00-00 00:00:00', '0', 'Frances Conroy (born March 15, 1953) is an American actress. She is most widely known for playing the matriarch Ruth O\'Connor Fisher Sibley on the HBO funeral drama series Six Feet Under, which earned her a Golden Globe in 2004.', 'https://image.tmdb.org/t/p/w500/aJRQAkO24L6bH8qkkE5Iv1nA3gf.jpg'),
(4495, 'Steve Carell', '0000-00-00 00:00:00', '0', 'Steven John Carell (born August 16, 1962) is an American actor and comedian. He played Michael Scott in The Office (2005–2011; 2013), NBC’s adaptation of the British series created by Stephen Merchant and Ricky Gervais, where Carell also worked as an occasional producer, writer and director. Carell has received numerous accolades for his performances in both film and television, including the Golden Globe Award for Best Actor – Television Series Musical or Comedy for his work on The Office. He was recognized as \"America\'s Funniest Man\" by Life magazine.\r\n\r\nCarell gained recognition as a correspondent on The Daily Show with Jon Stewart from 1999 to 2005. He went on to star in several comedy films, including Anchorman: The Legend of Ron Burgundy (2004) and its 2013 sequel, as well as The 40-Year-Old Virgin (2005), Evan Almighty (2007), Get Smart (2008), Date Night (2010), Crazy, Stupid, Love (2011), and The Way, Way Back (2013). He also voice acted in Over the Hedge (2006), Horton Hears a Who! (2008) and the Despicable Me franchise (2010–present).\r\n\r\nCarell began to shift into more dramatic roles in the 2010s, with his role as wrestling coach and convicted murderer John Eleuthère du Pont in the drama film Foxcatcher (2014) earning him, among various honors, nominations for the Academy Award for Best Actor, the Golden Globe Award for Best Actor – Motion Picture Drama and the BAFTA Award for Best Actor in a Supporting Role. He also starred in Little Miss Sunshine (2006), The Big Short (2015), and Battle of the Sexes (2017), the last two earning him his eighth and ninth Golden Globe Award nominations, respectively. In 2018, he re-teamed with Anchorman and The Big Short director Adam McKay for the Dick Cheney biographical film Vice, in which he portrayed Donald Rumsfeld, and played journalist David Sheff in the drama film Beautiful Boy.\r\n\r\nCarell returned to television as the co-creator of the TBS comedy series Angie Tribeca (2016–2018), which he developed with his wife, Nancy Carell. He starred as Mitch Kessler in the Apple TV+ drama series The Morning Show (2019–present), for which he received a nomination for the Primetime Emmy Award for Outstanding Lead Actor in a Drama Series. He also returned to comedy with the lead role of General Mark R. Naird in the Netflix sitcom Space Force (2020–present).', 'https://image.tmdb.org/t/p/w500/dzJtsLspH5Bf8Tvw7OQC47ETNfJ.jpg'),
(5141, 'Heather Langenkamp', '0000-00-00 00:00:00', '0', 'Heather Langenkamp (born July 17, 1964) is an American film and television actress. She is best known for her role as Nancy Thompson from the A Nightmare on Elm Street films. She also played Marie Lubbock on the sitcom Just the Ten of Us.', 'https://image.tmdb.org/t/p/w500/xI20Uddk9COIfgifaA4NRsXyZMD.jpg'),
(5294, 'Chiwetel Ejiofor', '1977-07-09 03:00:00', '0', 'Chiwetelu Umeadi \"Chiwetel\" Ejiofor (born on July 10, 1977) is an English actor. He attended London Academy of Music and Dramatic Art, but had to leave after a year after receiving the roll of Ens, in Steven Spielberg\'s historical drama, \"Amistad\". For his first leading film role in Dirty Pretty Things, he won a British Independent Film Award for best actor. He has portrayed Othello in numerous stage productions including Bloomsbury Theatre, Theatre Royal in Glasgow and Donmar Warehouse. He made his directorial debut in the short film Slapper, which he also wrote. He soon became well known after moving on to bigger roles in \"Inside Man\" (2005), \"American Gangster\" (2007), \"Children of Men\" and Steve McQueen\'s \"12 Years a Slave\" (2012).', 'https://image.tmdb.org/t/p/w500/kq5DDnqqofoRI0t6ddtRlsJnNPT.jpg'),
(5530, 'James McAvoy', '1979-04-20 03:00:00', '0', 'James McAvoy (born 21 April 1979) is a Scottish actor. He made his acting debut as a teen in The Near Room (1995) and appeared mostly on television until 2003, when his feature film career began. His notable television work includes the thriller State of Play, science fiction miniseries Frank Herbert\'s Children of Dune and the channel 4s BAFTA award-winning series Shameless (British TV series)\r\n\r\nHe has performed in several West End productions and has received four nominations for the Laurence Olivier Award for Best Actor, and has also done voice work for animated films including Gnomeo & Juliet, its sequel Sherlock Gnomes, and Arthur Christmas.\r\n\r\nIn 2003, McAvoy appeared in a lead role in Bollywood Queen, then in another lead role as Rory in Inside I\'m Dancing in 2004. This was followed by a supporting role, as the faun Mr. Tumnus, in The Chronicles of Narnia: The Lion, the Witch and the Wardrobe (2005). His performance in Kevin Macdonald\'s drama The Last King of Scotland (2006) garnered him several award nominations, including the BAFTA Award for Best Supporting Actor. The critically acclaimed romantic drama war film Atonement (2007) earned him a Golden Globe Award nomination and his second BAFTA nomination. He later appeared as a newly trained assassin in the action thriller Wanted (2008).\r\n\r\nIn 2011, McAvoy portrayed Professor Charles Xavier in the superhero film X-Men: First Class, a role he reprised in X-Men: Days of Future Past (2014), X-Men: Apocalypse (2016), Deadpool 2 (2018), and Dark Phoenix (2019). McAvoy starred in the crime comedy-drama film Filth (2013), for which he won Best Actor in the British Independent Film Awards. In 2016, he portrayed Kevin Wendell Crumb, a man with 23 alternate personalities, in M. Night Shyamalan\'s Split, for which he received critical acclaim, and later reprised the role for the sequel Glass (2019). Since 2019, he has portrayed Lord Asriel Belacqua in the BBC/HBO fantasy series His Dark Materials.', 'https://image.tmdb.org/t/p/w500/vB6qYlFXgONGVwwxWXE4gf0F8SQ.jpg'),
(6065, 'Dennis Quaid', '0000-00-00 00:00:00', '0', 'Dennis William Quaid (born April 9, 1954) is an American actor. He became known during the 1980s after appearing in several successful films, including as Mike Brody in Jaws 3-D (1983), Alex Gardner in Dreamscape (1984), Remy McSwain in The Big Easy (1987), Tuck Pendleton in Innerspace (1987), Jefferson \"Jeff\" Blue in Undercover Blues (1993), Bowen in Dragonheart (1996), Joe Doe/William in Gang Related (1997), Frank Towns in Flight of the Phoenix (2004), Jack Hall in The Day After Tomorrow (2004) and Reverend Shaw Moore in Footloose (2011).', 'https://image.tmdb.org/t/p/w500/lMaDAJHzsKH7U3dln2B3kY3rOhE.jpg');
INSERT INTO `actor` (`id`, `name`, `birthdate`, `countryId`, `biography`, `image`) VALUES
(6413, 'Danny Huston', '0000-00-00 00:00:00', '0', 'Daniel Sallis Huston (born May 14, 1962) is an American actor, director and screenwriter. A member of the Huston family of filmmakers, he is the son of director John Huston and half-brother of actress Anjelica Huston.\r\n\r\nHe is known for his roles in films such as Ivans Xtc (2000), for which he was nominated for an Independent Spirit Award for Best Male Lead, 21 Grams (2003), Birth (2004), The Aviator (also 2004), The Constant Gardener (2005), Marie Antoinette (2006), Children of Men (also 2006), The Kingdom (2007), 30 Days of Night (also 2007), Robin Hood (2010), Hitchcock (2012), The Congress (2013), Big Eyes (2014), Wonder Woman (2017), Game Night (2018), Stan & Ollie (also 2018), and Angel Has Fallen (2019).\r\n\r\nHuston portrayed The Axeman on the FX series American Horror Story: Coven and Massimo Dolcefino on American Horror Story: Freak Show. He played Ben \"The Butcher\" Diamond on Magic City (2012–13), Dan Jenkins in the first two seasons of the Paramount Network drama series Yellowstone (2018–19), and Jamie Laird on the second season of Succession (2019). His directing credits include the films Mr. North (1988), The Maddening (1995) and The Last Photograph (2017).\r\n\r\nDescription above from the Wikipedia article Danny Huston, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/7Wdh73SltnllH4KVd64PvqKQ5NJ.jpg'),
(6968, 'Hugh Jackman', '0000-00-00 00:00:00', '0', 'Hugh Michael Jackman (born 12 October 1968) is an Australian actor. Beginning in theatre and television, he landed his breakthrough role as Wolverine / Logan in the X-Men film series (2000–2017), a tenure that earned him the Guinness World Record for \"longest career as a live-action Marvel superhero\". Jackman has received a Grammy Award, a Primetime Emmy Award, and two Tony Awards. During his career, Jackman has headlined films in various genres, including the romantic comedy Kate & Leopold (2001), the action-horror Van Helsing (2004), the drama The Prestige (2006), the period romance Australia (2008), the epic musical Les Misérables (2012), the thriller Prisoners (2013), the musical The Greatest Showman (2017), the political drama The Front Runner (2018), and the crime thriller Bad Education (2019). For his role as Jean Valjean in Les Misérables, Jackman was nominated for the Academy Award for Best Actor and won the Golden Globe Award for Best Actor – Motion Picture Musical or Comedy, and for The Greatest Showman, he received a Grammy Award for Best Soundtrack Album. He also provided voice roles in the animated films Flushed Away (2006), Rise of the Guardians (2012), and Missing Link (2019). Jackman is also known for his early theatre roles in Oklahoma! in 1998 and Carousel in 2002. On Broadway, Jackman won the 2004 Tony Award for Best Actor in a Musical for his role in The Boy from Oz. In 2021 he returned to the theatre as Harold Hill in the Broadway revival of The Music Man. A four-time host of the Tony Awards, he won an Emmy Award for hosting the 2005 ceremony. He also hosted the 81st Academy Awards in 2009. Jackman was appointed a Companion of the Order of Australia in the 2019 Queen\'s Birthday Honours for services to performing arts and to the global community.', 'https://image.tmdb.org/t/p/w500/4Xujtewxqt6aU0Y81tsS9gkjizk.jpg'),
(7447, 'Alec Baldwin', '0000-00-00 00:00:00', '0', 'Alexander Rae Baldwin III (born April 3, 1958) is an American actor, comedian, and producer. He is known for his leading and supporting roles in a variety of genres, from comedy to drama, and has received numerous accolades including three Primetime Emmy Awards and three Golden Globe Awards as well as nominations for a Academy Award, a BAFTA Award, and Tony Award.\r\n\r\nDescription above from the Wikipedia article Alec Baldwin, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/hzKy7x574eeUS3wt1R3yvWBRpeR.jpg'),
(8944, 'Jamie Lee Curtis', '0000-00-00 00:00:00', '0', 'Jamie Lee Hadoness, Baroness Hadon-Guest (born November 22, 1958) is an American actress, producer, and children\'s author. Known for her performances in the horror and slasher genres, she is regarded as a scream queen, in addition to roles in comedies. She has received multiple accolades, including an Academy Award, a BAFTA, two Golden Globes, and two Screen Actors Guild Awards, as well as nominations for an Emmy and a Grammy.\r\n\r\nShe came to prominence with the ABC sitcom Operation Petticoat (1977–1978). She made her feature film debut playing Laurie Strode in John Carpenter\'s slasher film Halloween (1978), which established her as a scream queen and led to a string of parts in horror films such as The Fog, Prom Night, Terror Train (all 1980), and Roadgames (1981). She reprised the role of Laurie in the Halloween franchise, until 2022.\r\n\r\nHer film work spans many genres outside of horror, including the comedies Trading Places (1983), for which she won a BAFTA for Best Supporting Actress, and A Fish Called Wanda (1988), for which she received a nomination for the BAFTA for Best Actress. Her role as a workout instructor in the film Perfect (1985) earned her a reputation as a sex symbol. She won a Golden Globe Award for her portrayal of Helen Tasker in James Cameron\'s True Lies (1994). Her other notable film credits include Freaky Friday (2003) and Knives Out (2019). Her performance in Everything Everywhere All at Once (2022) won her the Academy Award for Best Supporting Actress. She received a star on the Hollywood Walk of Fame in 1998. As of 2021, her films have grossed over $2.3 billion at the box office.\r\n\r\nShe received a Golden Globe and a People\'s Choice Award for her portrayal of Hannah Miller on ABC\'s Anything But Love (1989–1992), and earned a Primetime Emmy nomination for the television film Nicholas\' Gift (1998). She also starred as Cathy Munsch on the Fox series Scream Queens (2015–16), for which she received her seventh Golden Globe nomination.\r\n\r\nShe has written numerous children\'s books, including Today I Feel Silly, and Other Moods That Make My Day (1998), which made The New York Times\'s best-seller list.\r\n\r\nShe is a daughter of actors Janet Leigh and Tony Curtis. She is married to British-American filmmaker Christopher Guest, with whom she has two adopted children. Her marriage to Guest, who holds the British title of 5th Baron Haden-Guest, makes her a baroness who is entitled to use the name \"The Right Honourable The Lady Haden-Guest\", though she opts not to use it.', 'https://image.tmdb.org/t/p/w500/9KWvPVeiLOXlOGl0XVyHZtJWQtx.jpg'),
(10182, 'Ving Rhames', '0000-00-00 00:00:00', '0', 'Irving Rameses Rhames (born May 12, 1959) is an American actor. He is known for his supporting roles as IMF Agent Luther Stickell in the Mission: Impossible film series and gang kingpin Marsellus Wallace in Pulp Fiction (1994). He also appeared in Jacob\'s Ladder (1990), Dave (1993), Striptease (1996), Con Air (1997), Only in America (1997), Out of Sight (1998), Entrapment (1999), Bringing Out the Dead (1999), Dawn of the Dead (2004), I Now Pronounce You Chuck & Larry (2007), Jamesy Boy (2014). He voiced Cobra Bubbles in the animated films Lilo & Stitch (2002), Stitch! The Movie (2003), and Leroy & Stitch (2006).', 'https://image.tmdb.org/t/p/w500/4gpLVNKPZlVucc4fT2fSZ7DksTK.jpg'),
(10859, 'Ryan Reynolds', '1976-10-22 03:00:00', '0', 'Ryan Rodney Reynolds (born October 23, 1976) is a Canadian actor and film producer. He began his career starring in the Canadian teen soap opera Hillside (1991–1993), and had minor roles before landing the lead role on the sitcom Two Guys and a Girl between 1998 and 2001. Reynolds then starred in a range of films, including comedies such as National Lampoon\'s Van Wilder (2002), Waiting... (2005), and The Proposal (2009). He also performed in dramatic roles in Buried (2010), Woman in Gold (2015), and Life (2017), starred in action films such as Blade: Trinity (2004), Green Lantern (2011), 6 Underground (2019) and Free Guy (2021), and provided voice acting in the animated features The Croods (2013), Turbo (2013), Pokémon: Detective Pikachu (2019) and The Croods: A New Age (2020).\r\n\r\nReynolds\' biggest commercial success came with the superhero films Deadpool (2016) and Deadpool 2 (2018), in which he played the title character. The former set numerous records at the time of its release for an R-rated comedy and his performance earned him nominations at the Critics\' Choice Movie Awards and the Golden Globe Awards.', 'https://image.tmdb.org/t/p/w500/algQ1VEno2W9SesoArWcZTeF617.jpg'),
(10959, 'Shia LaBeouf', '1986-06-10 03:00:00', '0', 'Shia Saide LaBeouf (born June 11, 1986) is an American actor, performance artist, and filmmaker. He played Louis Stevens in the Disney Channel series Even Stevens, a role for which he received Young Artist Award nominations in 2001 and 2002 and won a Daytime Emmy Award in 2003. He made his film debut in The Christmas Path (1998).\r\n\r\nIn 2004, he made his directorial debut with the short film Let\'s Love Hate and later directed a short film titled Maniac (2011), starring American rappers Cage and Kid Cudi.\r\n\r\nIn 2007, LaBeouf starred in the commercially successful films Disturbia and Surf\'s Up. The same year he was cast in Michael Bay\'s science fiction film Transformers as Sam Witwicky, the main protagonist of the series.\r\n\r\nTransformers was a box office success and one of the highest-grossing films of 2007. LaBeouf later appeared in its sequels Transformers: Revenge of the Fallen (2009) and Transformers: Dark of the Moon (2011), both also box office successes. In 2008, he played Henry \"Mutt Williams\" Jones III in Indiana Jones and the Kingdom of the Crystal Skull.\r\n\r\nHis other credits include the films Holes (2003), Constantine (2005), Wall Street: Money Never Sleeps (2010), Lawless (2012), The Company You Keep (2012), Nymphomaniac (2013), Charlie Countryman (2013), Fury (2014), American Honey (2016), Borg vs McEnroe (2017), Honey Boy (2019), The Peanut Butter Falcon (2019), and Pieces of a Woman (2020).\r\n\r\nSince 2014, LaBeouf has pursued a variety of public performance art projects with LaBeouf, Rönkkö & Turner.', 'https://image.tmdb.org/t/p/w500/ljlpaXEManszxIcshYQoqo4au03.jpg'),
(10981, 'Fiona Shaw', '0000-00-00 00:00:00', '0', 'Fiona Shaw (born Fiona Mary Wilson; 10 July 1958) is an Irish film and theatre actress. She is known for her roles as Petunia Dursley in the Harry Potter film series (2001–2010), Marnie Stonebrook in the fourth season of the HBO series True Blood (2011), and Carolyn Martens in the BBC series Killing Eve (2018–22).\r\n\r\nFor her performance in Killing Eve, Shaw won the 2019 BAFTA TV Award for Best Supporting Actress. For her performances in the second seasons of Killing Eve and Fleabag, she received Primetime Emmy Award nominations for Outstanding Supporting Actress in a Drama Series and Outstanding Guest Actress in a Comedy Series respectively. For the third season of Killing Eve, she was again nominated for Outstanding Supporting Actress in a Drama Series.\r\n\r\nShaw has worked extensively with the Royal Shakespeare Company and the National Theatre. She won the 1990 Olivier Award for Best Actress for various roles, including Electra, the 1994 Olivier Award for Best Actress for Machinal, and the 1997 Drama Desk Award for Outstanding Solo Performance for The Waste Land. Her other stage work includes playing the title role in Medea in the West End and on Broadway (2001–2002). She was awarded an Honorary CBE in 2001. In 2020, she was listed at No. 29 on The Irish Times list of Ireland\'s greatest film actors.', 'https://image.tmdb.org/t/p/w500/tjM74LcxwnYM77Csg1EtlXb1F9a.jpg'),
(11514, 'Catherine O\'Hara', '0000-00-00 00:00:00', '0', 'Catherine Anne O\'Hara, a Canadian-American actress and comedienne, began her career at Second City Theatre in Toronto. She gained fame on SCTV alongside comedy icons like Rick Moranis and John Candy. Known for roles in films like \"After Hours,\" \"Beetlejuice,\" \"Home Alone,\" and \"The Nightmare Before Christmas,\" she\'s also renowned for her work in Christopher Guest\'s mockumentaries. Her versatility extends to voicing Grandma Frump in \"The Addams Family.\" O\'Hara received a Lifetime Artistic Achievement Award at the Governor General\'s Performance Arts Awards in 2020 and won a Golden Globe in 2021 for her role in \"Schitt\'s Creek.\"', 'https://image.tmdb.org/t/p/w500/cMBxHeztNVc8YXKcj084Mdd3f3U.jpg'),
(15009, 'Justin Theroux', '1971-08-09 03:00:00', '0', 'Justin Paul Theroux is an American actor and screenwriter. He is best known for his work with film director David Lynch in Mulholland Drive (2001) and Inland Empire (2006), his starring role as Kevin Garvey in the HBO series The Leftovers (2014–2017) and as Tom in The Girl on the Train (2016). He is also known as a screenwriter for films such as Tropic Thunder, Iron Man 2, Rock of Ages, and Zoolander 2.', 'https://image.tmdb.org/t/p/w500/vnI9L0rXBAw1HeC0Q8hJGeJMGAW.jpg'),
(15111, 'Jean-Claude Van Damme', '0000-00-00 00:00:00', '0', 'Van Damme was born Jean-Claude Camille François van Varenberg in Berchem-Sainte-Agathe, Brussels, Belgium, to Eliana and Eugène van Varenberg, an accountant. “The Muscles from Brussels” started martial arts at the age of eleven. His father introduced him to martial arts when he saw his son was physically weak. At the age of 12, van Damme began his martial arts training at Centre National De Karate (National Center of Karate) under the guidance of Master Claude Goetz in Ixelles, Belgium. Van Damme trained for 4 years and earned a spot on the Belgium Karate Team. He won the European professional karate association\'s middleweight championship as a teenager, and also beat the 2nd best karate fighter in the world. His goal was to be number one but got sidetracked when he left his hometown of Brussels.\r\n\r\nIn 1976 at the age of sixteen, Jean-Claude started his Martial Arts fight career. Jean-Claude retired from martial arts in 1982, following a knockout over Nedjad Gharbi in Brussels, Belgium. Jean-Claude posted a 18-1 (18 knockouts) kickboxing record, and a semi-contact record of 41-4.  He came to Hong Kong at the age of 19 for the first time and felt insured to do action movies in Hong Kong. In 1981, van Damme moved to Los Angeles. He took English classes while working as carpet layer, pizza delivery man, limo driver, and thanks to Chuck Norris he got a job as a bouncer at a club. Norris gave van Damme a small role in the movie Missing in Action (1984), but it wasn\'t good enough to get anybody\'s attention. In 1984, he got his first significant role as a villain named Ivan in the low-budget movie, No Retreat, No Surrender (1986). Then one day, while walking on the streets, Jean-Claude spotted a producer for Cannon Pictures and showed some of his martial arts abilities which led to a role in Bloodsport (1988). The movie, filmed in Hong Kong, was so bad when it was completed, it was shelved for almost two years. It might have never been released if van Damme did not help them to re-cut the film and begged producers to release it. They finally released the film, first in Malaysia and France and then into the US shot on a meager 1.5 million dollar budget, it became a US box-office hit in the spring of 1988. It made about 30 million worldwide and audiences supported this film for its new sensational action star, Jean-Claude van Damme.\r\n\r\nHis good looks led to starring roles in higher budgeted movies like Cyborg (1989), AWOL: Absent Without Leave (1990), Double Impact (1991) and Universal Soldier (1992). In 1994, he scored with his big breakthrough $100 million worldwide hit Timecop (1994). But in the meantime, his personal life was coming apart. A divorce, followed by a new marriage, followed by another divorce. It began to show up in his career when his projects began to tank at the box office: The Quest (1996), which he directed; Maximum Risk (1996) and Double Team (1997). The three films made less than $50 million combined. In 1999, he remarried his ex-wife, Gladys Portugues, and restarted his lost career to attain new goals. With help from his family, he faced his problems and made movies like Replicant (2001), Derailed (2002), and In Hell (2003).', 'https://image.tmdb.org/t/p/w500/7DP3bm3MS0qa0L8tBLHGebbCu6H.jpg'),
(15576, 'Matthew Macfadyen', '1974-10-16 03:00:00', '0', 'David Matthew Macfadyen (born 17 October 1974) is an English actor. Known for his performances on stage and screen, he gained prominence for his role as Mr. Darcy in Joe Wright\'s Pride & Prejudice (2005). He starred as Tom Wambsgans in the HBO drama series Succession (2018–2023), for which he has received two Primetime Emmy Awards, two BAFTA Awards, and a Screen Actors Guild Award.\r\n\r\nMacfadyen is also known for his roles in films such as Death at a Funeral (2007), Frost/Nixon (2008), Anna Karenina (2012), The Assistant (2019), and Operation Mincemeat (2021). He made his television debut in 1998 as Hareton Earnshaw in Wuthering Heights. He portrayed Tom Quinn in the BBC One spy series Spooks (2002–04, 2011), and Inspector Edmund Reid in the BBC mystery series Ripper Street (2012–2016). He also starred as Henry Wilcox in Kenneth Lonergan\'s miniseries Howards End and Charles Ingram in the Stephen Frears\' limited series Quiz (2020).', 'https://image.tmdb.org/t/p/w500/2FF3Yjxd7DYR4EIJL6s2GpKDMkJ.jpg'),
(16307, 'Maura Tierney', '0000-00-00 00:00:00', '0', 'Maura Tierney (born February 3, 1965) is an American film and television actress, who is best known for her roles on NewsRadio and ER as well as The Affair, for which she won the Golden Globe Award in 2016.', 'https://image.tmdb.org/t/p/w500/4BCrwdHdC4iRSDimvkoYaXg2qki.jpg'),
(16841, 'Brett Cullen', '0000-00-00 00:00:00', '0', 'Peter Brett Cullen (born August 26, 1956) is an American actor who has appeared in numerous motion pictures and television programs. Early in 2007, he was cast as the role of an estranged father to one of the American football players, Tim Riggins (played by actor Taylor Kitsch), in the NBC drama series Friday Night Lights.\r\n\r\nCullen was born in Houston, Texas, the son of Lucien Hugh Cullen, an oil industry executive, and Catherine Cullen. He graduated from Madison High School in Houston in 1974. Cullen graduated from the University of Houston, giving great credit to his highly acclaimed acting mentor and University of Houston professor, Cecil Pickett, who also mentored such Houston born actors as Dennis Quaid, Randy Quaid, & Brent Spiner among others. Cullen and Dennis Quaid\'s close friendship to this day dates back to the 1970s and it is Cullen who introduced Dennis Quaid to his current wife, Kimberly Buffington at a dinner in Austin, Texas.\r\n\r\nCullen played Dan Fixx in the 1980s CBS drama Falcon Crest for two seasons (1986–1988) and Marshal Sam Cain in the ABC western series The Young Riders for one season (1989–1990). In 1980, he appeared as the second Gideon Chisholm in the last nine episodes of the CBS western miniseries The Chisholms. In the four earlier episodes, the Gideon Chisholm role was played by Brian Kerwin. Cullen was the lead actor as Ned Logan in the short-lived Legacy, which lasted for just one season (1998–1999). On the series The West Wing Cullen played Ray Sullivan, a fictional governor of West Virginia and the Republican nominee for Vice President.\r\n\r\nHis guest appearances on TV include: The Incredible Hulk, Tales from the Crypt, MAS*H, V, Matlock, Star Trek: Deep Space Nine, Ally McBeal, Walker, Texas Ranger, Once and Again, Without a Trace, Cold Case, The Mountain, Monk, CSI: Miami, NCIS, Desperate Housewives, Pepper Dennis, Lost, Ghost Whisperer, Private Practice, Ugly Betty, and Friday Night Lights. In 2009, he had a recurring role in the ABC Family television series Make It or Break It.\r\n\r\nHe has played two real-life astronauts, Jack Lousma in Apollo 13 (Brett is the CapCom at the time of the explosion; at that shift Lousma was the CapCom in real life) and David Scott in the HBO mini-series From the Earth to the Moon.\r\n\r\nHis most recent appearance was in the role of Barton Blaze in the movie Ghost Rider. Other movie credits include Wyatt Earp (with Kevin Costner), Gambler V: Playing for Keeps (with Kenny Rogers and Bruce Boxleitner), Something to Talk About (with Julia Roberts and Dennis Quaid), The Replacements (with Gene Hackman), On Golden Pond (with Julie Andrews and Christopher Plummer), Nancy Drew, and Gridiron Gang. He also played Bob Cleary in the 1983 mini-series The Thorn Birds.\r\n\r\nCullen was recently cast in the up-coming femme comedy Monte Carlo alongside Selena Gomez, Andie MacDowell and Leighton Meester and is playing the role of Tom Eckert in the upcoming war film Red Dawn.\r\n\r\nOn February 8, 2011, Brett was named the official spokesman for Houston Works which helps Houston residents with job training and placement, scholarships, consulting, technical initiatives focusing on science, technology, engineering and mathematics and summer job programs along with Youth Summits.\r\n\r\n​From Wikipedia, the free encyclopedia', 'https://image.tmdb.org/t/p/w500/4P6TsRcnr9MRbXlCdHitulGM5LT.jpg'),
(16935, 'Geena Davis', '0000-00-00 00:00:00', '0', 'Virginia Elizabeth \"Geena\" Davis (born January 21, 1956)  is an American actress, film producer, writer, former fashion model, and a women\'s Olympics archery team semi-finalist. She is known for her roles in The Fly, Beetlejuice, Thelma & Louise, A League of Their Own, and The Accidental Tourist, for which she won the 1988 Academy Award for Best Supporting Actress. In 2005, she won the Golden Globe Award for Best Actress – Television Series Drama for her role in Commander in Chief.', 'https://image.tmdb.org/t/p/w500/hqzWAoGpUPqaiK2BuvtSWe4563h.jpg'),
(17697, 'John Krasinski', '1979-10-19 03:00:00', '0', 'John Burke Krasinski (born October 20, 1979) is an American actor, film director and writer. He is widely known for playing Jim Halpert on the NBC sitcom The Office from 2005 to 2013. He has also appeared in several films including License to Wed (2007), Leatherheads (2008), Away We Go (2009), It\'s Complicated (2009), Something Borrowed (2011), Aloha (2015), 13 Hours: The Secret Soldiers of Benghazi (2016), Detroit (2017), and A Quiet Place (2018), which he also directed and co-wrote. Also in 2018, Krasinski returned to television portraying the titular character in the Amazon series Jack Ryan.', 'https://image.tmdb.org/t/p/w500/pmVGDb6Yl6OyFcHVGbu1EYNfyFK.jpg'),
(17743, 'Miranda Cosgrove', '1993-05-13 03:00:00', '0', 'Miranda Taylor Cosgrove (born May 14, 1993) is an American actress, singer and songwriter. Her career began at the age of 3 with several television commercial appearances. Cosgrove\'s film debut came in 2003, when she appeared as Summer Hathaway in School of Rock. She appeared in a number of minor television roles over several years before coming to prominence as Megan Parker on the Nickelodeon television series Drake & Josh. In 2007, she landed the role of Carly Shay, the lead character on the Nickelodeon teen sitcom iCarly, on which she starred until 2012.\r\n\r\nAs of May 2010, Cosgrove earned $180,000 per episode of iCarly, making her the second-highest-paid child star on television, and in 2012 was listed in the Guinness World Records as the highest paid child actress. Cosgrove also voiced Margo in the animated film Despicable Me (2010) and its 2013 sequel. That year, Cosgrove was cast in an NBC television pilot titled Girlfriend in a Coma, which didn\'t materialize after Christina Ricci left the production. In 2016, she starred on the short-lived NBC sitcom Crowded.\r\n\r\nDescription above from the Wikipedia article Miranda Cosgrove, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/qIGeoyXEVu1LxTH34TWx1YSHyQr.jpg'),
(19498, 'Jon Bernthal', '1976-09-19 03:00:00', '0', 'Jonathan Edward Bernthal (born September 20, 1976) is an American actor.  Beginning his career in the early 2000s, he came to prominence for portraying Shane Walsh on the AMC horror series The Walking Dead (2010–2012; 2018), where he was a starring cast member in the first two seasons. Bernthal achieved further recognition as Frank Castle / The Punisher in the Marvel Cinematic Universe (MCU) television series Daredevil and The Punisher, a role he will reprise in Daredevil: Born Again. His film roles include Snitch (2013), The Wolf of Wall Street (2013), Fury (2014), Sicario (2015), The Accountant (2016), Baby Driver (2017), Wind River (2017), Widows (2018), Ford v Ferrari (2019); Those Who Wish Me Dead, King Richard, and The Many Saints of Newark (all 2021).', 'https://image.tmdb.org/t/p/w500/2NZGL8ukRncF55S3seNn14Zj84i.jpg'),
(21042, 'Ebon Moss-Bachrach', '1977-03-18 03:00:00', '0', 'Ebon Moss-Bachrach (born March 19, 1977) is an American actor, best known for his role as Richard \"Richie\" Jerimovich in the comedy-drama series The Bear. Moss-Bachrach has had major television roles on Girls and NOS4A2 and appeared in the first season of Andor. He appears in the Marvel Cinematic Universe (MCU), playing David Lieberman/Micro in the first season of The Punisher, and is set to star as Ben Grimm/The Thing in The Fantastic Four in 2025.\r\n\r\nFor his work in The Bear, he was awarded the Primetime Emmy Award for Outstanding Supporting Actor in a Comedy Series and the Critics\' Choice Television Award for Best Supporting Actor in a Comedy Series, as well as a Golden Globe Award nomination for Best Supporting Actor—Series, Miniseries, or Television Film—and three nominations for the Screen Actors Guild Awards.\r\n\r\nDescription above from the Wikipedia article Ebon Moss-Bachrach, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/xD8GVNayMpiTZxLfahy2DseYcQq.jpg'),
(23498, 'Alexander Ludwig', '1992-05-06 03:00:00', '0', 'Alexander Ludwig (born May 7, 1992) is a Canadian actor.', 'https://image.tmdb.org/t/p/w500/unP5YUgEdECL2gMLs0zCNya6is6.jpg'),
(23659, 'Will Ferrell', '0000-00-00 00:00:00', '0', 'A graduate of the University of Southern California, Will Ferrell became interested in performing while a student at University High School in Irvine, California, where he made his school\'s daily morning announcements over the public address system in disguised voices. He started as a member of the Los Angeles comedy/improvisation group The Groundlings, where fellow cast members Ana Gasteyer, Maya Rudolph and former Saturday Night Live repertory players such as Laraine Newman, Jon Lovitz and Phil Hartman began their careers. It was there he met Chris Kattan and the two became good friends and both went on to Saturday Night Live later. He has also appeared on several television programs, including Strangers with Candy, Grace Under Fire and Living Single during his time at The Groundlings. Will also lent his voice to the armless and legless dad of cartoon family The Oblongs.\r\n\r\nIn 1995 he became a feature cast member at Saturday Night Live during the show\'s rapid re-casting. He was declared quite possibly the worst cast member ever during his first season. However, his talents of impersonations and range of characters shot him forward to making him arguably the greatest Saturday Night Live cast member ever. During his seven year run he is one of the few cast members to ever be nominated for an Emmy for a performance and played George W. Bush during the 2000 elections. He\'s appeared in every Saturday Night Live movie since his premiere on the show in 1995. In 2002 he left  Saturday Night Live and was the only cast member to ever receive a farewell from all the current cast members at the end of the season finale show. Since leaving the show Will has pursued a career in films. In 2000 he married and now lives in L.A.', 'https://image.tmdb.org/t/p/w500/xYPM1OOLXZguj4FsgmOzTSUXaXd.jpg'),
(25147, 'Tony Hale', '1970-09-29 03:00:00', '0', 'Tony Hale (born September 30, 1970) is an American two time Emmy Award-winning film and television actor and author, best known for playing neurotic Byron \"Buster\" Bluth on FOX\'s comedy series Arrested Development, as well as Gary Walsh, the downtrodden personal aide to Julia Louis-Dreyfus\'s Vice President Selina Meyers on HBO\'s Emmy Award-winning political comedy, Veep.', 'https://image.tmdb.org/t/p/w500/ar4uapp4w5wMkThZcqWUNMSTO8z.jpg'),
(25616, 'Edgar Ramírez', '1977-03-24 03:00:00', '0', 'Edgar Ramírez Arellano is a Venezuelan actor. He played Carlos in the 2010 French-German biopic series Carlos, a role for which he won the César Award for Most Promising Actor.\r\n\r\nHis first recognition as an actor was the successful soap opera Cosita Rica, for Venevisión which aired in September 2003 to August 2004 lasting 270 episodes. In 2005, he made his major motion picture début playing Choco, Domino Harvey\'s love interest in the film Domino directed by Tony Scott.\r\n\r\nHe was in Vantage Point directed by Pete Travis. In this high-budgeted Sony Pictures political thriller, Ramírez joined an all-star international cast including Dennis Quaid, Matthew Fox, William Hurt, Forrest Whitaker, Eduardo Noriega, and Ayelet Zurer. Ramírez plays Javier, an ex-special forces soldier forced to kidnap the American President in order to get his brother back. Upcoming is Cyrano Fernandez, with Ramírez in the title role. This independent production was directed by Alberto Arvelo and is based on the French play Cyrano de Bergerac.\r\n\r\nRamírez has appeared in several other productions. Among those are the first part of the two film bundle Che by Steven Soderbergh, where he played the role of Ciro Redondo (a Cuban revolutionary who fought amongst Ché Guevara), La Hora Cero (The Magic Hour), a short film directed by Guillermo Arriaga, the acclaimed screenwriter of Amores Perros, 21 Grams and Babel (Mexico); Plan B, directed by Alejandro García Wiederman (Venezuela); Yotama se va volando (Yotama Flies Away), directed by Luis Armando Roche (Venezuela-France); Punto y raya (Step Forward), directed by Elia K. Schneider (Venezuela-Spain-Chile-Uruguay), submitted by Venezuela for Oscar consideration for 2004 Best Foreign Film, in which he played Colombian soldier Pedro.\r\n\r\nIn 2007, he played the role of Paz, a Blackbriar assassin, in The Bourne Ultimatum. In the original Bourne Ultimatum, the villain is Illich Ramirez Sanchez, aka Carlos the Jackal. Ramírez went on to play the role of the actual Carlos in the 2010 French-German limited series Carlos. At the French César Awards 2011, he was awarded, for the film version of the TV series, the César Award for Most Promising Actor.\r\n\r\nRamírez appeared in the Clash of the Titans (2010) sequel, Wrath of the Titans (2012), playing Ares, the God of War. Also in 2012, he played Larry in the Kathryn Bigelow film, Zero Dark Thirty.', 'https://image.tmdb.org/t/p/w500/7VZnIAI7Yye0rfs7fPM5wI2CI6N.jpg'),
(25702, 'Rhona Mitra', '1976-08-08 03:00:00', '0', 'Rhona Natasha Mitra (sometimes credited as Rona Mitra; born 9 August 1976) is an English actress, model and singer.', 'https://image.tmdb.org/t/p/w500/1YThpok3Wk3BBy0pcUTcpuZyOBB.jpg'),
(27995, 'Barbara Crampton', '0000-00-00 00:00:00', '0', 'Barbara Crampton (born December 27, 1958) is an American actress. She made her screen debut on the daytime drama Days of Our Lives (1983), and her film debut in 1984\'s Body Double before starring in the horror comedy Re-Animator (1985). Crampton grew up in Vermont, was raised Catholic, and spent summers while growing up traveling the country with the carnival, as her father was a carny.  After taking up acting, Crampton  starred in a variety of films including Chopping Mall (1986), From Beyond (1986), Castle Freak (1995), You\'re Next (2011), We Are Still Here (2015), and Little Sister (2016), becoming a fan favorite Scream Queen.', 'https://image.tmdb.org/t/p/w500/yXIEQiWM3hhgqmx2bJfRTp9341f.jpg'),
(31422, 'Ivan Massagué', '1976-09-03 03:00:00', '0', 'Iván Massagué Horta (born 1976 in Barcelona, Spain) is an actor know for The Platformer (2019) or The Last Days (2013).', 'https://image.tmdb.org/t/p/w500/dmnJo2sGlfFjtKb8FDPlNjRhfyc.jpg'),
(33235, 'Logan Lerman', '1992-01-18 03:00:00', '0', 'Logan Wade Lerman (born January 19, 1992) is an American actor, known for playing the title role in the fantasy-adventure Percy Jackson films. He appeared in commercials in the mid-1990s, before starring in the series Jack & Bobby (2004–2005) and the movies The Butterfly Effect (2004) and Hoot (2006). Lerman gained further recognition for his roles in the western 3:10 to Yuma, the thriller The Number 23, the comedy Meet Bill, and 2009\'s Gamer and My One and Only. He subsequently played d\'Artagnan in 2011\'s The Three Musketeers, starred in the coming-of-age dramas The Perks of Being a Wallflower (2012), Indignation (2016) and The Vanishing of Sidney Hall (2017), and had major roles in the 2014 films Noah and Fury. In 2020, he returned to television with the series Hunters.', 'https://image.tmdb.org/t/p/w500/qWbN2toEEQgW9DFjgy3gT2VoVlQ.jpg'),
(34490, 'Sarah Paulson', '1974-12-16 03:00:00', '0', 'Sarah Catharine Paulson (born December 17, 1974) is an American actress. She began her acting career in New York City stage productions before starring in the short-lived television series American Gothic (1995–1996) and Jack & Jill (1999–2001). She later appeared in comedy films such as What Women Want (2000) and Down with Love (2003), and drama films such as Path to War (2002) and The Notorious Bettie Page (2005). From 2006 to 2007, she starred as Harriet Hayes in the NBC comedy-drama series Studio 60 on the Sunset Strip, for which she received her first Golden Globe Award nomination. In 2008, she starred as Ellen Dolan in the superhero noir film The Spirit.\r\n\r\nPaulson has appeared on Broadway in the plays The Glass Menagerie in 2005 and Collected Stories in 2010. She also starred in a number of independent films and had a leading role in the ABC comedy series Cupid (2009). She later starred in the independent drama film Martha Marcy May Marlene (2011) and received Primetime Emmy Award and Golden Globe Award nominations for her portrayal of Nicolle Wallace in the HBO film Game Change (2012). She was featured as Mary Epps in the 2013 historical drama film 12 Years a Slave, as Abby Gerhard in the 2015 romantic drama film Carol, and as Toni Bradlee in the 2017 political drama film The Post, all of which were nominated for multiple Academy Awards. Her other films include Serenity (2005), New Year\'s Eve (2011), Mud (2012), Blue Jay (2016), Ocean\'s 8 (2018), Bird Box (2018), Glass (2019), and Run (2020).\r\n\r\nIn 2011, Paulson began starring in the FX anthology series American Horror Story, playing different characters in many of the show\'s 10 seasons. For her performances in the series, she received five Primetime Emmy Award nominations and won two Critics\' Choice Television Awards. In 2016, she portrayed real-life prosecutor Marcia Clark in the first season of the anthology series American Crime Story, subtitled The People v. O. J. Simpson, for which she garnered critical acclaim and numerous accolades, including the Primetime Emmy Award and the Golden Globe Award. In 2020, Paulson appeared in the FX limited series Mrs. America, and began starring as Nurse Mildred Ratched in the Netflix psychological thriller series Ratched. In 2021, she returned to American Crime Story to portray Linda Tripp in the third season of the show, subtitled Impeachment.', 'https://image.tmdb.org/t/p/w500/n2pcyP6jp1YNo4TFVYS5vyZ2M2s.jpg'),
(35548, 'Simon Rex', '1974-07-19 03:00:00', '0', 'Simon Rex Cutright (born July 20, 1974) is an American actor, rapper, comedian, and former model. Rising to fame as an MTV VJ, Rex later became an actor known for What I Like About You, starring in three films of the Scary Movie franchise, and National Lampoon\'s Pledge This!. He later developed a rap persona, Dirt Nasty, and had several solo albums and co-founded the hip-hop group Three Loco. In 2021, he received critical acclaim for his lead role in Sean Baker\'s drama film Red Rocket, winning the Independent Spirit Award for Best Male Lead.', 'https://image.tmdb.org/t/p/w500/auAl58OL05S6fVXNz7neiGF8b8N.jpg'),
(36594, 'Juno Temple', '1989-07-20 03:00:00', '0', 'Juno Temple (born 21 July 1989) is a British actress. She has appeared in the films Notes on a Scandal (2006), Atonement (2007), The Other Boleyn Girl (2008), The Three Musketeers (2011), The Dark Knight Rises (2012), Magic Magic (2013), Maleficent (2014), Black Mass (2015), Unsane (2018), and Maleficent: Mistress of Evil (2019). Temple also has starred in the television series Vinyl (2016), Dirty John (2018–2019), Ted Lasso (2020–present), Little Birds (2020), and The Offer (2022), Year One (2009).\r\n\r\nTemple received the BAFTA Rising Star Award in 2013. She was nominated for two Primetime Emmy Awards and three Screen Actors Guild Awards for her role as Keeley Jones in Ted Lasso, in addition to being nominated for a Critics\' Choice Television Award and a Satellite Award for her role as Bettye McCartt in The Offer.', 'https://image.tmdb.org/t/p/w500/wMpZcKp7zaHnmNQooqbve33577Q.jpg'),
(38673, 'Channing Tatum', '1980-04-25 03:00:00', '0', 'Channing Matthew Tatum (born April 26, 1980) is an American actor. Tatum made his film debut in the drama Coach Carter (2005), and had his breakthrough role in the 2006 dance film Step Up. He gained wider attention for his leading roles in the sports comedy She\'s the Man (2006), the comedy-drama Magic Mike (2012) and its sequels Magic Mike XXL (2015) and Magic Mike\'s Last Dance (2023), the latter two of which he also produced, and in the action-comedy 21 Jump Street (2012) and its sequel 22 Jump Street (2014).\r\n\r\nTatum has also appeared as Duke in the action film G.I. Joe: The Rise of Cobra (2009) and its sequel G.I. Joe: Retaliation (2013). His other films include White House Down (2013), Foxcatcher (2014), The Hateful Eight (2015), Hail, Caesar! (2016), Logan Lucky (2017), and The Lost City (2022). Tatum has also starred in, produced and co-directed the road film Dog (2022). Time magazine named him one of the 100 most influential people in the world in 2022.', 'https://image.tmdb.org/t/p/w500/4TpgnS6l8YUXSne9Av9nda6mjxY.jpg'),
(39388, 'Amy Ryan', '0000-00-00 00:00:00', '0', 'Amy Beth Dziewiontkowski (born November 30, 1969), known professionally as Amy Ryan, is an American actress. She has been nominated for an Academy Award and Golden Globe for her performance in Gone Baby Gone (2007) and is also known for her roles in the HBO series The Wire, playing Port Authority Officer Beadie Russell; In Treatment, playing psychiatrist Adele Brousse; and The Office, playing human resources representative Holly Flax.\r\n\r\nRyan was born in Queens, New York City. She is the daughter of Pam, a nurse, and John, a trucking business owner. Ryan is her mother\'s maiden name. She is of English, Irish, and Polish descent. Growing up in the 1970s, Ryan and her sister delivered the Daily News by bike. At a young age, Ryan attended the Stagedoor Manor Performing Arts Center in upstate New York. At 17, she graduated from New York\'s High School of Performing Arts. Hired for the national tour of Biloxi Blues right out of high school, Ryan worked steadily off-Broadway for the next decade.', 'https://image.tmdb.org/t/p/w500/rE0YBJr3R6GcKu6Gw4K2lGW0ctC.jpg'),
(41091, 'Kristen Wiig', '1973-08-21 03:00:00', '0', 'Kristen Carroll Wiig (born August 22, 1973) is an American actress, voice actress, writer, producer, and comedian. She is known for her work as a cast member on Saturday Night Live from 2005 to 2012. She is a member of improvisational comedy troupe The Groundlings.\r\n\r\nShe had recurring roles on Arrested Development, The Spoils of Babylon, The Spoils Before Dying, and the series MacGruber (2021) on Paramount+. She\'s also appeared in television series including Flight of the Conchords, 30 Rock and Portlandia.\r\n\r\nShe\'s also appeared in several films including Knocked Up, The Brothers Solomon, Walk Hard: The Dewey Cox Story, Whip It, Extract, Date Night, Adventureland, MacGruber, Bridesmaids, All Good Things, Friends with Kids, Girl Most Likely, The Secret Life of Walter Mitty, The Skeleton Twins, The Martian, Ghostbusters (2016), Downsizing, Wonder Woman 1984, and Barb and Star Go to Vista Del Mar.\r\n\r\nShe is the voice of Ruffnut Thorston in the film series How to Train Your Dragon, Miss Hattie and Lucy Wilde in the film series Despicable Me, Lola Bunny in The Looney Tunes Show, and Jenny Hart in Bless the Harts.', 'https://image.tmdb.org/t/p/w500/6U6UGztBwk7c4lg8n5BS5QOByot.jpg'),
(51998, 'Liza Lapira', '1981-12-02 03:00:00', '0', 'Liza Lapira (born December 3, 1981) is an American actress, known for her roles as Melody \'Mel\' Bayan on the CBS series The Equalizer, Helen-Alice on the sitcom Super Fun Night, Topher Brink\'s assistant Ivy on Dollhouse, Maggie Del Rosario on the series Huff, Special Agent Michelle Lee on the CBS series NCIS, Alva in Repo Men (2010), Trinh in Fast & Furious (2009), Kianna in the film 21 (2008), and Heather in Cloverfield (2008).\r\n\r\nShe also co-starred in the short-lived sitcoms Traffic Light, Don\'t Trust the B---- in Apartment 23, Con Man, and 9JKL.', 'https://image.tmdb.org/t/p/w500/o3jvQAGWtxi5rEycslhC6CY8BWX.jpg'),
(52586, 'Milhem Cortaz', '1971-12-05 03:00:00', '0', 'Milhem Cortaz (São Paulo, December 6, 1971) is a Brazilian actor and presenter. Of Arab and Italian descent, Cortaz started in theater at the age of 11, led by actor Walmor Chagas when he performed in the play O Santo Milagroso, in 1983. He moved at the age of 15 to live in Italy with his aunt to get rid of his cocaine addiction, where he graduated from the Piccolo Teatro di Milano and began doing street theater under the influence of Commedia dell\'arte but returned to Brazil in 1990, joining the Centro de Pesquisa Teatral (CPT) and stood out, among others, for his performances in O Melhor do Homem in 1995, directed by Ulysses Cruz. He is known for Carandiru (2003), Elite Squad (2007) and A Wolf at the Door (2013).', 'https://image.tmdb.org/t/p/w500/vA9hgFemy6JHxgjdbQW78xZyAnq.jpg'),
(53256, 'Terry Crews', '0000-00-00 00:00:00', '0', 'Terrence Alan Crews (born July 30, 1968) is an American actor, comedian, activist, artist, bodybuilder and former professional football player. Crews played Julius Rock on the UPN/CW sitcom Everybody Hates Chris. He hosted the U.S. version of the game show Who Wants to Be a Millionaire and starred in the BET reality series The Family Crews. He appeared in films such as Friday After Next (2002), White Chicks (2004), Idiocracy (2006), Blended (2014), and the Expendables series. Since 2013, he has played NYPD Lieutenant Terry Jeffords in the sitcom Brooklyn Nine-Nine. He began hosting America\'s Got Talent in 2019, following his involvement in the same role for the program\'s spin-off series, America\'s Got Talent: The Champions.\r\n\r\nCrews played as a defensive end and linebacker in the National Football League (NFL), for the Los Angeles Rams, San Diego Chargers, and Washington Redskins, as well as in the World League of American Football (WLAF) with the Rhein Fire, and college football at Western Michigan University.\r\n\r\nCrews, a public advocate for women\'s rights and activist against sexism, has shared stories of the abuse his family endured at the hands of his violent father. He was included among the group of people named as Time Person of the Year in 2017 for going public with stories of sexual assault.\r\n\r\nDescription above from the Wikipedia article Terry Crews, licensed under CC-BY-SA, full list of contributors on Wikipedia', 'https://image.tmdb.org/t/p/w500/pxTY4SglLo5hFcMH00MxPeC5u55.jpg'),
(55638, 'Kevin Hart', '1979-07-05 03:00:00', '0', 'Kevin Darnell Hart (born July 6, 1979) is an American stand-up comedian, actor, and producer. Born and raised in Philadelphia, Pennsylvania, Hart began his career by winning several amateur comedy competitions at clubs throughout New England, culminating in his first real break in 2001 when he was cast by Judd Apatow for a recurring role on the TV series Undeclared. The series lasted only one season, but he soon landed other roles in films such as Paper Soldiers (2002), Scary Movie 3 (2003), Soul Plane (2004), In the Mix (2005), and Little Fockers (2010).\r\n\r\nHart\'s comedic reputation continued to grow with the release of his first stand-up album, I\'m a Grown Little Man (2008), and performances in the films Think Like a Man (2012), Grudge Match (2013), Ride Along (2014) and its sequel Ride Along 2 (2016), About Last Night (2014), Get Hard (2015), Central Intelligence (2016), The Secret Life of Pets (2016), Captain Underpants: The First Epic Movie (2017), Jumanji: Welcome to the Jungle (2017), and Night School (2018).\r\n\r\nHe also released four more comedy albums, Seriously Funny in 2010, Laugh at My Pain in 2011, Let Me Explain in 2013, and What Now? in 2016. In 2015, Time Magazine named Hart one of the 100 most influential people in the world on the annual Time 100 list. He starred as himself in the lead role of Real Husbands of Hollywood.\r\n\r\nIn 2017, Hart launched the Laugh Out Loud Network, a subscription video streaming service in partnership with Lionsgate.', 'https://image.tmdb.org/t/p/w500/byiNydUlM6oP8diA7WMvYbNM7a1.jpg'),
(56322, 'Amy Poehler', '1971-09-15 03:00:00', '0', 'Amy Poehler (/ˈpoʊlər/; born September 16, 1971) is an American actress, comedian, writer, producer, and director. After studying improv at Chicago\'s Second City and ImprovOlympic in the early 1990s, she co-founded the improvisational-comedy troupe Upright Citizens Brigade. The group moved to New York City in 1996 where their act became a half-hour sketch-comedy series on Comedy Central in 1998. Along with other members of the comedy group, Poehler is a founder of the Upright Citizens Brigade Theatre.\r\n\r\nDescription above from the Wikipedia article Amy Poehler, licensed under CC-BY-SA, full list of contributors on Wikipedia.​', 'https://image.tmdb.org/t/p/w500/rwmvRonpluV6dCPiQissYrchvSD.jpg'),
(59129, 'Óscar Jaenada', '1975-05-03 03:00:00', '0', 'Óscar Jaenada (born May 4, 1975) is a Spanish actor and producer, known for films like Noviembre (2003), Camarón (2005), Los perdedores (2010), Piratas del Caribe: En mareas misteriosas (2011), Cantinflas (2014), After Words (2015), The Shallows (2016), Snatched (2017), Loving Pablo (2017), and Rambo:Last Blood (2019); and series like Hernán, Luis Miguel, Silent Cargo, Prime Time, Journey to the Center of the Earth (2023), and Midnight Family.  He won the Platino for Best Actor in a Leading Role for Cantinflas (2014).', 'https://image.tmdb.org/t/p/w500/qwphNLIwMyQW2ZLA0g0l1zFiB3w.jpg'),
(59175, 'Blake Lively', '1987-08-24 03:00:00', '0', 'Blake Ellender Lively (born August 25, 1987) is an American actress, model, and director. Born in Los Angeles, Lively is the daughter of actor Ernie Lively, and made her professional debut in his directorial project Sandman (1998). She starred as Bridget Vreeland in The Sisterhood of the Traveling Pants (2005) alongside its sequel The Sisterhood of the Traveling Pants 2 (2008) to commercial success. She appeared opposite Justin Long in the comedy Accepted (2006), and gained recognition for portraying Serena van der Woodsen in the CW drama television series Gossip Girl (2007–2012).', 'https://image.tmdb.org/t/p/w500/rkGVjd6wImtgjOCi0IpeffdEWtb.jpg'),
(59233, 'Scoot McNairy', '1977-11-10 03:00:00', '0', 'John Marcus \"Scoot\" McNairy (born November 11, 1977) is an American actor and producer. He is known for his roles in Monsters, Argo, Killing Them Softly, 12 Years a Slave, Gone Girl, and Batman v Superman: Dawn of Justice. In television, he starred in the AMC period drama Halt and Catch Fire, True Detective, Narcos: Mexico, and the Netflix western miniseries Godless.', 'https://image.tmdb.org/t/p/w500/oP2LJEqupxVZ2XdEW1lN5Q5LF3M.jpg'),
(61178, 'Alia Shawkat', '1989-04-17 03:00:00', '0', 'Alia Martine Shawkat (/ˈæliə ˈʃoʊkɑːt/ al-ee-ə shoh-kaht; born April 18, 1989) is an American actress. She starred as Maeby Fünke in the Fox/Netflix television series Arrested Development (2003–2006; 2013–2019), and as Gertie Michaels in the 2015 horror-comedy film The Final Girls.', 'https://image.tmdb.org/t/p/w500/kcTFBrPSQkenbPK76Iwj49c3Dku.jpg');
INSERT INTO `actor` (`id`, `name`, `birthdate`, `countryId`, `biography`, `image`) VALUES
(63522, 'Sofía Vergara', '1972-07-09 03:00:00', '0', 'Sofía Margarita Vergara Vergara (born July 10, 1972) is a Colombian and American actress and model. She was the highest paid actress in American television from 2013 to 2020.\r\n\r\nVergara rose to prominence while co-hosting two television shows for Spanish-language television network Univision in the late 1990s. Her first notable acting job in English was in the film Chasing Papi (2003). She subsequently appeared in Four Brothers (2005) and Tyler Perry\'s comedies Meet the Browns (2008) and Madea Goes to Jail (2009), receiving an ALMA Award nomination for the latter. In 2009, she began playing Gloria Delgado-Pritchett in the ABC comedy series Modern Family for which she was nominated for four Golden Globe Awards, four Primetime Emmy Awards, and eleven Screen Actors Guild Awards.\r\n\r\nVergara has also had roles in the films The Smurfs (2011), New Year\'s Eve (2011), The Three Stooges (2012), Machete Kills (2013), Fading Gigolo (2013), Chef (2014), and Hot Pursuit (2015). She also had voice-over roles in the animated films Happy Feet Two (2011), Escape from Planet Earth (2013), and The Emoji Movie (2017). Vergara was also the highest-paid Hollywood actress in 2020. Since 2020, Vergara has been a judge on America\'s Got Talent.', 'https://image.tmdb.org/t/p/w500/7VZL8Lupwf3rgNyc7DC3m0XNtvq.jpg'),
(67599, 'Vanessa Hudgens', '1988-12-13 03:00:00', '0', 'Vanessa Anne Hudgens (born December 14, 1988) is an American actress and singer. After making her feature film debut in Thirteen (2003), Hudgens rose to fame portraying Gabriella Montez in the High School Musical film series (2006–2008), which brought her significant mainstream media success. The success of the first film led Hudgens to acquire a recording contract with Hollywood Records, with whom she released two studio albums, V (2006) and Identified (2008).\r\n\r\nSince the release of her studio albums and the High School Musical franchise, Hudgens has focused on her acting career. She appeared in the films Bandslam (2009), Beastly, Sucker Punch (both 2011), Journey 2: The Mysterious Island, Spring Breakers (both 2012), Second Act (2018), Bad Boys for Life (2020), and Tick, Tick...Boom! (2021). She starred in the Netflix Christmas movies The Princess Switch (2018) and its sequels (2020 and 2021) and The Knight Before Christmas (2019), and co-produced the latter three.\r\n\r\nHudgens played the role of Emily Locke in the NBC series Powerless (2017). She also played the title role in the Broadway musical Gigi (2015) and had roles in two of Fox\'s live musical productions: Rizzo in Grease: Live (2016) and Maureen Johnson in Rent: Live (2019). In 2022, Hudgens co-hosted the Met Gala in Manhattan.', 'https://image.tmdb.org/t/p/w500/ssFXWN5li5OWJLgUoFlUDY0ZyPc.jpg'),
(73421, 'Joaquin Phoenix', '1974-10-27 03:00:00', '0', 'Joaquin Rafael Phoenix (born October 28, 1974) is an American actor, producer, and animal rights activist. Known for playing dark and unconventional characters in independent film, he is the recipient of various accolades, including an Academy Award, a British Academy Film Award, a Grammy Award, and two Golden Globe Awards. In 2020, he was ranked 12th on the list of the 25 Greatest Actors of the 21st Century by The New York Times.\r\n\r\nBorn in Puerto Rico and raised in Los Angeles and Florida, Phoenix began his career by appearing in television series in the early 1980s with his brother River. His first major film roles were in SpaceCamp (1986) and Parenthood (1989). During this period, he was credited as Leaf Phoenix, a name he gave himself. He took back his birth first name in the early 1990s and received critical acclaim for his supporting roles in the comedy-drama film To Die For (1995) and the period film Quills (2000). Phoenix received further critical acclaim and first Academy Award and Golden Globe Award nominations for Best Actor in a Supporting Role for his portrayal of the evil emperor Commodus in the historical drama film Gladiator (2000). He had success with the horror films Signs (2002) and The Village (2004), the historical drama Hotel Rwanda (2004) and won a Grammy, a Golden Globe and a nomination for the Academy Award for Best Actor for his portrayal of musician Johnny Cash in the biopic Walk the Line (2005). He continued to receive acclaim in two features with his frequent director James Gray; the action thriller We Own the Night (2007) and the romantic drama Two Lovers (2008), before taking a break from acting.\r\n\r\nIn the 2010s, Phoenix returned to acting to critical acclaim. He starred in the psychological drama The Master (2012), winning the Volpi Cup for Best Actor and earning his third Academy Award nomination. He received Golden Globe nominations for his roles in the romantic drama Her (2013) and the crime satire Inherent Vice (2014) and won the Cannes Film Festival Award for Best Actor for his performance in the psychological thriller You Were Never Really Here (2017). Phoenix achieved international stardom and won an Academy Award, a British Academy Film Award, a Screen Actors Guild Award and a second Golden Globe Award for his portrayal of the title character in Joker (2019).\r\n\r\nPhoenix is an animal rights activist. He has been vegan since the age of three and regularly supports charitable causes and has produced several documentaries on global meat consumption and its impact on the environment. He is in a relationship with actress Rooney Mara, with whom he has a son.', 'https://image.tmdb.org/t/p/w500/u38k3hQBDwNX0VA22aQceDp9Iyv.jpg'),
(73457, 'Chris Pratt', '1979-06-20 03:00:00', '0', 'Christopher Michael Pratt (born 21 June 1979) is an American actor, known for starring in both television and action films. He rose to prominence for his television roles, particularly in the NBC sitcom Parks and Recreation (2009–2015), for which he received critical acclaim and was nominated for the Critics\' Choice Television Award for Best Supporting Actor in a Comedy Series in 2013. He also starred earlier in his career as Bright Abbott in The WB drama series Everwood (2002–2006) and had roles in Wanted (2008), Jennifer\'s Body (2009), Moneyball (2011), The Five-Year Engagement (2012), Zero Dark Thirty (2013), Delivery Man (2013), and Her (2013).\r\n\r\nPratt achieved leading man status in 2014, starring in two critically and commercially successful films: The Lego Movie as Emmet Brickowski, and Marvel Studios\' Guardians of the Galaxy as Star-Lord. He starred in Jurassic World (2015) and Jurassic World: Fallen Kingdom (2018), and he reprised his Marvel role in Guardians of the Galaxy Vol. 2 (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), and the planned Guardians of the Galaxy Vol. 3. Meanwhile, in 2016 he was part of an ensemble cast in The Magnificent Seven and the male lead in Passengers.\r\n\r\nDescription above is from the Wikipedia article Chris Pratt, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/83o3koL82jt30EJ0rz4Bnzrt2dd.jpg'),
(74036, 'Tom Arnold', '0000-00-00 00:00:00', '0', 'From Wikipedia, the free encyclopedia\r\n\r\nThomas Duane \"Tom\" Arnold (born March 6, 1959) is an American actor and comedian. He has appeared in many films, perhaps most notably True Lies (1994). He was the host of The Best Damn Sports Show Period for four years.\r\n\r\nDescription above from the Wikipedia article Tom Arnold (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/z2ajL1ozVCS4Ug04zOGCNH06OPP.jpg'),
(74568, 'Chris Hemsworth', '1983-08-10 03:00:00', '0', 'Chris Hemsworth (born 11 August 1983) is an Australian actor.\r\n\r\nHe is best known for his roles as Kim Hyde in the Australian TV series Home and Away (2004) and as Thor in the Marvel Cinematic Universe films Thor (2011), The Avengers (2012), Thor: The Dark World (2013), Avengers: Age of Ultron (2015), Thor: Ragnarok (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), and Thor: Love and Thunder (2022). He has also appeared in the science fiction action film Star Trek (2009), the thriller adventure A Perfect Getaway (2009), the horror comedy The Cabin in the Woods (2012), the dark fantasy action film Snow White and the Huntsman (2012), the war film Red Dawn (2012) and the biographical sports drama film Rush (2013).', 'https://image.tmdb.org/t/p/w500/piQGdoIQOF3C1EI5cbYZLAW1gfj.jpg'),
(74713, 'Måns Nathanaelson', '1976-09-17 03:00:00', '0', 'Måns Gustaf Daniel Nathanaelson is a Swedish actor, best known his role as Oskar Bergman in the films about the police detective Martin Beck.', 'https://image.tmdb.org/t/p/w500/r6rhoKLvu9X3jNzlQlka9AEvNi.jpg'),
(74750, 'Georges St-Pierre', '1981-05-18 03:00:00', '0', 'Georges St-Pierre was born on May 19, 1981 in Saint-Isidore, Quebec, to Jim and Paulyne St-Pierre. St-Pierre had a difficult childhood, attending a school where others would steal his clothes and money. He started learning Kyokushin karate at age seven from his father and later from a Kyokushin Karate Master to defend himself against a school bully. He took up wrestling and Brazilian Jiu-Jitsu after his karate teacher died and also trained in boxing. Before turning pro as a mixed-martial artist, St-Pierre worked as a bouncer at a Montreal night club in the South Shore called Fuzzy Brossard and as a garbageman for six months to pay for his school fees.\r\n\r\nSt-Pierre has trained with a number of groups in a large variety of gyms throughout his fighting career. Prior to his fight with B.J. Penn at UFC 58, he trained at the Renzo Gracie Jiu-Jitsu Academy in New York City. St-Pierre received his brown belt in BJJ from Renzo Gracie on July 21, 2006. In September 2008, St-Pierre earned his black belt in Brazilian Jiu-Jitsu under Bruno Fernandes.', 'https://image.tmdb.org/t/p/w500/1gRSxCOOf9jxJdGtYNi5FPoXS9l.jpg'),
(75913, 'Ha Jung-woo', '1978-03-10 03:00:00', '0', 'Ha Jung-woo (Korean: 하정우; born Kim Sung-hoon on March 11, 1978) is a South Korean actor, film director, screenwriter and film producer. One of the highest grossing actors in South Korea, Ha\'s starring films have accumulated more than 100 million tickets. Only 3 other actors have reached this milestone, with Ha being nearly a decade younger than the rest when achieving this.\r\n\r\nHis breakthrough to stardom came with the role in Na Hong-jin\'s serial killer film The Chaser (2008). One of the leading actors of his generation in Korean cinema, Ha showcased his versatility across films of various genres: road movie My Dear Enemy (2008), sports film Take Off (2009), action thriller The Yellow Sea (2010), gangster saga Nameless Gangster: Rules of the Time (2012), romantic comedy Love Fiction (2012), spy actioner The Berlin File (2013), and action thriller The Terror Live (2013). Ha is also known for his role as grim reaper Gang-rim in the fantasy action film Along with the Gods: The Two Worlds (2017) and its 2018 sequel.\r\n\r\nHe made his directorial debut through the comedy film Fasten Your Seatbelt (2013), followed by Chronicle of a Blood Merchant (2015).', 'https://image.tmdb.org/t/p/w500/alHcDyLYbc6C2X9yOHw8mNHZVGu.jpg'),
(78029, 'Martin Lawrence', '0000-00-00 00:00:00', '0', 'Martin Fitzgerald Lawrence (born April 16, 1965) is an American actor, film director, film producer, screenwriter, and comedian who was born in Frankfurt am Main, Germany.\r\n\r\nHe came to fame during the 1990s, establishing a Hollywood career as a leading actor, most notably the films Bad Boys, Blue Streak, Big Momma\'s House and Bad Boys II. Lawrence has acted in numerous movie roles and starred in his own television series, Martin, which ran from 1992 to 1997.', 'https://image.tmdb.org/t/p/w500/y3SQzIPUPJpdueb1DkbTYph68nk.jpg'),
(81685, 'Frank Grillo', '0000-00-00 00:00:00', '0', 'Frank Anthony Grillo is an American actor known for his roles in films such as Warrior (2011), The Grey (2012), End of Watch (2012) and Zero Dark Thirty (2012). He had his first leading role in The Purge: Anarchy (2014), portraying Sergeant Leo Barnes; he reprises this role in The Purge: Election Year (2016). He also plays the Marvel supervillain Brock Rumlow / Crossbones in the Marvel Cinematic Universe. He has appeared as the character in Captain America: The Winter Soldier (2014), Captain America: Civil War (2016), and Avengers: Endgame (2019).  Grillo was born June 8, 1965 in New York City as the oldest of three children, and is of Italian heritage. He graduated from New York University with a business degree and spent a year on Wall Street before being asked to do a Miller Genuine Draft beer commercial.', 'https://image.tmdb.org/t/p/w500/br2nPzelch2Tb3pZHnYAbXng7cz.jpg'),
(83271, 'Glen Powell', '1988-10-20 03:00:00', '0', 'Glen Thomas Powell Jr. (born October 21, 1988) is an American actor. He began his career with guest roles on television and small roles in films such as The Dark Knight Rises (2012) and The Expendables 3 (2014) before making his breakthrough performance as Chad Radwell in the Fox comedy-horror series Scream Queens (2015–2016). He has since starred as Finnegan in the coming-of-age comedy Everybody Wants Some!! (2016), astronaut John Glenn in the drama Hidden Figures (2016), and Charlie Young in Set It Up (2018), before achieving international recognition and acclaim as Lieutenant Jake \"Hangman\" Seresin in Top Gun: Maverick (2022). He went on to star as aviator Thomas Hudner in Devotion (2022).', 'https://image.tmdb.org/t/p/w500/fUnIaJkdgvQTztyR1nLeUceSzly.jpg'),
(88675, 'Justin Baldoni', '1984-01-23 03:00:00', '0', 'Justin Baldoni is an American film and television actor and director, best known for playing series regular Rafael Solano on the comedy-drama series \"Jane the Virgin\". After the success of his digital documentary series \"My Last Days\", a show about living told by the dying, he founded Wayfarer Entertainment, a digital media studio that creates \"disruptively inspirational content to celebrate and elevate the human experience\".', 'https://image.tmdb.org/t/p/w500/2sc6iUWljADnqtjsaKU3s6f0DGW.jpg'),
(95505, 'Jacqueline Fernandez', '1985-08-10 03:00:00', '0', 'Jacqueline Fernandez is a Bahraini-born Sri Lankan actress and model. She\'s the winner of the 2006 Miss Universe Sri Lanka pageant and represented her country at the 2006 world Miss Universe pageant. She graduated with a degree in Mass Communication from the University of Sydney, Australia, and worked as a television reporter in Sri Lanka.\r\n\r\nWhile on a modelling assignment in India in 2009, Fernandez successfully auditioned for the fantasy drama \"Aladin\", which marked her acting debut. Fernandez\'s breakthrough role came with the psychological thriller \"Murder 2\" in 2011, her first commercial success.  One of the most popular actresses in India, she is the recipient of several awards. Alongside her screen acting career, Fernandez has worked as a judge in the ninth season of the dance reality show \"Jhalak Dikhhla Jaa\" (2016–2017), is a popular celebrity endorser for various brands and products, has participated in stage shows, and is active in humanitarian work.', 'https://image.tmdb.org/t/p/w500/x7RQ5uI2WFaXOPW1kIe0yUQ0jbe.jpg'),
(115290, 'Lee Sun-kyun', '1975-03-01 03:00:00', '0', 'Lee Sun-kyun (March 2, 1975 – December 27, 2023) was a South Korean actor. He was best known for his roles in the films, Helpless (2012), romantic comedy All About My Wife (2012), and crime/black comedy A Hard Day (2014). He was also known for his role in the Bong Joon-ho\'s Academy Award-winning black comedy film Parasite for which he won a Screen Actors Guild Award along with his castmates. He received several other awards including nomination for an International Emmy Award.\r\n\r\nAfter beginning his career in musical theatre, for many years Lee was relegated to minor and supporting roles onscreen, only getting to play lead characters in one-act dramas on KBS Drama City and MBC Best Theater. In one such Best Theater project, he worked with TV director Lee Yoon-jung on Taereung National Village (2005), which led to him being cast in her later series Coffee Prince in 2007. Coffee Prince, along with medical drama White Tower brought Lee mainstream popularity, which he followed with Pasta (2010), Golden Time (2012) and My Mister (2018).\r\n\r\nMeanwhile, on the big screen, he received a Best Actor award from the Las Palmas de Gran Canaria International Film Festival for his role in Paju (2009), followed by critical acclaim for mystery thriller Helpless (2012), romantic comedy All About My Wife (2012), and crime/black comedy A Hard Day (2014). Lee also continues to collaborate with auteur Hong Sang-soo, and his arthouse films with Hong include Night and Day (2008), Oki\'s Movie (2010), and Nobody\'s Daughter Haewon (2013). In 2019, he starred in Bong Joon-ho\'s Oscar-winning black comedy film Parasite.', 'https://image.tmdb.org/t/p/w500/mwF2HgyEF2UzxSvNRJEtbWlKbAj.jpg'),
(117190, 'Jon Sklaroff', '2024-10-12 18:33:59', '', NULL, 'https://image.tmdb.org/t/p/w500/f2sObKMPWfp2uA6rWQg0IeA65cl.jpg'),
(118899, 'Sam Gorski', '2024-10-12 18:33:59', '', 'Sam Gorski was born on 22 May 1978 in Madison, Wisconsin, USA. He is a director and producer, known for Modern Warfare: Frozen Crossing (2010), Lifeline (2017), and Sync (2012).', 'https://image.tmdb.org/t/p/w500/dhjQ5co7hwU9jYNvF45YjZJN4fo.jpg'),
(120831, 'Annaleigh Ashford', '1985-06-24 03:00:00', '0', 'Annaleigh Amanda Ashford (born June 25, 1985) is an American actress, singer, and dancer. She is known for her work on Broadway as Glinda in Wicked (2005–2006; 2007–08), and Margot in Legally Blonde (2007), as well as for originating the role of Lauren in Kinky Boots (2013–14), a performance for which she received a 2013 Tony nomination. Ashford won the 2015 Tony Award for Best Featured Actress in a Play for her performance as Essie Carmichael in the revival of You Can\'t Take It with You (2014–15).\r\n\r\nIn 2017, she starred as Dot/Marie in the critically acclaimed, limited-run revival of Sunday in the Park with George. Additionally, she is known for portraying the role of Betty DiMello on the period drama television series Masters of Sex, which ran for four seasons on Showtime. In 2019, she starred as Jenny Aquila in Bad Education, and, in 2020, as Paula Jones in Impeachment: American Crime Story.\r\n\r\nDescription above is from the Wikipedia article Annaleigh Ashford, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/AaMsrGdvvNeOzNUMUYOQlcejbfO.jpg'),
(121718, 'Bill Camp', '0000-00-00 00:00:00', '0', 'Bill Camp (born October 13, 1964) is an American actor, he played supporting roles in many films. He is best known for playing Detective Dennis Box in the HBO limited television series The Night Of, for which he was nominated for the Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or Movie.', 'https://image.tmdb.org/t/p/w500/yZFata0EVr7TbIAz8vZFyiDKDts.jpg'),
(132245, 'Eva Melander', '1974-12-24 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/rhRJbKhetk4M9KpswhBuWcvZ7Ee.jpg'),
(137905, 'Bill Skarsgård', '1990-08-08 03:00:00', '0', 'Bill Istvan Günther Skarsgård is a Swedish actor, producer, director, writer, voice actor, and model. He is best known for portraying Pennywise the Dancing Clown in the supernatural horror films It (2017) and It Chapter Two (2019), based on Stephen King\'s novel of the same name. He also voiced the Deviant Kro in the Marvel Cinematic Universe film Eternals (2021).', 'https://image.tmdb.org/t/p/w500/wGQidITqyDl4Igmq9TCQjRpegsk.jpg'),
(139422, 'Tee Reel', '1980-06-12 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/lYnzxsQMdj0CJWA4KuGtqhvo3aP.jpg'),
(139820, 'Pom Klementieff', '1986-05-02 03:00:00', '0', 'Pom Alexandra Klementieff (born 3 May 1986) is a French actress of mixed Korean-Russian-French ancestry. She was trained at the Cours Florent drama school in Paris and appeared in such French films as The Easy Way (2008) and Sleepless Night (2011), before making her American film debut in Oldboy (2013). In 2019, she also made an appearance in Striking Vipers, the first episode of the fifth series of the anthology series Black Mirror.\r\n\r\nKlementieff received worldwide recognition for her role as Mantis in the Marvel Cinematic Universe films Guardians of the Galaxy Vol. 2 (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), Thor: Love and Thunder (2022), the television film The Guardians of the Galaxy Holiday Special (2022), and Guardians of the Galaxy Vol. 3 (2023).', 'https://image.tmdb.org/t/p/w500/hfUKAI2kXTMMWjno0i4sLPJud5N.jpg'),
(140114, 'Marie Avgeropoulos', '1986-06-16 03:00:00', '0', 'Marie Avgeropoulos (/ævdʒɛrɔːˈpuːlɔːs/; born June 17, 1986) is a Canadian actress and model with Greek ancestry. Her break-out role was as Valli Wooley in the 2009 film I Love You, Beth Cooper directed by Chris Columbus. Since then, she has appeared in more film and TV roles: as Kirstie in Cult, as Kim Rhodes in Hunt to Kill, and the sci-fi series The 100 as Octavia Blake.\r\n\r\nAfter studying broadcast journalism for two years in her hometown, Avgeropoulos moved to Europe. Several months later, she came back to Canada and settled in Vancouver. Avgeropoulos started playing drums when she was 16. One of her friends invited her for a casting call in Vancouver, which happened to be looking for drummers. A talent agent recognized her talent and invited her to appear in various national commercials. She caught the attention of director Chris Columbus. He hired Avgeropoulos for I Love You, Beth Cooper, which became her first feature film role. Her appearance in the film gave her the opportunities to star in more films and television shows.\r\n\r\nIn 2010, Avgeropoulos was cast as Kim Rhodes in the film Hunt to Kill, which became her break-out role.\r\n\r\nEarly in 2013, Avgeropoulos made her break-out in television after being cast for a recurring role in The CW\'s Cult.\r\n\r\nHowever, the series failed to attract viewers and after episode 7, the show was canceled. The remaining six episodes of the show were broadcast later in the summer.\r\n\r\nNot long after the show ended, The CW cast her as one of the main characters in their new sci-fi, The 100, to portray the character Octavia Blake.', 'https://image.tmdb.org/t/p/w500/cCzCHmDZXrNfyzbkpxvaKDaGy77.jpg'),
(148992, 'Austin Abrams', '1996-09-01 03:00:00', '0', 'Austin Noah Abrams (born September 2, 1996) is an American actor. He is known for his roles as Ron Anderson in the fifth and sixth seasons of the television series The Walking Dead (2015–2016), as Ethan Lewis in Euphoria (since 2019) and as Dash in Dash & Lily (2020). He has also appeared in films such as The Kings of Summer (2013), Paper Towns (2015), Brad\'s Status (2017), Scary Stories to Tell in the Dark (2019) and Chemical Hearts (2020).', 'https://image.tmdb.org/t/p/w500/9pSpSAk9NsYC5puqAVsmSK3OSeu.jpg'),
(150125, 'Ju Ji-hoon', '1982-05-15 03:00:00', '0', 'Ju Ji-hoon is a South Korean actor. He began as a model but transitioned into acting with his breakout role as Crown Prince Lee Shin in 2006\'s Princess Hours.  Ju Ji-hoon is perhaps most widely known for his role Haewonmak in the box office smash hit films Along with the Gods: The Two Worlds and Along with the Gods: The Last 49 days and his role of Prince Yi Chang in the Netflix Historical Zombie TV series Kingdom.', 'https://image.tmdb.org/t/p/w500/7PYfUrBBXhYv5PIsTalJhjbRteg.jpg'),
(212815, 'Laura Birn', '1981-04-24 03:00:00', '0', 'Laura Eveliina Birn (born April 25, 1981 in Helsinki) is a Finnish actress.\r\n\r\nBirn studied at Teatterikorkeakoulu (Helsinki) between 2002 and 2007 and graduated in 2008. She is known for her many  roles in well known nordic films  films  eg  Lupaus (2005), 8 days to the Premiere (2008),  Vuosaari (2012).\r\n\r\nIn 2013, Birn won the best actress for Jussi\'s film Puhdistus (2012). In the same year, he was awarded the State Prize for Cinematography.\r\n\r\nIn 2021 she began playing the role of robot Eto Demerzel in the series Foundation. The second season was released in 2023', 'https://image.tmdb.org/t/p/w500/7aFAUPKj1joqQ2VOWOuGh88biuH.jpg'),
(213001, 'Jenny Slate', '1982-03-24 03:00:00', '0', 'Jenny Slate (born March 25, 1982) is an American actress, stand-up comedian, and writer. Following early acting and stand-up roles on television, Slate gained recognition for her live variety shows in New York City and for co-creating, writing, and producing the children\'s short film and book series Marcel the Shell with Shoes On (2010–present). She became more widely known as a cast member on the 35th season of the NBC sketch comedy series Saturday Night Live between 2009 and 2010, followed by subsequent roles in the comedic series Bob\'s Burgers (2012–present), Parks and Recreation (2013–2015), House of Lies (2013–2015), and Kroll Show (2013–2015).\r\n\r\nSlate\'s breakout role came with her leading performance in the coming-of-age comedy-drama film Obvious Child (2014), for which she won the Critics\' Choice Movie Award for Best Actress in a Comedy and was nominated for an Independent Spirit Award and Gotham Independent Film Award. She lent voice performances to the animated films The Lorax (2012), Zootopia (2016), The Secret Life of Pets film franchise (2016–2019), The Lego Batman Movie, and Despicable Me 3 (both 2017), and she ventured into dramatic roles with her supporting performance as Bonnie in Gifted (2017). She also appeared in the critically acclaimed science-fiction film Everything Everywhere All at Once, winning the Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture.\r\n\r\nDescription above from the Wikipedia article Jenny Slate, licensed under CC-BY-SA, full list of contributors on Wikipedia.  ', 'https://image.tmdb.org/t/p/w500/iNpXig5Djkh5moYG4TCekIATs5B.jpg'),
(226366, 'Brian Tyree Henry', '1982-03-30 03:00:00', '0', 'Brian Tyree Henry (born March 31, 1982) is an American actor. He is best known for his role as Alfred \"Paper Boi\" Miles in the FX comedy-drama series Atlanta (2016–2022), for which he received a Primetime Emmy Award nomination for Outstanding Supporting Actor in a Comedy Series. He is also known for his performances in Boardwalk Empire, How to Get Away with Murder, and This Is Us.\r\n\r\nHenry made his film breakthrough in 2018 with starring roles in Steve McQueen\'s heist film Widows, Barry Jenkins\' romantic drama film If Beale Street Could Talk, and the animated superhero film Spider-Man: Into the Spider-Verse. He\'s since appeared in Joker (2019), Godzilla vs. Kong (2021), The Woman in the Window (2021), and Bullet Train (2022). He portrayed Phastos in the Marvel Cinematic Universe film Eternals (2021). In 2022, he starred in Causeway (2022) which earned him a nomination for an Academy Award for Best Supporting Actor.\r\n\r\nHe has also appeared on stage, making his debut performance in the Shakespeare in the Park production of Romeo and Juliet (2007), and acting in various plays at the Public Theatre, before appearing in the original Broadway cast of The Book of Mormon (2011). In 2014 he appeared in the off-Broadway musical The Fortress of Solitude. For his performance in the 2018 Broadway revival of Kenneth Lonergan\'s play Lobby Hero, he received a Tony Award nomination for Best Featured Actor in a Play.', 'https://image.tmdb.org/t/p/w500/2MsJh0bpyzwvOUnXOltHp3j85Pb.jpg'),
(237405, 'Lady Gaga', '1986-03-27 03:00:00', '0', 'Stefani Joanne Angelina Germanotta (born March 28, 1986), better known by her stage name Lady Gaga, is an American singer and songwriter. After performing in the rock music scene of New York City\'s Lower East Side in 2003 and later enrolling at New York University\'s Tisch School of the Arts, she soon signed with Streamline Records, an imprint of Interscope Records. During her early time at Interscope, she worked as a songwriter for fellow label artists and captured the attention of recording artist Akon, who recognized her vocal abilities, and signed her to his own label, Kon Live Distribution.\r\n\r\nHaving sold 170 million records as of 2018, Gaga is one of the world\'s best-selling music artists and the only female artist to achieve four singles that sold at least 10 million copies globally. Her accolades include 13 Grammy Awards, 18 MTV Video Music Awards, 16 Guinness World Records, awards from the Songwriters Hall of Fame and the Council of Fashion Designers of America, and recognition as Billboard\'s Artist of the Year (2010) and Woman of the Year (2015). She has also been included in several Forbes\' power rankings and ranked fourth on VH1\'s Greatest Women in Music (2012). Time magazine named her one of the 100 most influential people in the world in 2010 and 2019 and placed her on their All-Time 100 Fashion Icons list.', 'https://image.tmdb.org/t/p/w500/74rEzBPmxwqplvfMsXy9i2tCc24.jpg'),
(240948, 'Moon Sung-keun', '0000-00-00 00:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/wQjOvAFqCItwMw7dxa486KnGgEE.jpg'),
(298410, 'Keegan-Michael Key', '1971-03-21 03:00:00', '0', 'Keegan-Michael Key (born March 22, 1971, height 6\' 1\" (1,85 m)) is an American actor and comedian best known for starring in the Comedy Central sketch series Key & Peele and for his six seasons as a cast member on MADtv.\r\n\r\nEarly life Key was born in Southfield, Michigan and raised in Detroit. His father is African-American and his mother is European-American. He was adopted as a child. In 1989 he graduated from Shrine Catholic High School in Royal Oak, Michigan. Key attended the University of Detroit as an undergraduate and earned his Master of Fine Arts at the Pennsylvania State University School of Theatre. While at The University of Detroit Mercy, he was a brother of Phi Kappa Theta.', 'https://image.tmdb.org/t/p/w500/vAR5gVXRG2Cl6WskXT99wgkAoH8.jpg'),
(428440, 'Poorna Jagannathan', '1972-12-21 03:00:00', '0', 'Poorna Jagannathan is an American actress and producer. She is best known for her portrayal of Safar Khan in HBO\'s Emmy and Golden Globe-nominated show, The Night Of, as well as playing the lead in the Bollywood cult comedy film Delhi Belly. She also initiated and produced the play Nirbhaya, written and directed by Yael Farber, which dealt with breaking the silence about sexual violence. Her play won the 2013 \'Amnesty International Award\' and was called by The Telegraph as the \"One of the most powerful pieces of theater you\'ll ever see\". Jagannathan was featured among the top 10 in Femina magazine\'s \"India\'s 50 most beautiful women\" in 2012 and in 2014, she was named among the top 50 most powerful women in India. She was most recently a series regular on Gypsy, a Netflix original series, and part of the ensemble cast for HBO\'s new anthology series, Room 104, by the Duplass brothers. Her new film, Share, directed by Pippa Bianco and produced by A24, is slated for a 2019 release on HBO. In May 2018, Deadline announced that Jagannathan was joining the cast of the HBO series Big Little Lies, as a new recurring character.', 'https://image.tmdb.org/t/p/w500/o2BQX1tAgo47GGvpBy1k4LQLRs6.jpg'),
(533717, 'Chaz Bono', '0000-00-00 00:00:00', '0', 'Chaz Salvatore Bono is an American writer, musician and actor. His parents are entertainers Sonny Bono and Cher, and he became widely known in appearances as a child on their television show, The Sonny & Cher Comedy Hour. Bono is a trans man.', 'https://image.tmdb.org/t/p/w500/fs5SWNqzkT5WngRzgVKOzk7lko6.jpg'),
(543530, 'Dave Bautista', '0000-00-00 00:00:00', '0', 'David Michael Bautista Jr. (born January 18, 1969) is an American actor of Filipino-Greek descent and retired professional wrestler. He had several stints in WWE between 2002 and 2019. In his acting career, he is most widely known for his portrayal of Drax the Destroyer in the Marvel Cinematic Universe since Guardians of the Galaxy (2014), up until leaving the franchise after Guardians of the Galaxy Vol. 3 (2023), and for his portrayal of Glossu Rabban Harkonnen in Denis Villeneuve\'s Dune (2021) and its sequel, Dune: Part Two (2024).', 'https://image.tmdb.org/t/p/w500/ymn6iQBJbQZN6BYI60YJDXVP4gF.jpg'),
(544442, 'Paola Nuñez', '1978-04-07 03:00:00', '0', 'Paola Nuñez was born on April 8, 1978 in Tijuana, Baja California, Mexico. She is an actress and producer, known for Without Her (2005), Desire (2013) and Behind the Power (2013).', 'https://image.tmdb.org/t/p/w500/5k8tBBvoV43iK6u0k2YUSVXPmuK.jpg'),
(550683, 'Kim Hee-won', '1971-01-09 03:00:00', '0', 'Kim Hee-won, born January 10, 1971, is a South Korean actor. Since 2007, he has played supporting roles in films and television series, notably The Man from Nowhere (2010), Mr. Go (2013), and Misaeng: Incomplete Life (2014).', 'https://image.tmdb.org/t/p/w500/sDCxskfmmNidOjV2LwsWh9dAVbN.jpg'),
(552252, 'Hasan Minhaj', '1985-09-22 03:00:00', '0', 'Hasan Minhaj is an American comedian, writer, producer, political commentator, actor, and television host, best known for his appearances as a Senior Correspondent on The Daily Show and his stand-up special Homecoming King. He is of Indian descent and attended University of California, Davis.', 'https://image.tmdb.org/t/p/w500/6vHHhLnbKBCPmYc90qAV2Cde95F.jpg'),
(559357, 'Paolo Rivero', '2024-10-12 18:33:11', '', NULL, 'NULL'),
(568657, 'Sofia Boutella', '1982-04-02 03:00:00', '0', 'Sofia Boutella (born April 3, 1982) is an Algerian dancer, model, and actress. She is known mainly for her hip-hop and street dance, and for appearing in Nike Women\'s advertising campaigns. Boutella has starred as Gazelle in Kingsman: The Secret Service (2015), an alien warrior named Jaylah in Star Trek Beyond (2016), and the main antagonist, Princess Ahmanet, in Universal\'s Dark Universe film The Mummy. Also in 2017, she starred alongside Charlize Theron in Atomic Blonde, the film adaptation of the graphic novel The Coldest City, as undercover French agent Delphine Lasalle.\r\n\r\nSofia Boutella was born in the Bab El Oued district of Algiers, Algeria, to an architect mother and a jazz musician father, Safy Boutella. Her brother, Seif, works as a visual effects artist in the entertainment industry. Her surname means \'the men of the mountains\'. She was raised in a fairly secular household that cultivated artistic expression and creativity. In 1992, at the age of 10, she left Algeria with her family in the midst of the Algerian Civil War and moved to France. Shortly thereafter, she started rhythmic gymnastics, joining the French national team at age 18.', 'https://image.tmdb.org/t/p/w500/lGFhhjcjARQCM8AiGidyyyfDowh.jpg'),
(972294, 'Michael Godere', '1976-03-11 03:00:00', '', NULL, 'NULL'),
(974169, 'Jenna Ortega', '2002-09-26 03:00:00', '0', 'Jenna Marie Ortega (born September 27, 2002) is an American actress. She began her career as a child actress, receiving recognition for her role as young Jane on The CW comedy-drama series Jane the Virgin (2014–2019). She had her breakthrough for starring as Harley Diaz on the Disney Channel series Stuck in the Middle (2016–2018), for which she won an Imagen Award. She played Ellie Alves in the second season of the Netflix thriller series You in 2019 and starred in the Netflix family film Yes Day (2021).\r\n\r\nOrtega received critical praise for her performance in the teen drama The Fallout (2021), and went on to star in the slasher films X (2022), Scream (2022) and its sequel Scream VI (2023), establishing herself as a scream queen. She starred as Wednesday Addams in the Netflix horror comedy series Wednesday (2022), for which she received nominations for a Primetime Emmy Award, a Golden Globe Award and a SAG Award.\r\n\r\nDescription above from the Wikipedia article Jenna Ortega, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/q1NRzyZQlYkxLY07GO9NVPkQnu8.jpg'),
(979807, 'Shannon Kook', '1987-02-08 03:00:00', '0', 'Shannon Kook is a South African film and television actor and singer.', 'https://image.tmdb.org/t/p/w500/gBJmrtY2fBFfkQRfosLv2MNWx2J.jpg'),
(986805, 'Filip Berg', '1986-10-01 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/6VU8AUvXw5VYO7ykyESItSDFZRk.jpg'),
(1020859, 'Sung Dong-il', '0000-00-00 00:00:00', '0', 'Sung Dong-il (성동일) is a South Korean actor.', 'https://image.tmdb.org/t/p/w500/9VLRIvOyQSHkpJaeaBcmHzcEUQn.jpg'),
(1052894, 'Gwen Garci', '1981-05-06 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/8ul2ti0wMAEPty5Gmc3QVXdUJWt.jpg'),
(1110405, 'Mackenzie Davis', '1987-03-31 03:00:00', '0', 'Mackenzie Rio Davis (born April 1, 1987) is a Canadian actress, producer, and model.  She\'s known for her TV roles as Cameron Howe on AMC\'s Halt and Catch Fire, and Kristen Raymonde on the miniseries Station Eleven, this latter role earned her a Critics\' Choice Super Award for Best Actress in a Science Fiction/Fantasy Series. She\'s also known for her film roles as Grace Harper in Terminator: Dark Fate, the title character in Tully, Mariette in Blade Runner 2049, Mindy Park in The Martian, Chelsea in That Awkward Moment, and Nicole in What If (original title: The F Word), for this last role she was nominated for the Canadian Screen Award for Best Supporting Actress.', 'https://image.tmdb.org/t/p/w500/ekQbEIKh26jbz17P0wwLbo6uNs9.jpg'),
(1129464, 'Alycia Debnam-Carey', '1993-07-19 03:00:00', '0', 'Alycia Jasmin Debnam-Carey is an Australian actress. She graduated from Newtown High School of the Performing Arts in 2010.', 'https://image.tmdb.org/t/p/w500/bHB9avlzesf1ILVC4Ei45A2baNg.jpg'),
(1131415, 'Hovik Keuchkerian', '1972-11-13 03:00:00', '0', 'Hovik Keuchkerian (born 14 November 1972) is a Spanish actor and former boxer best known for the role of Bogotá in Money Heist.', 'https://image.tmdb.org/t/p/w500/o5cGKWHlZl4RFROYlT2hD95j0lN.jpg'),
(1182545, 'Paolo Serrano', '1987-08-16 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/nZhbmyjaQSAshWtQ3GlQxE3oOGH.jpg'),
(1182546, 'Joash Balejado', '2024-10-12 18:33:11', '', NULL, 'NULL'),
(1182547, 'Marco Morales', '2024-10-12 18:33:11', '', NULL, 'https://image.tmdb.org/t/p/w500/slIb6dJVStEngxKC6Z4QJShP3xm.jpg'),
(1190554, 'Catherine Corcoran', '1992-05-29 03:00:00', '0', 'She is best known for her staring role in Troma Entertainments, award-winning, \'Return to Nuke \'Em High\' (a revamped, reboot of the 1984 cult classic, \'The Class of Nuke \'Em High\'). Her career also includes roles in Gossip Girl, The Good Wife, MTV Pranks, and working under the mentorship of Academy Award Winning directors Peter Jackson (The Lovely Bones) and Josh Fox (Gasland). She has been featured in various publications including The New York Times, Interview Magazine, TIME Magazine, The Hollywood Reporter and Le Figaro. Much in the vein of her mentors, Catherine is also known for spearheading Troma Entertainments, \'Occupy Cannes\' Campaign and its subsequent documentary.', 'https://image.tmdb.org/t/p/w500/vv3hncIfLPsTj5XonPrMV4UcbPl.jpg'),
(1202732, 'Chris Cock', '1978-12-18 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/7ZQURgnph71tP4cD3UvWSpAyoTA.jpg'),
(1207629, 'Yeo Jin-goo', '1997-08-12 03:00:00', '0', 'Yeo Jin-goo is a South Korean actor. He began his career as a child actor, notably in the television dramas Giant, Moon Embracing the Sun, and Missing You. In 2013, he played his first big-screen leading role as the titular character in action thriller Hwa-yi. Won 2012 MBC Drama Awards: Best Child Actor for his role in \"Moon Embracing the Sun\" and \"Missing You\".', 'https://image.tmdb.org/t/p/w500/f9Gj12cCk66vdIaDVjltTGAZPC9.jpg'),
(1213391, 'Mallory Low', '1989-08-29 03:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/amS893X6E4w2n3Go73HkbuYZjI9.jpg'),
(1217648, 'Chris Diamantopoulos', '1975-05-08 03:00:00', '0', 'Chris grew up splitting his time between Greece and Canada. At age 9, he started doing TV commercials and professional theater. He left home at 18 to perform in a series of US national tours after which, he landed on Broadway. Chris now splits his time between New York and Los Angeles acting in TV and Film. Also an established voice-over artist, he can be heard on numerous national campaigns and networks.', 'https://image.tmdb.org/t/p/w500/rD9KI3FYwy3rFJhdTg2K5mhr7W3.jpg'),
(1229419, 'Leeshon Alexander', '2024-10-12 18:33:25', '', NULL, 'NULL'),
(1229670, 'Jolene Anderson', '1980-05-25 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/l4SPMWGpEpVvA5wrLG1vguJ99ZZ.jpg'),
(1253360, 'Pedro Pascal', '1975-04-01 03:00:00', '0', 'José Pedro Balmaceda Pascal (born April 2, 1975) is a Chilean-American actor. After nearly two decades of taking small roles in film and television, Pascal rose to prominence for portraying Oberyn Martell during the fourth season of the HBO fantasy series Game of Thrones (2014) and as Javier Peña in the Netflix crime series Narcos (2015–2017). Since 2019, he has starred as the title character in the Disney+ Star Wars series The Mandalorian and reprised his role in the spin-off series The Book of Boba Fett (2021). Since 2023, he has played Joel in the HBO drama series The Last of Us.\r\n\r\nHe has appeared in the films The Adjustment Bureau (2011), The Great Wall (2016), Kingsman: The Golden Circle (2017), The Equalizer 2 (2018), Triple Frontier (2019), Wonder Woman 1984 (2020), and The Unbearable Weight of Massive Talent (2022).', 'https://image.tmdb.org/t/p/w500/9VYK7oxcqhjd5LAH6ZFJ3XzOlID.jpg'),
(1259384, 'Sukollawat Kanarot', '1985-04-17 03:00:00', '0', 'Sukkolawat Kanaros (Thai: ศุกลวัฒน์ คณารศ, born on April 18, 1985) is a Thai actor, also known by his nickname Weir. He is also a model and singer. He is seen on Thai television Channel 7.', 'https://image.tmdb.org/t/p/w500/v0tNea70dRSyOqC6OtIL8MuWEIq.jpg'),
(1267329, 'Lupita Nyong\'o', '1983-02-28 03:00:00', '0', 'Lupita Amondi Nyong\'o (born 1 March 1983) is a Kenyan-Mexican actress and author. She began her career in Hollywood as a production assistant. In 2008, she made her acting debut with the short film East River and subsequently returned to Kenya to star in the television series Shuga (2009–2012). In 2009, she wrote, produced and directed the documentary In My Genes. She then pursued a master\'s degree in acting from the Yale School of Drama.\r\n\r\nShe had her first feature film role as Patsey in 12 Years a Slave (2013), for which she received critical acclaim and won several awards, including the Academy Award for Best Supporting Actress. She became the first Kenyan and Mexican actress to win an Academy Award. She made her Broadway debut as a teenage orphan in the play Eclipsed (2015), for which she was nominated for a Tony Award for Best Actress in a Play. She went on to perform a motion capture role as Maz Kanata in the Star Wars sequel trilogy (2015–2019) and a lead voice role as Raksha in The Jungle Book (2016). Her career progressed with her role as Nakia in the Marvel Cinematic Universe superhero film Black Panther (2018) and her starring role in Jordan Peele\'s critically acclaimed horror film Us (2019).\r\n\r\nIn addition to acting, she supports historic preservation. She is vocal about preventing sexual harassment and working for women\'s and animal rights. In 2014, she was named the most beautiful woman by People. She has also written a children\'s book named Sulwe (2019), which became a number-one New York Times Best-Seller. Also in 2019, she narrated the Discovery Channel docu-series Serengeti, which earned her a Primetime Emmy Award nomination for Outstanding Narrator. She was named among Africa\'s \"50 Most Powerful Women\" by Forbes in 2020.\r\n\r\nDescription above is from the Wikipedia article Lupita Nyong\'o, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/y40Wu1T742kynOqtwXASc5Qgm49.jpg'),
(1267383, 'Trevor Dow', '2024-10-12 18:33:59', '', NULL, 'NULL'),
(1270506, 'Sanya Kunakorn', '0000-00-00 00:00:00', '0', 'Sanya Kunakorn, nicknamed Wuu (but popularly referred to as Duu), is an MC and actor born at Kut Chab District, Udon Thani Province, in a family of Thai-Chinese descent. He graduated primary school from Don Bosco School, Science Udon Thani Province Secondary level from Suankularb Wittayalai School and tertiary level from the Faculty of Architecture Chulalongkorn University.\r\n\r\nHe began to enter the entertainment industry by playing a supporting role in the television program \"Phet Khang Stress\" started the first time as a MC program \"Chiab\" with Dee Dokmadan and his first known work was being the host of the Cho Jai program on Channel 5 with Damrong Puttan for 17 years.\r\n\r\nCurrently, he is an executive of Detalk Co., Ltd., a subsidiary of GMM Grammy.', 'https://image.tmdb.org/t/p/w500/3DQGTDFdAvWMf8XTp8GsOG2VNR1.jpg'),
(1278487, 'Hannah Waddingham', '1974-07-27 03:00:00', '0', 'Hannah Waddingham (born 28 July 1974) is a British actress and singer. She is best known for playing Rebecca Welton in the comedy series Ted Lasso (2020–present), for which she won the Primetime Emmy Award for Outstanding Supporting Actress in a Comedy Series in 2021 and the Critics\' Choice Television Award for Best Supporting Actress in a Comedy Series in 2021 and 2022. She has also appeared in a number of West End shows, including Spamalot, the 2010 Regent\'s Park revival of Into the Woods, and The Wizard of Oz as the Wicked Witch of the West; and has received three Olivier Award nominations for her work.\r\n\r\nHer other work includes appearing as an ensemble member in the 2012 film adaptation of Les Misérables, and joining the cast of the fifth season of the HBO series Game of Thrones as Septa Unella in 2015. She co-starred in the 2018 British psychological thriller Winter Ridge, and has had a supporting role on the series Sex Education since 2019.\r\n\r\nDescription above from the Wikipedia article Hannah Waddingham, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/eHAICyhvjiRZCgzKyJCk9hWnnjr.jpg'),
(1280421, 'Gerry Eng', '2024-10-12 18:33:59', '', NULL, 'NULL'),
(1292258, 'Jack Kesy', '1986-08-26 03:00:00', '0', 'Jack Kesy  is an American actor. On television, he has portrayed Gabriel Bolivar on the FX horror drama The Strain (2014–2016) and Roller Husser on the TNT dark comedy Claws (2017–present). He also played Black Tom Cassidy in the Marvel Comics film Deadpool 2 (2018).', 'https://image.tmdb.org/t/p/w500/lQ8nUYK6InbCFk2TWNnXjjvG9IY.jpg'),
(1303873, 'Jenna Kanell', '1991-11-11 03:00:00', '0', 'Jenna Kanell is an American actress, director, writer, and stunt performer. She gained recognition for her portrayals of Tara Heyes in Terrifier (2016) and Kim Hansen in The Bye Bye Man (2017)—both horror films in which she performed her own stunt work. Her film career has since expanded to a variety of genres such as the political drama The Front Runner (2018), the horror-comedy Renfield (2023), and the action comedy Bad Boys 4 (2024).\r\n\r\nFrom Wikipedia, the free encyclopedia', 'https://image.tmdb.org/t/p/w500/xrWxxvNsZvBVHeeS3RIlhi8rGyA.jpg'),
(1323109, 'Aisling Franciosi', '1993-06-05 03:00:00', '0', 'Aisling Franciosi is an Irish actress. She won an AACTA Award for her leading role in the film The Nightingale (2018). On television, she is known for her roles in the RTÉ-BBC Two crime drama The Fall (2013–2016), season 2 of the TNT series Legends (2015), and the BBC One miniseries Black Narcissus (2020).', 'https://image.tmdb.org/t/p/w500/qtXgCx5vMlAMIjMbYydDjjzY08T.jpg'),
(1351055, 'Ye Su-jeong', '0000-00-00 00:00:00', '0', 'Ye Soo-jung is a South Korean actress. She is known for many support roles throughout her career. Her mother Ae Ran Jeong was an actress from the 50s to the 70s. She is married to Kim Chang Hwa and her daughter Kim Ye Na is a theater director.', 'https://image.tmdb.org/t/p/w500/rwGPhu8Ge36eMkrOlzfdKKFargw.jpg'),
(1361520, 'Martin Bassindale', '2024-10-12 18:33:25', '', NULL, 'https://image.tmdb.org/t/p/w500/gsMepIrek14cuV2vQPEo9GhuoRs.jpg'),
(1373143, 'Marie Nonnenmacher', '1976-10-11 03:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/b0F4vbkVIWEk849tWKL04WcLJ6S.jpg'),
(1373246, 'Adeline Chetail', '1986-05-25 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/eC9zx47fnwVu1WaLZqCae101Cyk.jpg'),
(1376883, 'Makenzie Leigh', '1990-08-07 03:00:00', '0', 'Makenzie Leigh (born August 8, 1990) is an American film and television actress and model, best known for playing the romantic love interest in Ang Lee\'s feature film Billy Lynn\'s Long Halftime Walk.', 'https://image.tmdb.org/t/p/w500/1lKaB2pEA1fTcljDS7pbf7Lqi3B.jpg'),
(1381186, 'Stephanie Hsu', '1990-11-24 03:00:00', '0', 'Stephanie Ann Hsu (born November 25, 1990) is an American actress.\r\n\r\nShe trained at NYU Tisch School of the Arts and began her career in experimental theatre before starring on Broadway, originating the roles of Christine Canigula in Be More Chill (2015–2019) and Karen the Computer in SpongeBob SquarePants: The Broadway Musical (2016–2017). In television, she is known for her recurring roles in The Marvelous Mrs. Maisel (2019–2023) and Awkwafina Is Nora from Queens (2020–2021).  Hsu received critical acclaim and a nomination for the Academy Award for Best Supporting Actress for her dual role as Joy Wang and Jobu Tupaki in the film Everything Everywhere All at Once (2022). Her performance also garnered her nominations for a Golden Globe Award, a SAG Award and a Critics’ Choice Movie Award.\r\n\r\nOther notable film and television credits include supporting roles in The Marvelous Mrs. Maisel (2017-2023), Set It Up (2018), Shang-Chi and the Legend of the Ten Rings (2021), Poker Face (2023), Shortcomings (2023), American Born Chinese (2023), Joy Ride (2023), The Monkey King (2023), Leo (2023), and The Fall Guy (2024).', 'https://image.tmdb.org/t/p/w500/8gb3lfIHKQAGOQyeC4ynQPsCiHr.jpg');
INSERT INTO `actor` (`id`, `name`, `birthdate`, `countryId`, `biography`, `image`) VALUES
(1385813, 'Jefferson White', '1989-11-02 03:00:00', '0', 'Jefferson White was born in Mount Vernon, Linn County, Iowa, USA. As an actor and producer, known for Yellowstone (2018), Civil War (2024) and God\'s Country (2022).', 'https://image.tmdb.org/t/p/w500/8QSrhrWpqTBGJN3rfijXCvmOcb5.jpg'),
(1392137, 'Margaret Qualley', '1994-10-22 03:00:00', '0', 'Sarah Margaret Qualley (born October 23, 1994) is an American actress. The daughter of actress Andie MacDowell, she trained as a ballerina in her youth and briefly pursued a career in modeling. She made her acting debut with a minor role in the 2013 drama film Palo Alto and gained recognition for playing a troubled teenager in the HBO drama series The Leftovers (2014–2017). Qualley then appeared in the dark comedy The Nice Guys (2016) and in Netflix\'s supernatural thriller Death Note (2017).\r\n\r\nQualley gained acclaim and a nomination for a Primetime Emmy Award for portraying actress and dancer Ann Reinking in the FX biographical drama miniseries Fosse/Verdon (2019) and the title role in the Netflix drama miniseries Maid (2021). Her biggest commercial success came with Quentin Tarantino\'s comedy-drama Once Upon a Time in Hollywood (2019).', 'https://image.tmdb.org/t/p/w500/jStNyMj3acpLuH48awLVLqqlyaV.jpg'),
(1421388, 'Amy Deasismont', '1992-04-14 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/epQ8c7UbGUbvvCW3Kb2C3y32jwp.jpg'),
(1427888, 'Alain Moussi', '1981-03-28 03:00:00', '0', 'Started martial arts in Jiu-Jitsu under John Therien, then switched to kickboxing under Canadian kickboxing legend Jean-Yves Theriault and currently trains in Brazilian Jiu-Jitsu under Carlos Machado.\r\n\r\nWorked as a Stunt Double on movies such as X-Men: Days of Future Past (2014) , X-Men: Apocalypse (2016) , Warcraft: The Beginning (2016) and Suicide Squad (2016).', 'https://image.tmdb.org/t/p/w500/cIpMdm0ggxVmZIBVj7vz8Q8nPLT.jpg'),
(1428070, 'Isabela Merced', '2001-07-09 03:00:00', '0', 'Isabela Yolanda Moner (born July 10, 2001), known professionally as Isabela Merced since 2019, is an American actress and singer.\r\n\r\nShe played the lead role of CJ Martin on the Nickelodeon television series 100 Things to Do Before High School (2014–2016) and voiced Kate in Nickelodeon\'s animated spinoff series Dora and Friends: Into the City! (2014–2017). In film, she has played Izabella in Transformers: The Last Knight (2017), Lizzy in Instant Family (2018), Isabel in Sicario: Day of the Soldado (2018), the titular character in Dora and the Lost City of Gold (2019), and Rachel Cooper in the Netflix film Sweet Girl (2021).', 'https://image.tmdb.org/t/p/w500/cQlaWpBzyPx4p6PDz0cr1Y0DrWY.jpg'),
(1457026, 'Urs Rechn', '1978-01-17 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/kFeVHoL8FKSOrw9spcnO2kz9fF6.jpg'),
(1464650, 'Dafne Keen', '2005-01-03 03:00:00', '0', 'Dafne Keen Fernández (born 4 January 2005) is a British-Spanish actress. Born in Madrid, Keen made her debut as a child on the series The Refugees (2015). Her breakthrough role was Laura in the superhero film Logan (2017), which won her several accolades. She starred as Lyra Belacqua in the television series His Dark Materials (2019–2022) and Jecki Lon in the Star Wars series The Acolyte (2024), and reprised the role of Laura in Marvel\'s Deadpool & Wolverine (2024).', 'https://image.tmdb.org/t/p/w500/g325OIjIHrFr0te8ewPfhKQ2SKj.jpg'),
(1466233, 'Chae Soo-bin', '1994-07-09 03:00:00', '0', 'Chae debuted in 2014 in the film My Dictator. She then featured in weekend drama House of Bluebird (2015) and youth series Cheer Up! (2015) which won her \"Best New Actress\" awards at both 4th APAN Star Awards and 29th KBS Drama Awards. Chae had a major role in the hit drama Love in the Moonlight (2016) from which she gained an Excellence Award nomination at the 30th KBS Drama Awards. The same year she starred in the play Blackbird and the Chinese-South Korean web-drama My Catman. In 2017, she took on her first prime-time leading role in the historical television series Rebel: Thief Who Stole the People.', 'https://image.tmdb.org/t/p/w500/bf38XUHvsgz1IVwtHX6N8HLDMa.jpg'),
(1490856, 'Leah McNamara', '2024-10-12 18:33:25', '0', NULL, 'https://image.tmdb.org/t/p/w500/ecVaqYk9SlH0sOJ8eDgwqsbKceS.jpg'),
(1493969, 'Amiah Miller', '2004-07-15 03:00:00', '0', 'Amiah Miller is an American actress and model. She starred in the 2017 film War for the Planet of the Apes. She also appears in the TV series Henry Danger, Best Friends Whenever and MacGyver.', 'https://image.tmdb.org/t/p/w500/mW10rLTAmuPD5TncX8KkRzsbvXU.jpg'),
(1503200, 'FKA twigs', '1988-01-15 03:00:00', '0', 'Tahliah Debrett Barnett (born 16 January 1988), known professionally as FKA twigs, is an English singer, songwriter, dancer, record producer, director and actor. Her father is Jamaican, and her mother is English, who is of part Spanish descent. Born in Cheltenham, Gloucestershire, England she became a backup dancer after moving to London when she was 17 years old. ', 'https://image.tmdb.org/t/p/w500/8bUUu7jPEY1aQgAtJXM2NyYpfgN.jpg'),
(1504796, 'Andrei Lenart', '2024-10-12 18:32:45', '', NULL, 'https://image.tmdb.org/t/p/w500/5n1S06vvL7YgurFYfG9QNgRV5yM.jpg'),
(1508131, 'Gore Abrams', '2024-10-12 18:32:34', '', NULL, 'https://image.tmdb.org/t/p/w500/bKMTqbl0FYlzIC6aTMKQZNAhhXK.jpg'),
(1526694, 'Pooya Mohseni', '1977-12-31 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/k9KebLQpIfsBKAT5DUkMS5O8vOv.jpg'),
(1537686, 'Naomi Ackie', '1992-11-01 03:00:00', '0', 'Naomi Sarah Ackie (born 2 November 1992) is an English actress. She made her television debut as Jen in the Doctor Who episode \"Face the Raven\" (2015). For her role as Bonnie on the television dark comedy-drama series The End of the F***ing World, she received the British Academy Television Award for Best Supporting Actress in 2020. Ackie is well known for her role as Jannah in the film Star Wars: The Rise of Skywalker (2019). In 2021, she had a main role on the third season of Master of None. She also portrayed American singer Whitney Houston in the biopic I Wanna Dance with Somebody (2022), earning a Rising Star nomination at the British Academy Film Awards.', 'https://image.tmdb.org/t/p/w500/1MhRVn6xlShHhftRdK24HuO3TNR.jpg'),
(1538851, 'Kit Connor', '2004-03-07 03:00:00', '0', 'Kit Sebastian Connor (born 8 March 2004) is an English actor. He has appeared in the films Get Santa (2014), Rocketman (2019) and Little Joe (2019). On television, he had a recurring role in the CBBC series Rocket\'s Island (2014–2015) and a voice role in the BBC One and HBO series His Dark Materials. He gained recognition for his starring role as Nick Nelson in the Netflix teen series Heartstopper (2022), for which he won the Children\'s and Family Emmy Award for Outstanding Lead Performance in 2022.', 'https://image.tmdb.org/t/p/w500/gCIdbnV9D3lzTaOB0YtuKDz6Nt0.jpg'),
(1545693, 'Zazie Beetz', '1991-05-31 03:00:00', '0', 'Zazie Olivia Beetz (born June 1, 1991) is a German-American actress. She stars in the FX comedy-drama series Atlanta (2016–2022), for which she received a nomination for the Primetime Emmy Award for Outstanding Supporting Actress in a Comedy Series. She also appeared in the Netflix anthology series Easy (2016–19) and voices Amber Bennett in Amazon\'s animated superhero action series Invincible.\r\n\r\nIn film, Beetz has appeared in the disaster film Geostorm (2017) and has played the Marvel Comics character Domino in the superhero film Deadpool 2 (2018) and Arthur Fleck/Joker\'s neighbor Sophie in the psychological thriller Joker (2019).', 'https://image.tmdb.org/t/p/w500/jBqpXGGS2QKNKKrDq6pUHYK6yXv.jpg'),
(1558832, 'Benjamin Bollen', '1984-01-23 03:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/qAvG7VqmZp6s2XE3KZooEfYDfW9.jpg'),
(1560244, 'Anthony Ramos', '1991-10-31 03:00:00', '0', 'Anthony Ramos Martinez (born November 1, 1991) is an American actor, singer and songwriter. In 2015, he originated the dual roles of John Laurens and Philip Hamilton in the Broadway musical Hamilton. Ramos also appeared in the 2021 film version of In the Heights as Usnavi and in the 2018 film A Star Is Born as Ramon.\r\n\r\nDescription above from the Wikipedia article Anthony Ramos (actor), licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/seFm2fKh6reyZaaCg7DmRpodLCw.jpg'),
(1602972, 'Brandon Perea', '1995-05-24 03:00:00', '0', 'Brandon Perea (born May 25, 1995) is an American actor and professional jamskater, best known for his performance as Alfonso Sosa on The OA and his breakthrough role of Angel Torres in Jordan Peele\'s 2022 science fiction horror film Nope.', 'https://image.tmdb.org/t/p/w500/hEzljVgsho0Uwd8tg7AGB5Uy3Lr.jpg'),
(1674734, 'Jordan Bolger', '1994-11-08 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/zGSxXrllgm3MNVT0jjvnAQFacPS.jpg'),
(1675772, 'Ruby Rose Turner', '2005-10-15 03:00:00', '0', 'Ruby Rose Turner (born October 16, 2005) is an American actress and singer. Known for her role as Cami in the Disney Channel TV series Coop & Cami Ask the World (2018-2020). She starred as Bridget in the spin-off film of the Descendants franchise, Descendants: The Rise of Red.', 'https://image.tmdb.org/t/p/w500/kwnf4SgO6qdl4zxJj5acjsYxIY9.jpg'),
(1676771, 'Samantha Scaffidi', '1989-03-02 03:00:00', '0', 'Samantha Scaffidi was born as Samantha Nicole Scaffidi. She is an actress and producer, known for Demon Hole (2017), The Grind TV 1.0 (2016) and Terrifier (2016).', 'https://image.tmdb.org/t/p/w500/jwd0XXuc4ibXAXjOxmhsFP0fQEO.jpg'),
(1683343, 'Cailee Spaeny', '1998-07-23 03:00:00', '0', 'Cailee Spaeny (born July 24, 1998) is an American actress. Spaeny\'s first major role was in the science fiction film Pacific Rim Uprising (2018). She followed this appearing in the neo-noir film Bad Times at the El Royale (2018), the biographical films On the Basis of Sex and Vice (both 2018), the fantasy film The Craft: Legacy (2020), and the miniseries Devs (2020) and Mare of Easttown (2021).\r\n\r\nSpaeny portrayed Priscilla Presley in the biographical film Priscilla (2023), for which she received the Volpi Cup for Best Actress and a nomination for the Golden Globe Award for Best Actress in a Motion Picture – Drama. Further recognition came in 2024 for starring in the war film Civil War and the horror film Alien: Romulus.', 'https://image.tmdb.org/t/p/w500/nquUc6o2dK4Pg4zjvl2HmZOfiRS.jpg'),
(1695070, 'Brittany O\'Grady', '1992-06-01 03:00:00', '0', 'Brittany O\'Grady has been performing professionally since the age of 4. She has TV, commercial, print, theater, dancing, and singing experience. Recent work includes a 2014 guest star appearance on ABC-TV\'s Trophy Wife and Investigation Discovery\'s Tabloid.\r\n\r\nBrittany has been cast with several Washington area theaters including the Tony-Award winning Signature Theatre, historic Ford\'s Theatre, critically-acclaimed movement-based Synetic Theater, the Little Theatre of Alexandria, and Encore Stage and Studio. Brittany has also performed at the White House and the Kennedy Center.\r\n\r\nHer commercial work includes national and regional ad campaigns, PSAs, and as the face of the national Food Stamp Program. Brittany has also appeared as the spokesperson for an internet campaign, in an America\'s Most Wanted reenactment, and in numerous industrial projects. Brittany is an Actors Equity Candidate and is SAG eligible.', 'https://image.tmdb.org/t/p/w500/4QkswHunRRFHHDjn8ylSw8EoZby.jpg'),
(1700685, 'Lewis Pullman', '1993-01-28 03:00:00', '0', 'Lewis James Pullman is an American actor. A son of actor Bill Pullman, he began his acting career with the film The Ballad of Lefty Brown (2017), starring his father. His subsequent film credits include supporting roles in The Strangers: Prey at Night (2018), Bad Times at the El Royale (2018) and Top Gun: Maverick (2022), and a starring role in \'Salem\'s Lot (2024).\r\n\r\nOn television, Pullman played Major Major Major Major in Catch-22 (2019) and starred in Outer Range (2022–2024) and Lessons in Chemistry (2023). For playing a chemist in the latter, he was nominated for a Primetime Emmy Award and a Critics\' Choice Television Award.\r\n\r\nDescription above from the Wikipedia article Lewis Pullman, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/jAo0Rxl9EYVxLnhUlBww5Uxl89v.jpg'),
(1709047, 'Cailey Fleming', '2007-03-24 03:00:00', '0', 'Cailey Presley Fleming (born March 25, 2007) is an American actress, known for her regular role as Judith Grimes on the AMC horror-drama television series The Walking Dead since 2018.', 'https://image.tmdb.org/t/p/w500/yF2p16KK9gFlGnYKd2PLQqwmsek.jpg'),
(1762588, 'Annouck Hautbois', '2024-10-12 18:34:11', '0', NULL, 'https://image.tmdb.org/t/p/w500/5D66aDzc8QrkNtdeFb0nsFku6Zh.jpg'),
(1762589, 'Thierry Kazazian', '2024-10-12 18:34:11', '', NULL, 'https://image.tmdb.org/t/p/w500/7sqA1L6pwKmmBccMdmzNJwlXBWk.jpg'),
(1767250, 'Ariana Greenblatt', '2007-08-26 03:00:00', '0', 'Ariana Greenblatt (born August 27, 2007) is an American actress. Greenblatt has always known that she wanted to be an actor, with a burgeoning professional career beginning when she was six years old, an evident through early roles on Liv and Maddie and Nickelodeon\'s Legendary Dudas. Her film and television credits include A Bad Moms Christmas, Avengers: Infinity War, SCOOB!, In the Heights, The Boss Baby: Family Business, 65 & Barbie. In addition to a nomination for the Critic\'s Choice Movie Award for Best Young Preformer for her role of Sasha in Barbie.', 'https://image.tmdb.org/t/p/w500/f3cguEmUiHQz1lXSMC95dG5f4YG.jpg'),
(1849379, 'Tania Fox', '1993-07-08 03:00:00', '0', 'Tania Fox is a Ukrainian born American actress who has starred in multiple features such as Puppet Master: Axis Termination, Art of the Dead, and Attack of the Unknown. She started acting at a young age in Ukraine. She graduated with a BFA from Kiev National University of Culture and Arts, and simultaneously starred in multiple episodes of the Ukrainian TV show \"Vitalka\". She then went on to graduate with an MFA in Los Angeles and continued pursuing her acting career in the US. She has written an produced multiple short films.', 'https://image.tmdb.org/t/p/w500/dlQJEd0XxzyCKR8GyDPkTLMNKU3.jpg'),
(1852461, 'Mitch Horowitz', '2024-10-12 18:33:59', '', NULL, 'NULL'),
(1855143, 'Brandon Sklenar', '1990-06-25 03:00:00', '0', 'Brandon Sklenar is an American actor best known for Mapplethorpe and Vice.', 'https://image.tmdb.org/t/p/w500/unM5wewbqrmE2cf6DSyyKLeA05I.jpg'),
(1877887, 'Natthaya Ongsritragul', '2008-09-13 03:00:00', '0', 'Natthaya Ongsritragul is a young actor.', 'https://image.tmdb.org/t/p/w500/i2EefIqNyCdAn7smey8rxYxOmgj.jpg'),
(1880016, 'David Howard Thornton', '1979-11-29 03:00:00', '0', 'David Howard Thornton (born November 30, 1979) is an American actor. He is an actor known for work in stage, film, and voice over. He is best known for his roles as Art the Clown in the Terrifier films, Grandpa Who in the 1st- 5th national tours of Dr. Seuss\' How the Grinch Stole Christmas: The Musical, the voice of Shizoku and others in the video game Invizimals: The Lost Kingdom,  The Joker in the YouTube series Nightwing Escalation, and as the eponymous character in the Christmas horror parody film The Mean One.', 'https://image.tmdb.org/t/p/w500/z82y3Nxm7VZjfaMPMdUtbyoAyls.jpg'),
(1882502, 'Lauren LaVera', '1994-06-15 03:00:00', '0', 'Lauren LaVera is an American actress, born in Philadelphia, Pennsylvania. Lauren is known for her roles in the  Terrifier franchise (2022 - 2023), Marvel\'s Iron Fist (2017), Dispatches From Elsewhere (2020), and A Taste of Christmas (2020).', 'https://image.tmdb.org/t/p/w500/qJYWq2oZcvHh7lnGskxkrYXCom0.jpg'),
(1903874, 'Maya Hawke', '1998-07-07 03:00:00', '0', 'Maya Ray Thurman Hawke (born July 8, 1998) is an American actress, model, and singer-songwriter. After beginning her career in modeling, Hawke made her screen debut as Jo March in the 2017 BBC adaptation of Little Women. She portrays Robin Buckley in the Netflix science fiction series Stranger Things (2019–present), and Eleanor Levetan in Do Revenge (2022). She has played supporting roles in the films Once Upon a Time in Hollywood (2019), Human Capital, Mainstream (2020), and Fear Street Part One: 1994 (2021).', 'https://image.tmdb.org/t/p/w500/evjbbHM1bzA6Ma5Ptjwa4WkYkkj.jpg'),
(1903886, 'Evelyn Claire', '1996-04-10 03:00:00', '0', 'Evelyn Claire (born on April 11, 1996) is an American porn actress. Evelyn has blue eyes and brown/black hair. She is 170 cm tall and weighs 59 kg. Her measurements are 32-28-36. Evelyn began her work in adult camming in 2015 before progressing to explicit hardcore shortly thereafter.', 'https://image.tmdb.org/t/p/w500/gJWQ1gfCrjGdI9ZFMgSOD1ElPwS.jpg'),
(1908347, 'Zelda Morrison', '1996-06-21 03:00:00', '0', 'Zelda Morrison was born on June 22, 1996 in Orlando, Florida. She\'s been an adult film actor since 2016.', 'https://image.tmdb.org/t/p/w500/8suRdN1ds2iJTPJnLUfoy98CbPa.jpg'),
(1980484, 'Dara Reneé', '2000-11-06 03:00:00', '0', 'Dara Reneé (born November 7, 2000) is an American actress and singer. Debuted in the Disney Channel Original Movie  Freaky Friday (2018) as Savannah. Known for her role as Kourtney in the Disney+ series High School Musical: The Musical: The Series (2019-2023). She starred as Uliana in the spin-off film of the Descendants franchise, Descendants: The Rise of Red.', 'https://image.tmdb.org/t/p/w500/s410paCGWl254kSydPJAa1UJrIn.jpg'),
(2023667, 'James Morosini', '1990-07-04 03:00:00', '0', 'James Morosini is an American actor and filmmaker.', 'https://image.tmdb.org/t/p/w500/vaBLK53OiwM0E4S4IHkbvSaOKHR.jpg'),
(2126383, 'Joakim Sällquist', '1971-12-24 03:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/ythpM2ReXonVoO92OmRsUgnUinZ.jpg'),
(2141479, 'Peggy Lu', '0000-00-00 00:00:00', '0', 'Peggy Lu is an American actress, who is best known for Venom: Let There Be Carnage (2021), Venom (2018), and Kung Pow: Enter the Fist (2002). Born on February 22, 1963, Peggy hails from New York, United States.', 'https://image.tmdb.org/t/p/w500/ng5eaDcOf9kSwIYGNmwF9wEfIHp.jpg'),
(2164506, 'Archie Renaux', '1997-11-21 03:00:00', '0', 'Archie James Beale (born 22 November 1997), known professionally as Archie Renaux, is an English actor and model. He stars in the Netflix series Shadow and Bone. He appeared in the BBC One miniseries Gold Digger.', 'https://image.tmdb.org/t/p/w500/uTd18t2VJovN2jSJyhuG8Yy3PV6.jpg'),
(2168270, 'Adeline Rudolph', '1995-02-09 03:00:00', '0', 'Adeline Rudolph is a Hong Kong-born actress of German and Korean descent. She portrays Agatha Night on Netflix\'s Chilling Adventures of Sabrina and Minerva Marble on The CW\'s Riverdale.', 'https://image.tmdb.org/t/p/w500/8j0zvHIqvW9kwOFLWI7QOa4V62y.jpg'),
(2230991, 'Daisy Edgar-Jones', '1998-05-23 03:00:00', '0', 'Daisy Jessica Edgar-Jones (born 24 May 1998) is a British actress. She began her career with the television series Cold Feet (2016–2020) and War of the Worlds (2019–2021).\r\n\r\nEdgar-Jones gained wider recognition for her starring role in the miniseries Normal People (2020), which earned her nominations for a British Academy Television Award and a Golden Globe Award. In 2022, she starred in the comedy-thriller film Fresh, the commercially successful mystery film Where the Crawdads Sing, and the crime miniseries Under the Banner of Heaven. She received another Golden Globe nomination for the lattermost.', 'https://image.tmdb.org/t/p/w500/uhrgWinc0W2Q1K0ynUmyTaWd8dv.jpg'),
(2249664, 'Gavin Leatherwood', '1994-06-06 03:00:00', '0', 'Gavin Thomas Leatherwood is an American actor and singer. He is best known for portraying Nicholas Scratch on Netflix\'s Chilling Adventures of Sabrina. He also plays Nico in the first season of the Max original series The Sex Lives of College Girls. He released his debut single \"Just For Tonight\" on February 19, 2021.', 'https://image.tmdb.org/t/p/w500/n7C3qhdk9JrLTsX6VuOvBKxQ6RA.jpg'),
(2280178, 'Sofia Kappel', '1998-04-26 03:00:00', '0', 'Sofia Kappel was born on April 27, 1998 in Sweden. She is best known for her work on Pleasure (2021).', 'https://image.tmdb.org/t/p/w500/y2yMZ37bM9b4oYcsrZFnPpeun4G.jpg'),
(2304140, 'Spike Fearn', '1999-12-31 03:00:00', '', 'Spike E Fearn is an English actor. On television, he is known for his role in the ITVX teen drama Tell Me Everything (2022–2024). His films include Alien: Romulus (2024). He was named a 2024 Screen International Star of Tomorrow.', 'https://image.tmdb.org/t/p/w500/o1WcXkDdlN5wdL5WIuGXNpNouZ9.jpg'),
(2309874, 'Kylie Cantrall', '2005-06-24 03:00:00', '0', 'Kylie Cantrall (born June 25, 2005) is an American actress, singer and dancer. Known for her role as Gabby Duran in the Disney Channel TV series Gabby Duran and the Unsittables (2019-2021). She starred as Red in the spin-off film of the Descendants franchise, Descendants: The Rise of Red.', 'https://image.tmdb.org/t/p/w500/4NT5eQnIczID9nBFOZmFTZ4VdPJ.jpg'),
(2313436, 'Edward Hamilton-Clark', '2024-10-12 18:32:34', '', 'Edward Hamilton-Clark is a Canadian actor who provided the motion capture for Ash and the voice for Glenn Sanders in Heavy Rain. He has also had roles in movies, TV series, and video games such as Bon voyage and Female Agents.', 'https://image.tmdb.org/t/p/w500/q1EWL2z2xMcbf84TpOTqGs6Csxs.jpg'),
(2324569, 'Emma Corrin', '1995-12-12 03:00:00', '0', 'Emma-Louise Corrin (born 13 December 1995) is an English actor. They portrayed Diana, Princess of Wales in the fourth season of the Netflix historical drama The Crown (2020), for which they won a Golden Globe and were nominated for a Primetime Emmy Award. They have since starred in the 2022 romantic drama films My Policeman and Lady Chatterley\'s Lover, and in the 2023 thriller miniseries A Murder at the End of the World. In 2024, they played Cassandra Nova in the superhero film Deadpool & Wolverine.', 'https://image.tmdb.org/t/p/w500/wqGOVOsHzZaHeHymIS40elGCnY0.jpg'),
(2507565, 'Maria Bomani', '2000-07-17 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/4yCdXCaYzD6RTDYpuJxbRLD3kq.jpg'),
(2547617, 'Jordan Preston Carter', '2024-10-12 18:33:11', '', NULL, 'https://image.tmdb.org/t/p/w500/wrtrt2cpMOR3DCvrlz8EcgydaVN.jpg'),
(2556026, 'Alix West Lefler', '2024-10-12 18:32:45', '', NULL, 'https://image.tmdb.org/t/p/w500/eF3uyAlOjRmzero5b8xYukvu5Mr.jpg'),
(2560224, 'Milena Smit', '1996-10-03 03:00:00', '0', 'Milena Smit was born on 5 October 1996 in Elche, Spain. She first started working in show business as a model when she was 15 years old. She worked in her home city and later moved to Madrid in search of career opportunities. Her father is Dutch.\r\n\r\nShe trained as an actress at the Cristina Rota acting school and was taught by Bernard Hiller, an acting coach of such actors as Leonardo DiCaprio and Cameron Diaz. Before becoming an actress, she was a waitress, shop assistant, babysitter, and information assistant on the subway.\r\n\r\nSmit\'s first film appearances were in various short films such as Diagonales, Innermost, Chimichanga, and Adentro. In 2020, she appeared in her first feature film, Cross the Line, directed by David Victori with Mario Casas. For her work on the film, she was nominated at the Goya Awards for best new actress. The film\'s casting team discovered the actress via a social network: \"After much searching, we found Milena on Instagram. We fell in love with everything she had in common with the character.\"\r\n\r\nAfter her participation in Cross the Line, she was signed by Pedro Almodóvar for his film Parallel Mothers with Penélope Cruz and Aitana Sánchez-Gijón. In the film, Smit and Cruz play women who become pregnant by accident and befriend each other in the maternity ward. Both characters give birth to girls on the same day. On her performance in the film, director Almodóvar said: \"she has an emotional intelligence and a sincerity that are not learned in any school\"; he also said her role in the 2020 film Cross the Line was \"overwhelming\". Smit received a Goya Award nomination for Best Supporting Actress for the role.', 'https://image.tmdb.org/t/p/w500/aD7RhtQZZ6adyPiy4jp3RB4DhEs.jpg'),
(2599776, 'Andrew Rogers', '2024-10-12 18:32:45', '0', 'Andrew Philip Rogers is an American-French actor who is best known for Cheer Camp Killer, The Wrong Wedding Planner, and Diversify.', 'https://image.tmdb.org/t/p/w500/oSBBuN3SWGeYIsIm1RkyK7qWPLj.jpg'),
(2630461, 'Malia Baker', '2006-12-17 03:00:00', '0', 'Malia Baker (born December 18, 2006) is a Canadian actress. Known for her role as Mary Anne Spier in the Netflix series The Baby-Sitters Club (2020-2021). She starred as Chloe in the spin-off film of the Descendants franchise, Descendants: The Rise of Red.', 'https://image.tmdb.org/t/p/w500/jpcDv1IZTjvbkYQRnrMT64pKiAc.jpg'),
(2761308, 'David Jonsson', '2024-10-12 18:33:25', '', 'David Jonsson (born 4 September 1993) is a British actor. He began his career on the West End. He is known for his roles in the BBC Two and HBO series Industry (2020–), the film Rye Lane (2023), and Alien: Romulus (2024).\r\n\r\nIn 2022, Jonsson appeared on the Evening Standard list of Londoners to watch and was one of British GQ\'s Men of the Year Honourees. He was named a 2023 Bright Young Thing by Tatler.\r\n\r\nThe description above is from the Wikipedia article David Jonsson, licensed under CC-BY-SA. Full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/nIT9PmgMHHwSYG39hjqL6vv3TWU.jpg'),
(2787720, 'Elliott Fullam', '2005-09-01 03:00:00', '0', 'Elliott Fullam is an actor and singer, known best for his role as Jonathan Shaw in the critically acclaimed horror films Terrifier 2 (2022) and Terrifier 3 (2024).', 'https://image.tmdb.org/t/p/w500/dNsFLihmWfA2KCENbZCtq9AjSob.jpg'),
(2829463, 'Krsy Fox', '1984-02-12 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/6bRT5c4MoP7yP3yza5HFdV9ajra.jpg'),
(3003147, 'Moon You-kang', '1996-02-21 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/69bOe5fyGaUFZy7JUsq40hWd75F.jpg'),
(3020876, 'Kensington Tallman', '2008-08-05 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/tBqawwg2VJq1V4mZjAOFQ7fnXNW.jpg'),
(3051389, 'Nina Bloomgarden', '1998-02-01 03:00:00', '0', 'Nina Quezada Bloomgarden (born February 2, 1998) is an American actress. Her grandfather was theatre producer Kermit Bloomgarden.', 'https://image.tmdb.org/t/p/w500/5SvMryn9IEL4bMbGpOYsu1wc1Pj.jpg'),
(3054114, 'João Vitor Nascimento', '2024-10-12 18:33:59', '', NULL, 'NULL'),
(3320600, 'Ezekiel Ajeigbe', '2024-10-12 18:32:45', '', NULL, 'NULL'),
(3383606, 'Sarah Voigt', '1985-10-28 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/7OR1UUn0DrDykNcxakYkpxW5I1Z.jpg'),
(3465747, 'Talia Asseraf', '2024-10-12 18:32:45', '', NULL, 'https://image.tmdb.org/t/p/w500/w177HiELyQRAum0MpSrEheTqSvn.jpg'),
(3700657, 'Raul Ceballos', '2024-10-12 18:32:45', '', NULL, 'NULL'),
(3743767, 'Antonella Rose', '2024-10-12 18:32:34', '', NULL, 'https://image.tmdb.org/t/p/w500/sdqM1qQEjRuo460AuUOjFAH7kCm.jpg'),
(3790695, 'Kailey Hyman', '1995-12-31 03:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/aiREJkXiIT2GIzZcl6M9LPOFbuI.jpg'),
(3797199, 'Morgan Dudley', '2001-07-08 03:00:00', '0', 'Morgan Dudley (born July 9, 2001) is an American actress and singer. Since her childhood, Morgan participated in dozens of plays in her hometown. She decided to move to New York, making her Broadway debut in Jagged Little Pill (2021). She starred as Ella in the spin-off film of the Descendants franchise, Descendants: The Rise of Red.', 'https://image.tmdb.org/t/p/w500/7NA7kKTuMJ1kALHtTLP2Obbqozu.jpg'),
(3875985, 'Atitaya Tribudarak', '1999-06-08 03:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/k1qWYWTT38PLWY5HmXv4sOOm8hz.jpg'),
(3910448, 'Alona Jane Robbins', '2024-10-12 18:33:25', '', NULL, 'https://image.tmdb.org/t/p/w500/pBV2z1CKAtsdJ2NUBl91qUR5nXZ.jpg'),
(4133255, 'Mica Javier', '2024-10-12 18:32:45', '', NULL, 'NULL'),
(4303770, 'Jean Amorim', '2024-10-12 18:33:59', '', NULL, 'NULL'),
(4466879, 'Day Thaitanium', '1976-09-24 03:00:00', '', 'Chamras Tasnalawat or Nay Myo Thant is a Thai rapper of Burmese descent, commonly referred to as \"Sunny Day\" who came to prominence in the early 2000s as a member of the Thai-American hip-hop group Thaitanium. His group has earned a dedicated fan base with releases like Thailand\'s Most Wanted (2006) and Still Resisting (2010).\r\n\r\nHe graduated from Tamalpais High School in Mill Valley, California. He is the owner of the clothing brand 9face Clothing. He once joined Tata Young on stage for a live performance of Michael Jackson\'s \"Dangerous.\" Currently, he has a son and a daughter.', 'NULL'),
(4694034, 'Jorge Hissa', '2024-10-12 18:33:59', '', NULL, 'NULL'),
(4914497, 'Brian Baker', '2024-10-12 18:33:59', '', NULL, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `countryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countryId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryId`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Azerbaijan'),
(12, 'Bahamas'),
(13, 'Bahrain'),
(14, 'Bangladesh'),
(15, 'Barbados'),
(16, 'Belarus'),
(17, 'Belgium'),
(18, 'Belize'),
(19, 'Benin'),
(20, 'Bhutan'),
(21, 'Bolivia'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Brazil'),
(25, 'Brunei'),
(26, 'Bulgaria'),
(27, 'Burkina Faso'),
(28, 'Burundi'),
(29, 'Cabo Verde'),
(30, 'Cambodia'),
(31, 'Cameroon'),
(32, 'Canada'),
(33, 'Chad'),
(34, 'Chile'),
(35, 'China'),
(36, 'Colombia'),
(37, 'Comoros'),
(38, 'Congo'),
(39, 'Costa Rica'),
(40, 'Croatia'),
(41, 'Cuba'),
(42, 'Cyprus'),
(43, 'Czechia'),
(44, 'Denmark'),
(45, 'Djibouti'),
(46, 'Dominica'),
(47, 'Dominican Republic'),
(48, 'Ecuador'),
(49, 'Egypt'),
(50, 'El Salvador'),
(51, 'Estonia'),
(52, 'Eswatini'),
(53, 'Ethiopia'),
(54, 'Fiji'),
(55, 'Finland'),
(56, 'France'),
(57, 'Gabon'),
(58, 'Gambia'),
(59, 'Georgia'),
(60, 'Germany'),
(61, 'Ghana'),
(62, 'Greece'),
(63, 'Grenada'),
(64, 'Guatemala'),
(65, 'Guinea'),
(66, 'Guinea-Bissau'),
(67, 'Guyana'),
(68, 'Haiti'),
(69, 'Honduras'),
(70, 'Hungary'),
(71, 'Iceland'),
(72, 'India'),
(73, 'Indonesia'),
(74, 'Iran'),
(75, 'Iraq'),
(76, 'Ireland'),
(77, 'Israel'),
(78, 'Italy'),
(79, 'Jamaica'),
(80, 'Japan'),
(81, 'Jordan'),
(82, 'Kazakhstan'),
(83, 'Kenya'),
(84, 'Kiribati'),
(85, 'Kuwait'),
(86, 'Kyrgyzstan'),
(87, 'Laos'),
(88, 'Latvia'),
(89, 'Lebanon'),
(90, 'Lesotho'),
(91, 'Liberia'),
(92, 'Libya'),
(93, 'Liechtenstein'),
(94, 'Lithuania'),
(95, 'Luxembourg'),
(96, 'Madagascar'),
(97, 'Malawi'),
(98, 'Malaysia'),
(99, 'Maldives'),
(100, 'Mali'),
(101, 'Malta'),
(102, 'Mauritania'),
(103, 'Mauritius'),
(104, 'Mexico'),
(105, 'Micronesia'),
(106, 'Moldova'),
(107, 'Monaco'),
(108, 'Mongolia'),
(109, 'Montenegro'),
(110, 'Morocco'),
(111, 'Mozambique'),
(112, 'Myanmar'),
(113, 'Namibia'),
(114, 'Nauru'),
(115, 'Nepal'),
(116, 'Netherlands'),
(117, 'New Zealand'),
(118, 'Nicaragua'),
(119, 'Niger'),
(120, 'Nigeria'),
(121, 'North Korea'),
(122, 'North Macedonia'),
(123, 'Norway'),
(124, 'Oman'),
(125, 'Pakistan'),
(126, 'Palau'),
(127, 'Panama'),
(128, 'Papua New Guinea'),
(129, 'Paraguay'),
(130, 'Peru'),
(131, 'Philippines'),
(132, 'Poland'),
(133, 'Portugal'),
(134, 'Qatar'),
(135, 'Romania'),
(136, 'Russia'),
(137, 'Rwanda'),
(138, 'Saint Kitts and Nevis'),
(139, 'Saint Lucia'),
(140, 'Saint Vincent and the Grenadines'),
(141, 'Samoa'),
(142, 'San Marino'),
(143, 'Saudi Arabia'),
(144, 'Senegal'),
(145, 'Serbia'),
(146, 'Seychelles'),
(147, 'Sierra Leone'),
(148, 'Singapore'),
(149, 'Slovakia'),
(150, 'Slovenia'),
(151, 'Solomon Islands'),
(152, 'Somalia'),
(153, 'South Africa'),
(154, 'South Korea'),
(155, 'South Sudan'),
(156, 'Spain'),
(157, 'Sri Lanka'),
(158, 'Sudan'),
(159, 'Suriname'),
(160, 'Sweden'),
(161, 'Switzerland'),
(162, 'Syria'),
(163, 'Taiwan'),
(164, 'Tajikistan'),
(165, 'Tanzania'),
(166, 'Thailand'),
(167, 'Timor-Leste'),
(168, 'Togo'),
(169, 'Tonga'),
(170, 'Trinidad and Tobago'),
(171, 'Tunisia'),
(172, 'Turkey'),
(173, 'Turkmenistan'),
(174, 'Tuvalu'),
(175, 'Uganda'),
(176, 'Ukraine'),
(177, 'United Arab Emirates'),
(178, 'United Kingdom'),
(179, 'United States'),
(180, 'Uruguay'),
(181, 'Uzbekistan'),
(182, 'Vanuatu'),
(183, 'Vatican City'),
(184, 'Venezuela'),
(185, 'Vietnam'),
(186, 'Yemen'),
(187, 'Zambia'),
(188, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_mapping`
--

CREATE TABLE `country_mapping` (
  `old_countryId` int(11) DEFAULT NULL,
  `new_countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_mapping`
--

INSERT INTO `country_mapping` (`old_countryId`, `new_countryId`) VALUES
(2, 179),
(3, 32),
(4, 9),
(5, 178),
(6, 156),
(7, 179),
(8, 89),
(9, 36),
(10, 56),
(11, 104),
(12, 34),
(13, 154),
(14, 80),
(15, 160),
(16, 78),
(17, 55),
(18, 176),
(19, 163),
(20, 76),
(21, 170),
(22, 60),
(23, 17),
(24, 13),
(25, 26),
(26, 171),
(27, 176),
(28, 170),
(29, 76),
(30, 179),
(31, 131),
(32, 76),
(33, 178),
(34, 178),
(35, 196),
(36, 77),
(37, 57),
(38, 153),
(41, 24),
(42, 36);

-- --------------------------------------------------------

--
-- Table structure for table `country_temp`
--

CREATE TABLE `country_temp` (
  `countryId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_temp`
--

INSERT INTO `country_temp` (`countryId`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Azerbaijan'),
(12, 'Bahamas'),
(13, 'Bahrain'),
(14, 'Bangladesh'),
(15, 'Barbados'),
(16, 'Belarus'),
(17, 'Belgium'),
(18, 'Belize'),
(19, 'Benin'),
(20, 'Bhutan'),
(21, 'Bolivia'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Brazil'),
(25, 'Brunei'),
(26, 'Bulgaria'),
(27, 'Burkina Faso'),
(28, 'Burundi'),
(29, 'Cabo Verde'),
(30, 'Cambodia'),
(31, 'Cameroon'),
(32, 'Canada'),
(33, 'Chad'),
(34, 'Chile'),
(35, 'China'),
(36, 'Colombia'),
(37, 'Comoros'),
(38, 'Congo'),
(39, 'Costa Rica'),
(40, 'Croatia'),
(41, 'Cuba'),
(42, 'Cyprus'),
(43, 'Czechia'),
(44, 'Denmark'),
(45, 'Djibouti'),
(46, 'Dominica'),
(47, 'Dominican Republic'),
(48, 'Ecuador'),
(49, 'Egypt'),
(50, 'El Salvador'),
(51, 'Estonia'),
(52, 'Eswatini'),
(53, 'Ethiopia'),
(54, 'Fiji'),
(55, 'Finland'),
(56, 'France'),
(57, 'Gabon'),
(58, 'Gambia'),
(59, 'Georgia'),
(60, 'Germany'),
(61, 'Ghana'),
(62, 'Greece'),
(63, 'Grenada'),
(64, 'Guatemala'),
(65, 'Guinea'),
(66, 'Guinea-Bissau'),
(67, 'Guyana'),
(68, 'Haiti'),
(69, 'Honduras'),
(70, 'Hungary'),
(71, 'Iceland'),
(72, 'India'),
(73, 'Indonesia'),
(74, 'Iran'),
(75, 'Iraq'),
(76, 'Ireland'),
(77, 'Israel'),
(78, 'Italy'),
(79, 'Jamaica'),
(80, 'Japan'),
(81, 'Jordan'),
(82, 'Kazakhstan'),
(83, 'Kenya'),
(84, 'Kiribati'),
(85, 'Kuwait'),
(86, 'Kyrgyzstan'),
(87, 'Laos'),
(88, 'Latvia'),
(89, 'Lebanon'),
(90, 'Lesotho'),
(91, 'Liberia'),
(92, 'Libya'),
(93, 'Liechtenstein'),
(94, 'Lithuania'),
(95, 'Luxembourg'),
(96, 'Madagascar'),
(97, 'Malawi'),
(98, 'Malaysia'),
(99, 'Maldives'),
(100, 'Mali'),
(101, 'Malta'),
(102, 'Mauritania'),
(103, 'Mauritius'),
(104, 'Mexico'),
(105, 'Micronesia'),
(106, 'Moldova'),
(107, 'Monaco'),
(108, 'Mongolia'),
(109, 'Montenegro'),
(110, 'Morocco'),
(111, 'Mozambique'),
(112, 'Myanmar'),
(113, 'Namibia'),
(114, 'Nauru'),
(115, 'Nepal'),
(116, 'Netherlands'),
(117, 'New Zealand'),
(118, 'Nicaragua'),
(119, 'Niger'),
(120, 'Nigeria'),
(121, 'North Korea'),
(122, 'North Macedonia'),
(123, 'Norway'),
(124, 'Oman'),
(125, 'Pakistan'),
(126, 'Palau'),
(127, 'Panama'),
(128, 'Papua New Guinea'),
(129, 'Paraguay'),
(130, 'Peru'),
(131, 'Philippines'),
(132, 'Poland'),
(133, 'Portugal'),
(134, 'Qatar'),
(135, 'Romania'),
(136, 'Russia'),
(137, 'Rwanda'),
(138, 'Saint Kitts and Nevis'),
(139, 'Saint Lucia'),
(140, 'Saint Vincent and the Grenadines'),
(141, 'Samoa'),
(142, 'San Marino'),
(143, 'Saudi Arabia'),
(144, 'Senegal'),
(145, 'Serbia'),
(146, 'Seychelles'),
(147, 'Sierra Leone'),
(148, 'Singapore'),
(149, 'Slovakia'),
(150, 'Slovenia'),
(151, 'Solomon Islands'),
(152, 'Somalia'),
(153, 'South Africa'),
(154, 'South Korea'),
(155, 'South Sudan'),
(156, 'Spain'),
(157, 'Sri Lanka'),
(158, 'Sudan'),
(159, 'Suriname'),
(160, 'Sweden'),
(161, 'Switzerland'),
(162, 'Syria'),
(163, 'Taiwan'),
(164, 'Tajikistan'),
(165, 'Tanzania'),
(166, 'Thailand'),
(167, 'Timor-Leste'),
(168, 'Togo'),
(169, 'Tonga'),
(170, 'Trinidad and Tobago'),
(171, 'Tunisia'),
(172, 'Turkey'),
(173, 'Turkmenistan'),
(174, 'Tuvalu'),
(175, 'Uganda'),
(176, 'Ukraine'),
(177, 'United Arab Emirates'),
(178, 'United Kingdom'),
(179, 'United States'),
(180, 'Uruguay'),
(181, 'Uzbekistan'),
(182, 'Vanuatu'),
(183, 'Vatican City'),
(184, 'Venezuela'),
(185, 'Vietnam'),
(186, 'Yemen'),
(187, 'Zambia'),
(188, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `birthdate` datetime NOT NULL,
  `countryId` text NOT NULL,
  `biography` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id`, `name`, `birthdate`, `countryId`, `biography`, `image`) VALUES
(1, 'zam', '2022-09-12 00:00:00', '1', 'dsdasdasdasdas', 'https://image.tmdb.org/t/p/w500/qKBWrohBYegm6AAaLrtxEqqouIK.jpg'),
(510, 'Tim Burton', '1958-08-25 00:00:00', '0', 'Timothy Walter Burton (born August 25, 1958) is an American filmmaker and animator. He is known for his gothic fantasy and horror films such as Beetlejuice (1988), Edward Scissorhands (1990), The Nightmare Before Christmas (1993), Ed Wood (1994), Sleepy Hollow (1999), Corpse Bride (2005), Sweeney Todd: The Demon Barber of Fleet Street (2007) and Dark Shadows (2012), as well as the television series Wednesday (2022). Burton also directed the superhero films Batman (1989) and Batman Returns (1992), the sci-fi film Planet of the Apes (2001), the fantasy-drama Big Fish (2003), the musical adventure film Charlie and the Chocolate Factory (2005), and the fantasy films Alice in Wonderland (2010) and Miss Peregrine\'s Home for Peculiar Children (2016).\r\n\r\nBurton has often worked with actors Winona Ryder, Johnny Depp, Lisa Marie (former girlfriend), Helena Bonham Carter (his former domestic partner) and composer Danny Elfman, who scored all but three of Burton\'s films. Burton also wrote and illustrated the poetry book The Melancholy Death of Oyster Boy & Other Stories, published in 1997 by British publishing house Faber and Faber, and a compilation of his drawings, sketches, and other artwork, entitled The Art of Tim Burton, was released in 2009. A follow-up to that book, entitled The Napkin Art of Tim Burton: Things You Think About in a Bar, containing sketches made by Burton on napkins at bars and restaurants he visited, was released in 2015. His accolades include nominations for two Academy Awards and three BAFTA Awards, and wins for an Emmy Award and a Golden Globe Award.', 'https://image.tmdb.org/t/p/w500/wcjuY5vD1nlfwWNbvvTGg5dGoRR.jpg'),
(3952, 'Kevin Grevioux', '1973-10-09 00:00:00', '0', 'Kevin Grevioux is an American actor, screenwriter, and comic book writer. He is most known for his role as \"Raze\" in the Underworld movies.', 'https://image.tmdb.org/t/p/w500/iN6mkK4GNBJGtOJ6Qwxp1wjkWqX.jpg'),
(16847, 'Eli Roth', '1972-04-18 00:00:00', '0', 'Eli Raphael Roth (born April 18, 1972) is an American film director, producer, writer and actor. He is part of the group of filmmakers dubbed the Splat Pack, because of their association and their focus on the horror genre. Roth is an award-winning actor, most known for his role as Donny Donowitz in Quentin Tarantino\'s Inglourious Basterds, for which he won both a SAG Award (Best Ensemble) and also a BFCA Critics Choice Award (Best Acting Ensemble).', 'https://image.tmdb.org/t/p/w500/qQTkpxzh1FlBGL1HD5hzdUMxv49.jpg'),
(17697, 'John Krasinski', '1979-10-20 00:00:00', '0', 'John Burke Krasinski (born October 20, 1979) is an American actor, film director and writer. He is widely known for playing Jim Halpert on the NBC sitcom The Office from 2005 to 2013. He has also appeared in several films including License to Wed (2007), Leatherheads (2008), Away We Go (2009), It\'s Complicated (2009), Something Borrowed (2011), Aloha (2015), 13 Hours: The Secret Soldiers of Benghazi (2016), Detroit (2017), and A Quiet Place (2018), which he also directed and co-wrote. Also in 2018, Krasinski returned to television portraying the titular character in the Amazon series Jack Ryan.', 'https://image.tmdb.org/t/p/w500/pmVGDb6Yl6OyFcHVGbu1EYNfyFK.jpg'),
(17825, 'Shawn Levy', '1968-07-23 00:00:00', '0', 'Shawn Adam Levy (born July 23, 1968) is a Canadian film director, film producer, screenwriter, actor, and founder of 21 Laps Entertainment. He has worked across genres and is perhaps best known as the director of the Night at the Museum film franchise and the primary producer of the Netflix series Stranger Things.\r\n\r\nFollowing early work as a television director, Levy gained recognition in the 2000s for directing comedy films like Big Fat Liar and Just Married before directing Cheaper by the Dozen, The Pink Panther, and Night at the Museum film franchises. In the early 2010s, he directed films including Date Night and Real Steel, developed several comedy television pilots, and executive produced the ABC sitcom Last Man Standing. Levy was a producer on the 2016 sci-fi film Arrival, which earned him an Academy Award nomination for Best Picture.\r\n\r\nSince 2016, Levy has been an executive producer on the Netflix original series Stranger Things. He has directed the third and fourth episodes of each of the show\'s four seasons. He also directed the Netflix limited series All the Light We Cannot See. Most recently, he has collaborated with Ryan Reynolds by directing Free Guy (2021), The Adam Project (2022), and Deadpool & Wolverine (2024).\r\n\r\nDescription above from the Wikipedia article Shawn Levy, licensed under CC-BY-SA; full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/j1CXZgmfvFeD7S3PYtsEk8H3ebB.jpg'),
(19769, 'David Ayer', '1968-01-18 00:00:00', '0', 'David Ayer (born January 18, 1968) is an American filmmaker known for making crime films that are set in Los Angeles and deal with gangs and police corruption. His screenplays include Training Day (2001), The Fast and the Furious (2001), and S.W.A.T. (2003). He has also directed Harsh Times (2005), Street Kings (2008), End of Watch (2012), Sabotage (2014), and The Beekeeper (2024). In 2016, he directed the superhero movie Suicide Squad from the DC Extended Universe, and then the urban fantasy film Bright (2017) for Netflix. He has twice collaborated with actor Shia LaBeouf: first with the World War II drama Fury (2014), then the crime thriller The Tax Collector (2020). He has also collaborated with his friend Cle Shaheed Sloan who has appeared in four of his films.', 'https://image.tmdb.org/t/p/w500/7JmWK2wg2StEc9eYjY96s7OJgb7.jpg'),
(20192, 'Brian Taylor', '0000-00-00 00:00:00', '0', 'Brian Taylor is an American film director, cinematographer, camera operator, producer, and screenwriter. He is best known for frequently collaborating with Mark Neveldine as Neveldine/Taylor.\r\n\r\nTaylor attended the Los Angeles Film School in Hollywood, California and began his career as a cinematographer, working on a series on independent films and low-budget shorts. In the early 2000s, Taylor united with Mark Neveldine, both becoming known for their engineering skills as cinematographers and camera operators. They invented \"The Roller Dolly,\" and immediately submitted it for a patent.', 'https://image.tmdb.org/t/p/w500/1TXxgF48STiUb3F9cp1L5iEx5Pb.jpg'),
(37153, 'Zoë Kravitz', '1988-12-01 00:00:00', '0', 'Zoë Isabella Kravitz (born December 1, 1988) is an American actress, singer, and model. The daughter of actor-musician Lenny Kravitz and actress Lisa Bonet, she made her acting debut in the romantic comedy film No Reservations (2007), and had her breakthrough portraying Angel Salvadore in the superhero film X-Men: First Class (2011), which earned her nominations for a Teen Choice Award and a Scream Award. She rose to prominence playing Christina in The Divergent Series (2014–2016) and Leta Lestrange in the Fantastic Beasts film series (2016–2018).\r\n\r\nKravitz earned acclaim for her lead roles in the HBO drama series Big Little Lies (2017–2019), which earned her a Screen Actors Guild Award nomination, and the Hulu romantic comedy series High Fidelity (2020), for which she won a Black Reel Award and received a nomination for a Satellite Award. She voiced Catwoman in The Lego Batman Movie (2017), and will reprise the role in Matt Reeves\' DC film The Batman (2022); she additionally provided the voice of Mary Jane Watson in Spider-Man: Into the Spider-Verse (2018). She appeared as Toast the Knowing in Mad Max: Fury Road (2015), and has starred in numerous independent films, including Dope (2015), Adam Green\'s Aladdin (2016), and Gemini (2017).\r\n\r\nIn addition to acting, Kravitz works as a fashion model and musician. As of 2017, she is the face of YSL Beauté. Kravitz has also starred in campaigns for Tiffany & Co., Vera Wang, Balenciaga, Alexander Wang, Coach New York, Tumi, and Calvin Klein. She fronts the band Lolawolf and released the albums Calm Down in 2014 and Tenderness in 2020.', 'https://image.tmdb.org/t/p/w500/A8Ig9UHh8NSiUGg3xChcoF7749w.jpg'),
(57130, 'Todd Phillips', '1970-12-20 00:00:00', '0', 'American screenwriter and film director Todd Phillips made his first while a junior at NYU and it went on to become one of the biggest grossing student films at the time, even getting a limited theatrical release.; the feature-length documentary “Hated: GG Allin and the Murder Junkies” He is best known for directing the comedy films Road Trip, Old School, The Hangover, and Due Date.\r\n\r\nPhillips directed and produced the highest grossing R-Rated Comedy of all time “The Hangover” (2009), Its worldwide gross currently stands at $480 million dollars. The film won the Golden Globe for Best Picture as well as Best Comedy at the 2009 Broadcast Film Critics’ Awards. ', 'https://image.tmdb.org/t/p/w500/A6FPht87DiqXzp456WjakLi2AtP.jpg'),
(61411, 'Mark Dindal', '1960-05-31 00:00:00', '0', 'Mark Dindal (born in Columbus, Ohio) is an American effects animator and director, who created The Emperor\'s New Groove as well as Cats Don\'t Dance. He worked in many Disney classic projects as an effects animator, and also led the special effects for several classic movies such as The Little Mermaid and The Rescuers Down Under.', 'https://image.tmdb.org/t/p/w500/333OWiQBGLBjAWUemWySFzxCbhx.jpg'),
(63306, 'James Watkins', '1973-05-20 00:00:00', '0', 'James Thomas Watkins is an English film director and screenwriter. He is best known for directing \"Eden Lake\" (2008), \"The Woman in Black\" (2012), \"The Take\" (2016) and \"Speak No Evil\" (2024).', 'https://image.tmdb.org/t/p/w500/ik0bbpMrqAaaJlOYB1DbdslQHwh.jpg'),
(66193, 'Chris Sanders', '1962-03-12 00:00:00', '0', 'Christopher Michael \"Chris\" Sanders (born March 15, 1960) is an American film animator and voice actor best-known for co-directing and co-writing the Disney animated feature Lilo & Stitch, and providing the voice of Experiment 626 from Lilo & Stitch and Leroy from Disney\'s Leroy & Stitch. After being later dismissed from Walt Disney Animation Studios, Sanders went on to work for DreamWorks Animation, directing the highly acclaimed animated feature film, How to Train Your Dragon. He is currently serving as co-director on the upcoming feature, The Croods.\r\n\r\nDescription above from the Wikipedia article Chris Sanders, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/6CtrIOCxggJ5eIAWeFQqd4Hs9FP.jpg'),
(78108, 'Isaac Florentine', '1958-07-28 00:00:00', '0', 'From Wikipedia, the free encyclopedia.\r\n\r\nIsaac Florentine is an Israeli-born movie director and martial arts expert. Florentine earned a degree in Film & Television from Tel Aviv University.\r\n\r\nDescription above from the Wikipedia article Isaac Florentine, licensed under CC-BY-SA, full list of contributors on Wikipedia', 'https://image.tmdb.org/t/p/w500/4PJrg3l105M2GMNazhu2DXZ1Wce.jpg'),
(80733, 'Kongkiat Khomsiri', '1975-06-02 00:00:00', '0', 'Kongkiat Khomsiri, nicknamed Khom, is a Thai director and screenwriter. He graduated from the Faculty of Mass Communications at Bangkok University and started his career as a crew member on Mysterious Object at Noon, the first feature film by Apichatpong Weerasethakul.\r\n\r\nHe then went to work for Five Star Production, working with director Thanit Jitnukul on the films Bang Rajan and Kunpan: Legend of the Warlord. He made his directorial debut in 2005 with Art of the Devil 2, credited as part of the seven-member \"Ronin Team\" of directors. His solo directorial debut was Muay Thai Chaiya in 2007.', 'https://image.tmdb.org/t/p/w500/dAjEAoTXXpmZ1ZgbJ31fiHejW6b.jpg'),
(84496, 'Josh Cooley', '1979-05-23 00:00:00', '0', 'Joshua Cooley (born May 23, 1979) is an American animator, screenwriter, director and voice actor. He is best known for working on the 2015 Pixar animated film Inside Out and directing the short film Riley\'s First Date? that was included in its home video release. He made his feature film directorial debut in 2019 with Toy Story 4, the fourth installment of the Toy Story franchise, which won him the Academy Award for Best Animated Feature. He will also be the director of the upcoming Transformers One in 2024, the first theatrical fully CG animated Transformers film', 'https://image.tmdb.org/t/p/w500/rw6TQFIv9L5McYtRLyfTjfeeQfS.jpg'),
(88675, 'Justin Baldoni', '1984-01-24 00:00:00', '0', 'Justin Baldoni is an American film and television actor and director, best known for playing series regular Rafael Solano on the comedy-drama series \"Jane the Virgin\". After the success of his digital documentary series \"My Last Days\", a show about living told by the dying, he founded Wayfarer Entertainment, a digital media studio that creates \"disruptively inspirational content to celebrate and elevate the human experience\".', 'https://image.tmdb.org/t/p/w500/2sc6iUWljADnqtjsaKU3s6f0DGW.jpg'),
(124748, 'Chris Renaud', '1966-12-05 00:00:00', '0', 'Chris Renaud is an American illustrator and film-maker. He was nominated for an Academy Award for the 2006 animated short No Time for Nuts, which featured the character Scrat from the computer animated Ice Age films. Most recently, he directed Despicable Me, starring the voice of Steve Carell, which debuted #1 at the U.S. box office on July 9th, 2010.\r\n\r\nAfter graduating from Syracuse University with an illustration degree, Renaud began work as a graphic designer in the sports entertainment industry. He has created logo designs and mascot characters for NFL Properties, the NBA, and Foot Locker, among others. After working as a designer and illustrator for a variety of publications and agencies, Chris began drawing and writing comic books. Working for both Marvel Comics and DC Comics, his notable projects include illustrating Marvel\'s Starfleet Academy and pitching the original story concept that evolved into Batman: Cataclysm. This yearlong tale across all Batman-related comics resulted in increased sales and visibility for the renowned character.\r\n\r\nAs the production designer on the Disney Channels’ The Book of Pooh, Renaud transitioned into the world of children’s television. Since that groundbreaking project, he has been able to design virtual sets and puppet characters for Bear in the Big Blue House, Lazy Town, Curious Pictures, Sony Animation, and many more. With the new show It\'s a Big Big World, currently airing on PBS, he took the lead role in the visual development and design of every aspect of this Emmy-nominated children’s program.\r\n\r\nRenaud worked for Blue Sky Studios as a story artist on such films as Robots, Ice Age: The Meltdown, and the Dr. Seuss classic Horton Hears A Who!. He also wrote and co-directed the animated short No Time for Nuts, which received an Annie Award and a 2007 Oscar nomination within the animated short films category. It was also included in the Animation Show of Shows in 2006.\r\n\r\nRenaud works for Illumination Entertainment and lives in Paris, France. He directed Despicable Me, starring Steve Carell, which was released in the U.S. on July 9, 2010.', 'https://image.tmdb.org/t/p/w500/sumBJgBqRkK4XEJ2JYXpad3MTJs.jpg'),
(131532, 'J.J. Perry', '1967-10-25 00:00:00', '', 'J.J. Perry (born October 25, 1967) is a stunt performer, martial artist, film director, film producer, stunt coordinator and film actor who has made several uncredited appearances on 24.', 'https://image.tmdb.org/t/p/w500/57assDPZceZ4x7YWrkPE5FqVn1f.jpg'),
(182001, 'Kelsey Mann', '0000-00-00 00:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/fbZTKdt6wcZ6s6J0z91ZpxXpqOY.jpg'),
(225421, 'Joel Lamangan', '1952-09-21 00:00:00', '0', 'Joel Lamangan (born September 21, 1952) is a Filipino film director, television director and actor. His award-winning films includes The Flor Contemplacion Story, Sidhi, Deathrow, Hubog, Aishte Imasu 1941, Blue Moon and Mano Po.', 'https://image.tmdb.org/t/p/w500/lKEVNg8HFfsGrfzHxGZjLHVQ5ir.jpg'),
(228134, 'Rupert Sanders', '1971-03-16 00:00:00', '0', 'Rupert Sanders was born on March 16, 1971 in Westminster, London, England. He is a director and writer, known for Snow White and the Huntsman (2012), Ghost in the Shell (2017) and Black Hole (2010). He was previously married to Liberty Ross.', 'https://image.tmdb.org/t/p/w500/jG07WemmHOWQvYnKPSdNGioGg7A.jpg'),
(586110, 'Jennifer Phang', '1975-10-28 00:00:00', '0', 'Jennifer Phang is an American filmmaker (writer, director, producer), most known for her feature films Advantageous (2015) and Half-Life (2008). Advantageous premiered at the 2015 Sundance Film Festival, winning a Special Jury Award for Collaborative Vision, and was based on her award-winning short film of the same name. Half-Life premiered at the 2008 Sundance Film Festival and won \"Best Film\" awards at a number of film festivals including the Gen Art Film Festival, the San Francisco International Asian American Film Festival (now known as CAAMFest) as well an \"Emerging Director Award\" at the Asian American International Film Festival.  Description above from the Wikipedia article Jennifer Phang, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/2Eg7Kq1rkMmaPpytHm9bdkyvLvq.jpg'),
(931952, 'Lee Isaac Chung', '1978-10-19 00:00:00', '0', 'Lee Isaac Chung (born October 19, 1978) is an American film director and screenwriter. His debut feature Munyurangabo (2007) was an Official Selection at the 2007 Cannes Film Festival. The first narrative feature film in the Kinyarwanda language, the film was an Official Selection at the Cannes Film Festival, the Berlin Film Festival, the Toronto International Film Festival, the Busan International Film Festival. He also directed the feature films Lucky Life (2010) and Abigail Harm (2012).', 'https://image.tmdb.org/t/p/w500/fwiIh7jECjefCco3ZCdug6i3t9U.jpg'),
(932248, 'Fede Álvarez', '1978-02-09 00:00:00', '0', 'Federico \"Fede\" Álvarez (born February 9, 1978) is a Uruguayan director, producer, and screenwriter. He is best known for directing \"Evil Dead\" (2013), \"Don\'t Breathe\" (2016), \"The Girl in the Spider\'s Web\" (2018) and \"Alien: Romulus\" (2024). He is the co-founder of film and television production company Bad Hombre.', 'https://image.tmdb.org/t/p/w500/f8KjBkmqAyNGTUkZh1oYIURP4id.jpg'),
(933176, 'Damien Leone', '1982-01-29 00:00:00', '0', 'Damien Leone (born Jan 29, 1982) is an American writer-director and special makeup FX artist. He is best known as the creator of the Terrifier series of sadistic horror films featuring the killer Art the Clown.', 'https://image.tmdb.org/t/p/w500/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg'),
(940376, 'Kelly Marcel', '1974-01-10 00:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/thpdVW7O1975GcA3eNs1H8UIlmd.jpg'),
(1040955, 'Valeri Milev', '1974-11-03 00:00:00', '0', NULL, 'NULL'),
(1113259, 'Jordan Downey', '1986-05-16 00:00:00', '0', 'Jordan Downey is an American filmmaker based in Los Angeles.', 'https://image.tmdb.org/t/p/w500/48l0vnYHnWQIjq1h7vQUl3J7uyf.jpg'),
(1135344, 'Kim Tae-gon', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(1202063, 'Ninja Thyberg', '1984-10-12 00:00:00', '0', 'Ninja Thyberg is a Swedish director and writer, known for Pleasure (2021), Pleasure (2013), and Hot Chicks (2014).', 'https://image.tmdb.org/t/p/w500/9uY75TQt9lX3mK9v3eAmChFUxaC.jpg'),
(1203529, 'Spider One', '1968-08-25 00:00:00', '0', 'Spider One was born in Massachusetts. He attended the School of the Museum of Fine Arts in Boston Massachusetts for a short time before dropping out to pursue a career in music. He formed the electro/metal band Powerman 5000 in 1992 and has since released eleven albums, enjoyed platinum sales success and toured the world.  Spider first began his film and television career creating and co-producing the horror/comedy series Death Valley for MTV in 2011.\r\n\r\nHe then created the production company OneFox Productions with his partner Krsy Fox. They quickly began writing/producing their own films and content.\r\n\r\nSpider directed several music videos before eventually writing, directing and producing his first horror feature Allegoria. Allegoria was distributed by RLJE and Shudder and was released August 3 2022. His second film ‘Bury The Bride’ which he directed and co-wrote with Krsy Fox is due to be released as a Tubi original April 22 2023. The film stars Krsy Fox, Scout Taylor-Compton, Dylan Rourke, Chaz Bono and Cameron Cowperthwaite. Spider is currently in pre-production for OneFox\'s new feature \'Little Bites\', a sad story of a widow being tormented by a monster named Agyar.\r\n\r\nSpider also served as an on air personality for the horror network Fearnet, and is one fourth of the scripted, successful, fully immersive horror podcast Bleeders Diegest on the Bloody Disgusting podcast Network.', 'https://image.tmdb.org/t/p/w500/lVlOAVEtX6PeTggFM10Ep4miyt6.jpg'),
(1293994, 'Jon Watts', '1981-06-28 00:00:00', '0', 'Jonathan \"Jon\" Watts (born June 28, 1981) is an American film director, producer and screenwriter. He is best known for directing the Spider-Man MCU trilogy starring Tom Holland. Watts was born and raised in Fountain, Colorado. He studied film at New York University. Before directing movies, he directed commercials for production company Park Pictures.', 'https://image.tmdb.org/t/p/w500/fkXChMX6CUXY1yOxBehAzvaTCl7.jpg'),
(1327760, 'João Wainer', '0000-00-00 00:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/zb0m0H4y5yK3KlteO2xB6PVa7zA.jpg'),
(1328012, 'Gints Zilbalodis', '0000-00-00 00:00:00', '0', 'Gints Zilbalodis (born in 1994) is a Latvian filmmaker and animator. His fascination for filmmaking began at an early age watching classic films and making shorts and commercials. He has made 7 films in various mediums including hand-drawn animation, 3D animation and live- action and often mixing their characteristic aesthetics. He\'s currently working on a new animated short film.', 'https://image.tmdb.org/t/p/w500/kVRvFXr1Vzyy7KFYGlzVj0P7mtC.jpg'),
(1331284, 'Greg Jardin', '0000-00-00 00:00:00', '', 'Greg Jardin is a Los Angeles-based director who has worked in a variety of short film entertainment. He best known for his feature film debut It\'s What\'s Inside (2024).', 'https://image.tmdb.org/t/p/w500/89kCW6xEFEw7KfJ0QKgWqUsQqVu.jpg'),
(1338249, 'Gary Dauberman', '0000-00-00 00:00:00', '0', 'Gary Dauberman is an American screenwriter and director of horror films. He is best known for his work within \"The Conjuring Universe\", writing the spin-off films \"Annabelle\" (2014), \"Annabelle: Creation\" (2017) and \"The Nun\" (2018), and writing and directing \"Annabelle Comes Home\" (2019). He has also worked on several Stephen King adaptations, co-writing \"It\" (2017), writing \"It Chapter Two\" (2019), and writing and directing \"Salem\'s Lot\" (2024). He also founded the production company Coin Operated.', 'https://image.tmdb.org/t/p/w500/utWxbobxeJBRAaohiNIsIQBvuxe.jpg'),
(1399841, 'Adil El Arbi', '1988-06-30 00:00:00', '0', 'Adil El Arbi (born June 30, 1988) and Bilall Fallah (born January 4, 1986) are Belgian film and television directors of Moroccan descent. The duo, collectively billed as Adil & Bilall, are known for writing and directing the feature films Image (2014), Black (2015), and Gangsta (2018), as well as directing Bad Boys for Life (2020) and the upcoming Bad Boys: Ride or Die (2024), the third and fourth installments of the Bad Boys franchise starring Will Smith and Martin Lawrence.', 'https://image.tmdb.org/t/p/w500/hpl12TXFDUjzomftx7zST3M2aLg.jpg'),
(1479536, 'Kevin Peaty', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(1565301, 'Thomas Astruc', '1975-01-18 00:00:00', '0', 'Thomas Astruc (born 18 January, 1975) is a French animator, director, writer and storyboard artist. He is best known as creator, writer and co-director for the animated television series \"Miraculous: Tales of Ladybug & Cat Noir\".', 'NULL'),
(1607016, 'Coralie Fargeat', '1976-11-24 00:00:00', '0', 'Coralie Fargeat is a French film director and screenwriter. She gained international recognition with her 2017 debut feature film Revenge, for which she received awards from several independent film festivals. This was followed by her second feature, The Substance (2024), a satirical body horror film starring Demi Moore, screened in the main competition at the 2024 Cannes Film Festival, where Fargeat won the Best Screenplay award.', 'https://image.tmdb.org/t/p/w500/8TlTqFD5RnJGBxxzarpvygZlRXC.jpg'),
(1768215, 'Michael Su', '1967-12-10 00:00:00', '0', 'Michael Su was born on December 10, 1967 in Taipei, Taiwan. He is a cinematographer and director, known for Snow White and the Seven Samurai (2024), Bloodthirst (2023) and Death Count (2022).', 'https://image.tmdb.org/t/p/w500/yNvnLqEHb2FtdB7AW2O0lZelKBO.jpg'),
(1772511, 'Nik Kacevski', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(1860656, 'Will Joines', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(2172186, 'Jon Holmberg', '1974-02-17 00:00:00', '0', NULL, 'NULL'),
(2374023, 'Galder Gaztelu-Urrutia', '1974-01-01 00:00:00', '0', 'Film and advertising director and producer, known for The Platform (2019), El ataúd de cristal (2016) and La casa del lago (2011). Nominated for a Spanish Academy Award (Goya) as Best New Director for The Platform.', 'https://image.tmdb.org/t/p/w500/rAPQ6GjKHbmD0zuwizhu5g3GlCB.jpg'),
(3084810, 'Kim Sung-han', '0000-00-00 00:00:00', '', NULL, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `director_backup`
--

CREATE TABLE `director_backup` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` datetime NOT NULL,
  `countryId` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `director_backup`
--

INSERT INTO `director_backup` (`id`, `name`, `birthdate`, `countryId`, `biography`, `image`) VALUES
(1, 'zam', '2022-09-12 00:00:00', '1', 'dsdasdasdasdas', 'https://image.tmdb.org/t/p/w500/qKBWrohBYegm6AAaLrtxEqqouIK.jpg'),
(17825, 'Shawn Levy', '1968-07-23 00:00:00', '0', 'Shawn Adam Levy (born July 23, 1968) is a Canadian film director, film producer, screenwriter, actor, and founder of 21 Laps Entertainment. He has worked across genres and is perhaps best known as the director of the Night at the Museum film franchise and the primary producer of the Netflix series Stranger Things.\r\n\r\nFollowing early work as a television director, Levy gained recognition in the 2000s for directing comedy films like Big Fat Liar and Just Married before directing Cheaper by the Dozen, The Pink Panther, and Night at the Museum film franchises. In the early 2010s, he directed films including Date Night and Real Steel, developed several comedy television pilots, and executive produced the ABC sitcom Last Man Standing. Levy was a producer on the 2016 sci-fi film Arrival, which earned him an Academy Award nomination for Best Picture.\r\n\r\nSince 2016, Levy has been an executive producer on the Netflix original series Stranger Things. He has directed the third and fourth episodes of each of the show\'s four seasons. He also directed the Netflix limited series All the Light We Cannot See. Most recently, he has collaborated with Ryan Reynolds by directing Free Guy (2021), The Adam Project (2022), and Deadpool & Wolverine (2024).\r\n\r\nDescription above from the Wikipedia article Shawn Levy, licensed under CC-BY-SA; full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/j1CXZgmfvFeD7S3PYtsEk8H3ebB.jpg'),
(510, 'Tim Burton', '1958-08-25 00:00:00', '0', 'Timothy Walter Burton (born August 25, 1958) is an American filmmaker and animator. He is known for his gothic fantasy and horror films such as Beetlejuice (1988), Edward Scissorhands (1990), The Nightmare Before Christmas (1993), Ed Wood (1994), Sleepy Hollow (1999), Corpse Bride (2005), Sweeney Todd: The Demon Barber of Fleet Street (2007) and Dark Shadows (2012), as well as the television series Wednesday (2022). Burton also directed the superhero films Batman (1989) and Batman Returns (1992), the sci-fi film Planet of the Apes (2001), the fantasy-drama Big Fish (2003), the musical adventure film Charlie and the Chocolate Factory (2005), and the fantasy films Alice in Wonderland (2010) and Miss Peregrine\'s Home for Peculiar Children (2016).\r\n\r\nBurton has often worked with actors Winona Ryder, Johnny Depp, Lisa Marie (former girlfriend), Helena Bonham Carter (his former domestic partner) and composer Danny Elfman, who scored all but three of Burton\'s films. Burton also wrote and illustrated the poetry book The Melancholy Death of Oyster Boy & Other Stories, published in 1997 by British publishing house Faber and Faber, and a compilation of his drawings, sketches, and other artwork, entitled The Art of Tim Burton, was released in 2009. A follow-up to that book, entitled The Napkin Art of Tim Burton: Things You Think About in a Bar, containing sketches made by Burton on napkins at bars and restaurants he visited, was released in 2015. His accolades include nominations for two Academy Awards and three BAFTA Awards, and wins for an Emmy Award and a Golden Globe Award.', 'https://image.tmdb.org/t/p/w500/wcjuY5vD1nlfwWNbvvTGg5dGoRR.jpg'),
(2374023, 'Galder Gaztelu-Urrutia', '1974-01-01 00:00:00', '0', 'Film and advertising director and producer, known for The Platform (2019), El ataúd de cristal (2016) and La casa del lago (2011). Nominated for a Spanish Academy Award (Goya) as Best New Director for The Platform.', 'https://image.tmdb.org/t/p/w500/rAPQ6GjKHbmD0zuwizhu5g3GlCB.jpg'),
(124748, 'Chris Renaud', '1966-12-05 00:00:00', '0', 'Chris Renaud is an American illustrator and film-maker. He was nominated for an Academy Award for the 2006 animated short No Time for Nuts, which featured the character Scrat from the computer animated Ice Age films. Most recently, he directed Despicable Me, starring the voice of Steve Carell, which debuted #1 at the U.S. box office on July 9th, 2010.\r\n\r\nAfter graduating from Syracuse University with an illustration degree, Renaud began work as a graphic designer in the sports entertainment industry. He has created logo designs and mascot characters for NFL Properties, the NBA, and Foot Locker, among others. After working as a designer and illustrator for a variety of publications and agencies, Chris began drawing and writing comic books. Working for both Marvel Comics and DC Comics, his notable projects include illustrating Marvel\'s Starfleet Academy and pitching the original story concept that evolved into Batman: Cataclysm. This yearlong tale across all Batman-related comics resulted in increased sales and visibility for the renowned character.\r\n\r\nAs the production designer on the Disney Channels’ The Book of Pooh, Renaud transitioned into the world of children’s television. Since that groundbreaking project, he has been able to design virtual sets and puppet characters for Bear in the Big Blue House, Lazy Town, Curious Pictures, Sony Animation, and many more. With the new show It\'s a Big Big World, currently airing on PBS, he took the lead role in the visual development and design of every aspect of this Emmy-nominated children’s program.\r\n\r\nRenaud worked for Blue Sky Studios as a story artist on such films as Robots, Ice Age: The Meltdown, and the Dr. Seuss classic Horton Hears A Who!. He also wrote and co-directed the animated short No Time for Nuts, which received an Annie Award and a 2007 Oscar nomination within the animated short films category. It was also included in the Animation Show of Shows in 2006.\r\n\r\nRenaud works for Illumination Entertainment and lives in Paris, France. He directed Despicable Me, starring Steve Carell, which was released in the U.S. on July 9, 2010.', 'https://image.tmdb.org/t/p/w500/sumBJgBqRkK4XEJ2JYXpad3MTJs.jpg'),
(1607016, 'Coralie Fargeat', '1976-11-24 00:00:00', '0', 'Coralie Fargeat is a French film director and screenwriter. She gained international recognition with her 2017 debut feature film Revenge, for which she received awards from several independent film festivals. This was followed by her second feature, The Substance (2024), a satirical body horror film starring Demi Moore, screened in the main competition at the 2024 Cannes Film Festival, where Fargeat won the Best Screenplay award.', 'https://image.tmdb.org/t/p/w500/8TlTqFD5RnJGBxxzarpvygZlRXC.jpg'),
(933176, 'Damien Leone', '1982-01-29 00:00:00', '0', 'Damien Leone (born Jan 29, 1982) is an American writer-director and special makeup FX artist. He is best known as the creator of the Terrifier series of sadistic horror films featuring the killer Art the Clown.', 'https://image.tmdb.org/t/p/w500/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg'),
(1607016, 'Coralie Fargeat', '1976-11-24 00:00:00', '0', 'Coralie Fargeat is a French film director and screenwriter. She gained international recognition with her 2017 debut feature film Revenge, for which she received awards from several independent film festivals. This was followed by her second feature, The Substance (2024), a satirical body horror film starring Demi Moore, screened in the main competition at the 2024 Cannes Film Festival, where Fargeat won the Best Screenplay award.', 'https://image.tmdb.org/t/p/w500/8TlTqFD5RnJGBxxzarpvygZlRXC.jpg'),
(66193, 'Chris Sanders', '1962-03-12 00:00:00', '0', 'Christopher Michael \"Chris\" Sanders (born March 15, 1960) is an American film animator and voice actor best-known for co-directing and co-writing the Disney animated feature Lilo & Stitch, and providing the voice of Experiment 626 from Lilo & Stitch and Leroy from Disney\'s Leroy & Stitch. After being later dismissed from Walt Disney Animation Studios, Sanders went on to work for DreamWorks Animation, directing the highly acclaimed animated feature film, How to Train Your Dragon. He is currently serving as co-director on the upcoming feature, The Croods.\r\n\r\nDescription above from the Wikipedia article Chris Sanders, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/6CtrIOCxggJ5eIAWeFQqd4Hs9FP.jpg'),
(933176, 'Damien Leone', '1982-01-29 00:00:00', '0', 'Damien Leone (born Jan 29, 1982) is an American writer-director and special makeup FX artist. He is best known as the creator of the Terrifier series of sadistic horror films featuring the killer Art the Clown.', 'https://image.tmdb.org/t/p/w500/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg'),
(182001, 'Kelsey Mann', '0000-00-00 00:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/fbZTKdt6wcZ6s6J0z91ZpxXpqOY.jpg'),
(1135344, 'Kim Tae-gon', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(228134, 'Rupert Sanders', '1971-03-16 00:00:00', '0', 'Rupert Sanders was born on March 16, 1971 in Westminster, London, England. He is a director and writer, known for Snow White and the Huntsman (2012), Ghost in the Shell (2017) and Black Hole (2010). He was previously married to Liberty Ross.', 'https://image.tmdb.org/t/p/w500/jG07WemmHOWQvYnKPSdNGioGg7A.jpg'),
(1768215, 'Michael Su', '1967-12-10 00:00:00', '0', 'Michael Su was born on December 10, 1967 in Taipei, Taiwan. He is a cinematographer and director, known for Snow White and the Seven Samurai (2024), Bloodthirst (2023) and Death Count (2022).', 'https://image.tmdb.org/t/p/w500/yNvnLqEHb2FtdB7AW2O0lZelKBO.jpg'),
(1479536, 'Kevin Peaty', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(63306, 'James Watkins', '1973-05-20 00:00:00', '0', 'James Thomas Watkins is an English film director and screenwriter. He is best known for directing \"Eden Lake\" (2008), \"The Woman in Black\" (2012), \"The Take\" (2016) and \"Speak No Evil\" (2024).', 'https://image.tmdb.org/t/p/w500/ik0bbpMrqAaaJlOYB1DbdslQHwh.jpg'),
(57130, 'Todd Phillips', '1970-12-20 00:00:00', '0', 'American screenwriter and film director Todd Phillips made his first while a junior at NYU and it went on to become one of the biggest grossing student films at the time, even getting a limited theatrical release.; the feature-length documentary “Hated: GG Allin and the Murder Junkies” He is best known for directing the comedy films Road Trip, Old School, The Hangover, and Due Date.\r\n\r\nPhillips directed and produced the highest grossing R-Rated Comedy of all time “The Hangover” (2009), Its worldwide gross currently stands at $480 million dollars. The film won the Golden Globe for Best Picture as well as Best Comedy at the 2009 Broadcast Film Critics’ Awards. ', 'https://image.tmdb.org/t/p/w500/A6FPht87DiqXzp456WjakLi2AtP.jpg'),
(1040955, 'Valeri Milev', '1974-11-03 00:00:00', '0', NULL, 'NULL'),
(1293994, 'Jon Watts', '1981-06-28 00:00:00', '0', 'Jonathan \"Jon\" Watts (born June 28, 1981) is an American film director, producer and screenwriter. He is best known for directing the Spider-Man MCU trilogy starring Tom Holland. Watts was born and raised in Fountain, Colorado. He studied film at New York University. Before directing movies, he directed commercials for production company Park Pictures.', 'https://image.tmdb.org/t/p/w500/fkXChMX6CUXY1yOxBehAzvaTCl7.jpg'),
(1399841, 'Adil El Arbi', '1988-06-30 00:00:00', '0', 'Adil El Arbi (born June 30, 1988) and Bilall Fallah (born January 4, 1986) are Belgian film and television directors of Moroccan descent. The duo, collectively billed as Adil & Bilall, are known for writing and directing the feature films Image (2014), Black (2015), and Gangsta (2018), as well as directing Bad Boys for Life (2020) and the upcoming Bad Boys: Ride or Die (2024), the third and fourth installments of the Bad Boys franchise starring Will Smith and Martin Lawrence.', 'https://image.tmdb.org/t/p/w500/hpl12TXFDUjzomftx7zST3M2aLg.jpg'),
(1328012, 'Gints Zilbalodis', '0000-00-00 00:00:00', '0', 'Gints Zilbalodis (born in 1994) is a Latvian filmmaker and animator. His fascination for filmmaking began at an early age watching classic films and making shorts and commercials. He has made 7 films in various mediums including hand-drawn animation, 3D animation and live- action and often mixing their characteristic aesthetics. He\'s currently working on a new animated short film.', 'https://image.tmdb.org/t/p/w500/kVRvFXr1Vzyy7KFYGlzVj0P7mtC.jpg'),
(80733, 'Kongkiat Khomsiri', '1975-06-02 00:00:00', '0', 'Kongkiat Khomsiri, nicknamed Khom, is a Thai director and screenwriter. He graduated from the Faculty of Mass Communications at Bangkok University and started his career as a crew member on Mysterious Object at Noon, the first feature film by Apichatpong Weerasethakul.\r\n\r\nHe then went to work for Five Star Production, working with director Thanit Jitnukul on the films Bang Rajan and Kunpan: Legend of the Warlord. He made his directorial debut in 2005 with Art of the Devil 2, credited as part of the seven-member \"Ronin Team\" of directors. His solo directorial debut was Muay Thai Chaiya in 2007.', 'https://image.tmdb.org/t/p/w500/dAjEAoTXXpmZ1ZgbJ31fiHejW6b.jpg'),
(88675, 'Justin Baldoni', '1984-01-24 00:00:00', '0', 'Justin Baldoni is an American film and television actor and director, best known for playing series regular Rafael Solano on the comedy-drama series \"Jane the Virgin\". After the success of his digital documentary series \"My Last Days\", a show about living told by the dying, he founded Wayfarer Entertainment, a digital media studio that creates \"disruptively inspirational content to celebrate and elevate the human experience\".', 'https://image.tmdb.org/t/p/w500/2sc6iUWljADnqtjsaKU3s6f0DGW.jpg'),
(933176, 'Damien Leone', '1982-01-29 00:00:00', '0', 'Damien Leone (born Jan 29, 1982) is an American writer-director and special makeup FX artist. He is best known as the creator of the Terrifier series of sadistic horror films featuring the killer Art the Clown.', 'https://image.tmdb.org/t/p/w500/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg'),
(1202063, 'Ninja Thyberg', '1984-10-12 00:00:00', '0', 'Ninja Thyberg is a Swedish director and writer, known for Pleasure (2021), Pleasure (2013), and Hot Chicks (2014).', 'https://image.tmdb.org/t/p/w500/9uY75TQt9lX3mK9v3eAmChFUxaC.jpg'),
(84496, 'Josh Cooley', '1979-05-23 00:00:00', '0', 'Joshua Cooley (born May 23, 1979) is an American animator, screenwriter, director and voice actor. He is best known for working on the 2015 Pixar animated film Inside Out and directing the short film Riley\'s First Date? that was included in its home video release. He made his feature film directorial debut in 2019 with Toy Story 4, the fourth installment of the Toy Story franchise, which won him the Academy Award for Best Animated Feature. He will also be the director of the upcoming Transformers One in 2024, the first theatrical fully CG animated Transformers film', 'https://image.tmdb.org/t/p/w500/rw6TQFIv9L5McYtRLyfTjfeeQfS.jpg'),
(933176, 'Damien Leone', '1982-01-29 00:00:00', '0', 'Damien Leone (born Jan 29, 1982) is an American writer-director and special makeup FX artist. He is best known as the creator of the Terrifier series of sadistic horror films featuring the killer Art the Clown.', 'https://image.tmdb.org/t/p/w500/nX2kkYD32x2PC9rRU7DrYCRPjFE.jpg'),
(2172186, 'Jon Holmberg', '1974-02-17 00:00:00', '0', NULL, 'NULL'),
(225421, 'Joel Lamangan', '1952-09-21 00:00:00', '0', 'Joel Lamangan (born September 21, 1952) is a Filipino film director, television director and actor. His award-winning films includes The Flor Contemplacion Story, Sidhi, Deathrow, Hubog, Aishte Imasu 1941, Blue Moon and Mano Po.', 'https://image.tmdb.org/t/p/w500/lKEVNg8HFfsGrfzHxGZjLHVQ5ir.jpg'),
(1338249, 'Gary Dauberman', '0000-00-00 00:00:00', '0', 'Gary Dauberman is an American screenwriter and director of horror films. He is best known for his work within \"The Conjuring Universe\", writing the spin-off films \"Annabelle\" (2014), \"Annabelle: Creation\" (2017) and \"The Nun\" (2018), and writing and directing \"Annabelle Comes Home\" (2019). He has also worked on several Stephen King adaptations, co-writing \"It\" (2017), writing \"It Chapter Two\" (2019), and writing and directing \"Salem\'s Lot\" (2024). He also founded the production company Coin Operated.', 'https://image.tmdb.org/t/p/w500/utWxbobxeJBRAaohiNIsIQBvuxe.jpg'),
(57130, 'Todd Phillips', '1970-12-20 00:00:00', '0', 'American screenwriter and film director Todd Phillips made his first while a junior at NYU and it went on to become one of the biggest grossing student films at the time, even getting a limited theatrical release.; the feature-length documentary “Hated: GG Allin and the Murder Junkies” He is best known for directing the comedy films Road Trip, Old School, The Hangover, and Due Date.\r\n\r\nPhillips directed and produced the highest grossing R-Rated Comedy of all time “The Hangover” (2009), Its worldwide gross currently stands at $480 million dollars. The film won the Golden Globe for Best Picture as well as Best Comedy at the 2009 Broadcast Film Critics’ Awards. ', 'https://image.tmdb.org/t/p/w500/A6FPht87DiqXzp456WjakLi2AtP.jpg'),
(3084810, 'Kim Sung-han', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(20192, 'Brian Taylor', '0000-00-00 00:00:00', '0', 'Brian Taylor is an American film director, cinematographer, camera operator, producer, and screenwriter. He is best known for frequently collaborating with Mark Neveldine as Neveldine/Taylor.\r\n\r\nTaylor attended the Los Angeles Film School in Hollywood, California and began his career as a cinematographer, working on a series on independent films and low-budget shorts. In the early 2000s, Taylor united with Mark Neveldine, both becoming known for their engineering skills as cinematographers and camera operators. They invented \"The Roller Dolly,\" and immediately submitted it for a patent.', 'https://image.tmdb.org/t/p/w500/1TXxgF48STiUb3F9cp1L5iEx5Pb.jpg'),
(586110, 'Jennifer Phang', '1975-10-28 00:00:00', '0', 'Jennifer Phang is an American filmmaker (writer, director, producer), most known for her feature films Advantageous (2015) and Half-Life (2008). Advantageous premiered at the 2015 Sundance Film Festival, winning a Special Jury Award for Collaborative Vision, and was based on her award-winning short film of the same name. Half-Life premiered at the 2008 Sundance Film Festival and won \"Best Film\" awards at a number of film festivals including the Gen Art Film Festival, the San Francisco International Asian American Film Festival (now known as CAAMFest) as well an \"Emerging Director Award\" at the Asian American International Film Festival.  Description above from the Wikipedia article Jennifer Phang, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 'https://image.tmdb.org/t/p/w500/2Eg7Kq1rkMmaPpytHm9bdkyvLvq.jpg'),
(932248, 'Fede Álvarez', '1978-02-09 00:00:00', '0', 'Federico \"Fede\" Álvarez (born February 9, 1978) is a Uruguayan director, producer, and screenwriter. He is best known for directing \"Evil Dead\" (2013), \"Don\'t Breathe\" (2016), \"The Girl in the Spider\'s Web\" (2018) and \"Alien: Romulus\" (2024). He is the co-founder of film and television production company Bad Hombre.', 'https://image.tmdb.org/t/p/w500/f8KjBkmqAyNGTUkZh1oYIURP4id.jpg'),
(78108, 'Isaac Florentine', '1958-07-28 00:00:00', '0', 'From Wikipedia, the free encyclopedia.\r\n\r\nIsaac Florentine is an Israeli-born movie director and martial arts expert. Florentine earned a degree in Film & Television from Tel Aviv University.\r\n\r\nDescription above from the Wikipedia article Isaac Florentine, licensed under CC-BY-SA, full list of contributors on Wikipedia', 'https://image.tmdb.org/t/p/w500/4PJrg3l105M2GMNazhu2DXZ1Wce.jpg'),
(1772511, 'Nik Kacevski', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(1860656, 'Will Joines', '0000-00-00 00:00:00', '', NULL, 'NULL'),
(37153, 'Zoë Kravitz', '1988-12-01 00:00:00', '0', 'Zoë Isabella Kravitz (born December 1, 1988) is an American actress, singer, and model. The daughter of actor-musician Lenny Kravitz and actress Lisa Bonet, she made her acting debut in the romantic comedy film No Reservations (2007), and had her breakthrough portraying Angel Salvadore in the superhero film X-Men: First Class (2011), which earned her nominations for a Teen Choice Award and a Scream Award. She rose to prominence playing Christina in The Divergent Series (2014–2016) and Leta Lestrange in the Fantastic Beasts film series (2016–2018).\r\n\r\nKravitz earned acclaim for her lead roles in the HBO drama series Big Little Lies (2017–2019), which earned her a Screen Actors Guild Award nomination, and the Hulu romantic comedy series High Fidelity (2020), for which she won a Black Reel Award and received a nomination for a Satellite Award. She voiced Catwoman in The Lego Batman Movie (2017), and will reprise the role in Matt Reeves\' DC film The Batman (2022); she additionally provided the voice of Mary Jane Watson in Spider-Man: Into the Spider-Verse (2018). She appeared as Toast the Knowing in Mad Max: Fury Road (2015), and has starred in numerous independent films, including Dope (2015), Adam Green\'s Aladdin (2016), and Gemini (2017).\r\n\r\nIn addition to acting, Kravitz works as a fashion model and musician. As of 2017, she is the face of YSL Beauté. Kravitz has also starred in campaigns for Tiffany & Co., Vera Wang, Balenciaga, Alexander Wang, Coach New York, Tumi, and Calvin Klein. She fronts the band Lolawolf and released the albums Calm Down in 2014 and Tenderness in 2020.', 'https://image.tmdb.org/t/p/w500/A8Ig9UHh8NSiUGg3xChcoF7749w.jpg'),
(17697, 'John Krasinski', '1979-10-20 00:00:00', '0', 'John Burke Krasinski (born October 20, 1979) is an American actor, film director and writer. He is widely known for playing Jim Halpert on the NBC sitcom The Office from 2005 to 2013. He has also appeared in several films including License to Wed (2007), Leatherheads (2008), Away We Go (2009), It\'s Complicated (2009), Something Borrowed (2011), Aloha (2015), 13 Hours: The Secret Soldiers of Benghazi (2016), Detroit (2017), and A Quiet Place (2018), which he also directed and co-wrote. Also in 2018, Krasinski returned to television portraying the titular character in the Amazon series Jack Ryan.', 'https://image.tmdb.org/t/p/w500/pmVGDb6Yl6OyFcHVGbu1EYNfyFK.jpg'),
(1331284, 'Greg Jardin', '0000-00-00 00:00:00', '', 'Greg Jardin is a Los Angeles-based director who has worked in a variety of short film entertainment. He best known for his feature film debut It\'s What\'s Inside (2024).', 'https://image.tmdb.org/t/p/w500/89kCW6xEFEw7KfJ0QKgWqUsQqVu.jpg'),
(16847, 'Eli Roth', '1972-04-18 00:00:00', '0', 'Eli Raphael Roth (born April 18, 1972) is an American film director, producer, writer and actor. He is part of the group of filmmakers dubbed the Splat Pack, because of their association and their focus on the horror genre. Roth is an award-winning actor, most known for his role as Donny Donowitz in Quentin Tarantino\'s Inglourious Basterds, for which he won both a SAG Award (Best Ensemble) and also a BFCA Critics Choice Award (Best Acting Ensemble).', 'https://image.tmdb.org/t/p/w500/qQTkpxzh1FlBGL1HD5hzdUMxv49.jpg'),
(3952, 'Kevin Grevioux', '1973-10-09 00:00:00', '0', 'Kevin Grevioux is an American actor, screenwriter, and comic book writer. He is most known for his role as \"Raze\" in the Underworld movies.', 'https://image.tmdb.org/t/p/w500/iN6mkK4GNBJGtOJ6Qwxp1wjkWqX.jpg'),
(931952, 'Lee Isaac Chung', '1978-10-19 00:00:00', '0', 'Lee Isaac Chung (born October 19, 1978) is an American film director and screenwriter. His debut feature Munyurangabo (2007) was an Official Selection at the 2007 Cannes Film Festival. The first narrative feature film in the Kinyarwanda language, the film was an Official Selection at the Cannes Film Festival, the Berlin Film Festival, the Toronto International Film Festival, the Busan International Film Festival. He also directed the feature films Lucky Life (2010) and Abigail Harm (2012).', 'https://image.tmdb.org/t/p/w500/fwiIh7jECjefCco3ZCdug6i3t9U.jpg'),
(940376, 'Kelly Marcel', '1974-01-10 00:00:00', '0', NULL, 'https://image.tmdb.org/t/p/w500/thpdVW7O1975GcA3eNs1H8UIlmd.jpg'),
(61411, 'Mark Dindal', '1960-05-31 00:00:00', '0', 'Mark Dindal (born in Columbus, Ohio) is an American effects animator and director, who created The Emperor\'s New Groove as well as Cats Don\'t Dance. He worked in many Disney classic projects as an effects animator, and also led the special effects for several classic movies such as The Little Mermaid and The Rescuers Down Under.', 'https://image.tmdb.org/t/p/w500/333OWiQBGLBjAWUemWySFzxCbhx.jpg'),
(510, 'Tim Burton', '1958-08-25 00:00:00', '0', 'Timothy Walter Burton (born August 25, 1958) is an American filmmaker and animator. He is known for his gothic fantasy and horror films such as Beetlejuice (1988), Edward Scissorhands (1990), The Nightmare Before Christmas (1993), Ed Wood (1994), Sleepy Hollow (1999), Corpse Bride (2005), Sweeney Todd: The Demon Barber of Fleet Street (2007) and Dark Shadows (2012), as well as the television series Wednesday (2022). Burton also directed the superhero films Batman (1989) and Batman Returns (1992), the sci-fi film Planet of the Apes (2001), the fantasy-drama Big Fish (2003), the musical adventure film Charlie and the Chocolate Factory (2005), and the fantasy films Alice in Wonderland (2010) and Miss Peregrine\'s Home for Peculiar Children (2016).\r\n\r\nBurton has often worked with actors Winona Ryder, Johnny Depp, Lisa Marie (former girlfriend), Helena Bonham Carter (his former domestic partner) and composer Danny Elfman, who scored all but three of Burton\'s films. Burton also wrote and illustrated the poetry book The Melancholy Death of Oyster Boy & Other Stories, published in 1997 by British publishing house Faber and Faber, and a compilation of his drawings, sketches, and other artwork, entitled The Art of Tim Burton, was released in 2009. A follow-up to that book, entitled The Napkin Art of Tim Burton: Things You Think About in a Bar, containing sketches made by Burton on napkins at bars and restaurants he visited, was released in 2015. His accolades include nominations for two Academy Awards and three BAFTA Awards, and wins for an Emmy Award and a Golden Globe Award.', 'https://image.tmdb.org/t/p/w500/wcjuY5vD1nlfwWNbvvTGg5dGoRR.jpg'),
(1113259, 'Jordan Downey', '1986-05-16 00:00:00', '0', 'Jordan Downey is an American filmmaker based in Los Angeles.', 'https://image.tmdb.org/t/p/w500/48l0vnYHnWQIjq1h7vQUl3J7uyf.jpg'),
(1203529, 'Spider One', '1968-08-25 00:00:00', '0', 'Spider One was born in Massachusetts. He attended the School of the Museum of Fine Arts in Boston Massachusetts for a short time before dropping out to pursue a career in music. He formed the electro/metal band Powerman 5000 in 1992 and has since released eleven albums, enjoyed platinum sales success and toured the world.  Spider first began his film and television career creating and co-producing the horror/comedy series Death Valley for MTV in 2011.\r\n\r\nHe then created the production company OneFox Productions with his partner Krsy Fox. They quickly began writing/producing their own films and content.\r\n\r\nSpider directed several music videos before eventually writing, directing and producing his first horror feature Allegoria. Allegoria was distributed by RLJE and Shudder and was released August 3 2022. His second film ‘Bury The Bride’ which he directed and co-wrote with Krsy Fox is due to be released as a Tubi original April 22 2023. The film stars Krsy Fox, Scout Taylor-Compton, Dylan Rourke, Chaz Bono and Cameron Cowperthwaite. Spider is currently in pre-production for OneFox\'s new feature \'Little Bites\', a sad story of a widow being tormented by a monster named Agyar.\r\n\r\nSpider also served as an on air personality for the horror network Fearnet, and is one fourth of the scripted, successful, fully immersive horror podcast Bleeders Diegest on the Bloody Disgusting podcast Network.', 'https://image.tmdb.org/t/p/w500/lVlOAVEtX6PeTggFM10Ep4miyt6.jpg'),
(1327760, 'João Wainer', '0000-00-00 00:00:00', '', NULL, 'https://image.tmdb.org/t/p/w500/zb0m0H4y5yK3KlteO2xB6PVa7zA.jpg'),
(19769, 'David Ayer', '1968-01-18 00:00:00', '0', 'David Ayer (born January 18, 1968) is an American filmmaker known for making crime films that are set in Los Angeles and deal with gangs and police corruption. His screenplays include Training Day (2001), The Fast and the Furious (2001), and S.W.A.T. (2003). He has also directed Harsh Times (2005), Street Kings (2008), End of Watch (2012), Sabotage (2014), and The Beekeeper (2024). In 2016, he directed the superhero movie Suicide Squad from the DC Extended Universe, and then the urban fantasy film Bright (2017) for Netflix. He has twice collaborated with actor Shia LaBeouf: first with the World War II drama Fury (2014), then the crime thriller The Tax Collector (2020). He has also collaborated with his friend Cle Shaheed Sloan who has appeared in four of his films.', 'https://image.tmdb.org/t/p/w500/7JmWK2wg2StEc9eYjY96s7OJgb7.jpg'),
(131532, 'J.J. Perry', '1967-10-25 00:00:00', '', 'J.J. Perry (born October 25, 1967) is a stunt performer, martial artist, film director, film producer, stunt coordinator and film actor who has made several uncredited appearances on 24.', 'https://image.tmdb.org/t/p/w500/57assDPZceZ4x7YWrkPE5FqVn1f.jpg'),
(1565301, 'Thomas Astruc', '1975-01-18 00:00:00', '0', 'Thomas Astruc (born 18 January, 1975) is a French animator, director, writer and storyboard artist. He is best known as creator, writer and co-director for the animated television series \"Miraculous: Tales of Ladybug & Cat Noir\".', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `seasonId` int(11) NOT NULL,
  `episode_number` int(11) NOT NULL,
  `title` text NOT NULL,
  `synopsis` text NOT NULL,
  `release_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `poster_url` text NOT NULL,
  `trailer_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Drama'),
(5, 'Horror'),
(6, 'Romance'),
(7, 'Sci-Fi'),
(8, 'Fantasy'),
(9, 'Thriller'),
(10, 'Mystery'),
(11, 'Documentary'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Crime'),
(15, 'Musical'),
(16, 'War'),
(17, 'Western'),
(18, 'Historical'),
(19, 'Biographical'),
(20, 'Sports'),
(21, 'Superhero'),
(22, 'Noir'),
(23, 'Martial Arts'),
(24, 'Disaster'),
(25, 'Psychological');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `rating` double DEFAULT NULL,
  `directorId` int(11) NOT NULL,
  `approval_status` tinyint(4) NOT NULL,
  `countryId` int(11) DEFAULT NULL,
  `release_date` date NOT NULL DEFAULT curdate(),
  `synopsis` text NOT NULL,
  `poster_url` text NOT NULL,
  `trailer_url` text NOT NULL,
  `is_popular` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `rating`, `directorId`, `approval_status`, `countryId`, `release_date`, `synopsis`, `poster_url`, `trailer_url`, `is_popular`) VALUES
(4011, 'Beetlejuice', 7.38, 510, 1, 179, '1988-03-29', 'A newly dead New England couple seeks help from a deranged demon exorcist to scare an affluent New York family out of their home.', 'https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg', 'https://www.youtube.com/watch?v=po1HJbmow0g', 1),
(179387, 'Heavenly Touch', 6, 225421, 1, 56, '2009-05-11', 'Jonard is having trouble making ends meet. His mother is suffering from depression, and he and his sister are forced to quit school in order to take care of her. One day, Jonard meets up his friend Rodel, and Rodel introduces him to the world of massage parlors. Rodel teaches him massage, and brings him to Heavenly Touch, a syndicate-run massage parlor that mostly caters to homosexuals.', 'https://image.tmdb.org/t/p/w500/ory8WuAqznTE7lfopTSymHpop2t.jpg', 'None', 1),
(228150, 'Fury', 7.538, 19769, 1, 179, '2014-10-14', 'In the last months of World War II, as the Allies make their final push in the European theatre, a battle-hardened U.S. Army sergeant named \'Wardaddy\' commands a Sherman tank called \'Fury\' and its five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.', 'https://image.tmdb.org/t/p/w500/pfte7wdMobMF4CVHuOxyu6oqeeA.jpg', 'https://www.youtube.com/watch?v=09w9MTtZDEM', 1),
(365177, 'Borderlands', 5.9, 16847, 1, 80, '2024-08-06', 'Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.', 'https://image.tmdb.org/t/p/w500/865DntZzOdX6rLMd405R0nFkLmL.jpg', 'https://www.youtube.com/watch?v=Icnysn53neU', 1),
(420634, 'Terrifier', 6.4, 933176, 1, 179, '2018-01-24', 'A maniacal clown named Art terrorizes three young women on Halloween night and everyone else who stands in his way.', 'https://image.tmdb.org/t/p/w500/wmVLWbiMmlA3Savm7jjvbExwGC3.jpg', 'https://www.youtube.com/watch?v=fN5j1MtGO2Q', 1),
(475557, 'Joker', 8.152, 57130, 1, 104, '2019-09-30', 'During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.', 'https://image.tmdb.org/t/p/w500/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg', 'https://www.youtube.com/watch?v=-RFFRxcoKfA', 1),
(507241, 'The Killer\'s Game', 6.125, 131532, 1, 179, '2024-09-11', 'When top hitman Joe Flood is diagnosed with a terminal illness, he decides to take matters into his own hands � by taking a hit out on himself. But when the very hitmen he hired also target his ex-girlfriend, he must fend off an army of assassin colleagues and win back the love of his life before it\'s too late.', 'https://image.tmdb.org/t/p/w500/4bKlTeOUr5AKrLky8mwWvlQqyVd.jpg', 'https://www.youtube.com/watch?v=reQVL41DRmM', 1),
(519182, 'Despicable Me 4', 7.1, 124748, 1, 179, '2024-06-19', 'Gru and Lucy and their girls�Margo, Edith and Agnes�welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.', 'https://image.tmdb.org/t/p/w500/wWba3TaojhK7NdycRhoQpsG0FaH.jpg', 'https://www.youtube.com/watch?v=LtNYaH61dXY', 1),
(533535, 'Deadpool & Wolverine', 7.723, 17825, 1, 179, '2024-07-23', 'A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.', 'https://image.tmdb.org/t/p/w500/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg', 'https://www.youtube.com/watch?v=Idh8n5XuYIA', 1),
(573435, 'Bad Boys: Ride or Die', 7.524, 1399841, 1, 179, '2024-06-04', 'After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.', 'https://image.tmdb.org/t/p/w500/oGythE98MYleE6mZlGs5oBGkux1.jpg', 'https://www.youtube.com/watch?v=uWLNl_KQCAU', 1),
(592695, 'Pleasure', 6.2, 1202063, 1, 32, '2021-10-07', '19 year old Linn�a leaves her small town in Sweden and heads for Los Angeles with the aim of becoming the world\'s next big porn star, but the road to her goal turns out to be bumpier than she imagined.', 'https://image.tmdb.org/t/p/w500/7Z2K08J0WantJHNa0vLTOmii41l.jpg', 'https://www.youtube.com/watch?v=knFkVoNPRHE', 1),
(639720, 'IF', 7.292, 17697, 1, 179, '2024-05-07', 'A young girl who goes through a difficult experience begins to see everyone\'s imaginary friends who have been left behind as their real-life friends have grown up.', 'https://image.tmdb.org/t/p/w500/xbKFv4KF3sVYuWKllLlwWDmuZP7.jpg', 'https://www.youtube.com/watch?v=TP47e3-nmw8', 1),
(663712, 'Terrifier 2', 6.8, 933176, 1, 179, '2022-10-05', 'A year after the Miles County massacre, Art the Clown is resurrected by a sinister entity. Art returns home, where he must hunt down and destroy teenage Sienna and her younger brother Jonathan on Halloween. As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art\'s evil intent.', 'https://image.tmdb.org/t/p/w500/8gLhu8UFPZfH2Hv11JhTZkb9CVl.jpg', 'https://www.youtube.com/watch?v=x5DhuDSArTI', 1),
(698687, 'Transformers One', 7.412, 84496, 1, 179, '2024-09-10', 'The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.', 'https://image.tmdb.org/t/p/w500/qbkAqmmEIZfrCO8ZQAuIuVMlWoV.jpg', 'https://www.youtube.com/watch?v=jaVcDaozGgc', 1),
(718014, 'Hold Your Breath', 6.068, 1860656, 1, 179, '2024-09-11', 'In 1930s Oklahoma amid the region\'s horrific dust storms, a woman is convinced that a sinister presence is threatening her family.', 'https://image.tmdb.org/t/p/w500/cRTDtSjv2RMCokS6naed4RBsuQT.jpg', 'https://www.youtube.com/watch?v=JNdz0EhDbbc', 1),
(718821, 'Twisters', 6.976, 931952, 1, 179, '2024-07-09', 'As storm season intensifies, the paths of former storm chaser Kate Carter and reckless social-media superstar Tyler Owens collide when terrifying phenomena never seen before are unleashed. The pair and their competing teams find themselves squarely in the paths of multiple storm systems converging over central Oklahoma in the fight of their lives.', 'https://image.tmdb.org/t/p/w500/pjnD08FlMAIXsfOLKQbvmO0f0MD.jpg', 'https://www.youtube.com/watch?v=AZbEi95SuMg', 1),
(726139, 'Project Silence', 7.068, 1135344, 1, 9, '2024-07-10', 'Due to sudden deteriorating weather conditions, visibility on the Airport Bridge is severely impaired, leaving people stranded and at risk of the bridge collapsing due to a series of chain collisions and explosions. Amidst the chaos, the canine subjects \"Echo\" from the military experiment \"Project Silence,\" who were being transported in secret, break free, and all human survivors become targets of relentless attacks.', 'https://image.tmdb.org/t/p/w500/fttoFfKikQMwIoV3UVvlCvBhbUw.jpg', 'https://www.youtube.com/watch?v=vUBUXeT_YLI', 1),
(748230, 'Salem\'s Lot', 6.34, 1338249, 1, 179, '2024-10-02', 'Author Ben Mears returns to his childhood home of Jerusalem\'s Lot only to discover his hometown is being preyed upon by a bloodthirsty vampire.', 'https://image.tmdb.org/t/p/w500/j7ncdqBVufydVzVtxmXu8Ago4ox.jpg', 'https://www.youtube.com/watch?v=QtVzKkv03ic', 1),
(748783, 'The Garfield Movie', 7.11, 61411, 1, 160, '2024-04-29', 'Garfield, the world-famous, Monday-hating, lasagna-loving indoor cat, is about to have a wild outdoor adventure! After an unexpected reunion with his long-lost father � scruffy street cat Vic � Garfield and his canine friend Odie are forced from their perfectly pampered life into joining Vic in a hilarious, high-stakes heist.', 'https://image.tmdb.org/t/p/w500/p6AbOJvMQhBmffd0PIv0u8ghWeY.jpg', 'https://www.youtube.com/watch?v=yk2Ej59DnrE', 1),
(823219, 'Flow', 8.917, 1328012, 1, 179, '2024-08-29', 'The world seems to be coming to an end, teeming with the vestiges of a human presence. Cat is a solitary animal, but as its home is devastated by a great flood, he finds refuge on a boat populated by various species, and will have to team up with them despite their differences. In the lonesome boat sailing through mystical overflowed landscapes, they navigate the challenges and dangers of adapting to this new world.', 'https://image.tmdb.org/t/p/w500/dzDMewC0Hwv01SROiWgKOi4iOc1.jpg', 'https://www.youtube.com/watch?v=ZgZccxuj2RY', 1),
(840705, 'Blink Twice', 6.81, 37153, 1, 179, '2024-08-20', 'When tech billionaire Slater King meets cocktail waitress Frida at his fundraising gala, he invites her to join him and his friends on a dream vacation on his private island. But despite the epic setting, beautiful people, ever-flowing champagne, and late-night dance parties, Frida can sense that there�s something sinister hiding beneath the island�s lush fa�ade.', 'https://image.tmdb.org/t/p/w500/lZGOK0I2DJSRlEPNOAFTSNxSjDD.jpg', 'https://www.youtube.com/watch?v=jmCCQ80iAf8', 1),
(877817, 'Wolfs', 6.6, 1293994, 1, 179, '2024-09-19', 'Hired to cover up a high-profile crime, a fixer soon finds his night spiralling out of control when he\'s forced to work with an unexpected counterpart.', 'https://image.tmdb.org/t/p/w500/vOX1Zng472PC2KnS0B9nRfM8aaZ.jpg', 'https://www.youtube.com/watch?v=5RSUcuGIiI0', 1),
(889737, 'Joker: Folie � Deux', 5.784, 57130, 1, 179, '2024-09-30', 'While struggling with his dual identity, Arthur Fleck not only stumbles upon true love, but also finds the music that\'s always been inside him.', 'https://image.tmdb.org/t/p/w500/if8QiqCI7WAGImKcJCfzp6VTyKA.jpg', 'https://www.youtube.com/watch?v=fiqqAI0e4Nc', 1),
(912649, 'Venom: The Last Dance', 0, 940376, 1, 179, '2024-10-22', 'Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie\'s last dance.', 'https://image.tmdb.org/t/p/w500/8mRrl8lc7TrbdA1PFzUhQ0nFZ7R.jpg', 'https://www.youtube.com/watch?v=FKBN1qAzW3s', 1),
(917496, 'Beetlejuice Beetlejuice', 7.212, 510, 1, 179, '2024-09-03', 'After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Betelgeuse, Lydia\'s life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.', 'https://image.tmdb.org/t/p/w500/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg', 'https://www.youtube.com/watch?v=As-vKW4ZboU', 1),
(933260, 'The Substance', 7.3, 1607016, 1, 32, '2024-09-06', 'A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.', 'https://image.tmdb.org/t/p/w500/lqoMzCcZYEFK729d6qzt349fB4o.jpg', 'https://www.youtube.com/watch?v=LNlrGhBpYjc', 1),
(945961, 'Alien: Romulus', 7.1, 932248, 1, 179, '2024-08-12', 'While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.', 'https://image.tmdb.org/t/p/w500/b33nnKl1GSFbao4l3fZDDqsMx0F.jpg', 'https://www.youtube.com/watch?v=x0XDEhP4MQs', 1),
(949484, 'Hounds of War', 6.5, 78108, 1, 179, '2024-08-28', 'After a mission goes wrong, only one of a group of mercenaries is left alive to avenge his fallen brothers.', 'https://image.tmdb.org/t/p/w500/lRBT73EWsiQPuqK3YS3BnBW0Zwi.jpg', 'https://www.youtube.com/watch?v=t-WTFeTIjAA', 1),
(957452, 'The Crow', 5.7, 228134, 1, 178, '2024-08-20', 'Soulmates Eric and Shelly are brutally murdered when the demons of her dark past catch up with them. Given the chance to save his true love by sacrificing himself, Eric sets out to seek merciless revenge on their killers, traversing the worlds of the living and the dead to put the wrong things right.', 'https://image.tmdb.org/t/p/w500/58QT4cPJ2u2TqWZkterDq9q4yxQ.jpg', 'https://www.youtube.com/watch?v=4CLE3pWAAr8', 1),
(974262, 'Descendants: The Rise of Red', 7, 586110, 1, 179, '2024-07-10', 'After the Queen of Hearts incites a coup on Auradon, her rebellious daughter Red and Cinderella\'s perfectionist daughter Chloe join forces and travel back in time to try to undo the traumatic event that set Red\'s mother down her villainous path.', 'https://image.tmdb.org/t/p/w500/8fYluTtB3b3HKO7KQa5tzrvGaps.jpg', 'https://www.youtube.com/watch?v=zx0uffR2gSA', 1),
(1022789, 'Inside Out 2', 7.631, 182001, 1, 179, '2024-06-10', 'Teenager Riley\'s mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who�ve long been running a successful operation by all accounts, aren�t sure how to feel when Anxiety shows up. And it looks like she�s not alone.', 'https://image.tmdb.org/t/p/w500/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg', 'https://www.youtube.com/watch?v=u69y5Ie519M', 1),
(1024127, 'King of Killers', 6.52, 3952, 1, 104, '2023-08-31', 'Garan is a part of a group of international hitmen who are contracted to take out the most dangerous killer in the world, only to find out that they\'re the ones being hunted.', 'https://image.tmdb.org/t/p/w500/x5AreOAgkTBzUSL58o4jsYortw2.jpg', 'https://www.youtube.com/watch?v=_JXRDQw7EMw', 1),
(1034541, 'Terrifier 3', 7.1, 933176, 1, 179, '2024-10-08', 'Five years after surviving Art the Clown\'s Halloween massacre, Sienna and Jonathan are still struggling to rebuild their shattered lives. As the holiday season approaches, they try to embrace the Christmas spirit and leave the horrors of the past behind. But just when they think they\'re safe, Art returns, determined to turn their holiday cheer into a new nightmare. The festive season quickly unravels as Art unleashes his twisted brand of terror, proving that no holiday is safe.', 'https://image.tmdb.org/t/p/w500/7NDHoebflLwL1CcgLJ9wZbbDrmV.jpg', 'https://www.youtube.com/watch?v=0EDDtgWnSeY', 1),
(1052280, 'It\'s What\'s Inside', 6.3, 1331284, 1, 179, '2024-01-18', 'A pre-wedding reunion descends into a psychological nightmare for a group of college friends when a surprise guest arrives with a mysterious suitcase.', 'https://image.tmdb.org/t/p/w500/32Lfs4nbLehgbXI8VTeYg5jgIQt.jpg', 'https://www.youtube.com/watch?v=RJBNi0CjX5I', 1),
(1079091, 'It Ends with Us', 7.083, 88675, 1, 179, '2024-08-06', 'When a woman\'s first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.', 'https://image.tmdb.org/t/p/w500/AjV6jFJ2YFIluYo4GQf13AA1tqu.jpg', 'https://www.youtube.com/watch?v=r-GQvSc5ZGw', 1),
(1087822, 'Hellboy: The Crooked Man', 4.8, 20192, 1, 154, '2024-08-28', 'Hellboy and a rookie BPRD agent get stranded in 1950s rural Appalachia. There, they discover a small community haunted by witches, led by a local devil with a troubling connection to Hellboy\'s past: the Crooked Man.', 'https://image.tmdb.org/t/p/w500/iz2GabtToVB05gLTVSH7ZvFtsMM.jpg', 'https://www.youtube.com/watch?v=nk6vellYsfA', 1),
(1114513, 'Speak No Evil', 7.3, 63306, 1, 179, '2024-09-10', 'When an American family is invited to spend the weekend at the idyllic country estate of a charming British family they befriended on vacation, what begins as a dream holiday soon warps into a snarled psychological nightmare.', 'https://image.tmdb.org/t/p/w500/fDtkrO2OAF8LKQTdzYmu1Y7lCLB.jpg', 'https://www.youtube.com/watch?v=iSIuxrjTMk0', 1),
(1125510, 'The Platform 2', 5.715, 2374023, 1, 179, '2024-09-26', 'After a mysterious leader imposes his law in a brutal system of vertical cells, a new arrival battles against a dubious food distribution method.', 'https://image.tmdb.org/t/p/w500/izuzUb0sDokqp9o8utVfsrSJuy5.jpg', 'https://www.youtube.com/watch?v=UKFMYWNatQM', 1),
(1139095, 'Little Bites', 6.6, 1203529, 1, 179, '2024-10-03', 'Mindy, a young widow and mother who tries to protect her daughter Alice from a flesh eating monster named Agyar. Mindy has been secretly sacrificing her own life by allowing the creature to feast on her body as she keeps Alice hidden away at her grandmother�s house.', 'https://image.tmdb.org/t/p/w500/uY65kuHRKRnAPKGapiPXAl7nAs7.jpg', 'https://www.youtube.com/watch?v=90P66eJRh8s', 1),
(1144962, 'Transmorphers: Mech Beasts', 5.2, 1768215, 1, 179, '2023-06-08', '20 years after the events of Transmorphers, a newer, more advanced species of alien robot descends on a rebuilt Earth, threatening once again to destroy the planet.', 'https://image.tmdb.org/t/p/w500/oqhaffnQqSzdLrYAQA5W4IdAoCX.jpg', 'https://www.youtube.com/watch?v=E2WViGjaOwo', 1),
(1147710, 'Hijack 1971', 5.857, 3084810, 1, 9, '2024-06-20', 'Pilots Tae-in and Gyu-sik are set to fly to Gimpo. Under the guidance of flight attendant Ok-soon, passengers are busy boarding. However, shortly after takeoff, a homemade bomb explodes, turning the cabin into chaos.', 'https://image.tmdb.org/t/p/w500/68jNkFi61MQjrJEqj2up5wZ4w5R.jpg', 'https://www.youtube.com/watch?v=UxyutkXQnvA', 1),
(1184918, 'The Wild Robot', 8.117, 66193, 1, 179, '2024-09-11', 'After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island\'s animals and cares for an orphaned baby goose.', 'https://image.tmdb.org/t/p/w500/wTnV3PCVW5O92JMrFvvrRcV39RU.jpg', 'https://www.youtube.com/watch?v=VUCNBAmse04', 1),
(1186947, 'Outlaw', 5.994, 1327760, 1, 78, '2024-06-19', 'At the age of nine, Rebeca is sold by her grandmother to the bookseller who ran Rocinha. Disputed by bicheiros and drug dealers, the community is going through changes in power. Rebeca becomes the wife of the chief drug dealer and, with the death of her partner, his successor. The electrifying trajectory of crime, violence, drugs and love of a female drug kingpin in Rocinha, Rio de Janeiro in the 1980s.', 'https://image.tmdb.org/t/p/w500/rGS8SzheANVQicNba0GCE6w1XHb.jpg', 'https://www.youtube.com/watch?v=OH0EOTBWAF0', 1),
(1190868, 'V/H/S/Beyond', 6.9, 1113259, 1, 179, '2024-09-19', 'The infinite playground of forbidden worlds and dangerous lifeforms offered by the sci-fi horror genre will lead to the biggest, maddest, bloodiest V/H/S ever.', 'https://image.tmdb.org/t/p/w500/wXaf6VGNHIGU7qivapGOF7o4o4N.jpg', 'https://www.youtube.com/watch?v=h1zNXVG6zTw', 1),
(1210794, 'Trouble', 7.2, 2172186, 1, 36, '2024-10-01', 'Wrongfully convicted of murder, a clumsy electronics salesman faces police corruption and criminal conspiracies in an attempt to prove his innocence.', 'https://image.tmdb.org/t/p/w500/ildbg7ho14EHbt1fZWAkgqIyPqy.jpg', 'https://www.youtube.com/watch?v=hdbBfoLqhc0', 1),
(1215162, 'Kill \'em All 2', 7, 1040955, 1, 156, '2024-09-23', 'Phillip and Suzanne are retired from the spy game, living peacefully off the grid. That\'s until their whereabouts are discovered by Vlad, the vengeful brother of their target from the first film.', 'https://image.tmdb.org/t/p/w500/hgA5hN3NjNNSTXYOmAI6KNKOzbp.jpg', 'https://www.youtube.com/watch?v=LrZ9L2K23cw', 1),
(1329336, 'The Bad Guys: Haunted Heist', 7.3, 1479536, 1, 179, '2024-10-01', 'The crafty Bad Guys crew embarks on a high-stakes Halloween heist to swipe a priceless amulet from a spooky mansion. What could go wrong?', 'https://image.tmdb.org/t/p/w500/oEJC05CqPugMxC4rFu9r6r6vg6m.jpg', 'https://www.youtube.com/watch?v=m8TFJ6GeWLE', 1),
(1337309, 'Bangkok Breaking: Heaven and Hell', 6.6, 80733, 1, 89, '2024-09-25', 'When a dedicated rescue worker inadvertently gets caught up in the kidnapping plot of a mogul\'s tween daughter, he must save her from the clutches of rival gangs hunting them down with unpredictable dangers around every corner.', 'https://image.tmdb.org/t/p/w500/6VeDn4oIeUK4XwjWGWMb6qvMImQ.jpg', 'https://www.youtube.com/watch?v=SrswRTLrrOw', 1),
(1358752, 'Skinford 2: The Curse', 2, 1772511, 1, 154, '2024-05-19', '', 'https://image.tmdb.org/t/p/w500/auWtuSMLyiViVefPsj9JZA84n9I.jpg', 'None', 1);

-- --------------------------------------------------------

--
-- Table structure for table `moviereview`
--

CREATE TABLE `moviereview` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `rating` float NOT NULL,
  `movieId` int(11) NOT NULL,
  `userId` int(20) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL,
  `status` enum('Approved','Unapproved') NOT NULL DEFAULT 'Unapproved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moviereview`
--

INSERT INTO `moviereview` (`id`, `content`, `rating`, `movieId`, `userId`, `createdAt`, `status`) VALUES
(22, 'Great visuals, but the plot was a bit slow.', 7, 533535, 5, '2024-11-04 14:31:53', 'Approved'),
(36, 'my nephew likes it', 8, 1329336, 5, '2024-11-07 15:59:00', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actors`
--

CREATE TABLE `movie_actors` (
  `id` int(11) NOT NULL,
  `movieId` int(11) DEFAULT NULL,
  `actorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_actors`
--

INSERT INTO `movie_actors` (`id`, `movieId`, `actorId`) VALUES
(0, 533535, 10859),
(0, 533535, 6968),
(0, 533535, 2324569),
(0, 533535, 15576),
(0, 533535, 1464650),
(0, 917496, 2232),
(0, 917496, 1920),
(0, 917496, 11514),
(0, 917496, 974169),
(0, 917496, 15009),
(0, 1125510, 2560224),
(0, 1125510, 1131415),
(0, 1125510, 3300),
(0, 1125510, 59129),
(0, 1125510, 31422),
(0, 519182, 4495),
(0, 519182, 41091),
(0, 519182, 23659),
(0, 519182, 63522),
(0, 519182, 17743),
(0, 933260, 3416),
(0, 933260, 1392137),
(0, 933260, 6065),
(0, 933260, 2313436),
(0, 933260, 1508131),
(0, 1184918, 1267329),
(0, 1184918, 1253360),
(0, 1184918, 1538851),
(0, 1184918, 2440),
(0, 1184918, 1381186),
(0, 1034541, 1882502),
(0, 1034541, 1880016),
(0, 1034541, 3743767),
(0, 1034541, 2787720),
(0, 1034541, 1676771),
(0, 1022789, 56322),
(0, 1022789, 1903874),
(0, 1022789, 3020876),
(0, 1022789, 51998),
(0, 1022789, 25147),
(0, 726139, 115290),
(0, 726139, 150125),
(0, 726139, 550683),
(0, 726139, 240948),
(0, 726139, 1351055),
(0, 957452, 137905),
(0, 957452, 1503200),
(0, 957452, 6413),
(0, 957452, 212815),
(0, 957452, 1674734),
(0, 1144962, 74036),
(0, 1144962, 1849379),
(0, 1144962, 1229670),
(0, 1144962, 2599776),
(0, 1144962, 4133255),
(0, 1329336, 972294),
(0, 1329336, 3320600),
(0, 1329336, 3700657),
(0, 1329336, 1217648),
(0, 1329336, 1213391),
(0, 1114513, 5530),
(0, 1114513, 1110405),
(0, 1114513, 59233),
(0, 1114513, 1323109),
(0, 1114513, 2556026),
(0, 889737, 73421),
(0, 889737, 237405),
(0, 889737, 2039),
(0, 889737, 2229),
(0, 889737, 1545693),
(0, 1215162, 15111),
(0, 1215162, 95505),
(0, 1215162, 1504796),
(0, 1215162, 53),
(0, 1215162, 3465747),
(0, 877817, 1461),
(0, 877817, 287),
(0, 877817, 148992),
(0, 877817, 39388),
(0, 877817, 428440),
(0, 573435, 2888),
(0, 573435, 78029),
(0, 573435, 67599),
(0, 573435, 23498),
(0, 573435, 544442),
(0, 1337309, 1259384),
(0, 1337309, 3875985),
(0, 1337309, 1270506),
(0, 1337309, 1877887),
(0, 1337309, 4466879),
(0, 1079091, 59175),
(0, 1079091, 88675),
(0, 1079091, 1855143),
(0, 1079091, 213001),
(0, 1079091, 552252),
(0, 420634, 1880016),
(0, 420634, 1303873),
(0, 420634, 1676771),
(0, 420634, 1190554),
(0, 420634, 1526694),
(0, 592695, 2280178),
(0, 592695, 1908347),
(0, 592695, 139422),
(0, 592695, 1903886),
(0, 592695, 1202732),
(0, 698687, 74568),
(0, 698687, 226366),
(0, 698687, 1245),
(0, 698687, 298410),
(0, 698687, 884),
(0, 663712, 1880016),
(0, 663712, 1882502),
(0, 663712, 2787720),
(0, 663712, 3383606),
(0, 663712, 3790695),
(0, 1210794, 986805),
(0, 1210794, 1421388),
(0, 1210794, 2126383),
(0, 1210794, 132245),
(0, 1210794, 74713),
(0, 179387, 1182545),
(0, 179387, 1182546),
(0, 179387, 1182547),
(0, 179387, 1052894),
(0, 179387, 559357),
(0, 748230, 1700685),
(0, 748230, 1376883),
(0, 748230, 2547617),
(0, 748230, 1981),
(0, 748230, 121718),
(0, 475557, 73421),
(0, 475557, 380),
(0, 475557, 1545693),
(0, 475557, 4432),
(0, 475557, 16841),
(0, 1147710, 75913),
(0, 1147710, 1207629),
(0, 1147710, 1020859),
(0, 1147710, 1466233),
(0, 1147710, 3003147),
(0, 1087822, 1292258),
(0, 1087822, 1385813),
(0, 1087822, 2168270),
(0, 1087822, 1361520),
(0, 1087822, 1490856),
(0, 974262, 2309874),
(0, 974262, 2630461),
(0, 974262, 1675772),
(0, 974262, 3797199),
(0, 974262, 1980484),
(0, 945961, 1683343),
(0, 945961, 2761308),
(0, 945961, 2164506),
(0, 945961, 1428070),
(0, 945961, 2304140),
(0, 949484, 81685),
(0, 949484, 418),
(0, 949484, 25702),
(0, 949484, 1229419),
(0, 949484, 1457026),
(0, 718014, 34490),
(0, 718014, 1493969),
(0, 718014, 3910448),
(0, 718014, 120831),
(0, 718014, 21042),
(0, 840705, 1537686),
(0, 840705, 38673),
(0, 840705, 61178),
(0, 840705, 2224),
(0, 840705, 35548),
(0, 639720, 1709047),
(0, 639720, 10859),
(0, 639720, 17697),
(0, 639720, 10981),
(0, 639720, 4495),
(0, 1052280, 1695070),
(0, 1052280, 2023667),
(0, 1052280, 2249664),
(0, 1052280, 3051389),
(0, 1052280, 1129464),
(0, 365177, 112),
(0, 365177, 55638),
(0, 365177, 25616),
(0, 365177, 8944),
(0, 365177, 1767250),
(0, 1024127, 1427888),
(0, 1024127, 81685),
(0, 1024127, 140114),
(0, 1024127, 74750),
(0, 1024127, 979807),
(0, 718821, 2230991),
(0, 718821, 83271),
(0, 718821, 1560244),
(0, 718821, 1602972),
(0, 718821, 16307),
(0, 912649, 2524),
(0, 912649, 5294),
(0, 912649, 36594),
(0, 912649, 1115),
(0, 912649, 2141479),
(0, 748783, 73457),
(0, 748783, 2231),
(0, 748783, 1278487),
(0, 748783, 10182),
(0, 748783, 3292),
(0, 4011, 7447),
(0, 4011, 16935),
(0, 4011, 1920),
(0, 4011, 11514),
(0, 4011, 4004),
(0, 1190868, 4914497),
(0, 1190868, 1267383),
(0, 1190868, 1280421),
(0, 1190868, 118899),
(0, 1190868, 1852461),
(0, 1139095, 2829463),
(0, 1139095, 117190),
(0, 1139095, 27995),
(0, 1139095, 533717),
(0, 1139095, 5141),
(0, 1186947, 2507565),
(0, 1186947, 4303770),
(0, 1186947, 52586),
(0, 1186947, 3054114),
(0, 1186947, 4694034),
(0, 228150, 287),
(0, 228150, 10959),
(0, 228150, 33235),
(0, 228150, 454),
(0, 228150, 19498),
(0, 507241, 543530),
(0, 507241, 568657),
(0, 507241, 53256),
(0, 507241, 139820),
(0, 507241, 2282);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movieId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`movieId`, `genreId`) VALUES
(4011, 3),
(4011, 5),
(4011, 8),
(179387, 4),
(228150, 1),
(228150, 4),
(228150, 16),
(365177, 1),
(365177, 2),
(365177, 7),
(420634, 5),
(420634, 9),
(475557, 4),
(475557, 9),
(475557, 14),
(507241, 1),
(507241, 9),
(519182, 3),
(519182, 12),
(519182, 13),
(533535, 1),
(533535, 2),
(533535, 3),
(573435, 1),
(573435, 14),
(592695, 4),
(592695, 19),
(639720, 8),
(639720, 13),
(663712, 5),
(663712, 9),
(698687, 1),
(698687, 7),
(718014, 4),
(718014, 9),
(718821, 1),
(718821, 24),
(726139, 1),
(726139, 7),
(726139, 9),
(748230, 5),
(748230, 10),
(748783, 3),
(748783, 12),
(748783, 13),
(823219, 2),
(823219, 8),
(823219, 13),
(840705, 9),
(840705, 10),
(877817, 9),
(877817, 14),
(889737, 4),
(889737, 14),
(889737, 15),
(912649, 1),
(912649, 7),
(912649, 9),
(917496, 3),
(917496, 5),
(917496, 8),
(933260, 5),
(933260, 7),
(933260, 9),
(945961, 5),
(945961, 7),
(949484, 1),
(949484, 9),
(957452, 1),
(957452, 8),
(957452, 9),
(974262, 2),
(974262, 8),
(974262, 13),
(1022789, 2),
(1022789, 12),
(1022789, 13),
(1024127, 1),
(1024127, 9),
(1034541, 5),
(1034541, 9),
(1052280, 9),
(1052280, 25),
(1079091, 4),
(1079091, 6),
(1087822, 2),
(1087822, 5),
(1114513, 5),
(1114513, 9),
(1125510, 5),
(1125510, 7),
(1139095, 5),
(1139095, 9),
(1144962, 1),
(1144962, 7),
(1147710, 1),
(1147710, 9),
(1184918, 2),
(1184918, 12),
(1184918, 13),
(1186947, 4),
(1186947, 14),
(1190868, 5),
(1190868, 7),
(1190868, 9),
(1210794, 4),
(1210794, 9),
(1215162, 1),
(1215162, 14),
(1329336, 12),
(1329336, 13),
(1337309, 1),
(1337309, 9),
(1358752, 5),
(1358752, 9);

-- --------------------------------------------------------

--
-- Table structure for table `movie_videos`
--

CREATE TABLE `movie_videos` (
  `id` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `title` varchar(200) NOT NULL,
  `movieId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_videos`
--

INSERT INTO `movie_videos` (`id`, `url`, `title`, `movieId`) VALUES
(0, 'https://www.youtube.com/embed/po1HJbmow0g', 'Beetlejuice', 4011),
(0, '', 'Heavenly Touch', 179387),
(0, 'https://www.youtube.com/embed/09w9MTtZDEM', 'Fury', 228150),
(0, 'https://www.youtube.com/embed/Icnysn53neU', 'Borderlands', 365177),
(0, 'https://www.youtube.com/embed/fN5j1MtGO2Q', 'Terrifier', 420634),
(0, 'https://www.youtube.com/embed/-RFFRxcoKfA', 'Joker', 475557),
(0, 'https://www.youtube.com/embed/reQVL41DRmM', 'The Killer\'s Game', 507241),
(0, 'https://www.youtube.com/embed/LtNYaH61dXY', 'Despicable Me 4', 519182),
(0, 'https://www.youtube.com/embed/Idh8n5XuYIA', 'Deadpool & Wolverine', 533535),
(0, 'https://www.youtube.com/embed/uWLNl_KQCAU', 'Bad Boys: Ride or Die', 573435),
(0, 'https://www.youtube.com/embed/knFkVoNPRHE', 'Pleasure', 592695),
(0, 'https://www.youtube.com/embed/TP47e3-nmw8', 'IF', 639720),
(0, 'https://www.youtube.com/embed/x5DhuDSArTI', 'Terrifier 2', 663712),
(0, 'https://www.youtube.com/embed/jaVcDaozGgc', 'Transformers One', 698687),
(0, 'https://www.youtube.com/embed/JNdz0EhDbbc', 'Hold Your Breath', 718014),
(0, 'https://www.youtube.com/embed/AZbEi95SuMg', 'Twisters', 718821),
(0, 'https://www.youtube.com/embed/vUBUXeT_YLI', 'Project Silence', 726139),
(0, 'https://www.youtube.com/embed/QtVzKkv03ic', 'Salem\'s Lot', 748230),
(0, 'https://www.youtube.com/embed/yk2Ej59DnrE', 'The Garfield Movie', 748783),
(0, 'https://www.youtube.com/embed/ZgZccxuj2RY', 'Flow', 823219),
(0, 'https://www.youtube.com/embed/jmCCQ80iAf8', 'Blink Twice', 840705),
(0, 'https://www.youtube.com/embed/5RSUcuGIiI0', 'Wolfs', 877817),
(0, 'https://www.youtube.com/embed/fiqqAI0e4Nc', 'Joker: Folie � Deux', 889737),
(0, 'https://www.youtube.com/embed/FKBN1qAzW3s', 'Venom: The Last Dance', 912649),
(0, 'https://www.youtube.com/embed/As-vKW4ZboU', 'Beetlejuice Beetlejuice', 917496),
(0, 'https://www.youtube.com/embed/LNlrGhBpYjc', 'The Substance', 933260),
(0, 'https://www.youtube.com/embed/x0XDEhP4MQs', 'Alien: Romulus', 945961),
(0, 'https://www.youtube.com/embed/t-WTFeTIjAA', 'Hounds of War', 949484),
(0, 'https://www.youtube.com/embed/4CLE3pWAAr8', 'The Crow', 957452),
(0, 'https://www.youtube.com/embed/zx0uffR2gSA', 'Descendants: The Rise of Red', 974262),
(0, 'https://www.youtube.com/embed/u69y5Ie519M', 'Inside Out 2', 1022789),
(0, 'https://www.youtube.com/embed/_JXRDQw7EMw', 'King of Killers', 1024127),
(0, 'https://www.youtube.com/embed/0EDDtgWnSeY', 'Terrifier 3', 1034541),
(0, 'https://www.youtube.com/embed/RJBNi0CjX5I', 'It\'s What\'s Inside', 1052280),
(0, 'https://www.youtube.com/embed/r-GQvSc5ZGw', 'It Ends with Us', 1079091),
(0, 'https://www.youtube.com/embed/nk6vellYsfA', 'Hellboy: The Crooked Man', 1087822),
(0, 'https://www.youtube.com/embed/iSIuxrjTMk0', 'Speak No Evil', 1114513),
(0, 'https://www.youtube.com/embed/UKFMYWNatQM', 'The Platform 2', 1125510),
(0, 'https://www.youtube.com/embed/90P66eJRh8s', 'Little Bites', 1139095),
(0, 'https://www.youtube.com/embed/E2WViGjaOwo', 'Transmorphers: Mech Beasts', 1144962),
(0, 'https://www.youtube.com/embed/UxyutkXQnvA', 'Hijack 1971', 1147710),
(0, 'https://www.youtube.com/embed/VUCNBAmse04', 'The Wild Robot', 1184918),
(0, 'https://www.youtube.com/embed/OH0EOTBWAF0', 'Outlaw', 1186947),
(0, 'https://www.youtube.com/embed/h1zNXVG6zTw', 'V/H/S/Beyond', 1190868),
(0, 'https://www.youtube.com/embed/hdbBfoLqhc0', 'Trouble', 1210794),
(0, 'https://www.youtube.com/embed/LrZ9L2K23cw', 'Kill \'em All 2', 1215162),
(0, 'https://www.youtube.com/embed/m8TFJ6GeWLE', 'The Bad Guys: Haunted Heist', 1329336),
(0, 'https://www.youtube.com/embed/SrswRTLrrOw', 'Bangkok Breaking: Heaven and Hell', 1337309),
(0, '', 'Skinford 2: The Curse', 1358752);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `avatar_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT 0,
  `verificationToken` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `resetPasswordExpires` datetime DEFAULT NULL,
  `isSuspended` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `role`, `avatar_path`, `created_at`, `isVerified`, `verificationToken`, `resetPasswordToken`, `resetPasswordExpires`, `isSuspended`) VALUES
(1, 'Adinda Fauzia', 'adindafzp', 'adindafauziapus@gmail.com', '$2b$10$7iJgwQuHvU9vdPWQ/ekmEewEDCAfrYEAXgqQJXyz5mD12iweQHrgK', 'admin', NULL, '2024-10-16 20:02:09', 1, NULL, NULL, NULL, 0),
(5, 'Zayn Javad Malik', 'zaynmalik', 'adinda.fauzia.tif422@polban.ac.id', '$2b$10$/t7HFZzvtD4cDmgkvxL5oe8q0VX2uZPiStw6y3wb4osVXXCLdnSZC', 'user', NULL, '2024-11-07 04:58:07', 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_awardactors`
--

CREATE TABLE `_awardactors` (
  `A` int(11) NOT NULL,
  `B` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_awarddirectors`
--

CREATE TABLE `_awarddirectors` (
  `A` int(11) NOT NULL,
  `B` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_movieawards`
--

CREATE TABLE `_movieawards` (
  `A` int(11) NOT NULL,
  `B` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryId` (`countryId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `country_temp`
--
ALTER TABLE `country_temp`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(768)),
  ADD KEY `idx_release_date` (`release_date`),
  ADD KEY `idx_rating` (`rating`),
  ADD KEY `directorId` (`directorId`),
  ADD KEY `countryId` (`countryId`);

--
-- Indexes for table `moviereview`
--
ALTER TABLE `moviereview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movieId` (`movieId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `movie_actors`
--
ALTER TABLE `movie_actors`
  ADD KEY `movieId` (`movieId`),
  ADD KEY `actorId` (`actorId`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`movieId`,`genreId`),
  ADD KEY `fk_genre` (`genreId`);

--
-- Indexes for table `movie_videos`
--
ALTER TABLE `movie_videos`
  ADD KEY `movieId` (`movieId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `email_9` (`email`),
  ADD UNIQUE KEY `email_10` (`email`),
  ADD UNIQUE KEY `email_11` (`email`),
  ADD UNIQUE KEY `email_12` (`email`),
  ADD UNIQUE KEY `email_13` (`email`),
  ADD UNIQUE KEY `email_14` (`email`),
  ADD UNIQUE KEY `email_15` (`email`),
  ADD UNIQUE KEY `email_16` (`email`),
  ADD UNIQUE KEY `email_17` (`email`),
  ADD UNIQUE KEY `email_18` (`email`),
  ADD UNIQUE KEY `email_19` (`email`),
  ADD UNIQUE KEY `email_20` (`email`),
  ADD UNIQUE KEY `email_21` (`email`),
  ADD UNIQUE KEY `email_22` (`email`),
  ADD UNIQUE KEY `email_23` (`email`),
  ADD UNIQUE KEY `email_24` (`email`),
  ADD UNIQUE KEY `email_25` (`email`),
  ADD UNIQUE KEY `email_26` (`email`),
  ADD UNIQUE KEY `email_27` (`email`),
  ADD UNIQUE KEY `email_28` (`email`),
  ADD UNIQUE KEY `email_29` (`email`),
  ADD UNIQUE KEY `email_30` (`email`),
  ADD UNIQUE KEY `email_31` (`email`),
  ADD UNIQUE KEY `email_32` (`email`),
  ADD UNIQUE KEY `email_33` (`email`),
  ADD UNIQUE KEY `email_34` (`email`),
  ADD UNIQUE KEY `email_35` (`email`),
  ADD UNIQUE KEY `email_36` (`email`),
  ADD UNIQUE KEY `email_37` (`email`),
  ADD UNIQUE KEY `email_38` (`email`),
  ADD UNIQUE KEY `email_39` (`email`),
  ADD UNIQUE KEY `email_40` (`email`),
  ADD UNIQUE KEY `email_41` (`email`),
  ADD UNIQUE KEY `email_42` (`email`),
  ADD UNIQUE KEY `email_43` (`email`),
  ADD UNIQUE KEY `email_44` (`email`),
  ADD UNIQUE KEY `email_45` (`email`),
  ADD UNIQUE KEY `email_46` (`email`),
  ADD UNIQUE KEY `email_47` (`email`),
  ADD UNIQUE KEY `email_48` (`email`),
  ADD UNIQUE KEY `email_49` (`email`),
  ADD UNIQUE KEY `email_50` (`email`),
  ADD UNIQUE KEY `email_51` (`email`),
  ADD UNIQUE KEY `email_52` (`email`),
  ADD UNIQUE KEY `email_53` (`email`),
  ADD UNIQUE KEY `email_54` (`email`),
  ADD UNIQUE KEY `email_55` (`email`),
  ADD UNIQUE KEY `email_56` (`email`),
  ADD UNIQUE KEY `email_57` (`email`),
  ADD UNIQUE KEY `email_58` (`email`),
  ADD UNIQUE KEY `email_59` (`email`),
  ADD UNIQUE KEY `email_60` (`email`),
  ADD UNIQUE KEY `email_61` (`email`),
  ADD UNIQUE KEY `email_62` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `countryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `moviereview`
--
ALTER TABLE `moviereview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `award`
--
ALTER TABLE `award`
  ADD CONSTRAINT `award_ibfk_1` FOREIGN KEY (`countryId`) REFERENCES `country` (`countryId`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_27` FOREIGN KEY (`directorId`) REFERENCES `director` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_28` FOREIGN KEY (`countryId`) REFERENCES `country` (`countryId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moviereview`
--
ALTER TABLE `moviereview`
  ADD CONSTRAINT `moviereview_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_10` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_12` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_14` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_16` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_18` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_2` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_20` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_22` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_24` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_26` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_27` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_3` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_4` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_6` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviereview_ibfk_8` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_actors`
--
ALTER TABLE `movie_actors`
  ADD CONSTRAINT `movie_actors_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_11` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_13` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_15` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_17` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_19` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_2` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_20` FOREIGN KEY (`actorId`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_3` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_5` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_7` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_9` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `fk_genre` FOREIGN KEY (`genreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_movie` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_videos`
--
ALTER TABLE `movie_videos`
  ADD CONSTRAINT `movie_videos_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_videos_ibfk_2` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_videos_ibfk_3` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_videos_ibfk_4` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_videos_ibfk_5` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_videos_ibfk_6` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_videos_ibfk_7` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_videos_ibfk_8` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
