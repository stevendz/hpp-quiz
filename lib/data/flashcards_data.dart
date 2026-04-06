import '../models/flashcard.dart';

const List<Flashcard> allFlashcards = [
  // ============================================================
  // TEIL 1: ICD-10 GRUNDLAGEN (1-5)
  // ============================================================
  Flashcard(
    text: 'Die ICD-10 (International Classification of Diseases, 10. Revision) ist das weltweit anerkannte Klassifikationssystem der WHO. Kapitel V (Buchstabe F) umfasst psychische und Verhaltensstörungen (F00-F99). Sie ist phänomenologisch-deskriptiv: Beschreibt Symptome, Verlauf, Dauer und Schweregrad, nicht Ursachen. In Deutschland gilt die ICD-10-GM seit 01.01.2000. Die HPP-Prüfung basiert weiterhin auf ICD-10, nicht ICD-11.',
    tags: ['ICD-10 Grundlagen'],
    terms: [
      Term(term: 'ICD-10', definition: 'Internationales Klassifikationssystem der WHO für Krankheiten, 10. Revision'),
      Term(term: 'Kapitel V', definition: 'Abschnitt F00-F99 der ICD-10 für psychische und Verhaltensstörungen'),
      Term(term: 'Phänomenologisch-deskriptiv', definition: 'Beschreibend nach Symptomen, nicht nach Ursachen'),
    ],
  ),
  Flashcard(
    text: 'Aufbau des ICD-10-Codes: F = psychische Störung. 1. Ziffer = Störungsgruppe (z.B. F2 = Schizophrenie). Weitere Ziffern = Spezifizierung. Beispiel: F20.0 = Paranoide Schizophrenie. Die ICD-10 nutzt ein multiaxiales System für mehrdimensionale Diagnostik.',
    tags: ['ICD-10 Grundlagen'],
    terms: [
      Term(term: 'Multiaxiales System', definition: 'Ermöglicht mehrdimensionale Diagnostik auf verschiedenen Achsen'),
    ],
  ),
  Flashcard(
    text: 'Die 10 Störungsgruppen F0-F9 im Überblick (Teil 1): F0 = Organische psychische Störungen (Demenzen, Delir). F1 = Störungen durch psychotrope Substanzen (Alkohol, Drogen). F2 = Schizophrenie, schizotype und wahnhafte Störungen. F3 = Affektive Störungen (Depression, Manie, bipolar). F4 = Neurotische, Belastungs- und somatoforme Störungen.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text: 'Die 10 Störungsgruppen F0-F9 im Überblick (Teil 2): F5 = Verhaltensauffälligkeiten mit körperlichen Faktoren (Essstörungen, Schlafstörungen). F6 = Persönlichkeits- und Verhaltensstörungen. F7 = Intelligenzminderung. F8 = Entwicklungsstörungen (Autismus). F9 = Verhaltens-/emotionale Störungen der Kindheit (ADHS).',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text: 'Prüfungsrelevanz der Störungsgruppen: Hohe Relevanz (3 Sterne): F0 (Organisch), F1 (Substanzen), F2 (Schizophrenie), F3 (Affektiv), F4 (Neurotisch/Belastung), F6 (Persönlichkeit). Mittlere Relevanz: F5 (Verhaltensauffälligkeiten), F8 (Entwicklung), F9 (Kindheit). Geringere Relevanz: F7 (Intelligenzminderung).',
    tags: ['ICD-10 Grundlagen'],
  ),

  // ============================================================
  // TEIL 2: F0 - ORGANISCHE PSYCHISCHE STÖRUNGEN (6-18)
  // ============================================================
  Flashcard(
    text: 'F0 – Organische psychische Störungen (F00-F09): Kernmerkmal ist eine nachweisbare organische Ursache (Hirnerkrankung, -verletzung, -funktionsstörung). Wichtig: Immer somatische Abklärung veranlassen! Bei JEDER psychischen Störung muss zuerst eine organische Ursache ausgeschlossen werden.',
    tags: ['F0 – Organische Störungen'],
    terms: [
      Term(term: 'Somatische Abklärung', definition: 'Ausschluss körperlicher Ursachen vor psychischer Diagnose – HPP-Kernkompetenz'),
    ],
  ),
  Flashcard(
    text: 'F00 – Demenz bei Alzheimer-Krankheit: Schleichender Beginn mit progredientem Verlauf. Gedächtnis und kognitive Funktionen nehmen ab. Unterscheidung: Früher Beginn (<65 Jahre) vs. später Beginn (>65 Jahre). Häufigste Demenzform (ca. 60-70%). Neuropathologisch: Amyloid-Plaques und Tau-Fibrillen.',
    tags: ['F0 – Organische Störungen'],
    terms: [
      Term(term: 'Alzheimer-Demenz (F00)', definition: 'Häufigste Demenzform mit schleichendem Beginn und progredientem Verlauf'),
      Term(term: 'Amyloid-Plaques', definition: 'Pathologische Eiweißablagerungen im Gehirn, typisch für Alzheimer'),
    ],
  ),
  Flashcard(
    text: 'F01 – Vaskuläre Demenz: Plötzlicher oder stufenweiser Beginn (im Gegensatz zum schleichenden Beginn bei Alzheimer). Ursachen: Multiinfarkt oder subkortikale Durchblutungsstörungen. Behandlung: Kardiovaskuläre Risikofaktoren kontrollieren. Zweithäufigste Demenzform.',
    tags: ['F0 – Organische Störungen'],
    terms: [
      Term(term: 'Vaskuläre Demenz (F01)', definition: 'Demenz durch Durchblutungsstörungen im Gehirn, plötzlicher/stufenweiser Beginn'),
    ],
  ),
  Flashcard(
    text: 'F02 – Demenz bei anderen Erkrankungen: Pick-Krankheit (frontotemporale Demenz), Creutzfeldt-Jakob-Krankheit (rapid progredient), Huntington-Krankheit (autosomal-dominant, Chorea), Parkinson-Krankheit, HIV-Enzephalopathie. Jede dieser Erkrankungen hat ein eigenes klinisches Profil.',
    tags: ['F0 – Organische Störungen'],
    terms: [
      Term(term: 'Pick-Krankheit', definition: 'Frontotemporale Demenz mit Persönlichkeitsveränderung und Enthemmung'),
      Term(term: 'Creutzfeldt-Jakob', definition: 'Prionenerkrankung mit rapid progredientem Verlauf'),
    ],
  ),
  Flashcard(
    text: 'F04 – Organisches amnestisches Syndrom: Schwere Gedächtnisstörung (Kurz- und Langzeitgedächtnis). Wichtig: Bewusstsein ist NICHT getrübt (Abgrenzung zum Delir). Typisches Beispiel: Korsakow-Syndrom bei chronischem Alkoholismus. Konfabulationen (Erinnerungslücken werden unbewusst mit erfundenen Inhalten gefüllt) sind charakteristisch.',
    tags: ['F0 – Organische Störungen'],
    terms: [
      Term(term: 'Korsakow-Syndrom', definition: 'Amnestisches Syndrom mit Konfabulationen, häufig bei chronischem Alkoholismus'),
      Term(term: 'Konfabulationen', definition: 'Unbewusstes Füllen von Erinnerungslücken mit erfundenen Inhalten'),
    ],
  ),
  Flashcard(
    text: 'F05 – Delir: Akuter Beginn mit Bewusstseinsstörung, Fluktuation der Symptome und Orientierungsstörung. NOTFALL! Typische Symptome: Optische Halluzinationen, motorische Unruhe, vegetative Störungen, erhöhte Suggestibilität. Dauer meist 3-5 Tage. Kann lebensbedrohlich sein (z.B. Delirium tremens bei Alkoholentzug).',
    tags: ['F0 – Organische Störungen'],
    terms: [
      Term(term: 'Delir (F05)', definition: 'Akuter Verwirrtheitszustand mit Bewusstseinsstörung – immer ein Notfall'),
      Term(term: 'Delirium tremens', definition: 'Alkoholentzugsdelir mit Tremor, optischen Halluzinationen und vegetativen Störungen'),
    ],
  ),
  Flashcard(
    text: 'Merke Demenz vs. Delir: Demenz = chronisch, schleichender Beginn, Bewusstsein KLAR, progredient. Delir = akut, plötzlicher Beginn, Bewusstsein GETRÜBT, fluktuierend. Beide können gleichzeitig auftreten (Delir auf dem Boden einer Demenz). Das Delir ist immer ein Notfall!',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'F06 – Sonstige organische psychische Störungen: Organisch bedingte Halluzinose, katatone Störung, wahnhafte Störung, affektive Störung, Angststörung oder dissoziative Störung. Entscheidend: Die Symptome sind durch eine nachweisbare Hirnfunktionsstörung verursacht, nicht primär psychisch bedingt.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text: 'F07 – Organische Persönlichkeitsveränderung: Persönlichkeitsveränderung nach Hirnschädigung (z.B. nach Schädel-Hirn-Trauma, Enzephalitis). Änderung des Verhaltens, der Emotionalität und der Impulskontrolle. Nicht als Persönlichkeitsstörung (F60) zu klassifizieren, da organisch bedingt.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text: 'Demenz vs. Depression (Pseudodemenz): Bei Depression klagt der Patient aktiv über Vergesslichkeit und antwortet mit "weiß nicht". Bei echten Demenzen: Patient bagatellisiert Defizite und zeigt Konfabulationen. Die "Pseudodemenz" ist eine Depression im höheren Alter mit kognitiven Symptomen und hat keinen eigenen ICD-10-Schlüssel.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
    terms: [
      Term(term: 'Pseudodemenz', definition: 'Depression im Alter mit demenziellen Symptomen – Patient klagt aktiv über Vergesslichkeit'),
    ],
  ),
  Flashcard(
    text: 'Quantitative Bewusstseinsstörungen betreffen die Wachheit (Vigilanz): Benommenheit → Somnolenz → Sopor → Koma (zunehmende Schwere). Qualitative Bewusstseinsstörungen: Bewusstseinstrübung (Verwirrtheit), Bewusstseinseinengung (z.B. Dämmerzustand), Bewusstseinsverschiebung (z.B. Drogenrausch). Halluzinationen gehören zu den Wahrnehmungsstörungen.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Vigilanz', definition: 'Wachheit/Wachsamkeit – bei quantitativen Bewusstseinsstörungen gestört'),
      Term(term: 'Somnolenz', definition: 'Abnorme Schläfrigkeit, durch Ansprechen weckbar'),
      Term(term: 'Sopor', definition: 'Tiefe Bewusstlosigkeit, nur durch starke Reize weckbar'),
    ],
  ),
  Flashcard(
    text: 'Nichtmedikamentöse Interventionen bei Demenz: Körperliche Aktivierung (Bewegungstherapie), basale Stimulation (sensorische Anregung), Ergotherapie (Alltagskompetenz), Realitätsorientierungstraining (zeitliche, örtliche, personelle Orientierung), supportive Psychotherapie. Demenz-Screening: MMST (Mini-Mental-Status-Test), Uhrentest.',
    tags: ['F0 – Organische Störungen', 'Therapieverfahren'],
    terms: [
      Term(term: 'MMST', definition: 'Mini-Mental-Status-Test – Standardinstrument zum Demenz-Screening (max. 30 Punkte)'),
    ],
  ),
  Flashcard(
    text: 'Frühsymptome einer beginnenden Demenz: Affektive Veränderungen (Reizbarkeit, Stimmungsschwankungen, Apathie, depressive Verstimmung) treten oft als erste Symptome auf, noch vor ausgeprägten kognitiven Defiziten. Gangstörungen und Inkontinenz treten eher in fortgeschrittenen Stadien auf. Die Symptome müssen nach ICD-10 mindestens 6 Monate vorliegen.',
    tags: ['F0 – Organische Störungen'],
  ),

  // ============================================================
  // TEIL 3: F1 - STÖRUNGEN DURCH PSYCHOTROPE SUBSTANZEN (19-35)
  // ============================================================
  Flashcard(
    text: 'F1 – Aufbau der Codierung: Die 3. Stelle codiert die Substanz: F10=Alkohol, F11=Opioide, F12=Cannabinoide, F13=Sedativa/Hypnotika, F14=Kokain, F15=Stimulanzien, F16=Halluzinogene, F17=Tabak, F18=Lösungsmittel, F19=multipel/andere.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text: 'F1x – Die 4. Stelle codiert das klinische Bild: .0 = Akute Intoxikation (Rausch). .1 = Schädlicher Gebrauch (Schaden, keine Abhängigkeit). .2 = Abhängigkeitssyndrom. .3 = Entzugssyndrom. .4 = Entzug mit Delir. .5 = Psychotische Störung. .6 = Amnestisches Syndrom (Korsakow). .7 = Restzustand/verzögerte psychotische Störung.',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Akute Intoxikation (.0)', definition: 'Akuter Rauschzustand, dosisabhängig'),
      Term(term: 'Schädlicher Gebrauch (.1)', definition: 'Nachweisbare Schädigung durch Substanzkonsum, ohne Abhängigkeit'),
      Term(term: 'Abhängigkeitssyndrom (.2)', definition: 'Mind. 3 von 6 Kriterien über 1 Monat'),
    ],
  ),
  Flashcard(
    text: '6 Kriterien für Abhängigkeit nach ICD-10 (mind. 3 über 1 Monat): (1) Starkes Verlangen/Craving. (2) Kontrollverlust. (3) Entzugssymptome. (4) Toleranzentwicklung. (5) Vernachlässigung anderer Interessen. (6) Fortgesetzter Konsum trotz nachweisbarer Schäden. Merke: 3 Kernkriterien: Craving, Kontrollverlust, Toleranzentwicklung.',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Craving', definition: 'Starkes, zwanghaftes Verlangen nach einer Substanz'),
      Term(term: 'Toleranzentwicklung', definition: 'Dosissteigerung nötig, um gleiche Wirkung zu erzielen'),
      Term(term: 'Kontrollverlust', definition: 'Unfähigkeit, Menge oder Dauer des Konsums zu kontrollieren'),
    ],
  ),
  Flashcard(
    text: 'Abhängigkeit vs. Schädlicher Gebrauch: Abhängigkeit = mind. 3 von 6 Kriterien über 1 Monat. Schädlicher Gebrauch (.1) = nachweisbare körperliche oder psychische Schädigung durch Substanzkonsum, OHNE dass ein Abhängigkeitssyndrom vorliegt. Eine bestimmte Konsumhäufigkeit in Prozent ist KEIN Abhängigkeitskriterium.',
    tags: ['F1 – Substanzstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Delirium tremens (F10.4): Tritt Stunden bis Tage nach Alkoholkarenz auf, dauert meist 3-5 Tage. Leitsymptom: Bewusstseinsstörung (Abgrenzung zur Alkoholhalluzinose mit klarem Bewusstsein). Weitere Symptome: Tremor (Kardinalsymptom), motorische Unruhe, optische Halluzinationen, vegetative Störungen, Orientierungsstörungen. NOTFALL – Koma als lebensbedrohliche Komplikation möglich.',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Tremor', definition: 'Unwillkürliches rhythmisches Zittern – Kardinalsymptom des Alkoholentzugs'),
    ],
  ),
  Flashcard(
    text: 'Alkoholhalluzinose vs. Alkoholdelir: Alkoholhalluzinose = vorwiegend akustische Halluzinationen bei KLAREM Bewusstsein. Delirium tremens = Bewusstseinsstörung + Tremor + optische Halluzinationen + vegetative Störungen. Die Bewusstseinslage ist das entscheidende Unterscheidungsmerkmal!',
    tags: ['F1 – Substanzstörungen', 'Differentialdiagnosen'],
    terms: [
      Term(term: 'Alkoholhalluzinose', definition: 'Akustische Halluzinationen bei KLAREM Bewusstsein – Abgrenzung zum Delir'),
    ],
  ),
  Flashcard(
    text: 'Korsakow-Syndrom (F10.6): Amnestisches Syndrom bei chronischem Alkoholismus. Schwere Störung des Kurzzeitgedächtnisses, Konfabulationen (Füllen von Erinnerungslücken mit erfundenen Inhalten), Merkfähigkeitsstörung, Zeitgitterstörung. Prophylaxe: Vitamin B1 (Thiamin) zur Verhinderung der Wernicke-Enzephalopathie.',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Wernicke-Enzephalopathie', definition: 'Akute Hirnschädigung durch Vitamin-B1-Mangel bei Alkoholismus'),
    ],
  ),
  Flashcard(
    text: 'Alkoholentzug: Vegetative Symptome wie Schwitzen, Tremor, Tachykardie, Hypertonie. Kann zu Krampfanfällen und Delirium tremens führen – daher stationäre Überwachung oft notwendig. Vitamin B1 (Thiamin) und Folsäure als Prophylaxe. 5 Trinkertypen nach Jellinek: Alpha bis Epsilon (Beta = Gelegenheitstrinker, nicht abhängig).',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text: 'Cannabis-Intoxikation: Gerötete Augen, Mydriasis (weite Pupillen, NICHT Miosis!), Konzentrationsverschlechterung, veränderte Sinneswahrnehmung, ideenflüchtiges Denken, gesteigerter Appetit. Nach chronischem Hochdosiskonsum: Entzugssymptome möglich (Angst, Tremor, Schlafstörungen, Reizbarkeit).',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Mydriasis', definition: 'Pupillenerweiterung – typisch bei Cannabis, Stimulanzien, Halluzinogenen'),
    ],
  ),
  Flashcard(
    text: 'Pupillenreaktionen bei Substanzen: Mydriasis (weite Pupillen) = Stimulanzien (Kokain, Amphetamine), Cannabis, Halluzinogene. Miosis (enge Pupillen / "Stecknadelpupillen") = Opioide (Morphin, Heroin). Merke: Mydriasis = Stimulanzien. Miosis = Opioide.',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Miosis', definition: 'Pupillenverengung ("Stecknadelpupillen") – Leitsymptom bei Opioidintoxikation'),
    ],
  ),
  Flashcard(
    text: 'Benzodiazepine: Kumulationsgefahr durch aktive Metaboliten, sedierende Wirkung, Abhängigkeitspotenzial. Entzug über Wochen ausschleichen! NIEMALS abrupt absetzen bei Hochdosis – Gefahr von Krampfanfällen! Opiate, Benzodiazepine und Nikotin führen zu ausgeprägter körperlicher Abhängigkeit. LSD und MDMA verursachen keine körperliche, nur psychische Abhängigkeit.',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Benzodiazepine', definition: 'Sedativa mit Abhängigkeitspotenzial und Kumulationsgefahr – nie abrupt absetzen'),
    ],
  ),
  Flashcard(
    text: '4 Phasen der Suchttherapie: 1. Kontakt- und Motivationsphase. 2. Entgiftungsphase. 3. Entwöhnungsphase. 4. Nachsorgephase. Die "Remissionsphase" ist KEINE eigenständige Therapiephase, sondern beschreibt den Zustand nach erfolgreicher Behandlung.',
    tags: ['F1 – Substanzstörungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text: 'Methadon-Substitution: Erhaltungstherapie (Maintenance-Therapie) bei Opioidabhängigkeit. Durchführung ist Ärzten mit Zusatzqualifikation vorbehalten, NICHT Heilpraktikern. Vollständige Abstinenz wird in der Regel nicht erreicht. Begleitende Psychotherapie ist erwünscht. In der Schwangerschaft ist Substitution Erstlinientherapie, da unkontrollierter Entzug das Kind gefährdet.',
    tags: ['F1 – Substanzstörungen', 'Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Der pathologische Rausch ist ein atypischer Rauschzustand, der nach relativ geringer Alkoholmenge auftritt. Symptome: Situationsverkennung, Erregungszustände, ggf. aggressives Verhalten. Geht nicht regelhaft in ein Delir über. Abgrenzung zum normalen Rausch: überproportionale Symptomatik zur aufgenommenen Menge.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text: 'Substanzinduzierte psychotische Störungen (F1x.5): Halluzinationen und/oder Wahn während oder kurz nach Substanzgebrauch. Können bei praktisch allen Substanzen auftreten. Symptome wie Stupor, Personenverkennung, akustische Halluzinationen, Ekstase und Verfolgungsideen sind möglich. Abgrenzung: Drogen können Schizophrenie-ähnliche Symptome auslösen.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text: 'Opioidintoxikation: Miosis (Stecknadelpupillen), Atemdepression, Bewusstseinsminderung, Euphorie. Bei Überdosis: lebensbedrohliche Atemdepression. Gegenmittel: Naloxon. Abgrenzung: Kokainintoxikation zeigt Mydriasis, Tachykardie, Euphorie, mögliche Halluzinationen. Amphetamine: ähnlich Kokain, aber länger wirkend.',
    tags: ['F1 – Substanzstörungen'],
    terms: [
      Term(term: 'Naloxon', definition: 'Opioid-Antagonist als Gegenmittel bei Opioidintoxikation'),
    ],
  ),
  Flashcard(
    text: 'Alkoholintoxikation: Kann auch unter 1,0 Promille diagnostiziert werden (individuelle Toleranz variiert). Schwere Intoxikation: Atemdepression und Hypothermie möglich. Binge-Drinking: 5+ Standardgläser (Männer) bzw. 4+ (Frauen) bei einer Gelegenheit. Riskanter Gebrauch: >24g/Tag (Männer), >12g/Tag (Frauen). Ein Standardglas = ca. 10-12g reiner Alkohol.',
    tags: ['F1 – Substanzstörungen'],
  ),

  // ============================================================
  // TEIL 4: F2 - SCHIZOPHRENIE (36-55)
  // ============================================================
  Flashcard(
    text: 'Symptome 1. Ranges nach Kurt Schneider (pathognomonisch für Schizophrenie): Gedankenlautwerden, Gedankenentzug, Gedankeneingebung, Gedankenausbreitung, Stimmenhören (dialogisch/kommentierend), leibliche Beeinflussungserlebnisse, Wahnwahrnehmung, Gefühl des Gemachten. Diese Symptome sind ein häufiger Prüfungsklassiker!',
    tags: ['F2 – Schizophrenie'],
    terms: [
      Term(term: 'Erstrangsymptome', definition: 'Pathognomonische Symptome nach Schneider – beweisend für Schizophrenie'),
      Term(term: 'Gedankenlautwerden', definition: 'Patient hört seine eigenen Gedanken laut ausgesprochen'),
      Term(term: 'Gedankenausbreitung', definition: 'Überzeugung, dass andere die eigenen Gedanken lesen können'),
    ],
  ),
  Flashcard(
    text: 'Symptome 2. Ranges nach Schneider: Sonstige Halluzinationen, Wahneinfälle, Ratlosigkeit, depressive oder frohe Verstimmung, erlebte Gefühlsverarmung, andere Sinnestäuschungen. Diese sind weniger spezifisch als Erstrangsymptome und können auch bei anderen Störungen auftreten.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text: 'Positivsymptome der Schizophrenie (Überschuss): Wahn, Halluzinationen, Ich-Störungen (Gedankeneingebung, -entzug, -ausbreitung), formale Denkstörungen (Zerfahrenheit), psychomotorische Störungen (Katatonie). Positivsymptome sprechen besser auf Neuroleptika an als Negativsymptome.',
    tags: ['F2 – Schizophrenie'],
    terms: [
      Term(term: 'Positivsymptome', definition: 'Symptomüberschuss: Wahn, Halluzinationen, Ich-Störungen, Denkstörungen'),
    ],
  ),
  Flashcard(
    text: 'Negativsymptome der Schizophrenie (Defizit) – Merke "6 A": Affektverflachung, Antriebsarmut/Apathie, Alogie (Sprachverarmung), Anhedonie (Freudlosigkeit), Aufmerksamkeitsstörung, Asozialität (sozialer Rückzug). Negativsymptome sind schwerer zu behandeln als Positivsymptome.',
    tags: ['F2 – Schizophrenie'],
    terms: [
      Term(term: 'Negativsymptome', definition: 'Symptomdefizit: die "6 A" – Affektverflachung, Apathie, Alogie, Anhedonie, Aufmerksamkeit↓, Asozialität'),
      Term(term: 'Alogie', definition: 'Sprachverarmung – reduzierter Sprachfluss und -inhalt'),
      Term(term: 'Anhedonie', definition: 'Unfähigkeit, Freude zu empfinden'),
    ],
  ),
  Flashcard(
    text: 'F20.0 – Paranoide Schizophrenie: Häufigste Form der Schizophrenie. Wahn und Halluzinationen dominieren das klinische Bild. Typisch: Verfolgungswahn, Beziehungswahn, akustische Halluzinationen (Stimmenhören). Ich-Störungen (Gedankeneingebung, -entzug, -ausbreitung) und Denkstörungen (Zerfahrenheit) sind pathognomonisch.',
    tags: ['F2 – Schizophrenie'],
    terms: [
      Term(term: 'Paranoide Schizophrenie (F20.0)', definition: 'Häufigste Schizophrenie-Form mit Wahn + Halluzinationen im Vordergrund'),
    ],
  ),
  Flashcard(
    text: 'F20.1 – Hebephrene Schizophrenie: Affektstörung und Antriebsstörung stehen im Vordergrund. Typisch: Läppischer, inadäquater Affekt, unberechenbares Verhalten, oberflächliche Stimmung. Beginn meist bei Jugendlichen und jungen Erwachsenen (15-25 Jahre). Prognose ungünstiger als bei paranoider Form.',
    tags: ['F2 – Schizophrenie'],
    terms: [
      Term(term: 'Hebephrene Schizophrenie (F20.1)', definition: 'Läppischer Affekt und Antriebsstörung, typisch bei Jugendlichen'),
    ],
  ),
  Flashcard(
    text: 'F20.2 – Katatone Schizophrenie: Psychomotorische Störungen stehen im Vordergrund. Stupor ↔ Erregung im Wechsel, Flexibilitas cerea (wächserne Biegsamkeit), Katalepsie (Erstarrung), Befehlsautomatie, Negativismus, Mutismus, Haltungs- und Bewegungsstereotypien. Die paranoide Form ist häufiger als die katatone.',
    tags: ['F2 – Schizophrenie'],
    terms: [
      Term(term: 'Flexibilitas cerea', definition: 'Wächserne Biegsamkeit – passive Bewegungen werden beibehalten'),
      Term(term: 'Stupor', definition: 'Psychomotorische Erstarrung bei wachem Bewusstsein'),
      Term(term: 'Negativismus', definition: 'Widerstand gegen Aufforderungen oder Gegenteil des Aufgeforderten tun'),
    ],
  ),
  Flashcard(
    text: 'F20.5 – Schizophrenes Residuum: Chronische Negativsymptomatik nach akuter psychotischer Phase. Psychomotorische Verlangsamung, Affektverflachung, Passivität mit Initiativemangel. Positivsymptome sind abgeklungen oder deutlich reduziert. Akustische Halluzinationen wären Positivsymptome, keine typischen Residualsymptome.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text: 'F20.6 – Schizophrenia simplex: Schleichender Beginn ohne akute psychotische Episode. Negativsymptome ohne vorhergehende Positivsymptome. Zunehmender sozialer Rückzug, Antriebsarmut, Leistungsabfall. Schwierige Diagnose wegen fehlender dramatischer Symptomatik.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text: 'F21 – Schizotype Störung: Exzentrisches Verhalten, magisches Denken, kaltes/unnahbares Auftreten, Misstrauen, umständliches Denken und Sprechen. KEINE vollständige Psychose (keine Halluzinationen oder ausgeprägten Wahnphänomene). Nicht mit Schizophrenie gleichzusetzen.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text: 'F22 – Anhaltende wahnhafte Störung: Isolierter, systematisierter Wahn über mehr als 3 Monate. OHNE Halluzinationen. Persönlichkeit und Funktionsfähigkeit sind ansonsten weitgehend erhalten. Abgrenzung zur Schizophrenie: Kein bizarrer Wahn, keine Halluzinationen, keine formalen Denkstörungen.',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'F23 – Akute vorübergehende psychotische Störung: Akuter Beginn innerhalb von 2 Wochen. Polymorphes, wechselhaftes klinisches Bild. Vollständige Remission innerhalb weniger Monate. Oft durch akute Belastung getriggert. Abgrenzung: Bei Schizophrenie dauern Symptome mindestens 1 Monat.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text: 'F25 – Schizoaffektive Störung: Gleichzeitiges Vorliegen schizophrener UND affektiver (depressiver oder manischer) Symptome in derselben Episode. Abgrenzung: Bei Schizophrenie stehen psychotische Symptome im Vordergrund. Bei affektiven Störungen fehlen typische schizophrene Symptome.',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
    terms: [
      Term(term: 'Schizoaffektive Störung (F25)', definition: 'Gleichzeitig schizophrene UND affektive Symptome in gleicher Episode'),
    ],
  ),
  Flashcard(
    text: 'Prodromalphase der Schizophrenie: Unspezifische Symptome vor der akuten Phase – Interessenverlust, sozialer Rückzug, Vernachlässigung der Hygiene, depressive Verstimmung. Ein ausgestaltetes Wahnsystem gehört zur aktiven Krankheitsphase, NICHT zur Prodromalphase.',
    tags: ['F2 – Schizophrenie'],
    terms: [
      Term(term: 'Prodromalphase', definition: 'Vorstadium mit unspezifischen Symptomen vor Ausbruch der Psychose'),
    ],
  ),
  Flashcard(
    text: 'Prognose der Schizophrenie: Günstige Faktoren: Weibliches Geschlecht, akuter Beginn, gute prämorbide Anpassung. Ungünstige Faktoren: Schleichender Beginn, männliches Geschlecht, Cannabiskonsum, familiäre Belastung. Männer erkranken im Schnitt früher (20-25 J) als Frauen (25-30 J). Bei 10-30% heilt die Erkrankung aus.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text: 'Ich-Störungen bei Schizophrenie: Gedankeneingebung (fremde Gedanken werden eingegeben), Gedankenentzug (Gedanken werden entzogen), Gedankenausbreitung (andere können Gedanken lesen), Gedankenlautwerden. Dazu: Depersonalisation (Entfremdung vom eigenen Ich) und Derealisation (Umwelt erscheint unwirklich).',
    tags: ['F2 – Schizophrenie', 'Psychopathologie'],
    terms: [
      Term(term: 'Depersonalisation', definition: 'Entfremdung vom eigenen Ich – fühlt sich losgelöst vom eigenen Körper'),
      Term(term: 'Derealisation', definition: 'Umwelt wird als unwirklich/fremd wahrgenommen'),
    ],
  ),
  Flashcard(
    text: 'Formale vs. inhaltliche Denkstörungen: Formale = Störung des Denkablaufs: Ideenflucht, Zerfahrenheit, Denkhemmung, Perseveration, Neologismen, Konkretismus. Inhaltliche = Störung des Denkinhalts: Wahn (unkorrigierbar, subjektiv gewiss, realitätswidrig), überwertige Ideen. Merke: Konkretismus = Sprichwörter werden wörtlich genommen.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Ideenflucht', definition: 'Übermäßig schnelle Abfolge von Einfällen mit erkennbarem Zusammenhang – typisch bei Manie'),
      Term(term: 'Zerfahrenheit', definition: 'Zusammenhangloses, unverständliches Denken – typisch bei Schizophrenie'),
      Term(term: 'Perseveration', definition: 'Haftenbleiben an Denkinhalten oder Wörtern'),
      Term(term: 'Konkretismus', definition: 'Unfähigkeit, abstrakt zu denken – Sprichwörter werden wörtlich genommen'),
    ],
  ),
  Flashcard(
    text: 'Wahn – Definition und Merkmale: (1) Widerspruch zur Realität. (2) Subjektive Gewissheit (Patient ist absolut überzeugt). (3) Unkorrigierbarkeit (Gegenargumente helfen nicht). Wahn ist ich-SYNTON (wird als Teil des eigenen Erlebens empfunden). Wahnformen: Verfolgungswahn, Größenwahn, Beziehungswahn, Verarmungswahn, Eifersuchtswahn.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Ich-synton', definition: 'Symptome werden als zum Selbst gehörig empfunden (z.B. Wahn, PS)'),
      Term(term: 'Ich-dyston', definition: 'Symptome werden als fremd/quälend erlebt (z.B. Zwangsgedanken)'),
    ],
  ),
  Flashcard(
    text: 'Schizophrenie vs. wahnhafte Störung (F22): Wahnhafte Störung: Isolierter Wahn OHNE Halluzinationen, Persönlichkeit sonst erhalten, Dauer >3 Monate. Schizophrenie: Halluzinationen, Ich-Störungen, formale Denkstörungen, Negativsymptome zusätzlich zum Wahn. Die Differenzierung ist ein häufiger Prüfungsklassiker!',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Beziehungsideen (überwertige Ideen) sind ein Hinweis auf Schizophrenie: Der Patient bezieht alles auf sich selbst. Überwertige Ideen und der symbiontische Wahn/Folie à deux (induzierte wahnhafte Störung) sind inhaltliche Denkstörungen. Konkretismus, Paralogik und Kontamination sind hingegen formale Denkstörungen.',
    tags: ['F2 – Schizophrenie', 'Psychopathologie'],
    terms: [
      Term(term: 'Folie à deux', definition: 'Induzierte wahnhafte Störung – Wahn wird von einer Person auf eine andere übertragen'),
    ],
  ),

  // ============================================================
  // TEIL 5: F3 - AFFEKTIVE STÖRUNGEN (56-70)
  // ============================================================
  Flashcard(
    text: 'F30 – Manische Episode: Gehobene Stimmung, Antriebssteigerung, vermindertes Schlafbedürfnis, Größenideen, Rededrang, gesteigerte Geselligkeit, Enthemmung. Wahnideen bei Manie sind typischerweise stimmungskongruent (Größenwahn). Formale Denkstörungen: Ideenflucht, Gedankenrasen.',
    tags: ['F3 – Affektive Störungen'],
    terms: [
      Term(term: 'Manische Episode (F30)', definition: 'Gehobene Stimmung, Antriebssteigerung, Größenideen, Rededrang – mind. 1 Woche'),
    ],
  ),
  Flashcard(
    text: 'F31 – Bipolare affektive Störung: Wechsel manischer und depressiver Episoden. F31.6 = Gemischte Episode (gleichzeitig manische und depressive Symptome). Depressive Phasen überwiegen zeitlich. Manifestation oft vor dem 25. Lebensjahr. Beide Geschlechter etwa gleich betroffen.',
    tags: ['F3 – Affektive Störungen'],
    terms: [
      Term(term: 'Bipolare Störung (F31)', definition: 'Wechsel zwischen manischen und depressiven Episoden'),
      Term(term: 'Gemischte Episode', definition: 'Gleichzeitig manische und depressive Symptome (F31.6)'),
    ],
  ),
  Flashcard(
    text: 'F32 – Depressive Episode: 3 Hauptsymptome: (1) Gedrückte Stimmung, (2) Interessenverlust, (3) Antriebsminderung. Zusatzsymptome: Konzentration↓, Selbstwert↓, Schuldgefühle, Zukunftspessimismus, Suizidgedanken, Schlafstörung, Appetitveränderung. Dauer: mind. 2 Wochen.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text: 'Schweregrade der Depression: Leicht = 2 Hauptsymptome + 2 Zusatzsymptome. Mittel = 2 Hauptsymptome + 3-4 Zusatzsymptome. Schwer = 3 Hauptsymptome + ≥4 Zusatzsymptome. Schwer mit psychotischen Symptomen = zusätzlich Wahn und/oder Halluzinationen (z.B. Verarmungswahn, nihilistischer Wahn).',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text: 'F33 – Rezidivierende depressive Störung: Wiederholte depressive Episoden OHNE manische oder hypomanische Episode in der Vorgeschichte. Abgrenzung zu bipolar: Tritt auch nur EINE manische/hypomanische Episode auf, wird bipolar diagnostiziert. Unipolare Verläufe sind häufiger als bipolare.',
    tags: ['F3 – Affektive Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'F34.0 – Zyklothymia: Chronische Stimmungsinstabilität mit leichten Schwankungen (nicht schwer genug für F31). Dauer ≥2 Jahre. Wechsel zwischen leicht gehobener und leicht gedrückter Stimmung. F34.1 – Dysthymia: Chronische depressive Verstimmung ≥2 Jahre, nicht schwer genug für F33. Betroffene können meist den Alltag bewältigen.',
    tags: ['F3 – Affektive Störungen'],
    terms: [
      Term(term: 'Zyklothymia (F34.0)', definition: 'Chronische leichte Stimmungsschwankungen ≥2 Jahre, nicht bipolar'),
      Term(term: 'Dysthymia (F34.1)', definition: 'Chronische leichte depressive Verstimmung ≥2 Jahre'),
    ],
  ),
  Flashcard(
    text: 'Depression vs. Dysthymia: Depression = episodisch, schwerere Symptomatik, klarer Beginn/Ende. Dysthymia = chronisch ≥2 Jahre, leichtere Symptomatik, keine klaren Episoden. Bipolar vs. rezidivierende Depression: Bipolar = mind. 1 manische/hypomanische Episode. Rezidivierende Depression = NUR depressive Episoden.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Somatisches Syndrom bei Depression: Frühes Erwachen (2+ Stunden vor üblicher Zeit), Morgentief, Appetit- und Gewichtsverlust, Libidoverlust, psychomotorische Hemmung oder Agitiertheit. Merke: Das somatische Syndrom beschreibt körperliche Begleiterscheinungen – nicht zu verwechseln mit den Kernsymptomen.',
    tags: ['F3 – Affektive Störungen'],
    terms: [
      Term(term: 'Somatisches Syndrom', definition: 'Körperliche Begleiterscheinungen der Depression: Früherwachen, Morgentief, Appetit↓, Libido↓'),
    ],
  ),
  Flashcard(
    text: 'Suizidalität bei Depression: Bei Neueinstellung auf antriebssteigerndes Antidepressivum besteht in den ersten Wochen erhöhte Suizidgefahr (Antrieb steigt vor Stimmungsaufhellung). Antidepressiva wirken dreistufig: 1. sedierend → 2. antriebssteigernd → 3. stimmungsaufhellend. Depressive MÜSSEN direkt auf Suizidgedanken angesprochen werden.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text: 'Suizidalität – Stufen nach Pöldinger: 1. Erwägungsphase (Suizid wird als Möglichkeit erwogen). 2. Ambivalenzphase (Schwanken zwischen Leben und Tod). 3. Entschlussphase (Patient hat sich entschieden, wirkt oft "ruhiger"). Merke: „EAE" – Erwägung, Ambivalenz, Entschluss. Die scheinbare Ruhe in Phase 3 ist besonders gefährlich!',
    tags: ['F3 – Affektive Störungen'],
    terms: [
      Term(term: 'Pöldinger-Stufen', definition: 'Erwägung → Ambivalenz → Entschluss – Modell der suizidalen Entwicklung'),
    ],
  ),
  Flashcard(
    text: 'Suizidalität – Merksätze: Akute Suizidalität = NOTFALL → zwangsweise Unterbringung möglich. "Weiche" Methoden seltener tödlich als "harte" → vollendete Suizide bei Männern häufiger. Imperative (befehlende) Stimmen bei Schizophrenie können zum Suizid aufrufen. 90% der Suizidopfer hatten eine psychische Erkrankung.',
    tags: ['F3 – Affektive Störungen', 'Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Lithium – Phasenprophylaxe bei bipolarer Störung: Sowohl in manischen als auch in depressiven Phasen können psychotische Symptome auftreten. Phasenprophylaktika: Lithium, Valproat, Carbamazepin. Lithium hat eine enge therapeutische Breite (regelmäßige Spiegelkontrollen nötig). Hypomanie = leichtere Form der Manie, ohne Psychose.',
    tags: ['F3 – Affektive Störungen', 'Therapieverfahren'],
    terms: [
      Term(term: 'Lithium', definition: 'Phasenprophylaktikum bei bipolarer Störung – enge therapeutische Breite'),
      Term(term: 'Hypomanie', definition: 'Leichtere Form der Manie ohne Psychose und ohne schwere Funktionsbeeinträchtigung'),
    ],
  ),
  Flashcard(
    text: 'Zeitkriterien affektiver Störungen merken: Depressive Episode ≥2 Wochen. Dysthymia ≥2 Jahre (chronisch, leichter). Zyklothymia ≥2 Jahre (Schwankungen). Bei schwerer Depression: Kombinationsbehandlung (Pharmako- + Psychotherapie) leitliniengerecht. Lichttherapie besonders bei saisonaler Depression indiziert.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text: 'Vor Behandlungsbeginn einer affektiven Störung muss eine organische Ursache ausgeschlossen werden (z.B. Hypothyreose, Vitamin-B12-Mangel, Hirntumore). Hypothyreose führt häufig zu depressiver Symptomatik. Merke: Hypothyreose = "alles gedrosselt" (Depression, Müdigkeit, Gewichtszunahme, Bradykardie). Hyperthyreose = "alles auf Hochtouren".',
    tags: ['F3 – Affektive Störungen'],
    terms: [
      Term(term: 'Hypothyreose', definition: 'Schilddrüsenunterfunktion – kann Depression imitieren: Antriebsmangel, Müdigkeit, Bradykardie'),
    ],
  ),

  // ============================================================
  // TEIL 6: F4 - NEUROTISCHE, BELASTUNGS- UND SOMATOFORME STÖRUNGEN (71-88)
  // ============================================================
  Flashcard(
    text: 'F40.0 – Agoraphobie: Angst vor Menschenmengen, öffentlichen Plätzen, Reisen, Situationen ohne Fluchtmöglichkeit. Mit oder ohne Panikstörung. Typisches Vermeidungsverhalten. Abgrenzung: Soziale Phobie = Angst vor Bewertung. Spezifische Phobie = Angst vor einzelnem Objekt/Situation.',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Agoraphobie (F40.0)', definition: 'Angst vor Menschenmengen, öffentlichen Plätzen und Situationen ohne Fluchtmöglichkeit'),
    ],
  ),
  Flashcard(
    text: 'F40.1 – Soziale Phobien: Angst vor kritischer Bewertung durch andere in sozialen Situationen. Symptome: Erröten, Zittern, Übelkeit, Angst zu erbrechen. Vermeidungsverhalten. Erkrankungsbeginn meist vor dem 25. LJ. Erhöhtes Risiko für Substanzmissbrauch. Niedriges Selbstwertgefühl. Symptome treten nur in Gesellschaft auf, nicht allein.',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Soziale Phobie (F40.1)', definition: 'Angst vor Bewertung in sozialen Situationen – Erröten, Zittern, Vermeidung'),
    ],
  ),
  Flashcard(
    text: 'F40.2 – Spezifische (isolierte) Phobien: Isolierte Angst vor einem bestimmten Objekt oder einer Situation (z.B. Tiere, Höhe, Blut, Fliegen). Betroffene wissen, dass ihre Angst übertrieben ist. Behandlung der Wahl: Expositionstherapie (systematische Desensibilisierung oder Flooding).',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'F41.0 – Panikstörung: Wiederkehrende, unerwartete Panikattacken, NICHT an bestimmte Situationen gebunden. Abrupt beginnend, begleitet von vegetativen Symptomen (Herzrasen, Schwitzen, Zittern, Schwindel). Depersonalisation/Derealisation können auftreten. Erwartungsangst ("Angst vor der Angst"). Bewusstsein bleibt klar!',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Panikstörung (F41.0)', definition: 'Wiederkehrende unerwartete Panikattacken mit vegetativen Symptomen'),
      Term(term: 'Erwartungsangst', definition: 'Angst vor der nächsten Panikattacke ("Angst vor der Angst")'),
    ],
  ),
  Flashcard(
    text: 'F41.1 – Generalisierte Angststörung (GAD): Frei flottierende, anhaltende Angst und Sorgen über ≥6 Monate. Nicht an bestimmte Situationen gebunden. Multiple Symptome: Muskelanspannung, Schwitzen, Benommenheit, Reizbarkeit. Panikstörung vs. GAD: Panik = episodisch, attackenartig. GAD = anhaltend, frei flottierend.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
    terms: [
      Term(term: 'GAD (F41.1)', definition: 'Anhaltende frei flottierende Angst und Sorgen ≥6 Monate'),
    ],
  ),
  Flashcard(
    text: 'F42 – Zwangsstörung: Zwangsgedanken und/oder Zwangshandlungen. Zwangsgedanken: wiederkehrend, stereotyp, als quälend empfunden, können aggressiver Natur sein. Häufigste Formen: Kontroll-, Wasch- und Zählzwänge. ICH-DYSTON: Patient erkennt die Unsinnigkeit, kann aber nicht aufhören. Tendenz zur Generalisierung.',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Zwangsstörung (F42)', definition: 'Wiederkehrende Zwangsgedanken/-handlungen, ich-dyston, als sinnlos erkannt'),
    ],
  ),
  Flashcard(
    text: 'Zwang vs. Wahn: Zwang = ICH-DYSTON (als fremd, quälend, sinnlos erlebt, Patient leistet Widerstand). Wahn = ICH-SYNTON (unerschütterliche Überzeugung, als Teil des eigenen Erlebens). Zwanghafte PS (F60.5) ist ich-synton (als Persönlichkeitsmerkmal erlebt). Therapie der Wahl bei Zwangsstörung: VT mit Exposition und Reaktionsverhinderung (ERP).',
    tags: ['Differentialdiagnosen'],
    terms: [
      Term(term: 'ERP', definition: 'Exposition mit Reaktionsverhinderung – Goldstandard bei Zwangsstörungen'),
    ],
  ),
  Flashcard(
    text: 'F43.0 – Akute Belastungsreaktion: Unmittelbare Reaktion auf ein Trauma oder außergewöhnliche Belastung. Beginn innerhalb von Minuten, klingt innerhalb von Stunden bis Tagen ab. Symptome: Betäubungsgefühl, Desorientiertheit, vegetative Zeichen. Abgrenzung zu PTBS: Akute Belastungsreaktion ist kurzfristig, PTBS entwickelt sich mit Latenz.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'F43.1 – PTBS (Posttraumatische Belastungsstörung): Entwickelt sich nach schwerem Trauma mit Latenz von Wochen bis Monaten. PTBS-Trias: (1) Wiedererleben/Intrusionen (Flashbacks, Albträume), (2) Vermeidung von Triggern, (3) Übererregung/Hyperarousal. Therapie: Zuerst Stabilisierung, dann Konfrontation. Frühe Konfrontation kann retraumatisieren!',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'PTBS (F43.1)', definition: 'Verzögerte Reaktion auf schweres Trauma: Intrusionen + Vermeidung + Hyperarousal'),
      Term(term: 'Intrusionen', definition: 'Ungewolltes Wiedererleben traumatischer Erlebnisse (Flashbacks, Albträume)'),
      Term(term: 'Hyperarousal', definition: 'Übererregungszustand: Schreckhaftigkeit, Schlafstörungen, Reizbarkeit'),
    ],
  ),
  Flashcard(
    text: 'F43.2 – Anpassungsstörung: Reaktion auf ein belastendes Lebensereignis (muss KEIN schweres Trauma sein). Beginn innerhalb von 1 Monat nach Belastung, Dauer max. 6 Monate. PTBS vs. Anpassungsstörung: PTBS = nach schwerem Trauma, Flashbacks, Vermeidung. Anpassungsstörung = nach beliebigem Lebensereignis, keine Flashbacks.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'F44 – Dissoziative Störungen: Dissoziative Amnesie (partielle/vollständige Gedächtnislücke für belastende Ereignisse), dissoziative Fugue (plötzliches Wegreisen + Amnesie), dissoziativer Stupor, dissoziative Bewegungsstörungen, Konversionsstörungen, multiple Persönlichkeitsstörung. Keine hirnorganische Ursache!',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Dissoziative Fugue', definition: 'Plötzliches Wegreisen mit Amnesie bei äußerlich geordnetem Verhalten'),
      Term(term: 'Konversionsstörung', definition: 'Neurologisch anmutende Symptome (Lähmung, Krampfanfälle) ohne organischen Befund'),
    ],
  ),
  Flashcard(
    text: 'F45 – Somatoforme Störungen: Körperliche Beschwerden ohne ausreichenden organischen Befund. F45.0 Somatisierungsstörung: multiple wechselnde Beschwerden ≥2 Jahre, Beginn vor 30 Jahren. F45.2 Hypochondrie: Überzeugung, an schwerer Krankheit zu leiden. F45.4 Anhaltende Schmerzstörung. Patienten sind oft schwer für Psychotherapie zu motivieren.',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Somatisierungsstörung (F45.0)', definition: 'Multiple wechselnde körperliche Beschwerden ohne organischen Befund ≥2 Jahre'),
      Term(term: 'Hypochondrie (F45.2)', definition: 'Anhaltende Überzeugung, an einer schweren Krankheit zu leiden'),
    ],
  ),
  Flashcard(
    text: 'Somatisierungsstörung: Beginn meist im frühen Erwachsenenalter (<30 Jahre), häufiger bei Frauen. Mind. 2 Jahre multiple, wechselnde körperliche Beschwerden ohne organischen Befund. Patienten glauben an körperliche Ursachen. Erhöhtes Risiko für Medikamentenmissbrauch durch häufige Arztbesuche. Wichtig: Biopsychosoziales Störungsmodell erarbeiten.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'Dissoziative Fugue: Plötzliches, unerwartetes Wegreisen von zu Hause mit Unfähigkeit, sich an die eigene Vergangenheit zu erinnern, bei äußerlich geordnetem Verhalten. Dissoziative Amnesie: Charakteristisch ist eine partielle oder vollständige Amnesie für belastende Ereignisse bei gleichzeitigem Fehlen hirnorganischer Störungen.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'Zur ICD-10-Kategorie F4 gehören: Angststörungen (F40-F41), Zwangsstörungen (F42), Belastungs-/Anpassungsstörungen (F43), dissoziative Störungen (F44), somatoforme Störungen (F45). NICHT dazu gehören: Schizophrenien (F2), Depressionen (F3), Persönlichkeitsstörungen (F6).',
    tags: ['F4 – Neurotische Störungen', 'ICD-10 Grundlagen'],
  ),
  Flashcard(
    text: 'Zeitkriterien F4-Störungen: Akute Belastungsreaktion = Minuten bis Tage. Anpassungsstörung = innerhalb 1 Monat, max. 6 Monate. PTBS = Latenz Wochen bis Monate nach Trauma. GAD = ≥6 Monate. Somatisierungsstörung = ≥2 Jahre.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'Krankheitsgewinn: Primärer Krankheitsgewinn = innerpsychischer Gewinn (z.B. Angstreduktion durch Symptombildung). Sekundärer Krankheitsgewinn = äußere Vorteile aus der Krankenrolle (Zuwendung, Entlastung, Berentung). Sekundärer Krankheitsgewinn ist oft unbewusst. Bewusstes Täuschen wäre Simulation!',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Primärer Krankheitsgewinn', definition: 'Innerpsychischer Gewinn durch Symptombildung (z.B. Angstreduktion)'),
      Term(term: 'Sekundärer Krankheitsgewinn', definition: 'Äußere Vorteile aus der Krankenrolle (Zuwendung, Entlastung) – oft unbewusst'),
    ],
  ),
  Flashcard(
    text: 'Das Da-Costa-Syndrom (Herzneurose) ist eine somatoforme autonome Funktionsstörung des kardiovaskulären Systems (F45.30). Die Hypochondrie gehört zu den somatoformen Störungen (F45.2). Die körperdysmorphe Störung gehört ebenfalls zu den somatoformen Störungen, NICHT zu den Essstörungen.',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Da-Costa-Syndrom', definition: 'Herzneurose – somatoforme autonome Funktionsstörung des Herzens (F45.30)'),
    ],
  ),

  // ============================================================
  // TEIL 7: F5 - VERHALTENSAUFFÄLLIGKEITEN (89-97)
  // ============================================================
  Flashcard(
    text: 'F50.0 – Anorexia nervosa: BMI ≤17,5 kg/m², selbst herbeigeführter Gewichtsverlust, Körperschema-Störung (Betroffene halten sich für zu dick trotz Untergewicht), Amenorrhö. Höchste Mortalitätsrate aller psychischen Erkrankungen (ca. 5-10%). Refeeding-Syndrom als gefährliche Komplikation bei Wiederernährung.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
    terms: [
      Term(term: 'Anorexia nervosa (F50.0)', definition: 'Magersucht: BMI ≤17,5, Körperschemastörung, Amenorrhö – höchste Mortalitätsrate'),
      Term(term: 'Refeeding-Syndrom', definition: 'Lebensgefährliche Komplikation bei zu schneller Wiederernährung nach Hungern'),
    ],
  ),
  Flashcard(
    text: 'F50.2 – Bulimia nervosa: Essanfälle mit Kontrollverlust + kompensatorische Maßnahmen (Erbrechen, Laxantien, Fasten). Gewicht oft normal. Übertriebene Gewichtssorge. Typisch: depressive Symptome. In der Vorgeschichte häufig Anorexia nervosa. Ca. 90% Frauen betroffen. Erbrechen/Diuretika → Elektrolytstörungen (Hypokaliämie).',
    tags: ['F5 – Verhaltensauffälligkeiten'],
    terms: [
      Term(term: 'Bulimia nervosa (F50.2)', definition: 'Essanfälle + kompensatorisches Verhalten (Erbrechen), bei oft normalem Gewicht'),
    ],
  ),
  Flashcard(
    text: 'Binge-Eating-Störung: Wiederkehrende Essanfälle mit Kontrollverlust und nachfolgenden Schuldgefühlen. Häufig Übergewicht. Im Gegensatz zur Bulimie werden KEINE gewichtsregulierenden Gegenmaßnahmen eingesetzt. Essen erfolgt hastig, oft allein aus Scham, nicht mit Genuss.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
    terms: [
      Term(term: 'Binge-Eating-Störung', definition: 'Essanfälle OHNE Kompensation – häufig mit Übergewicht und Schuldgefühlen'),
    ],
  ),
  Flashcard(
    text: 'F51 – Nichtorganische Schlafstörungen: Insomnie (Einschlaf-/Durchschlafstörung), Hypersomnie (übermäßige Schläfrigkeit), Schlafwandeln (Somnambulismus), Alpträume. Nicht organisch bedingt. Schlafhygiene-Regeln: Kein Mittagsschlaf, regelmäßiger Aufstehzeitpunkt, kein intensiver Sport vor dem Schlafen, keine sichtbare Uhr.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text: 'F52 – Sexuelle Funktionsstörungen: Appetenzstörung (Mangel an sexuellem Verlangen), Erregungsstörung, Orgasmusstörung, Vaginismus. Nicht organisch bedingt. Abgrenzung: Geschlechtsinkongruenz = Störung der Geschlechtsidentität, KEINE Störung der Sexualpräferenz. Fetischismus, Sadismus, Pädophilie = Paraphilien.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text: 'Narkolepsie: Imperative Einschlafattacken, Kataplexie (plötzliche Muskelschwäche bei Emotionen), hypnagoge Halluzinationen, Schlafparalyse. Familiäre Häufung. Erfrischung nach kurzem Schlaf. Abgrenzung: Absencen = kurze Bewusstseinsaussetzer bei Epilepsie. Schlafapnoe führt nicht zu Kataplexie.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
    terms: [
      Term(term: 'Kataplexie', definition: 'Plötzlicher Verlust des Muskeltonus bei Emotionen – typisch für Narkolepsie'),
    ],
  ),
  Flashcard(
    text: 'Pavor nocturnus (Nachtangst): Plötzlicher Panikschrei mit vegetativen Symptomen (Tachykardie, Schwitzen). Tritt im ersten Drittel des Nachtschlafs auf (Tiefschlaf). Kind hat typischerweise keine Erinnerung (Amnesie). Gehört zu den Parasomnien. Therapie: Aufklärung und Beruhigung der Eltern, keine Medikamente als Standard.',
    tags: ['F5 – Verhaltensauffälligkeiten', 'F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text: 'Differentialdiagnosen bei Untergewicht: Anorexia nervosa, Leukämie und konsumierende Erkrankungen, Hyperthyreose (erhöhter Stoffwechsel), körperdysmorphe Störung, Zwangserkrankungen mit Nahrungsritualen, Diabetes mellitus Typ 1. Vor Diagnose Anorexie müssen organische Ursachen ausgeschlossen werden.',
    tags: ['F5 – Verhaltensauffälligkeiten', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'FASD (Fetales Alkoholsyndrom): Typische Gesichtsmerkmale – schmale Oberlippe, glattes Philtrum, kurze Lidspalten. Minderwuchs. Störungen der Exekutivfunktionen. Kein sicherer Alkoholkonsum in der Schwangerschaft – Schädigung in jedem Trimenon möglich.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'FASD', definition: 'Fetales Alkoholsyndrom – vorgeburtliche Schädigung durch Alkohol mit typischen Gesichtsmerkmalen'),
    ],
  ),

  // ============================================================
  // TEIL 8: F6 - PERSÖNLICHKEITSSTÖRUNGEN (98-113)
  // ============================================================
  Flashcard(
    text: 'Allgemeine Kriterien Persönlichkeitsstörungen (F60): Tief verwurzelte, anhaltende Verhaltensmuster, die deutlich von kulturell erwarteten Normen abweichen. Beginn in Kindheit/Adoleszenz, stabil im Erwachsenenalter. Betreffen: Kognition, Affektivität, Impulskontrolle und Beziehungsgestaltung. PS vs. Akzentuierung: PS = tiefgreifend, unflexibel, Leidensdruck. Akzentuierung = noch flexibel.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text: 'F60.0 – Paranoide PS: Misstrauen, Empfindlichkeit gegenüber Zurückweisung, Streitsucht, Überbewertung, Selbstbezogenheit. Paranoide sind NICHT von anderen abhängig, sondern eher misstrauisch und eigenbrötlerisch. Beharren auf eigenen Rechten. Cluster A (sonderbar).',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Paranoide PS (F60.0)', definition: 'Übermäßiges Misstrauen, Empfindlichkeit, Streitsucht – Cluster A'),
    ],
  ),
  Flashcard(
    text: 'F60.1 – Schizoide PS: Emotionale Kühle, Distanziertheit, Anhedonie, Einzelgänger. Wenig Interesse an sozialen oder sexuellen Kontakten. Mangel an engen Freunden. Gleichgültigkeit gegenüber Lob und Kritik. Cluster A (sonderbar). Nicht zu verwechseln mit Schizophrenie!',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Schizoide PS (F60.1)', definition: 'Emotionale Kühle, Einzelgänger, wenig Interesse an Kontakten – Cluster A'),
    ],
  ),
  Flashcard(
    text: 'F60.2 – Dissoziale (antisoziale) PS: Missachtung sozialer Normen und Rechte anderer. Fehlende Empathie, fehlendes Schuldbewusstsein. Sehr niedrige Frustrationstoleranz mit Neigung zu aggressivem Verhalten. Cluster B (dramatisch). Abgrenzung: Schizoide PS = emotionale Distanz, NICHT aggressiv.',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Dissoziale PS (F60.2)', definition: 'Missachtung sozialer Normen, fehlende Empathie, Aggressivität – Cluster B'),
    ],
  ),
  Flashcard(
    text: 'F60.3 – Emotional instabile PS: .30 Impulsiver Typ: Affektlabilität, mangelnde Impulskontrolle, emotionale Instabilität. .31 Borderline-Typ: ZUSÄTZLICH gestörtes Selbstbild, chronisches Gefühl der Leere, instabile intensive Beziehungen, Selbstschädigung. Cluster B (dramatisch). 3 Kernmerkmale Borderline: Leere, Impulsivität, Selbstschädigung.',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Borderline-PS (F60.31)', definition: 'Gestörtes Selbstbild, chronische Leere, instabile Beziehungen, Selbstschädigung'),
    ],
  ),
  Flashcard(
    text: 'F60.4 – Histrionische PS: Dramatisierung, Theatralik, übertriebener Gefühlsausdruck, Suggestibilität, Aufmerksamkeitssuche, flache und labile Affektivität. Bedürfnis im Mittelpunkt zu stehen. Cluster B (dramatisch). Abgrenzung: Bedürfnis nach Bewunderung = eher narzisstische PS.',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Histrionische PS (F60.4)', definition: 'Dramatisierung, Theatralik, Aufmerksamkeitssuche – Cluster B'),
    ],
  ),
  Flashcard(
    text: 'F60.5 – Anankastische (zwanghafte) PS: Perfektionismus, Zweifel, Rigidität, übermäßige Gewissenhaftigkeit, Pedanterie. ICH-SYNTON (wird als Teil der Persönlichkeit erlebt). Cluster C (ängstlich). Abgrenzung zur Zwangsstörung (F42): Zwangsstörung = ICH-DYSTON (wird als fremd/quälend erlebt).',
    tags: ['F6 – Persönlichkeitsstörungen', 'Differentialdiagnosen'],
    terms: [
      Term(term: 'Anankastische PS (F60.5)', definition: 'Perfektionismus, Rigidität, übermäßige Gewissenhaftigkeit – ich-synton, Cluster C'),
    ],
  ),
  Flashcard(
    text: 'F60.6 – Ängstliche (vermeidende) PS: Anspannung, Unsicherheit, Überempfindlichkeit gegen Kritik. Vermeidung sozialer Kontakte aus Angst vor Ablehnung. WÜNSCHT sich aber Kontakte (im Gegensatz zur schizoiden PS). Cluster C (ängstlich).',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Ängstliche PS (F60.6)', definition: 'Vermeidung aus Angst vor Ablehnung, wünscht sich aber Kontakte – Cluster C'),
    ],
  ),
  Flashcard(
    text: 'F60.7 – Abhängige (asthenische) PS: Überlässt Entscheidungen anderen, Trennungsangst, Hilflosigkeit, Unterordnung eigener Bedürfnisse. Kann nicht allein entscheiden. Ausgeprägte Angst vor Alleinsein/Verlassenwerden. Cluster C (ängstlich). Abgrenzung: Streitsucht = paranoide PS. Perfektionismus = anankastische PS.',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Abhängige PS (F60.7)', definition: 'Verlassensangst, Entscheidungsunfähigkeit, Unterordnung – Cluster C'),
    ],
  ),
  Flashcard(
    text: 'PS-Cluster: Cluster A (sonderbar/exzentrisch): Paranoid, schizoid, [schizotyp]. Cluster B (dramatisch/emotional): Dissozial, emotional instabil (Borderline), histrionisch, [narzisstisch]. Cluster C (ängstlich/furchtsam): Vermeidend (ängstlich), abhängig, anankastisch (zwanghaft).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text: 'F61 – Kombinierte und sonstige PS: Mischbild mehrerer PS-Züge, das keiner einzelnen Kategorie zugeordnet werden kann. F62 – Andauernde Persönlichkeitsänderung: Nach Extrembelastung (z.B. KZ, Geiselnahme) oder schwerer psychiatrischer Krankheit. Nicht als PS (F60) klassifizierbar, da erworben, nicht angeboren.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text: 'Ich-synton vs. ich-dyston: Persönlichkeitsstörungen sind definitionsgemäß ich-synton (als zum Selbst gehörig). In der Manie fühlt sich der Patient großartig (ich-synton). Bei Schizophrenie werden Halluzinationen als real erlebt (ich-synton). Zwänge bei Zwangsstörung (F42) sind typischerweise ich-DYSTON. Wahn wird als real erlebt (ich-synton).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text: 'Störungen der Impulskontrolle und Geschlechtsidentität: Pathologisches Spielen, Pyromanie, Kleptomanie gehören zu F63. Geschlechtsinkongruenz ist eine Störung der Geschlechtsidentität (F64), KEINE Störung der Sexualpräferenz. Paraphilien (Fetischismus, Sadismus, Pädophilie) = Störungen der Sexualpräferenz (F65).',
    tags: ['F6 – Persönlichkeitsstörungen'],
    terms: [
      Term(term: 'Paraphilien (F65)', definition: 'Störungen der Sexualpräferenz: Fetischismus, Sadismus, Pädophilie u.a.'),
    ],
  ),

  // ============================================================
  // TEIL 9: F7-F9 - INTELLIGENZMINDERUNG, ENTWICKLUNG, KINDHEIT (114-129)
  // ============================================================
  Flashcard(
    text: 'F7 – Intelligenzminderung nach IQ: F70 Leicht (IQ 50-69, mentales Alter 9-12 Jahre). F71 Mittelgradig (IQ 35-49, 6-9 Jahre). F72 Schwer (IQ 20-34, 3-6 Jahre). F73 Schwerst (IQ <20, <3 Jahre). Merke: IQ-Stufen "70-50-35-20". Durchschnittlicher IQ = 100 (Normalbereich 85-115, 68% der Bevölkerung).',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text: 'Intelligenzminderung – Merksätze: Beginnt ab IQ <70. Genetische Faktoren (z.B. Down-Syndrom) sind gesicherte Ursachen. Keine Heilung möglich, aber frühe Förderung kann Selbständigkeit verbessern. Erhöhtes Risiko für psychische und physische Komorbiditäten. VT oder medikamentöse Behandlung ist möglich. Demenz kann zusätzlich auftreten.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text: 'F80 – Umschriebene Sprachentwicklungsstörungen: Artikulationsstörung, expressive und rezeptive Sprachstörung. F81 – Umschriebene schulische Entwicklungsstörungen: Lese-Rechtschreibstörung (Legasthenie) und Rechenstörung (Dyskalkulie). Legasthenie: Normaler IQ, kann jede Schulform besuchen, gezielt behandelbar.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'Legasthenie', definition: 'Lese-Rechtschreibstörung bei normalem IQ – gezielt behandelbar'),
    ],
  ),
  Flashcard(
    text: 'F82 – Umschriebene motorische Entwicklungsstörung: Koordinationsstörung, nicht durch Intelligenzmangel erklärbar. F84.0 – Frühkindlicher Autismus (Kanner-Syndrom): Beginn vor dem 3. Lebensjahr. Trias: Soziale Interaktion↓, Kommunikation↓, stereotype Verhaltensweisen. Jungen häufiger betroffen. Tiefgreifende Entwicklungsstörung.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'Frühkindlicher Autismus (F84.0)', definition: 'Kanner-Syndrom: Soziale Interaktion↓, Kommunikation↓, Stereotypien – vor 3. LJ'),
    ],
  ),
  Flashcard(
    text: 'F84.5 – Asperger-Syndrom: Soziale Interaktion eingeschränkt, OHNE Sprach- oder Kognitionsverzögerung. Spezialinteressen, motorische Unbeholfenheit. Abgrenzung zum frühkindlichen Autismus: Asperger hat normale Sprachentwicklung und normale/überdurchschnittliche Intelligenz. Beide gehören zum Autismus-Spektrum.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'Asperger-Syndrom (F84.5)', definition: 'Autismus-Spektrum OHNE Sprach-/Kognitionsverzögerung, mit Spezialinteressen'),
    ],
  ),
  Flashcard(
    text: 'F90 – Hyperkinetische Störungen (ADHS): Aufmerksamkeitsdefizit + Hyperaktivität + Impulsivität. Beginn vor dem 7. Lebensjahr, Symptome ≥6 Monate, in ≥2 Situationen (z.B. Schule und Zuhause). Jungen häufiger betroffen (ca. 3:1). Erhöhtes Unfallrisiko. Kann bis ins Erwachsenenalter fortbestehen. ADS = ohne Hyperaktivität.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'ADHS (F90)', definition: 'Aufmerksamkeitsdefizit + Hyperaktivität + Impulsivität – Beginn vor 7. LJ, ≥6 Monate'),
    ],
  ),
  Flashcard(
    text: 'ADHS – Therapie und Komorbiditäten: Therapie der Wahl: Stimulanzien (z.B. Methylphenidat), KEINE Beruhigungsmittel. Verhaltenstherapie ist leitliniengemäß. Komorbiditäten: Tic-Störungen, Störungen des Sozialverhaltens. Ich-Störungen gehören NICHT zu den ADHS-Symptomen.',
    tags: ['F7-F9 – Entwicklung & Kindheit', 'Therapieverfahren'],
    terms: [
      Term(term: 'Methylphenidat', definition: 'Stimulanz zur ADHS-Behandlung – Therapie der Wahl, KEIN Beruhigungsmittel'),
    ],
  ),
  Flashcard(
    text: 'F91 – Störung des Sozialverhaltens: Dissoziales Verhalten: Aggressivität, Regelverstöße, Tierquälerei, Stehlen, Lügen. Abgrenzung zur dissozialen PS (F60.2): Kinder/Jugendliche erhalten F91, Erwachsene F60.2. F93 – Emotionale Störungen des Kindesalters: Trennungsangst, phobische Störung, soziale Ängstlichkeit (altertypische Verstärkung normaler Emotionen).',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text: 'F94 – Störungen sozialer Funktionen: Elektiver Mutismus (Kind spricht nur in bestimmten Situationen), reaktive Bindungsstörung (im Kontext von Vernachlässigung/Misshandlung, vor 5. LJ), Bindungsstörung mit Enthemmung. Abgrenzung: Reaktive Bindungsstörung hat keine autismusvergleichbaren kognitiven Defizite.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'Elektiver Mutismus', definition: 'Kind spricht nur in bestimmten Situationen (z.B. zu Hause ja, in Schule nein)'),
    ],
  ),
  Flashcard(
    text: 'F95 – Ticstörungen: Motorische und/oder vokale Tics. F95.2 = Tourette-Syndrom (kombiniert): Multiple motorische + mind. 1 vokaler Tic über ≥12 Monate. Hauptmanifestationsalter 6-8 Jahre. Koprolalie (zwanghaftes Aussprechen obszöner Wörter) und Echolalie können auftreten. Gehört zu den Ticstörungen, NICHT zu den Epilepsien.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'Tourette-Syndrom (F95.2)', definition: 'Multiple motorische + vokale Tics ≥12 Monate – Koprolalie möglich'),
      Term(term: 'Echolalie', definition: 'Zwanghaftes Nachsprechen von gehörten Wörtern/Sätzen'),
    ],
  ),
  Flashcard(
    text: 'F98 – Sonstige Verhaltens-/emotionale Störungen: Enuresis (Einnässen – vor 5. LJ entwicklungsbedingt normal), Enkopresis (Einkoten), Fütterstörung, Stereotypien. Sekundäre Enuresis (nach ≥6 Monaten Trockenheit) ist häufiger mit psychischen Komorbiditäten assoziiert als primäre. Nächtliches Einnässen ist häufiger als tagsüber.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
    terms: [
      Term(term: 'Enuresis', definition: 'Einnässen – vor 5. LJ normal, danach diagnostisch relevant'),
      Term(term: 'Enkopresis', definition: 'Unwillkürliches oder willkürliches Einkoten ab dem 4. LJ'),
    ],
  ),
  Flashcard(
    text: 'Parkinson-Trias (nicht F-Diagnose, aber prüfungsrelevant): „RAT" – Rigor (Muskelsteifheit), Akinese (Bewegungsarmut), Ruhetremor (Zittern in Ruhe, NICHT Intentionstremor). Dazu: Mikrografie (verkleinertes Schriftbild), monotone Stimme, Maskengesicht. Intentionstremor = Kleinhirnläsion.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Rigor', definition: 'Muskelsteifheit – Kardinalsymptom bei Parkinson'),
      Term(term: 'Akinese', definition: 'Bewegungsarmut bis Bewegungslosigkeit – Kardinalsymptom bei Parkinson'),
      Term(term: 'Mikrografie', definition: 'Verkleinertes Schriftbild – typisch bei Parkinson'),
    ],
  ),

  // ============================================================
  // TEIL 10: DIFFERENTIALDIAGNOSEN & PRÜFUNGSTIPPS (130-142)
  // ============================================================
  Flashcard(
    text: 'Prüfungsklassiker – Differentialdiagnosen (Teil 1): Demenz vs. Delir: Demenz = chronisch, klares Bewusstsein. Delir = akut, getrübtes Bewusstsein. Demenz vs. Depression (Pseudodemenz): Depression = klagt aktiv, "weiß nicht". Demenz = bagatellisiert, Konfabulationen. Schizophrenie vs. wahnhafte Störung: F22 = isolierter Wahn OHNE Halluzinationen, Persönlichkeit erhalten.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Prüfungsklassiker – Differentialdiagnosen (Teil 2): Schizophrenie vs. schizoaffektiv: Schizoaffektiv = gleichzeitig schizophrene UND affektive Symptome. Depression vs. Dysthymia: Depression = episodisch, schwerer. Dysthymia = chronisch ≥2J, leichter. Bipolar vs. rezidivierende Depression: Bipolar = mind. 1 manische Episode. Rezidivierend = NUR depressive Episoden.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Prüfungsklassiker – Differentialdiagnosen (Teil 3): Zwang vs. Wahn: Zwang = ICH-DYSTON (als sinnlos erkannt). Wahn = ICH-SYNTON (unerschütterliche Überzeugung). Panikstörung vs. GAD: Panik = episodisch, attackenartig. GAD = anhaltend, ≥6 Monate, frei flottierend. Anpassungsstörung vs. PTBS: PTBS = nach schwerem Trauma, Flashbacks. Anpassungsstörung = nach beliebigem Ereignis.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Ausschluss organischer Ursachen: Bei JEDER psychischen Störung muss zuerst eine organische Ursache ausgeschlossen werden – das ist HPP-Kernkompetenz! Vor jeder Psychotherapie ist eine somatische Abklärung notwendig. Beispiele: Hypothyreose → Depression, Hirntumor → Persönlichkeitsveränderung, Hypoglykämie → Angst.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Notfälle erkennen: Delir, akute Psychose, schwere Intoxikation/Entzug, akute Suizidalität → sofort Notarzt/Einweisung! Ein psychiatrischer Notfall erfordert sofortiges Handeln zur Abwendung von Lebensgefahr. Therapie muss sofort und symptomorientiert erfolgen. HPP muss Notfälle erkennen und angemessen reagieren!',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'HPP-Grenzen: HPP darf KEINE organischen Erkrankungen diagnostizieren, KEINE Medikamente verordnen, KEINE Suchtbehandlung (z.B. Methadon-Substitution) durchführen. Bei Verdacht auf organische Ursache → Überweisung an Arzt! Die Verordnung von Betäubungsmitteln unterliegt dem BtMG und bedarf eines Arztes.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Wichtige Zeitkriterien im Überblick: Depression ≥2 Wochen. GAD ≥6 Monate. Dysthymia ≥2 Jahre. Zyklothymia ≥2 Jahre. PTBS Latenz Wochen bis Monate. Anpassungsstörung innerhalb 1 Monat, max. 6 Monate. Somatisierungsstörung ≥2 Jahre. Demenz ≥6 Monate. Tourette ≥12 Monate. ADHS ≥6 Monate.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text: 'Wahrnehmungsstörungen: Halluzination = Wahrnehmung OHNE realen Reiz (akustisch, optisch, taktil, olfaktorisch, gustatorisch). Illusionäre Verkennung = Fehldeutung eines REAL vorhandenen Reizes (z.B. Sitzsack wird für Einbrecher gehalten). Illusionäre Verkennungen können auch bei Gesunden auftreten.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Halluzination', definition: 'Wahrnehmung OHNE realen Reiz – akustisch, optisch, taktil, olfaktorisch, gustatorisch'),
      Term(term: 'Illusionäre Verkennung', definition: 'Fehldeutung eines real vorhandenen Reizes – kann auch bei Gesunden auftreten'),
    ],
  ),
  Flashcard(
    text: 'Depersonalisation = Gefühl der Entfremdung vom eigenen Ich (man fühlt sich losgelöst vom eigenen Körper, Gedanken oder Gefühlen). Derealisation = Wahrnehmung der Umwelt als unwirklich/fremd. Können bei PTBS, dissoziativen Störungen, Panikattacken und Schizophrenie auftreten. Sind Ich-Störungen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text: 'Hypoglykämie – psychische Symptome (prüfungsrelevant): Zittern, Unruhe, Reizbarkeit (adrenerge Gegenregulation). Weitere: Schwitzen, Herzklopfen, Heißhunger, Konzentrationsstörungen. Kann psychische Störungen imitieren! Abgrenzung: Hypothyreose = "alles gedrosselt" (Antriebsmangel, Depression). Hyperthyreose = "alles auf Hochtouren" (Unruhe, Tachykardie).',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Tachykardie', definition: 'Beschleunigter Herzschlag (>100/min) – z.B. bei Hyperthyreose, Panikattacke, Entzug'),
      Term(term: 'Bradykardie', definition: 'Verlangsamter Herzschlag (<60/min) – z.B. bei Hypothyreose'),
    ],
  ),
  Flashcard(
    text: 'Epilepsie (prüfungsrelevant): Kann in jedem Alter auftreten. Absencen = kurze Bewusstseinsaussetzer (vor allem bei Kindern). EEG zur Diagnose. Benzodiazepinabrupt-Absetzen kann Krampfanfälle auslösen. Nach Gelegenheitskrampf: Fahrtauglichkeit beeinträchtigt. Abgrenzung: Dissoziative Krampfanfälle = keine epileptischen Veränderungen im EEG.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Absencen', definition: 'Kurze Bewusstseinsaussetzer bei Epilepsie – vor allem bei Kindern'),
    ],
  ),
  Flashcard(
    text: 'Psychopathologischer Befund – Orientierung: Orientierungsstörungen betreffen 4 Qualitäten: zeitlich, örtlich, situativ, zur Person (ZOSP). Zeitliche Orientierung ist meist zuerst gestört. Orientierung zur eigenen Person ist am tiefsten verankert und zuletzt betroffen. Prüfung: Datum, Ort, Situation und Name erfragen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text: 'Psychopathologischer Befund – Affekt: Affektverflachung (reduzierte emotionale Schwingungsfähigkeit). Parathymie (inadäquater Affekt, z.B. Lachen bei traurigem Inhalt). Affektinkontinenz (unkontrollierte Gefühlsausbrüche). Affektlabilität (rasche Stimmungswechsel). Ambivalenz (gleichzeitig widersprüchliche Gefühle). Alle können bei Schizophrenie auftreten.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Parathymie', definition: 'Inadäquater Affekt – z.B. Lachen bei traurigem Inhalt (typisch bei Schizophrenie)'),
      Term(term: 'Affektverflachung', definition: 'Reduzierte emotionale Schwingungsfähigkeit – Negativsymptom der Schizophrenie'),
      Term(term: 'Ambivalenz', definition: 'Gleichzeitiges Bestehen widersprüchlicher Gefühle oder Wünsche'),
    ],
  ),

  // ============================================================
  // TEIL 11: THERAPIEVERFAHREN (143-158)
  // ============================================================
  Flashcard(
    text: 'Kognitive Verhaltenstherapie (KVT) nach Beck: Tagesprotokolle zur Selbstbeobachtung, Erkennen automatischer dysfunktionaler Gedanken, kognitive Umstrukturierung (z.B. Reattribuierung). Denkfehler nach Beck: Generalisierung, Katastrophisierung, Schwarz-Weiß-Denken, willkürliches Schlussfolgern. Grundprinzip VT: Abweichendes Verhalten durch Lernprozesse erworben – und änderbar.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Kognitive Umstrukturierung', definition: 'Veränderung dysfunktionaler Denkmuster durch Hinterfragen und Neubewertung'),
      Term(term: 'Reattribuierung', definition: 'Neue Zuschreibung einseitiger Bewertungen – Technik der kognitiven Umstrukturierung'),
    ],
  ),
  Flashcard(
    text: 'Exposition/Konfrontation: Flooding (Reizüberflutung) und systematische Desensibilisierung sind Expositionsverfahren. Wirkmechanismus: Habituation (Gewöhnung). Wichtig: Angstkurve vollständig durchlaufen lassen! Tranquilizer würden Exposition unwirksam machen. Bei Zwängen: Exposition + Reaktionsverhinderung (ERP) = Goldstandard.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Flooding', definition: 'Reizüberflutung – direkte Konfrontation mit dem angstauslösenden Reiz'),
      Term(term: 'Habituation', definition: 'Gewöhnung – Angstreaktion nimmt bei wiederholter Exposition ab'),
      Term(term: 'Systematische Desensibilisierung', definition: 'Stufenweise Annäherung an den Angstreiz in Kombination mit Entspannung'),
    ],
  ),
  Flashcard(
    text: 'Psychoanalyse: Grundregel = Freies Assoziieren (alles aussprechen, was einfällt). Techniken: Deutung (Aufdecken unbewusster Bedeutung), Traumdeutung, Bearbeitung von Übertragung und Widerstand. Widerstand = alle Verhaltensweisen, die den therapeutischen Prozess behindern (Zuspätkommen, Vergessen, Schweigen). Therapeutische Ich-Spaltung ist eine Voraussetzung.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Freies Assoziieren', definition: 'Grundregel der Psychoanalyse – alles aussprechen, was einfällt'),
      Term(term: 'Übertragung', definition: 'Unbewusstes Übertragen früherer Beziehungsmuster auf den Therapeuten'),
      Term(term: 'Widerstand', definition: 'Unbewusste Abwehr gegen das Bewusstwerden verdrängter Inhalte'),
    ],
  ),
  Flashcard(
    text: 'Gesprächspsychotherapie nach Carl Rogers: 3 Grundhaltungen: (1) Empathie (einfühlendes Verstehen), (2) Akzeptanz (unbedingte Wertschätzung), (3) Kongruenz (Echtheit). Basiert auf der Aktualisierungstendenz. Nicht-direktiver Ansatz. Suggestivfragen und rhetorische Fragen sind NICHT vereinbar mit Rogers.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Empathie', definition: 'Einfühlendes Verstehen – 1. Grundhaltung nach Rogers'),
      Term(term: 'Kongruenz', definition: 'Echtheit/Authentizität des Therapeuten – 3. Grundhaltung nach Rogers'),
      Term(term: 'Aktualisierungstendenz', definition: 'Angeborene Tendenz zur Selbstentfaltung und Weiterentwicklung (Rogers)'),
    ],
  ),
  Flashcard(
    text: 'Systemische Therapie: Befasst sich mit Beziehungsmustern und dysfunktionalen familiären Interaktionen. Technik: Zirkuläres Fragen (ein Familienmitglied wird über Beziehung/Verhalten anderer befragt). Delegation (Stierlin) = Kinder erfüllen unbewusst Wünsche der Eltern. Parentifizierung = Rollenumkehr Kind↔Elternteil.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Zirkuläres Fragen', definition: 'Systemische Technik: Ein Familienmitglied über Beziehungen anderer befragen'),
      Term(term: 'Parentifizierung', definition: 'Pathologische Rollenumkehr: Kind übernimmt Elternfunktion'),
    ],
  ),
  Flashcard(
    text: 'EMDR (Eye Movement Desensitization and Reprocessing): Evidenzbasierte Methode zur Traumaverarbeitung. Bilaterale Stimulation (Augenbewegungen). Patient bleibt wach und bewusst (KEINE Hypnose). Ziel: Verarbeitung und Umstrukturierung dysfunktionaler Kognitionen. Nebenwirkungen möglich (emotionale Belastung).',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'EMDR', definition: 'Traumatherapie durch bilaterale Stimulation (Augenbewegungen) – evidenzbasiert'),
    ],
  ),
  Flashcard(
    text: 'DBT (Dialektisch-Behaviorale Therapie): Speziell für Borderline-PS entwickelt. Emotionsregulationstraining: Gefühle wahrnehmen und regulieren, NICHT vermeiden oder unterdrücken. Achtsamkeit bezieht sich auf gegenwärtige Gefühle. Stresstoleranz-Skills. CBASP wurde speziell für chronische Depression entwickelt.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'DBT', definition: 'Dialektisch-Behaviorale Therapie – speziell für Borderline entwickelt (Linehan)'),
      Term(term: 'CBASP', definition: 'Cognitive Behavioral Analysis System of Psychotherapy – für chronische Depression'),
    ],
  ),
  Flashcard(
    text: 'Neuroleptika/Antipsychotika: Antipsychotische, anxiolytische und sedierende Wirkung. Nebenwirkungen: Extrapyramidale Störungen (Dyskinesien, Akathisie, Frühdyskinesien), Gewichtszunahme, QT-Verlängerung. KEIN Abhängigkeitspotenzial (Unterschied zu Benzodiazepinen). Anticholinerge NW: Miktionsstörungen, Mydriasis.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Extrapyramidale NW', definition: 'Bewegungsstörungen durch Neuroleptika: Dyskinesien, Akathisie, Parkinsonoid'),
      Term(term: 'Akathisie', definition: 'Quälende Sitz-/Bewegungsunruhe – Nebenwirkung von Neuroleptika'),
      Term(term: 'Dyskinesien', definition: 'Unwillkürliche Bewegungen – häufige Neuroleptika-Nebenwirkung'),
    ],
  ),
  Flashcard(
    text: 'Lerntheorie – Verstärkung und Bestrafung: Positive Verstärkung = angenehmer Reiz wird hinzugefügt → Verhalten nimmt zu. Negative Verstärkung = unangenehmer Reiz wird entfernt → Verhalten nimmt zu (z.B. Kratzen → Juckreiz weg). Direkte Bestrafung = aversiver Reiz hinzugefügt. Indirekte Bestrafung (Typ II) = angenehmer Reiz entzogen.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Negative Verstärkung', definition: 'Verhalten nimmt zu, weil unangenehmer Reiz entfernt wird'),
      Term(term: 'Indirekte Bestrafung (Typ II)', definition: 'Angenehmer Reiz wird entzogen → Verhalten nimmt ab'),
    ],
  ),
  Flashcard(
    text: 'Katathymes Bilderleben gehört zu den tiefenpsychologisch fundierten Verfahren. Biofeedback und Flooding gehören zur Verhaltenstherapie. Das SORKC-Modell ist ein zentrales verhaltenstherapeutisches Analysemodell. Autogenes Training und Progressive Muskelrelaxation (PMR) sind Entspannungsverfahren. Bei akuter Psychose sind Entspannungsverfahren KONTRAINDIZIERT.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'SORKC-Modell', definition: 'Verhaltensanalyse: Stimulus-Organismus-Reaktion-Kontingenz-Consequenz'),
      Term(term: 'Katathymes Bilderleben', definition: 'Tiefenpsychologisches Verfahren mit gelenkter Imagination'),
    ],
  ),
  Flashcard(
    text: 'Resilienz = psychische Widerstandsfähigkeit trotz belastender Umstände. Reaktanz = Widerstand gegen wahrgenommene Einschränkung der Freiheit. Compliance = Therapietreue. Kognitive Dissonanz = innere Widersprüche zwischen Einstellungen/Verhalten. Erlernte Hilflosigkeit (Seligman) = lerntheoretisches Konzept, KEIN psychoanalytischer Abwehrmechanismus.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'Resilienz', definition: 'Psychische Widerstandsfähigkeit trotz belastender Umstände'),
      Term(term: 'Compliance', definition: 'Therapietreue – Ausmaß, in dem Patient Behandlungsempfehlungen befolgt'),
      Term(term: 'Erlernte Hilflosigkeit', definition: 'Lerntheoretisches Depressionsmodell (Seligman) – Überzeugung, nichts ändern zu können'),
    ],
  ),
  Flashcard(
    text: 'Serotonin: Kommt zu ca. 90% im Darm vor, beeinflusst Stimmung, Temperatur, Schmerz und Schlaf-Wach-Rhythmus. Kann die Blut-Hirn-Schranke NICHT passieren. SSRI wirken auch peripher → gastrointestinale Nebenwirkungen. Johanniskraut: Bei leichten bis mittelschweren Depressionen zugelassen, aber erhebliche Wechselwirkungen (CYP-Induktion).',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'SSRI', definition: 'Selektive Serotonin-Wiederaufnahmehemmer – Antidepressiva 1. Wahl'),
      Term(term: 'Serotonin', definition: 'Neurotransmitter für Stimmung, Schlaf, Schmerz – ca. 90% im Darm'),
    ],
  ),
  Flashcard(
    text: 'Selbstbeurteilungsbögen (z.B. BDI-II) erfassen: Stimmung, Antrieb, Schlaf, Appetit, Suizidgedanken. NICHT erfassbar: Wahnerleben (Betroffene erkennen Wahn nicht als solchen → Fremdbeurteilung nötig). Vor Therapiebeginn: Offene Fragen stellen, Suggestivfragen vermeiden, bei vagen Aussagen nachfragen.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'BDI-II', definition: 'Beck-Depressions-Inventar – Selbstbeurteilungsfragebogen für Depressivität'),
    ],
  ),

  // ============================================================
  // TEIL 12: PSYCHOPATHOLOGISCHER BEFUND (159-163)
  // ============================================================
  Flashcard(
    text: 'Psychomotorische Störungen bei Schizophrenie: Katalepsie (Erstarrung), Mutismus, Negativismus, wächserne Biegsamkeit (Flexibilitas cerea), Haltungs-/Bewegungs-/Sprachstereotypien, Echolalie, Befehlsautomatie, katatone Erregung und Stupor. Derealisation = Ich-Störung. Parathymie = inadäquater Affekt.',
    tags: ['F2 – Schizophrenie', 'Psychopathologie'],
    terms: [
      Term(term: 'Mutismus', definition: 'Schweigen/Verstummen bei erhaltener Sprachfähigkeit'),
      Term(term: 'Befehlsautomatie', definition: 'Automatisches Befolgen aller Aufforderungen – katatones Symptom'),
    ],
  ),
  Flashcard(
    text: 'Neuroanatomie (prüfungsrelevant): Corpus callosum = verbindet Großhirnhemisphären. Hippocampus = Gedächtnisbildung. Kleinhirn = motorische Koordination, Feinmotorik. Hirnstamm = Atmung, Kreislauf. Hypothalamus = steuert autonomes NS. Sympathikus = Fight-or-Flight. Parasympathikus = Rest-and-Digest. Limbisches System = Emotionen.',
    tags: ['Psychopathologie'],
    terms: [
      Term(term: 'Hippocampus', definition: 'Hirnstruktur für Gedächtnisbildung und Überführung ins Langzeitgedächtnis'),
      Term(term: 'Limbisches System', definition: 'Hirnregion für Emotionsverarbeitung, Motivation und Gedächtnis'),
    ],
  ),
  Flashcard(
    text: 'MS (Multiple Sklerose) – psychische Symptome: Euphorie, Affektverflachung, kognitive Beeinträchtigungen bis zur Demenz, selten paranoide Symptome. Sehstörungen durch Optikusneuritis. Flashbacks sind NICHT typisch für MS (sondern für PTBS). MS kann psychiatrische Symptome verursachen → organische Ursache ausschließen!',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text: 'Migräne (prüfungsrelevant): Lichtempfindlichkeit, Übelkeit/Erbrechen. Auraphase: Flimmerskotome (Sehstörungen). Körperliche Betätigung verschlechtert die Kopfschmerzen. Bestimmte Lebensmittel können triggern. Am häufigsten bei Frauen im gebärfähigen Alter. Bessert sich oft nach der Menopause.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text: 'Fibromyalgie: Chronische Schmerzen in mehreren Körperregionen, Schlafstörungen, Müdigkeit. KVT ist wirksamer Behandlungsansatz. NICHT gleichzusetzen mit somatoformer Schmerzstörung. Rheumafaktoren sind nicht typisch. Betrifft ca. 2-4% der Bevölkerung.',
    tags: ['Psychopathologie'],
  ),

  // ============================================================
  // TEIL 13: RECHTLICHE THEMEN (164-200)
  // ============================================================
  Flashcard(
    text: 'Es kann immer nur der Richter rechtlich über die zwangsweise Unterbringung und Behandlung gegen den Willen des Betroffenen entscheiden. Weder Ärzte, noch Heilpraktiker, noch Angehörige können allein eine Unterbringung anordnen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Rechtsgrundlagen für eine geschlossene Unterbringung: (1) StGB §63 (Maßregelvollzug bei Straftaten), (2) PsychKG (öffentlich-rechtlich bei Fremd-/Selbstgefährdung), (3) BGB-Betreuungsrecht (zivilrechtlich mit Gerichtsgenehmigung), (4) Freiwillige Aufnahme. Die Ärztekammer hat KEINE Anordnungskompetenz. Merke: 4 Rechtsgrundlagen: StGB, PsychKG, BGB, freiwillig.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'PsychKG', definition: 'Psychisch-Kranken-Gesetz – öffentlich-rechtliche Unterbringung bei Fremd-/Selbstgefährdung'),
      Term(term: 'Maßregelvollzug (§63 StGB)', definition: 'Unterbringung in psychiatrischem Krankenhaus nach Straftat bei Schuldunfähigkeit'),
    ],
  ),
  Flashcard(
    text: 'Unterbringung nach PsychKG: Zulässig zur Abwehr akuter erheblicher Gefahren für Gesundheit/Leben des Betroffenen oder bedeutende Rechtsgüter anderer. Das Amtsgericht ordnet an. Ordnungsamt kann bei Gefahr im Verzug sofortige kurzfristige Unterbringung veranlassen. Zeitlich befristet. Behandlungsunwilligkeit allein, Gesetzesverstöße oder HP-Attest reichen NICHT aus.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Unterbringung nach Betreuungsrecht: Muss zum Wohl des Betreuten erforderlich sein. Bedarf der Genehmigung des Betreuungsgerichts (bei Gefahr im Verzug: nachträgliche Genehmigung). Sachverständigengutachten erforderlich. Auch in Pflegeheimen möglich. Patientenverfügung schließt Unterbringung nicht grundsätzlich aus. Zeitlich befristet, regelmäßige Überprüfung.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Patientenverfügung', definition: 'Vorausverfügung über med. Behandlung – schließt Unterbringung nicht grundsätzlich aus'),
    ],
  ),
  Flashcard(
    text: 'Die Unterbringung ist bei Suizidgefahr oder drohendem Gesundheitsschaden zulässig. Auch ohne akute psychiatrische Diagnose möglich (z.B. bei Demenz). Kann auch in Pflegeheimen erfolgen. Das offene Ansprechen von Suizidalität erhöht NICHT das Suizidrisiko. Bei passiver Suizidalität ist eine sofortige Unterbringung nicht angemessen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Nach §1631b BGB bedarf die Unterbringung eines Minderjährigen der Genehmigung des Familiengerichts. Erziehungsberechtigte können den Antrag stellen. Auch Fremdgefährdung kann ein Grund sein. Bei Kindeswohlgefährdung kann auch ohne Einverständnis der Eltern eine Unterbringung erfolgen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Rechtliche Betreuung: Voraussetzung ist, dass der Betroffene aufgrund psychischer Erkrankung oder geistiger/seelischer Behinderung seine Angelegenheiten nicht selbst besorgen kann. Nur für Volljährige (Minderjährige: Vormundschaft). Angehörige können beim Gericht anregen. Überprüfung mind. alle 7 Jahre. Führt NICHT automatisch zur Geschäftsunfähigkeit.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Rechtliche Betreuung', definition: 'Gesetzliche Vertretung für Volljährige, die ihre Angelegenheiten nicht selbst besorgen können'),
    ],
  ),
  Flashcard(
    text: 'Der Aufgabenkreis des Betreuers kann auf bestimmte Bereiche beschränkt werden (z.B. Gesundheitsfürsorge). Zwangsweise Behandlung ist mit richterlicher Genehmigung möglich. Der Betreuer kann die Unterbringung NICHT eigenständig anordnen – Genehmigung des Betreuungsgerichts erforderlich. Keine gesetzliche Methodenbeschränkung für HP bei Behandlung von Betreuten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Organische psychische Störungen (Demenz) sind ein häufiger Anlass für Betreuung. Auch Geschäftsunfähige können eine Betreuung beantragen. Psychotherapie erfordert keine gerichtliche Genehmigung. Nach Betreuungsrecht kann eine Unterbringung auch zum Zwecke einer notwendigen ärztlichen Untersuchung erfolgen (§1906 BGB).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Einwilligungsvorbehalt (§1825 BGB): Bestimmte Rechtsgeschäfte des Betreuten werden ohne Zustimmung des Betreuers nicht wirksam. Höchstpersönliche Rechtsgeschäfte (Eheschließung, Testament) sind ausgenommen. Dient dem Schutz des Betreuten. Wird befristet und regelmäßig überprüft.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Einwilligungsvorbehalt', definition: 'Bestimmte Rechtsgeschäfte des Betreuten nur mit Zustimmung des Betreuers wirksam'),
    ],
  ),
  Flashcard(
    text: 'Ist der Patient einwilligungsfähig, hat sein Wille Vorrang (Selbstbestimmungsrecht). Ist er nicht einwilligungsfähig und besteht ein Gesundheitsrisiko, muss der Betreuer die Genehmigung beim Betreuungsgericht beantragen (ärztliche Zwangsmaßnahme). Der Betreuer kann NICHT einfach einwilligen, sondern muss zum Wohl des Betreuten handeln.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Geschäftsunfähigkeit nach §104 BGB: Geschäftsunfähig ist, wer das 7. Lebensjahr nicht vollendet hat ODER sich in einem die freie Willensbestimmung ausschließenden Zustand krankhafter Störung der Geistestätigkeit befindet (sofern nicht vorübergehend). Nicht jeder akute psychische Zustand führt zur Geschäftsunfähigkeit. Rechenstörung und Analphabetismus begründen KEINE Geschäftsunfähigkeit.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Erlaubnis zur Psychotherapie in Deutschland: Ärzte, unbeschränkter Heilpraktiker, Heilpraktiker für Psychotherapie (HPP), Psychologische Psychotherapeuten. Ein Psychologiestudium allein befähigt NICHT zur Behandlung – erst mit therapeutischer Ausbildung + Approbation darf man sich "Psychologischer Psychotherapeut" nennen.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Approbation', definition: 'Staatliche Zulassung zur Berufsausübung als Arzt oder Psychotherapeut'),
    ],
  ),
  Flashcard(
    text: 'Der HPP darf alle psychotherapeutischen Verfahren anwenden: kognitive VT, tiefenpsychologisch fundierte PT, Psychoanalyse, Gruppentherapie, Einzelhypnose, psychologische Testverfahren (Intelligenztests). NICHT erlaubt: Osteopathie (körperliches Verfahren → große HP-Erlaubnis nötig), Akupunktur (invasiv), Medikamentenverordnung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'HPP-Tätigkeitsverbote: Substitutionstherapie mit Methadon (ärztliche Maßnahme), Medikamente verordnen (nur HP Vollzulassung oder Arzt), LSD-gestützte Therapie (Verstoß gegen BtMG), organische Erkrankungen diagnostizieren, Suchtbehandlung mit Substitution. Erlaubt: Gruppentherapie, EMDR, Expositionstherapie, tiefenpsychologische Therapie.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'HeilprG-Verbote: Verbot der Geburtshilfe (außer Notfall), Verbot der Behandlung von Mund-/Zahn-/Kiefererkrankungen (eigenes Zahnheilkundegesetz), Verbot der Heilkunde im Umherziehen (§3 HPG). Das HeilprG stammt von 1939. Ärzte benötigen keine HP-Erlaubnis. Die Hilfeleistungspflicht im Notfall ergibt sich aus StGB (§323c), NICHT aus dem HeilprG.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Wichtige Gesetze für HPP: HeilprG = regelt Berufsbezeichnung Heilpraktiker. BOH = Weiterbildungspflicht. IfSG = Meldung von Infektionskrankheiten (z.B. Masern). BtMG = Betäubungsmittel (z.B. Fentanyl). AMG = Arzneimittel. HWG = Verbot von Heilversprechen (Heilmittelwerbegesetz). Der sektorale HP wird durch das HeilprG geregelt, NICHT PsychThG.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'IfSG', definition: 'Infektionsschutzgesetz – regelt Meldepflicht bei Infektionskrankheiten'),
      Term(term: 'BtMG', definition: 'Betäubungsmittelgesetz – regelt Umgang mit Betäubungsmitteln (z.B. Fentanyl, Methadon)'),
    ],
  ),
  Flashcard(
    text: 'Patientenrechtegesetz (§§630a-630h BGB): Aufklärungspflicht, Aufbewahrungspflicht der Patientenakte (10 Jahre nach §630f BGB), Dokumentationspflicht, Informationspflicht. Die Meldepflicht ist NICHT im Patientenrechtegesetz, sondern im IfSG geregelt. Elektronische Dokumentation ist zulässig. Arztbriefe sind Teil der Patientenakte.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Dokumentationspflicht', definition: 'Pflicht zur Dokumentation der Behandlung – Aufbewahrung 10 Jahre (§630f BGB)'),
    ],
  ),
  Flashcard(
    text: 'Akteneinsicht (§630g BGB): Patienten haben grundsätzlich Recht auf Einsicht. Verweigerung nur bei erheblichen therapeutischen Gründen (z.B. Suizidgefahr durch Diagnosekenntnis) oder wenn Rechte Dritter verletzt würden. Verweigerung muss begründet sein. Die Form des Antrags ist kein Verweigerungsgrund.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Schweigepflicht und Durchbrechung: Schriftliche Entbindung durch den Patienten erlaubt Weitergabe. HP haben KEIN Zeugnisverweigerungsrecht im Strafverfahren (nur Ärzte, Psychotherapeuten nach §53 StPO) und müssen aussagen. Durchbrechung der Schweigepflicht bei: geplanten schweren Straftaten (§34 StGB, rechtfertigender Notstand), akuter Suizidalität.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Schweigepflicht', definition: 'Pflicht zur Verschwiegenheit über Patientendaten – Durchbrechung nur in Ausnahmefällen'),
    ],
  ),
  Flashcard(
    text: 'Meldepflicht nach IfSG: Bestimmte Infektionskrankheiten müssen gemeldet werden (z.B. Masern). Nicht im Patientenrechtegesetz geregelt, sondern im Infektionsschutzgesetz. Heilpraktiker unterliegen der Meldepflicht. Die Meldung geht an das zuständige Gesundheitsamt.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Praxisgründung HPP: Muss beim Gesundheitsamt angemeldet werden. Feste Praxisadresse erforderlich. Finanzamt-Anmeldung sofort bei Aufnahme der Tätigkeit. Angestellte müssen jährlich über Arbeitsschutz unterwiesen werden. Berufsgenossenschaft: Anmeldung als Arbeitgeber Pflicht.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Berufskunde HPP: Nur approbierte Psychotherapeuten dürfen die Berufsbezeichnung "Psychotherapeut" führen. HP müssen über Kosten aufklären (wirtschaftliche Aufklärungspflicht). GebüH ist nur Orientierungshilfe, nicht verbindlich. Private Versicherungen können HP-Leistungen erstatten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Antisuizidvertrag (Non-Suizid-Vertrag): Bei nicht akuter Suizidalität ein sinnvolles therapeutisches Instrument. Die bloße Äußerung von Suizidgedanken entbindet nicht automatisch von der Schweigepflicht – erst bei konkreter Gefahr besteht Handlungspflicht. Auch latente Suizidgedanken erfordern therapeutische Aufmerksamkeit.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Antisuizidvertrag', definition: 'Therapeutische Vereinbarung: Patient verpflichtet sich, vor Suizidhandlung Hilfe zu suchen'),
    ],
  ),
  Flashcard(
    text: 'Bei akuter Suizidalität muss ggf. eine beschützende stationäre Behandlung veranlasst werden. Der Patient darf nicht mehr alleine gelassen werden. Hopfen/Baldrian sind inadäquat. Nach Hause entlassen bei konkreten Suizidabsichten ist kontraindiziert. Die Frage nach Suizidalität dient der Risikoeinschätzung, nicht primär der Unterbringung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Bei gemeinsamem Sorgerecht müssen BEIDE Elternteile einer Behandlung des Kindes zustimmen. Ein 9-jähriges Kind ist nicht geschäftsfähig und kann keinen eigenen Behandlungsvertrag abschließen. Eine Schulbescheinigung ersetzt nicht die Einwilligung beider Sorgeberechtigten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Vor Behandlungsbeginn einer affektiven Störung muss eine organische Ursache ausgeschlossen werden. Bei schwerer Depression mit psychotischen Symptomen kann die zusätzliche Gabe eines Neuroleptikums erforderlich sein. Heilpraktiker dürfen eine Wochenbett-Depression behandeln, sofern keine Psychose vorliegt.',
    tags: ['Recht & Berufskunde', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text: 'Die Verordnung von Betäubungsmitteln unterliegt dem Betäubungsmittelgesetz (BtMG) und bedarf der Verordnung durch einen Arzt. Heilpraktiker dürfen keine Betäubungsmittel verordnen. Die Methadon-Substitution ist Ärzten mit Zusatzqualifikation vorbehalten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'HP Psychotherapie dürfen kognitive Umstrukturierung, berufsbezogenes Training, Kommunikationstraining und Einbeziehung von Angehörigen anbieten. LSD-gestützte Therapie ist VERBOTEN (Verstoß gegen BtMG). Einzelhypnose, Gruppenhypnose und KVT sind erlaubt. Akupunktur gehört NICHT zum Tätigkeitsbereich des HPP.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Eine vorübergehende Symptomverschlechterung (z.B. kurzfristige Angstausweitung bei Exposition) kann eine Nebenwirkung einer korrekt durchgeführten Therapie sein. Es gibt Instrumente wie den INEP zur Erfassung negativer Psychotherapieeffekte. Nebenwirkungen können auch bei korrekter Therapie auftreten.',
    tags: ['Therapieverfahren'],
    terms: [
      Term(term: 'INEP', definition: 'Inventar zur Erfassung negativer Effekte von Psychotherapie'),
    ],
  ),
  Flashcard(
    text: 'Bei Intelligenzminderung kann HP Psychotherapie eingesetzt werden. Auch die Anwendung psychologischer Testverfahren wie Intelligenztests ist dem HPP erlaubt. Es besteht kein generelles Behandlungsverbot für HP bei Kindern mit ADS/ADHS. Auch Kinder können mit analytischen Techniken und spieltherapeutischen Verfahren behandelt werden.',
    tags: ['Recht & Berufskunde', 'F7-F9 – Entwicklung & Kindheit'],
  ),

  // ============================================================
  // TEIL 15: ERGÄNZUNGEN (184-200)
  // ============================================================
  Flashcard(
    text: 'Akute Belastungsreaktion vs. Anpassungsstörung vs. PTBS: Akute Belastungsreaktion = sofort (Minuten), klingt in Stunden/Tagen ab. Anpassungsstörung = innerhalb 1 Monat nach Belastung, max. 6 Monate, nach beliebigem Lebensereignis. PTBS = nach schwerem Trauma, Latenz Wochen-Monate, Flashbacks + Vermeidung + Hyperarousal.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Neurasthenie (F48): Anhaltende Erschöpfbarkeit nach geringer Anstrengung. Abgrenzung: Fatigue = anhaltende Erschöpfung, häufig bei Krebserkrankungen, durch Ruhe nicht ausreichend gebessert. Fatigue und Neurasthenie sind NICHT synonym.',
    tags: ['F4 – Neurotische Störungen'],
    terms: [
      Term(term: 'Neurasthenie (F48)', definition: 'Erschöpfungssyndrom mit anhaltender Müdigkeit nach geringer Anstrengung'),
    ],
  ),
  Flashcard(
    text: 'Agoraphobie mit vs. ohne Panikstörung: F40.00 = Agoraphobie ohne Panikstörung. F40.01 = Agoraphobie mit Panikstörung. Panikstörung allein = F41.0. Wichtig: Agoraphobie kann auch ohne Panikattacken auftreten (reine Vermeidung). Die Kombination ist jedoch häufig.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'Therapie bei Angststörungen: Spezifische Phobie → Exposition (Flooding/systematische Desensibilisierung). Panikstörung → KVT mit Psychoedukation und Interoceptive Exposure. GAD → Sorgenexposition (Exposition in sensu). Soziale Phobie → KVT + soziales Kompetenztraining. Bei allen: Vor Therapie somatische Abklärung notwendig.',
    tags: ['Therapieverfahren', 'F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'Bipolare Störung – Episodentypen: Manische Episode (gehobene Stimmung), depressive Episode, gemischte Episode (F31.6 = gleichzeitig manische und depressive Symptome), hypomanische Episode (leichtere Form der Manie, keine Psychose). Bei jeder depressiven Episode nach (hypo-)manischen Phasen fragen, um bipolare Störung nicht zu übersehen!',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text: 'Wochenbettdepression vs. Wochenbettpsychose: Wochenbettdepression (postpartale Depression) = HPP darf behandeln, sofern keine Psychose vorliegt. Wochenbettpsychose = psychiatrischer Notfall, ärztliche Behandlung erforderlich. Postpartales Stimmungstief ("Baby Blues") = häufig, selbstlimitierend, keine Behandlung nötig.',
    tags: ['F3 – Affektive Störungen', 'Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Schlafhygiene-Regeln (prüfungsrelevant): Kein Mittagsschlaf (erhöht den Schlafdruck). Regelmäßiger Aufstehzeitpunkt (stabilisiert zirkadianen Rhythmus). Kein intensiver Sport kurz vor dem Schlafen. Keine sichtbare Uhr (fördert Grübeln). Bei Schlaflosigkeit aufstehen und erst bei Müdigkeit zurückkehren (Stimuluskontrolle).',
    tags: ['Therapieverfahren', 'F5 – Verhaltensauffälligkeiten'],
    terms: [
      Term(term: 'Stimuluskontrolle', definition: 'Schlaftherapie-Technik: Bett nur zum Schlafen nutzen, bei Schlaflosigkeit aufstehen'),
    ],
  ),
  Flashcard(
    text: 'Anorexia nervosa vs. Bulimia nervosa: Anorexia: BMI ≤17,5, Untergewicht, Körperschemastörung, Amenorrhö, höchste Mortalität. Bulimia: Normalgewicht, Essanfälle + Kompensation (Erbrechen, Laxantien), depressive Symptome. Binge-Eating: Übergewicht, Essanfälle OHNE Kompensation, Schuldgefühle.',
    tags: ['Differentialdiagnosen', 'F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text: 'Borderline-PS – Therapie und Notfälle: DBT (Dialektisch-Behaviorale Therapie) = Therapie der Wahl. 3 Kernmerkmale: chronische Leere, Impulsivität, Selbstschädigung. In der mündlichen Prüfung wird erwartet, dass bei Borderline aktiv nach Suizidalität gefragt wird. Instabile, intensive Beziehungen sind typisch.',
    tags: ['F6 – Persönlichkeitsstörungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text: 'Persönlichkeitsstörungen vs. Persönlichkeitsänderung: PS (F60) = tief verwurzelt, seit Kindheit/Adoleszenz, ich-synton. Persönlichkeitsänderung (F62) = erworben nach Extrembelastung oder schwerer psych. Krankheit. PS vs. Akzentuierung: PS = unflexibel, Leidensdruck/Funktionsbeeinträchtigung. Akzentuierung = ausgeprägte Züge, noch flexibel.',
    tags: ['F6 – Persönlichkeitsstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text: 'Abhängigkeit – körperlich vs. psychisch: Körperliche Abhängigkeit: Opiate, Benzodiazepine, Alkohol, Nikotin (Entzugssymptome). Psychische Abhängigkeit: Cannabis, Halluzinogene (LSD), MDMA, Kokain (vorwiegend psychisch). Stimulanzien (Kokain, Amphetamine): starke psychische, geringe körperliche Abhängigkeit.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text: 'PTBS – Therapieansatz: 3-Phasen-Modell: 1. Stabilisierung (Sicherheit herstellen, Ressourcen aufbauen). 2. Traumakonfrontation (erst wenn stabil! z.B. EMDR, prolongierte Exposition). 3. Integration und Neuorientierung. Frühe Konfrontation kann retraumatisierend wirken! Stabilisierung hat immer Vorrang.',
    tags: ['F4 – Neurotische Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text: 'Denkstörungen bei Manie: Formale Denkstörungen dominieren: Ideenflucht (schnelle Abfolge von Einfällen), Gedankenrasen, Zerfahrenheit. Abgrenzung: Bei Depression = Denkhemmung (verlangsamtes Denken). Verfolgungswahn = inhaltliche Denkstörung (Schizophrenie). Grübelzwang = eher bei Angststörungen.',
    tags: ['F3 – Affektive Störungen', 'Psychopathologie'],
    terms: [
      Term(term: 'Denkhemmung', definition: 'Verlangsamtes Denken – typisch bei Depression (Gegenteil von Ideenflucht)'),
    ],
  ),
  Flashcard(
    text: 'Delir bei verschiedenen Ursachen: Delirium tremens = Alkoholentzug. Anticholinerges Delir = Medikamentennebenwirkung. Delir bei Infektionen = besonders bei älteren Patienten. Postoperatives Delir. Drogeninduziertes Delir. Bei jedem Delir: Immer organische Ursache suchen! Akute organische Störungen sind immer als Notfall zu behandeln.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text: 'Somatoforme autonome Funktionsstörung (F45.3): Bezieht sich auf ein bestimmtes Organsystem (kardiovaskulär = Da-Costa-Syndrom/Herzneurose, gastrointestinal = Reizdarmsyndrom, respiratorisch = Hyperventilationssyndrom). Patienten zeigen vegetative Symptome, die sie einem bestimmten Organ zuschreiben.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'Dissoziative Konversionsstörungen im Detail: Neurologisch anmutende Symptome ohne organischen Befund – Lähmungen, Krampfanfälle, Sensibilitätsstörungen, Blindheit, Taubheit. Dissoziativer Stupor = Bewegungslosigkeit ohne organische Ursache. Alle dissoziativen Störungen: Keine hirnorganische Ursache nachweisbar.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text: 'Schizoaffektive Störung vs. Schizophrenie vs. affektive Störung: Schizoaffektiv = gleichzeitig schizophrene UND affektive Symptome in gleicher Episode. Bei Schizophrenie können depressive Symptome auftreten, dominieren aber nicht. Bei bipolarer Störung: psychotische Symptome möglich, aber schizophrene Erstrangsymptome fehlen.',
    tags: ['Differentialdiagnosen'],
  ),

  // ============================================================
  // TEIL 16: KONSOLIDIERTE LERNKARTEN (Zeitkriterien, Notfälle, HPP-Grenzen)
  // ============================================================
  Flashcard(
    text: 'Konsolidierte Zeitkriterien – alle auf einen Blick: ≥2 Wochen = Depressive Episode (F32). ≥1 Monat = Abhängigkeitssyndrom (3/6 Kriterien). Innerhalb 1 Monat = Anpassungsstörung Beginn (F43.2). Max. 6 Monate = Anpassungsstörung Dauer. ≥6 Monate = GAD (F41.1), ADHS (F90). ≥2 Jahre = Dysthymia (F34.1), Zyklothymia (F34.0). >3 Monate = Anhaltende wahnhafte Störung (F22). ≥12 Monate = Tourette-Syndrom (F95.2).',
    tags: ['Differentialdiagnosen', 'ICD-10 Grundlagen'],
    terms: [
      Term(term: 'Zeitkriterien', definition: 'Mindestdauern zur Diagnosestellung – häufig in der Prüfung abgefragt'),
    ],
  ),
  Flashcard(
    text: 'Wichtige Zahlenwerte für die Prüfung: BMI ≤17,5 = Anorexia nervosa. IQ <70 = Intelligenzminderung. Beginn vor 7. Lebensjahr = ADHS. Beginn vor 3. Lebensjahr = Frühkindlicher Autismus. 3 von 6 Kriterien = Abhängigkeit. 2 Haupt- + 2 Zusatzsymptome = leichte Depression. 90% Serotonin im Darm. Akute psychotische Störung = Beginn <2 Wochen.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text: 'Psychiatrische Notfälle – Übersicht für HPP: (1) Delir (F05) – Bewusstseinssstörung, lebensbedrohlich. (2) Akute Psychose – Realitätsverlust, Eigen-/Fremdgefährdung. (3) Schwere Intoxikation/Entzug – Atemdepression, Krampfanfälle. (4) Akute Suizidalität – sofortige Sicherung. (5) Malignes Neuroleptisches Syndrom – hohes Fieber, Rigor. (6) Katatoner Stupor – lebensbedrohlich. Bei allen: Notarzt rufen, Patient nicht allein lassen!',
    tags: ['Recht & Berufskunde', 'Differentialdiagnosen'],
    terms: [
      Term(term: 'Malignes Neuroleptisches Syndrom', definition: 'Lebensbedrohliche NW von Neuroleptika: Fieber, Rigor, Bewusstseinsstörung, CK↑'),
    ],
  ),
  Flashcard(
    text: 'HPP-Tätigkeitsumfang und -grenzen zusammengefasst: DARF: Alle psychotherapeutischen Verfahren anwenden (KVT, TP, PA, EMDR, Hypnose), psychologische Tests, Gruppentherapie, Kinder behandeln. DARF NICHT: Organische Diagnosen stellen, Medikamente/BtM verordnen, Suchtsubstitution durchführen, körperliche Verfahren (Akupunktur, Osteopathie), Berufsbezeichnung "Psychotherapeut" führen. MUSS: Somatische Abklärung veranlassen, Notfälle erkennen und überweisen, dokumentieren, Schweigepflicht wahren.',
    tags: ['Recht & Berufskunde'],
  ),

  // ============================================================
  // TEIL 17: ERWEITERTE RECHTLICHE THEMEN FÜR HPP
  // ============================================================
  Flashcard(
    text: 'Schuldfähigkeit nach StGB: §20 StGB = Schuldunfähigkeit bei krankhafter seelischer Störung, tiefgreifender Bewusstseinsstörung, Schwachsinn oder schwerer anderer seelischer Abartigkeit zum Tatzeitpunkt. §21 StGB = verminderte Schuldfähigkeit (Strafmilderung möglich). Merke: Alkoholrausch kann zur vorübergehenden Schuldunfähigkeit führen (Vollrausch §323a StGB). Gutachter beurteilen die Schuldfähigkeit, nicht der Therapeut.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Schuldunfähigkeit (§20 StGB)', definition: 'Aufgehobene Einsichts-/Steuerungsfähigkeit bei psychischer Störung zum Tatzeitpunkt'),
      Term(term: 'Verminderte Schuldfähigkeit (§21 StGB)', definition: 'Erheblich eingeschränkte Steuerungsfähigkeit – Strafmilderung möglich'),
    ],
  ),
  Flashcard(
    text: 'Die 4 Eingangsmerkmale des §20 StGB (biologische Voraussetzungen): (1) Krankhafte seelische Störung (z.B. Psychose, schwere Depression, Manie, Delir). (2) Tiefgreifende Bewusstseinsstörung (z.B. Affekttat, hochgradiger Rausch). (3) Schwachsinn (Intelligenzminderung). (4) Schwere andere seelische Abartigkeit (z.B. schwere PS, Sucht, Paraphilien). Persönlichkeitsstörungen können unter Nr. 4 fallen, wenn sie schwer ausgeprägt sind.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Garantenstellung und Garantenpflicht des HPP: Der HPP übernimmt mit der Behandlung eine Garantenstellung für den Patienten. Daraus folgt: Pflicht zur Gefahrenabwehr bei erkennbarer Suizidalität oder Fremdgefährdung. Unterlassung kann zur Strafbarkeit führen (§13 StGB Unterlassen). Die Garantenstellung endet mit dem Ende der Behandlungsbeziehung.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Garantenstellung', definition: 'Besondere Schutzpflicht des Therapeuten gegenüber dem Patienten durch Übernahme der Behandlung'),
    ],
  ),
  Flashcard(
    text: 'Unterlassene Hilfeleistung (§323c StGB): Jeder ist verpflichtet, bei Unglücksfällen oder gemeiner Gefahr/Not Hilfe zu leisten, soweit dies zumutbar ist. Gilt auch für den HPP. Verstoß: Geldstrafe oder Freiheitsstrafe bis 1 Jahr. Die Hilfeleistungspflicht ergibt sich aus dem StGB, NICHT aus dem Heilpraktikergesetz. In der Prüfung: Wann MUSS der HPP handeln (Notfall) vs. wann DARF er nicht behandeln (organisch)?',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Unterlassene Hilfeleistung (§323c StGB)', definition: 'Strafbare Nichtleistung von Hilfe bei Unglücksfällen oder gemeiner Gefahr'),
    ],
  ),
  Flashcard(
    text: 'Einwilligungsfähigkeit vs. Geschäftsfähigkeit: Einwilligungsfähigkeit = Fähigkeit, Art, Bedeutung und Tragweite einer Behandlung zu verstehen. Kein festes Mindestalter – wird individuell beurteilt. Auch Minderjährige können einwilligungsfähig sein. Geschäftsfähigkeit = rechtliche Fähigkeit, Willenserklärungen wirksam abzugeben (§§104ff BGB). Ab 18 Jahren voll geschäftsfähig. Wichtig: Einwilligungsfähigkeit ≠ Geschäftsfähigkeit. Ein geschäftsunfähiger Betreuter kann durchaus einwilligungsfähig sein.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Einwilligungsfähigkeit', definition: 'Fähigkeit, Art und Tragweite einer Behandlung zu verstehen – kein festes Mindestalter'),
    ],
  ),
  Flashcard(
    text: 'Behandlungsvertrag nach §630a BGB (Patientenrechtegesetz): Vertrag zwischen HPP und Patient. Pflichten des HPP: (1) Behandlung nach fachlichem Standard, (2) Aufklärungspflicht über Diagnose, Therapie, Risiken und Alternativen (§630e BGB), (3) Dokumentationspflicht (§630f BGB), (4) Einsichtnahmerecht gewähren (§630g BGB). Pflicht des Patienten: Vergütung. Der Behandlungsvertrag ist ein Dienstvertrag (Schulden der Behandlung, NICHT des Erfolgs).',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Behandlungsvertrag (§630a BGB)', definition: 'Dienstvertrag – HPP schuldet sorgfältige Behandlung, nicht den Behandlungserfolg'),
    ],
  ),
  Flashcard(
    text: 'Aufklärungspflicht des HPP (§630e BGB): Aufklärung muss VOR Behandlungsbeginn erfolgen. Inhalte: Diagnose, geplante Therapie, Risiken und Nebenwirkungen, Erfolgsaussichten, Alternativen. Form: Grundsätzlich mündlich, schriftliche Dokumentation empfohlen. Aufklärungsverzicht des Patienten möglich (muss dokumentiert werden). Bei fehlender/mangelhafter Aufklärung: Einwilligung unwirksam = Behandlung rechtswidrig.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Aufklärungspflicht (§630e BGB)', definition: 'Mündliche Aufklärung vor Behandlung über Diagnose, Therapie, Risiken, Alternativen'),
    ],
  ),
  Flashcard(
    text: 'Haftung und Sorgfaltspflicht des HPP: Zivilrechtlich: Schadensersatz und Schmerzensgeld bei Behandlungsfehlern (§280 BGB). Beweislast: Grundsätzlich beim Patienten. Bei Dokumentationsmängeln: Beweislastumkehr (§630h BGB) – was nicht dokumentiert ist, gilt als nicht geschehen. Strafrechtlich: Körperverletzung (§223 StGB), fahrlässige Tötung (§222 StGB). Berufshaftpflichtversicherung dringend empfohlen (keine gesetzliche Pflicht, aber faktisch unverzichtbar).',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Beweislastumkehr (§630h BGB)', definition: 'Bei Dokumentationsmängeln muss der HPP beweisen, dass kein Fehler vorlag'),
    ],
  ),
  Flashcard(
    text: 'Datenschutz in der HPP-Praxis (DSGVO/BDSG): Patientendaten sind besonders schützenswerte personenbezogene Daten (Art. 9 DSGVO). Rechtsgrundlage der Verarbeitung: Behandlungsvertrag (Art. 9 Abs. 2h DSGVO). Pflichten: Verzeichnis der Verarbeitungstätigkeiten, technisch-organisatorische Maßnahmen (verschlossene Schränke, Passwortschutz), Auskunftsrecht des Patienten. Verstöße: Bußgelder nach DSGVO, Verletzung der Schweigepflicht (§203 StGB).',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'DSGVO Art. 9', definition: 'Besonderer Schutz sensibler Daten (Gesundheitsdaten) – strenge Verarbeitungsregeln'),
      Term(term: '§203 StGB', definition: 'Verletzung von Privatgeheimnissen – Strafbarkeit bei Bruch der Schweigepflicht'),
    ],
  ),
  Flashcard(
    text: 'Schweigepflicht des HPP – vertieft: Grundlage: §203 Abs. 1 Nr. 1 StGB (Verletzung von Privatgeheimnissen). Umfasst ALLES, was im Rahmen der Behandlung bekannt wird (auch die bloße Tatsache der Behandlung). Schweigepflicht gilt auch über den Tod des Patienten hinaus. Durchbrechung erlaubt bei: (1) Einwilligung des Patienten (schriftlich!), (2) Rechtfertigender Notstand §34 StGB (geplante schwere Straftat, akute Suizidalität), (3) Gesetzliche Meldepflichten (IfSG). KEIN Zeugnisverweigerungsrecht im Strafverfahren (anders als Ärzte/Psychotherapeuten).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Heilmittelwerbegesetz (HWG) – Werberecht für HPP: Verboten: Werbung mit Heilversprechen oder Garantien, irreführende Werbung, Werbung mit Dankschreiben oder Gutachten, Werbung für verschreibungspflichtige Mittel. Erlaubt: Sachliche Information über Qualifikation und Behandlungsspektrum, Praxis-Website mit Leistungsbeschreibung. Merke: Keine Erfolgsversprechen, keine Vorher-Nachher-Vergleiche bei psychischen Störungen. Verstöße = Ordnungswidrigkeit bis Straftat.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'HWG', definition: 'Heilmittelwerbegesetz – verbietet Heilversprechen und irreführende Werbung'),
    ],
  ),
  Flashcard(
    text: 'Berufsordnung und Fortbildungspflicht: HPP unterliegen der Berufsordnung ihres Berufsverbandes (z.B. BOH). Fortbildungspflicht: Mindestens 15 Zeitstunden/Jahr Fortbildung (je nach Verband). Supervision wird empfohlen. Dokumentation der Fortbildungen aufbewahren. Kollegiale Umgangsformen (kein "Abwerben" von Patienten). Abstinenzregel: Keine privaten/sexuellen Beziehungen zu Patienten (auch nach Therapieende problematisch).',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Abstinenzregel', definition: 'Verbot privater/sexueller Beziehungen zum Patienten – auch nach Therapieende'),
    ],
  ),
  Flashcard(
    text: 'HPP und Kassenabrechnung: HPP können NICHT über die gesetzliche Krankenversicherung (GKV) abrechnen. GKV-Patienten zahlen selbst (Selbstzahler). Private Krankenversicherung (PKV) kann HPP-Leistungen erstatten – je nach Tarif. Beihilfe (Beamte) erstattet HPP-Leistungen in der Regel NICHT. Gebührenverzeichnis: GebüH (Gebührenverzeichnis für Heilpraktiker) als Orientierung – NICHT verbindlich. Wirtschaftliche Aufklärungspflicht VOR Behandlungsbeginn: Kosten pro Sitzung, voraussichtliche Dauer.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'GebüH', definition: 'Gebührenverzeichnis für Heilpraktiker – Orientierungshilfe, nicht verbindlich'),
    ],
  ),
  Flashcard(
    text: 'Praxisanmeldung und Gewerberecht: HPP-Tätigkeit ist ein freier Beruf (KEIN Gewerbe) → keine Gewerbeanmeldung nötig. Anmeldung beim Gesundheitsamt und Finanzamt erforderlich. Umsatzsteuerbefreiung nach §4 Nr. 14 UStG (Heilbehandlungen). Feste Praxisadresse erforderlich (kein "Umherziehen" nach §3 HeilprG). Berufshaftpflichtversicherung: Keine gesetzliche Pflicht, aber dringend empfohlen. Handelsregistereintrag: Nicht erforderlich.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Freier Beruf', definition: 'HPP-Tätigkeit ist kein Gewerbe – keine Gewerbeanmeldung, aber Finanzamt-Anmeldung nötig'),
      Term(term: '§4 Nr. 14 UStG', definition: 'Umsatzsteuerbefreiung für Heilbehandlungen durch HPP'),
    ],
  ),
  Flashcard(
    text: 'Heilpraktikergesetz (HeilprG) – Kernpunkte: Stammt von 1939, mehrfach geändert. §1: Wer Heilkunde ausüben will, ohne Arzt zu sein, braucht eine Erlaubnis. §2: Erlaubnis wird durch Überprüfung beim Gesundheitsamt erteilt. §3: Verbote (Umherziehen, Geschlechtskrankheiten [veraltet]). Der sektorale HPP darf NUR Psychotherapie ausüben. Die Erlaubnis ist nicht auf bestimmte Methoden beschränkt. HPP darf sich NICHT "Psychotherapeut" nennen (Titel geschützt nach PsychThG).',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Sektoraler HPP', definition: 'Heilpraktiker beschränkt auf Psychotherapie – darf keine körperlichen Verfahren anwenden'),
    ],
  ),
  Flashcard(
    text: 'Überprüfung beim Gesundheitsamt (HPP-Prüfung): Zweiteilig: schriftliche Prüfung (28 MC-Fragen, 75% zum Bestehen) + mündliche Überprüfung. Zweck: Feststellung, ob eine Gefahr für die Volksgesundheit besteht. Geprüft werden: Psychopathologie, ICD-10-Kenntnisse, Differentialdiagnostik, Erkennen von Notfällen und Grenzen, rechtliche Grundlagen. Keine Methodenprüfung (therapeutische Verfahren werden nicht geprüft). Durchfallquote ca. 70-80%.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Kinderschutz und Kindeswohlgefährdung: §8a SGB VIII verpflichtet Fachkräfte (auch HPP), bei gewichtigen Anhaltspunkten für Kindeswohlgefährdung das Jugendamt einzuschalten. Vorrang hat zunächst der Versuch, die Eltern einzubeziehen. Die Schweigepflicht kann bei Kindeswohlgefährdung durchbrochen werden (§34 StGB, rechtfertigender Notstand). §4 KKG (Gesetz zur Kooperation und Information im Kinderschutz): Berufsgeheimnisträger dürfen bei dringenden Gefahren das Jugendamt informieren.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: '§8a SGB VIII', definition: 'Schutzauftrag bei Kindeswohlgefährdung – Verpflichtung zur Einschaltung des Jugendamts'),
    ],
  ),
  Flashcard(
    text: 'Vorsorgevollmacht, Betreuungsverfügung, Patientenverfügung: Vorsorgevollmacht = Bevollmächtigung einer Vertrauensperson für den Fall der eigenen Entscheidungsunfähigkeit. Betreuungsverfügung = Wunsch, WER als Betreuer bestellt werden soll. Patientenverfügung (§1827 BGB) = vorherige Festlegung über medizinische Maßnahmen. Alle drei sind UNTERSCHIEDLICHE Instrumente. Patientenverfügung bindet den Betreuer und Arzt, sofern sie auf die konkrete Situation zutrifft.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Vorsorgevollmacht', definition: 'Private Bevollmächtigung einer Vertrauensperson für den Fall der Entscheidungsunfähigkeit'),
      Term(term: 'Betreuungsverfügung', definition: 'Festlegung, wer als gesetzlicher Betreuer bestellt werden soll'),
    ],
  ),
  Flashcard(
    text: 'Rechtliche Stellung Minderjähriger in der Psychotherapie: Kinder unter 7 Jahren: geschäftsunfähig (§104 BGB), Eltern schließen Vertrag. 7-17 Jahre: beschränkt geschäftsfähig (§106 BGB), Einwilligung der Eltern nötig. Einwilligungsfähigkeit: Wird unabhängig vom Alter individuell beurteilt. Ab ca. 14 Jahren wird Einwilligungsfähigkeit häufig angenommen. Bei gemeinsamem Sorgerecht: BEIDE Elternteile müssen zustimmen. Schweigepflicht: Gilt auch gegenüber den Eltern, wenn der Minderjährige einwilligungsfähig ist.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text: 'Betreuungsrecht – Reform 2023: §1814 BGB neu: Betreuung nur wenn erforderlich und keine weniger einschneidende Maßnahme ausreicht (Erforderlichkeitsgrundsatz). Wünsche des Betreuten haben Vorrang (§1821 BGB). Betreuer muss den Willen des Betreuten respektieren, nicht nur sein Wohl. Unterstützte Entscheidungsfindung vor stellvertretender Entscheidung. Überprüfung der Betreuung: spätestens nach 7 Jahren, bei Erstbetreuung nach 2 Jahren.',
    tags: ['Recht & Berufskunde'],
    terms: [
      Term(term: 'Erforderlichkeitsgrundsatz', definition: 'Betreuung nur wenn nötig und keine mildere Maßnahme verfügbar (§1814 BGB)'),
    ],
  ),
];
