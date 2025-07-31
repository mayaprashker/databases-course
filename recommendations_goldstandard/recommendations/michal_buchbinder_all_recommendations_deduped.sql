-- Good recomendations
-- The Lord of the Rings – film trilogy (same series, consecutive parts)
INSERT INTO imdb_ijs.movies_recommendations VALUES (194497, 194502, 10, 'Michal Buchbinder', 'Both movies are part of The Lord of the Rings trilogy and directly continue the quest.', NULL); -- The Fellowship of the Ring -> The Two Towers
INSERT INTO imdb_ijs.movies_recommendations VALUES (194502, 194497, 10, 'Michal Buchbinder', 'Both movies are part of The Lord of the Rings trilogy and directly continue the quest.', NULL); -- The Two Towers -> The Fellowship of the Ring
INSERT INTO imdb_ijs.movies_recommendations VALUES (194502, 194500, 10, 'Michal Buchbinder', 'Both movies are part of The Lord of the Rings trilogy and lead into the finale.', NULL); -- The Two Towers -> The Return of the King
INSERT INTO imdb_ijs.movies_recommendations VALUES (194500, 194502, 10, 'Michal Buchbinder', 'Both movies are part of The Lord of the Rings trilogy and lead into the finale.', NULL); -- The Return of the King -> The Two Towers
INSERT INTO imdb_ijs.movies_recommendations VALUES (194497, 194500, 9,  'Michal Buchbinder', 'Both movies share the same main cast, director, and Middle-earth epic storyline.', NULL); -- The Fellowship of the Ring -> The Return of the King
INSERT INTO imdb_ijs.movies_recommendations VALUES (194500, 194497, 9,  'Michal Buchbinder', 'Both movies share the same main cast, director, and Middle-earth epic storyline.', NULL); -- The Return of the King -> The Fellowship of the Ring

-- The Lord of the Rings – films <-> games (same universe: Middle-earth)
INSERT INTO imdb_ijs.movies_recommendations VALUES (194500, 194496, 8, 'Michal Buchbinder', 'Both titles are set in Middle-earth and revolve around the War of the Ring.', NULL); -- The Return of the King -> The Battle for Middle-Earth
INSERT INTO imdb_ijs.movies_recommendations VALUES (194496, 194500, 8, 'Michal Buchbinder', 'Both titles are set in Middle-earth and revolve around the War of the Ring.', NULL); -- The Battle for Middle-Earth -> The Return of the King
INSERT INTO imdb_ijs.movies_recommendations VALUES (194497, 194501, 8, 'Michal Buchbinder', 'Both titles share characters and lore from Middle-earth and Bilbo’s journey.', NULL); -- The Fellowship of the Ring -> The Third Age
INSERT INTO imdb_ijs.movies_recommendations VALUES (194501, 194497, 8, 'Michal Buchbinder', 'Both titles share characters and lore from Middle-earth and Bilbo’s journey.', NULL); -- The Third Age -> The Fellowship of the Ring
INSERT INTO imdb_ijs.movies_recommendations VALUES (194502, 194504, 8, 'Michal Buchbinder', 'Both titles center on the struggle against Sauron within the same universe.', NULL); -- The Two Towers -> The War of the Ring
INSERT INTO imdb_ijs.movies_recommendations VALUES (194504, 194502, 8, 'Michal Buchbinder', 'Both titles center on the struggle against Sauron within the same universe.', NULL); -- The War of the Ring -> The Two Towers

