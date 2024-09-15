SELECT * FROM public.temp_table
LIMIT 100


DROP TABLE IF EXISTS music_meds;

CREATE TABLE music_meds (
	id SERIAL PRIMARY KEY,   
	Age INT,
    Hours_per_day FLOAT,
    While_working VARCHAR,
    Frequency_Classical VARCHAR,
    Frequency_Country VARCHAR,
    Frequency_EDM VARCHAR,
    Frequency_Folk VARCHAR,
    Frequency_Gospel VARCHAR,
    Frequency_Hip_hop VARCHAR,
    Frequency_Jazz VARCHAR,
    Frequency_K_pop VARCHAR,
    Frequency_Latin VARCHAR,
    Frequency_Lofi VARCHAR,
    Frequency_Metal VARCHAR,
    Frequency_Pop VARCHAR,
    Frequency_R_B VARCHAR,
    Frequency_Rap VARCHAR,
    Frequency_Rock VARCHAR,
    Frequency_Video_game_music VARCHAR,
    Anxiety INT,
    Depression INT,
    Insomnia INT,
    OCD INT,
    music_effects VARCHAR
   
);


INSERT INTO music_meds (
    Age,
    Hours_per_day,
    While_working,
    Frequency_Classical,
    Frequency_Country,
    Frequency_EDM,
    Frequency_Folk,
    Frequency_Gospel,
    Frequency_Hip_hop,
    Frequency_Jazz,
    Frequency_K_pop,
    Frequency_Latin,
    Frequency_Lofi,
    Frequency_Metal,
    Frequency_Pop,
    Frequency_R_B,
    Frequency_Rap,
    Frequency_Rock,
    Frequency_Video_game_music,
    Anxiety,
    Depression,
    Insomnia,
    OCD,
    Music_effects
)
SELECT
    age,
    hours_per_day,
    while_working,
    frequency_classical,
    frequency_country,
    frequency_edm,
    frequency_folk,
    frequency_gospel,
    frequency_hip_hop,
    frequency_jazz,
    frequency_k_pop,
    frequency_latin,
    frequency_lofi,
    frequency_metal,
    frequency_pop,
    "Frequency_R&B",
    frequency_rap,
    frequency_rock,
    frequency_video_game_music,
    anxiety,
    depression,
    insomnia,
    ocd,
    music_effects
FROM public.temp_table;

SELECT * FROM music_meds;

COPY music_meds TO 'C:/Program Files/PROJECT 3/Resources/music_meds.csv' WITH CSV HEADER;