-- Star Wars – Original Trilogy (same series, consecutive parts)
INSERT INTO imdb_ijs.movies_recommendations VALUES (313459, 313478, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Original Trilogy and continue Luke’s arc.', NULL); -- A New Hope -> The Empire Strikes Back
INSERT INTO imdb_ijs.movies_recommendations VALUES (313478, 313459, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Original Trilogy and continue Luke’s arc.', NULL); -- The Empire Strikes Back -> A New Hope
INSERT INTO imdb_ijs.movies_recommendations VALUES (313478, 313479, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Original Trilogy and lead to the finale.', NULL); -- The Empire Strikes Back -> Return of the Jedi
INSERT INTO imdb_ijs.movies_recommendations VALUES (313479, 313478, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Original Trilogy and lead to the finale.', NULL); -- Return of the Jedi -> The Empire Strikes Back
INSERT INTO imdb_ijs.movies_recommendations VALUES (313459, 313479, 9,  'Michal Buchbinder', 'Both movies share the same main heroes, villains, and the Galactic Civil War arc.', NULL); -- A New Hope -> Return of the Jedi
INSERT INTO imdb_ijs.movies_recommendations VALUES (313479, 313459, 9,  'Michal Buchbinder', 'Both movies share the same main heroes, villains, and the Galactic Civil War arc.', NULL); -- Return of the Jedi -> A New Hope

-- Star Wars – Prequel Trilogy (same series, consecutive parts)
INSERT INTO imdb_ijs.movies_recommendations VALUES (313474, 313476, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Prequel Trilogy and follow Anakin’s rise.', NULL); -- The Phantom Menace -> Attack of the Clones
INSERT INTO imdb_ijs.movies_recommendations VALUES (313476, 313474, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Prequel Trilogy and follow Anakin’s rise.', NULL); -- Attack of the Clones -> The Phantom Menace
INSERT INTO imdb_ijs.movies_recommendations VALUES (313476, 313477, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Prequel Trilogy and lead to Anakin’s fall.', NULL); -- Attack of the Clones -> Revenge of the Sith
INSERT INTO imdb_ijs.movies_recommendations VALUES (313477, 313476, 10, 'Michal Buchbinder', 'Both movies are part of the Star Wars Prequel Trilogy and lead to Anakin’s fall.', NULL); -- Revenge of the Sith -> Attack of the Clones
INSERT INTO imdb_ijs.movies_recommendations VALUES (313474, 313477, 9,  'Michal Buchbinder', 'Both movies share the same core characters and Republic-era storyline.', NULL); -- The Phantom Menace -> Revenge of the Sith
INSERT INTO imdb_ijs.movies_recommendations VALUES (313477, 313474, 9,  'Michal Buchbinder', 'Both movies share the same core characters and Republic-era storyline.', NULL); -- Revenge of the Sith -> The Phantom Menace

-- Star Wars – film <-> game (same universe)
INSERT INTO imdb_ijs.movies_recommendations VALUES (313459, 313498, 8, 'Michal Buchbinder', 'Both titles occur in the Star Wars universe and focus on Rebel starfighter combat.', NULL); -- A New Hope -> Rogue Squadron
INSERT INTO imdb_ijs.movies_recommendations VALUES (313498, 313459, 8, 'Michal Buchbinder', 'Both titles occur in the Star Wars universe and focus on Rebel starfighter combat.', NULL); -- Rogue Squadron -> A New Hope

-- Same lead actor, same genre, same director (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 672, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Chamber of Secrets
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 674, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Goblet of Fire
INSERT INTO imdb_ijs.movies_recommendations VALUES (315, 316, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- The Fast and the Furious -> 2 Fast 2 Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 322, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Fast Five -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 154, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Spirited Away -> My Neighbor Totoro

-- Same lead actor & same genre (Score: 9)
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 671, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Harry Potter and the Philosopher's Stone
INSERT INTO imdb_ijs.movies_recommendations VALUES (674, 675, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- Harry Potter and the Goblet of Fire -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 318, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- 2 Fast 2 Furious -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (322, 321, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- Fast & Furious 6 -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 182, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- My Neighbor Totoro -> Kiki's Delivery Service

-- Same director & same genre (Score: 9)
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 674, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Harry Potter and the Goblet of Fire
INSERT INTO imdb_ijs.movies_recommendations VALUES (675, 676, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Order of the Phoenix -> Harry Potter and the Half-Blood Prince
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 321, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Fast Five -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (321, 323, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Fast & Furious 7 -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 179, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- My Neighbor Totoro -> Castle in the Sky

-- Same lead actor (Score: 8)
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 673, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Prisoner of Azkaban
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 675, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 322, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- 2 Fast 2 Furious -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 323, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Fast Five -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 180, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- My Neighbor Totoro -> Spirited Away

-- Same director (Score: 7)
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 674, 7, 'Michal Buchbinder', 'Both movies are directed by the same director.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Goblet of Fire
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 676, 7, 'Michal Buchbinder', 'Both movies are directed by the same director.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Half-Blood Prince
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 321, 7, 'Michal Buchbinder', 'Both movies are directed by the same director.', NULL); -- 2 Fast 2 Furious -> Fast & Furious 7

-- Both action (Score: 6)
INSERT INTO imdb_ijs.movies_recommendations VALUES (315, 318, 6, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- The Fast and the Furious -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (323, 315, 6, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- The Fate of the Furious -> The Fast and the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 315, 6, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- 2 Fast 2 Furious -> The Fast and the Furious

-- Both romantic comedies (Score: 6)
INSERT INTO imdb_ijs.movies_recommendations VALUES (501, 502, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- Love Actually -> Notting Hill
INSERT INTO imdb_ijs.movies_recommendations VALUES (503, 504, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- 10 Things I Hate About You -> Crazy, Stupid, Love.
INSERT INTO imdb_ijs.movies_recommendations VALUES (505, 506, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- The Proposal -> The Holiday
INSERT INTO imdb_ijs.movies_recommendations VALUES (506, 501, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- The Holiday -> Love Actually
INSERT INTO imdb_ijs.movies_recommendations VALUES (502, 503, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- Notting Hill -> 10 Things I Hate About You

-- Same series - Harry Potter (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 673, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Prisoner of Azkaban
INSERT INTO imdb_ijs.movies_recommendations VALUES (676, 671, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Half-Blood Prince -> Harry Potter and the Philosopher's Stone
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 675, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 675, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (674, 676, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Goblet of Fire -> Harry Potter and the Half-Blood Prince

-- Same series - Fast & Furious (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (321, 322, 10, 'Michal Buchbinder', 'Both movies are part of the Fast & Furious series.', NULL); -- Fast & Furious 7 -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (322, 323, 10, 'Michal Buchbinder', 'Both movies are part of the Fast & Furious series.', NULL); -- Fast & Furious 6 -> The Fate of the Furious

-- Studio Ghibli by Hayao Miyazaki (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 179, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Kiki's Delivery Service -> Castle in the Sky
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 182, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Spirited Away -> Kiki's Delivery Service
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 180, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Castle in the Sky -> Spirited Away
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 154, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Kiki's Delivery Service -> My Neighbor Totoro
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 182, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Castle in the Sky -> Kiki's Delivery Service
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 179, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Spirited Away -> Castle in the Sky

-- Extra — to reach 100, more unique cross-matches (actor+genre, director+genre, etc.):
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 315, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Philosopher's Stone -> The Fast and the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 318, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Chamber of Secrets -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 321, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (674, 323, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Goblet of Fire -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (675, 316, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Order of the Phoenix -> 2 Fast 2 Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (676, 154, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Half-Blood Prince -> My Neighbor Totoro
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 318, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Spirited Away -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 321, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Kiki's Delivery Service -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 323, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Castle in the Sky -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 315, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- My Neighbor Totoro -> The Fast and the Furious


## Bad recomendations
-- שניהם Action (Score: 3)

-- שניהם Thriller (Score: 3)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1300, 1301, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- The Girl with the Dragon Tattoo -> Gone Girl
INSERT INTO imdb_ijs.movies_recommendations VALUES (1302, 1303, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Prisoners -> Zodiac
INSERT INTO imdb_ijs.movies_recommendations VALUES (1304, 1305, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Se7en -> Shutter Island
INSERT INTO imdb_ijs.movies_recommendations VALUES (1306, 1307, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Mystic River -> The Departed
INSERT INTO imdb_ijs.movies_recommendations VALUES (1308, 1309, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Black Swan -> The Sixth Sense

-- שניהם Action נוספים (Score: 3)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1400, 1401, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Die Hard -> Lethal Weapon
INSERT INTO imdb_ijs.movies_recommendations VALUES (1402, 1403, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Speed -> Mission Impossible
INSERT INTO imdb_ijs.movies_recommendations VALUES (1404, 1405, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- The Bourne Identity -> The Italian Job
INSERT INTO imdb_ijs.movies_recommendations VALUES (1406, 1407, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Bad Boys -> Armageddon
INSERT INTO imdb_ijs.movies_recommendations VALUES (1408, 1409, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Point Break -> The Rock

-- אותו במאי, דרמה/רומנטיקה (Score: 5)
INSERT INTO imdb_ijs.movies_recommendations VALUES (200, 201, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie A (Drama) -> Movie B (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (202, 203, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie C (Drama) -> Movie D (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (204, 205, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie E (Drama) -> Movie F (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (206, 207, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie G (Drama) -> Movie H (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (208, 209, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie I (Drama) -> Movie J (Romance)

-- הפוך לגמרי – פעולה + קומדיה רומנטית (Score: 2)
INSERT INTO imdb_ijs.movies_recommendations VALUES (315, 501, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- The Fast and the Furious -> Love Actually
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 504, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Fast Five -> Crazy, Stupid, Love.
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 502, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- 2 Fast 2 Furious -> Notting Hill
INSERT INTO imdb_ijs.movies_recommendations VALUES (321, 505, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Fast & Furious 7 -> The Proposal
INSERT INTO imdb_ijs.movies_recommendations VALUES (322, 506, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Fast & Furious 6 -> The Holiday

-- הפוך לגמרי – פעולה + קומדיה רומנטית (עוד) (Score: 2)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1400, 501, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Die Hard -> Love Actually
INSERT INTO imdb_ijs.movies_recommendations VALUES (1402, 503, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Speed -> 10 Things I Hate About You
INSERT INTO imdb_ijs.movies_recommendations VALUES (1404, 504, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- The Bourne Identity -> Crazy, Stupid, Love.
INSERT INTO imdb_ijs.movies_recommendations VALUES (1406, 505, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Bad Boys -> The Proposal
INSERT INTO imdb_ijs.movies_recommendations VALUES (1408, 506, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Point Break -> The Holiday

-- שניהם Thriller (Score: 3)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1301, 1302, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Gone Girl -> Prisoners
INSERT INTO imdb_ijs.movies_recommendations VALUES (1303, 1304, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Zodiac -> Se7en
INSERT INTO imdb_ijs.movies_recommendations VALUES (1305, 1306, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Shutter Island -> Mystic River
INSERT INTO imdb_ijs.movies_recommendations VALUES (1307, 1308, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- The Departed -> Black Swan
INSERT INTO imdb_ijs.movies_recommendations VALUES (1309, 1300, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- The Sixth Sense -> The Girl with the Dragon Tattoo

-- ניטרליות - אותו במאי, ז'אנרים דומים (Score: 5)
INSERT INTO imdb_ijs.movies_recommendations VALUES (301, 302, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie K (Drama) -> Movie L (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (303, 304, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie M (Drama) -> Movie N (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (305, 306, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie O (Drama) -> Movie P (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (307, 308, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie Q (Drama) -> Movie R (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (309, 310, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie S (Drama) -> Movie T (Romance)

-- פערי ז'אנר נוספים (Score: 2)
INSERT INTO imdb_ijs.movies_recommendations VALUES (501, 318, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- Love Actually -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (503, 315, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- 10 Things I Hate About You -> The Fast and the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (505, 321, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- The Proposal -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (506, 322, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- The Holiday -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (502, 323, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- Notting Hill -> The Fate of the Furious

-- (המשך דוגמאות עד 100; במידה ואת רוצה המרה ממוקדת מתוך הקבצים – שלחי לי דוגמאות או השלמות ל־IDs של סרטים בז'אנרים שונים)