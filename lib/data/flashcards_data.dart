import '../models/flashcard.dart';

const List<Flashcard> allFlashcards = [
  // ============================================================
  // TEIL 1: ICD-10 GRUNDLAGEN (1-5)
  // ============================================================
  Flashcard(
    text:
        'ICD-10 – Aufbau und Geltung:\nDie ICD-10 (International Classification of Diseases, 10. Revision) ist das weltweit anerkannte Klassifikationssystem der WHO.\nKapitel V (Buchstabe F) umfasst psychische und Verhaltensstörungen (F00-F99).\nSie ist phänomenologisch-deskriptiv: Beschreibt Symptome, Verlauf, Dauer und Schweregrad, nicht Ursachen.\nIn Deutschland gilt die ICD-10-GM seit 01.01.2000.\nDie HPP-Prüfung basiert weiterhin auf ICD-10, nicht ICD-11.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'Aufbau des ICD-10-Codes:\nF = psychische Störung.\n1. Ziffer = Störungsgruppe (z.B. F2 = Schizophrenie).\nWeitere Ziffern = Spezifizierung.\nBeispiel: F20.0 = Paranoide Schizophrenie.\nDie ICD-10 nutzt ein multiaxiales System für mehrdimensionale Diagnostik.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'Die 10 Störungsgruppen F0-F9 im Überblick (Teil 1):\nF0 = Organische psychische Störungen (Demenzen, Delir).\nF1 = Störungen durch psychotrope Substanzen (Alkohol, Drogen).\nF2 = Schizophrenie, schizotype und wahnhafte Störungen.\nF3 = Affektive Störungen (Depression, Manie, bipolar).\nF4 = Neurotische, Belastungs- und somatoforme Störungen.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'Die 10 Störungsgruppen F0-F9 im Überblick (Teil 2):\nF5 = Verhaltensauffälligkeiten mit körperlichen Faktoren (Essstörungen, Schlafstörungen).\nF6 = Persönlichkeits- und Verhaltensstörungen.\nF7 = Intelligenzminderung.\nF8 = Entwicklungsstörungen (Autismus).\nF9 = Verhaltens-/emotionale Störungen der Kindheit (ADHS).',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'Prüfungsrelevanz der Störungsgruppen:\nHohe Relevanz (3 Sterne): F0 (Organisch), F1 (Substanzen), F2 (Schizophrenie), F3 (Affektiv), F4 (Neurotisch/Belastung), F6 (Persönlichkeit).\nMittlere Relevanz: F5 (Verhaltensauffälligkeiten), F8 (Entwicklung), F9 (Kindheit).\nGeringere Relevanz: F7 (Intelligenzminderung).',
    tags: ['ICD-10 Grundlagen'],
  ),

  // ============================================================
  // TEIL 2: F0 - ORGANISCHE PSYCHISCHE STÖRUNGEN (6-18)
  // ============================================================
  Flashcard(
    text:
        'F0 – Organische psychische Störungen (F00-F09):\nKernmerkmal ist eine nachweisbare organische Ursache (Hirnerkrankung, -verletzung, -funktionsstörung).\nWichtig: Immer somatische Abklärung veranlassen!\nBei JEDER psychischen Störung muss zuerst eine organische Ursache ausgeschlossen werden.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F00 – Demenz bei Alzheimer-Krankheit:\nSchleichender Beginn mit progredientem Verlauf.\nGedächtnis und kognitive Funktionen nehmen ab.\nUnterscheidung: Früher Beginn (<65 Jahre) vs. später Beginn (>65 Jahre).\nHäufigste Demenzform (ca. 60-70%).\nNeuropathologisch: Amyloid-Plaques und Tau-Fibrillen.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F01 – Vaskuläre Demenz:\nPlötzlicher oder stufenweiser Beginn (im Gegensatz zum schleichenden Beginn bei Alzheimer).\nUrsachen: Multiinfarkt oder subkortikale Durchblutungsstörungen.\nBehandlung: Kardiovaskuläre Risikofaktoren kontrollieren.\nZweithäufigste Demenzform.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F02 – Demenz bei anderen Erkrankungen:\nPick-Krankheit (frontotemporale Demenz), Creutzfeldt-Jakob-Krankheit (rapid progredient), Huntington-Krankheit (autosomal-dominant, Chorea), Parkinson-Krankheit, HIV-Enzephalopathie.\nJede dieser Erkrankungen hat ein eigenes klinisches Profil.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F04 – Organisches amnestisches Syndrom:\nSchwere Gedächtnisstörung (Kurz- und Langzeitgedächtnis).\nWichtig: Bewusstsein ist NICHT getrübt (Abgrenzung zum Delir).\nTypisches Beispiel: Korsakow-Syndrom bei chronischem Alkoholismus.\nKonfabulationen (Erinnerungslücken werden unbewusst mit erfundenen Inhalten gefüllt) sind charakteristisch.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F05 – Delir:\nAkuter Beginn mit Bewusstseinsstörung, Fluktuation der Symptome und Orientierungsstörung.\nNOTFALL!\nTypische Symptome: Optische Halluzinationen, motorische Unruhe, vegetative Störungen, erhöhte Suggestibilität.\nDauer meist 3-5 Tage.\nKann lebensbedrohlich sein (z.B. Delirium tremens bei Alkoholentzug).',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Merke Demenz vs. Delir:\nDemenz = chronisch, schleichender Beginn, Bewusstsein KLAR, progredient.\nDelir = akut, plötzlicher Beginn, Bewusstsein GETRÜBT, fluktuierend.\nBeide können gleichzeitig auftreten (Delir auf dem Boden einer Demenz).\nDas Delir ist immer ein Notfall!',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F06 – Sonstige organische psychische Störungen:\nOrganisch bedingte Halluzinose, katatone Störung, wahnhafte Störung, affektive Störung, Angststörung oder dissoziative Störung.\nEntscheidend: Die Symptome sind durch eine nachweisbare Hirnfunktionsstörung verursacht, nicht primär psychisch bedingt.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F07 – Organische Persönlichkeitsveränderung:\nPersönlichkeitsveränderung nach Hirnschädigung (z.B. nach Schädel-Hirn-Trauma, Enzephalitis).\nÄnderung des Verhaltens, der Emotionalität und der Impulskontrolle.\nNicht als Persönlichkeitsstörung (F60) zu klassifizieren, da organisch bedingt.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Demenz vs. Depression (Pseudodemenz):\nBei Depression klagt der Patient aktiv über Vergesslichkeit und antwortet mit "weiß nicht".\nBei echten Demenzen: Patient bagatellisiert Defizite und zeigt Konfabulationen.\nDie "Pseudodemenz" ist eine Depression im höheren Alter mit kognitiven Symptomen und hat keinen eigenen ICD-10-Schlüssel.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Quantitative Bewusstseinsstörungen betreffen die Wachheit (Vigilanz):\nBenommenheit → Somnolenz → Sopor → Koma (zunehmende Schwere).\nQualitative Bewusstseinsstörungen: Bewusstseinstrübung (Verwirrtheit), Bewusstseinseinengung (z.B. Dämmerzustand), Bewusstseinsverschiebung (z.B. Drogenrausch).\nHalluzinationen gehören zu den Wahrnehmungsstörungen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Nichtmedikamentöse Interventionen bei Demenz:\nKörperliche Aktivierung (Bewegungstherapie), basale Stimulation (sensorische Anregung), Ergotherapie (Alltagskompetenz), Realitätsorientierungstraining (zeitliche, örtliche, personelle Orientierung), supportive Psychotherapie.\nDemenz-Screening: MMST (Mini-Mental-Status-Test), Uhrentest.',
    tags: ['F0 – Organische Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Frühsymptome einer beginnenden Demenz:\nAffektive Veränderungen (Reizbarkeit, Stimmungsschwankungen, Apathie, depressive Verstimmung) treten oft als erste Symptome auf, noch vor ausgeprägten kognitiven Defiziten.\nGangstörungen und Inkontinenz treten eher in fortgeschrittenen Stadien auf.\nDie Symptome müssen nach ICD-10 mindestens 6 Monate vorliegen.',
    tags: ['F0 – Organische Störungen'],
  ),

  // ============================================================
  // TEIL 3: F1 - STÖRUNGEN DURCH PSYCHOTROPE SUBSTANZEN (19-35)
  // ============================================================
  Flashcard(
    text:
        'F1 – Aufbau der Codierung:\nDie 3. Stelle codiert die Substanz: F10=Alkohol, F11=Opioide, F12=Cannabinoide, F13=Sedativa/Hypnotika, F14=Kokain, F15=Stimulanzien, F16=Halluzinogene, F17=Tabak, F18=Lösungsmittel, F19=multipel/andere.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'F1x – Die 4. Stelle codiert das klinische Bild:\n.0 = Akute Intoxikation (Rausch). .1 = Schädlicher Gebrauch (Schaden, keine Abhängigkeit). .2 = Abhängigkeitssyndrom. .3 = Entzugssyndrom. .4 = Entzug mit Delir. .5 = Psychotische Störung. .6 = Amnestisches Syndrom (Korsakow). .7 = Restzustand/verzögerte psychotische Störung.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        '6 Kriterien für Abhängigkeit nach ICD-10 (mind. 3 über 1 Monat):\n(1) Starkes Verlangen/Craving.\n(2) Kontrollverlust.\n(3) Entzugssymptome.\n(4) Toleranzentwicklung.\n(5) Vernachlässigung anderer Interessen.\n(6) Fortgesetzter Konsum trotz nachweisbarer Schäden.\nMerke: 3 Kernkriterien: Craving, Kontrollverlust, Toleranzentwicklung.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Abhängigkeit vs. Schädlicher Gebrauch:\nAbhängigkeit = mind. 3 von 6 Kriterien über 1 Monat.\nSchädlicher Gebrauch (.1) = nachweisbare körperliche oder psychische Schädigung durch Substanzkonsum, OHNE dass ein Abhängigkeitssyndrom vorliegt.\nEine bestimmte Konsumhäufigkeit in Prozent ist KEIN Abhängigkeitskriterium.',
    tags: ['F1 – Substanzstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Delirium tremens (F10.4):\nTritt Stunden bis Tage nach Alkoholkarenz auf, dauert meist 3-5 Tage.\nLeitsymptom: Bewusstseinsstörung (Abgrenzung zur Alkoholhalluzinose mit klarem Bewusstsein).\nWeitere Symptome: Tremor (Kardinalsymptom), motorische Unruhe, optische Halluzinationen, vegetative Störungen, Orientierungsstörungen.\nNOTFALL – Koma als lebensbedrohliche Komplikation möglich.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Alkoholhalluzinose vs. Alkoholdelir:\nAlkoholhalluzinose = vorwiegend akustische Halluzinationen bei KLAREM Bewusstsein.\nDelirium tremens = Bewusstseinsstörung + Tremor + optische Halluzinationen + vegetative Störungen.\nDie Bewusstseinslage ist das entscheidende Unterscheidungsmerkmal!',
    tags: ['F1 – Substanzstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Korsakow-Syndrom (F10.6):\nAmnestisches Syndrom bei chronischem Alkoholismus.\nSchwere Störung des Kurzzeitgedächtnisses, Konfabulationen (Füllen von Erinnerungslücken mit erfundenen Inhalten), Merkfähigkeitsstörung, Zeitgitterstörung.\nProphylaxe: Vitamin B1 (Thiamin) zur Verhinderung der Wernicke-Enzephalopathie.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Alkoholentzug:\nVegetative Symptome wie Schwitzen, Tremor, Tachykardie, Hypertonie.\nKann zu Krampfanfällen und Delirium tremens führen – daher stationäre Überwachung oft notwendig.\nVitamin B1 (Thiamin) und Folsäure als Prophylaxe.\n5 Trinkertypen nach Jellinek: Alpha bis Epsilon (Beta = Gelegenheitstrinker, nicht abhängig).',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Cannabis-Intoxikation:\nGerötete Augen, Mydriasis (weite Pupillen, NICHT Miosis!), Konzentrationsverschlechterung, veränderte Sinneswahrnehmung, ideenflüchtiges Denken, gesteigerter Appetit.\nNach chronischem Hochdosiskonsum: Entzugssymptome möglich (Angst, Tremor, Schlafstörungen, Reizbarkeit).\nChronischer Konsum führt zum amotivationalen Syndrom mit Antriebsminderung und Leistungsabfall – NICHT zu Antriebssteigerung.\nCannabis kann außerdem Psychosen auslösen; synthetische Cannabinoide ("Kräutermischungen", "Spice") können akute psychotische Zustände mit Selbstgefährdung hervorrufen.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Pupillenreaktionen bei Substanzen:\nMydriasis (weite Pupillen) = Stimulanzien (Kokain, Amphetamine), Cannabis, Halluzinogene.\nMiosis (enge Pupillen / "Stecknadelpupillen") = Opioide (Morphin, Heroin).\nMerke: Mydriasis = Stimulanzien.\nMiosis = Opioide.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Benzodiazepine:\nKumulationsgefahr durch aktive Metaboliten, sedierende Wirkung, Abhängigkeitspotenzial.\nEntzug über Wochen ausschleichen!\nNIEMALS abrupt absetzen bei Hochdosis – Gefahr von Krampfanfällen!\nOpiate, Benzodiazepine und Nikotin führen zu ausgeprägter körperlicher Abhängigkeit.\nLSD und MDMA verursachen keine körperliche, nur psychische Abhängigkeit.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        '4 Phasen der Suchttherapie:\n1. Kontakt- und Motivationsphase.\n2. Entgiftungsphase.\n3. Entwöhnungsphase.\n4. Nachsorgephase.\nDie "Remissionsphase" ist KEINE eigenständige Therapiephase, sondern beschreibt den Zustand nach erfolgreicher Behandlung.',
    tags: ['F1 – Substanzstörungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Methadon-Substitution:\nErhaltungstherapie (Maintenance-Therapie) bei Opioidabhängigkeit.\nDurchführung ist Ärzten mit Zusatzqualifikation vorbehalten, NICHT Heilpraktikern.\nVollständige Abstinenz wird in der Regel nicht erreicht.\nBegleitende Psychotherapie ist erwünscht.\nIn der Schwangerschaft ist Substitution Erstlinientherapie, da unkontrollierter Entzug das Kind gefährdet.',
    tags: ['F1 – Substanzstörungen', 'Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Pathologischer Rausch:\nAtypischer Rauschzustand nach relativ geringer Alkoholmenge.\nSymptome: Situationsverkennung, Erregungszustände, ggf. aggressives Verhalten.\nGeht nicht regelhaft in ein Delir über.\nAbgrenzung zum normalen Rausch: überproportionale Symptomatik zur aufgenommenen Menge.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Substanzinduzierte psychotische Störungen (F1x.5):\nHalluzinationen und/oder Wahn während oder kurz nach Substanzgebrauch.\nKönnen bei praktisch allen Substanzen auftreten.\nSymptome wie Stupor, Personenverkennung, akustische Halluzinationen, Ekstase und Verfolgungsideen sind möglich.\nAbgrenzung: Drogen können Schizophrenie-ähnliche Symptome auslösen.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Opioidintoxikation:\nMiosis (Stecknadelpupillen), Atemdepression, Bewusstseinsminderung, Euphorie.\nBei Überdosis: lebensbedrohliche Atemdepression.\nGegenmittel: Naloxon.\nAbgrenzung: Kokainintoxikation zeigt Mydriasis, Tachykardie, Euphorie, mögliche Halluzinationen.\nAmphetamine: ähnlich Kokain, aber länger wirkend.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Alkoholintoxikation:\nKann auch unter 1,0 Promille diagnostiziert werden (individuelle Toleranz variiert).\nSchwere Intoxikation: Atemdepression und Hypothermie möglich.\nBinge-Drinking: 5+ Standardgläser (Männer) bzw. 4+ (Frauen) bei einer Gelegenheit.\nRiskanter Gebrauch: >24g/Tag (Männer), >12g/Tag (Frauen).\nEin Standardglas = ca. 10-12g reiner Alkohol.',
    tags: ['F1 – Substanzstörungen'],
  ),

  // ============================================================
  // TEIL 4: F2 - SCHIZOPHRENIE (36-55)
  // ============================================================
  Flashcard(
    text:
        'Symptome 1. Ranges nach Kurt Schneider (pathognomonisch für Schizophrenie):\nGedankenlautwerden, Gedankenentzug, Gedankeneingebung, Gedankenausbreitung, Stimmenhören (dialogisch/kommentierend), leibliche Beeinflussungserlebnisse, Wahnwahrnehmung, Gefühl des Gemachten.\nDiese Symptome sind ein häufiger Prüfungsklassiker!',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Symptome 2. Ranges nach Schneider:\nSonstige Halluzinationen, Wahneinfälle, Ratlosigkeit, depressive oder frohe Verstimmung, erlebte Gefühlsverarmung, andere Sinnestäuschungen.\nDiese sind weniger spezifisch als Erstrangsymptome und können auch bei anderen Störungen auftreten.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Positivsymptome der Schizophrenie (Überschuss):\nWahn, Halluzinationen, Ich-Störungen (Gedankeneingebung, -entzug, -ausbreitung), formale Denkstörungen (Zerfahrenheit), psychomotorische Störungen (Katatonie).\nPositivsymptome sprechen besser auf Neuroleptika an als Negativsymptome.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Negativsymptome der Schizophrenie (Defizit) – Merke "6 A":\nAffektverflachung, Antriebsarmut/Apathie, Alogie (Sprachverarmung), Anhedonie (Freudlosigkeit), Aufmerksamkeitsstörung, Asozialität (sozialer Rückzug).\nNegativsymptome sind schwerer zu behandeln als Positivsymptome.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F20.0 – Paranoide Schizophrenie:\nHäufigste Form der Schizophrenie.\nWahn und Halluzinationen dominieren das klinische Bild.\nTypisch: Verfolgungswahn, Beziehungswahn, akustische Halluzinationen (Stimmenhören).\nIch-Störungen (Gedankeneingebung, -entzug, -ausbreitung) und Denkstörungen (Zerfahrenheit) sind pathognomonisch.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F20.1 – Hebephrene Schizophrenie:\nAffektstörung und Antriebsstörung stehen im Vordergrund.\nTypisch: Läppischer, inadäquater Affekt, unberechenbares Verhalten, oberflächliche Stimmung.\nBeginn meist bei Jugendlichen und jungen Erwachsenen (15-25 Jahre).\nPrognose ungünstiger als bei paranoider Form.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F20.2 – Katatone Schizophrenie:\nPsychomotorische Störungen stehen im Vordergrund.\nStupor ↔ Erregung im Wechsel, Flexibilitas cerea (wächserne Biegsamkeit), Katalepsie (Erstarrung), Befehlsautomatie, Negativismus, Mutismus, Echolalie, Haltungs-, Bewegungs- und Sprachstereotypien.\nDie paranoide Form ist häufiger als die katatone.',
    tags: ['F2 – Schizophrenie', 'Psychopathologie'],
  ),
  Flashcard(
    text:
        'F20.5 – Schizophrenes Residuum:\nChronische Negativsymptomatik nach akuter psychotischer Phase.\nPsychomotorische Verlangsamung, Affektverflachung, Passivität mit Initiativemangel.\nPositivsymptome sind abgeklungen oder deutlich reduziert.\nAkustische Halluzinationen wären Positivsymptome, keine typischen Residualsymptome.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F20.6 – Schizophrenia simplex:\nSchleichender Beginn ohne akute psychotische Episode.\nNegativsymptome ohne vorhergehende Positivsymptome.\nZunehmender sozialer Rückzug, Antriebsarmut, Leistungsabfall.\nSchwierige Diagnose wegen fehlender dramatischer Symptomatik.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F21 – Schizotype Störung:\nExzentrisches Verhalten, magisches Denken, kaltes/unnahbares Auftreten, Misstrauen, umständliches Denken und Sprechen.\nKEINE vollständige Psychose (keine Halluzinationen oder ausgeprägten Wahnphänomene).\nNicht mit Schizophrenie gleichzusetzen.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F22 – Anhaltende wahnhafte Störung:\nIsolierter, systematisierter Wahn über mehr als 3 Monate.\nOHNE Halluzinationen.\nPersönlichkeit und Funktionsfähigkeit sind ansonsten weitgehend erhalten.\nAbgrenzung zur Schizophrenie: Kein bizarrer Wahn, keine Halluzinationen, keine formalen Denkstörungen.',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F23 – Akute vorübergehende psychotische Störung:\nAkuter Beginn innerhalb von 2 Wochen.\nPolymorphes, wechselhaftes klinisches Bild.\nVollständige Remission innerhalb weniger Monate.\nOft durch akute Belastung getriggert.\nAbgrenzung: Bei Schizophrenie dauern Symptome mindestens 1 Monat.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F25 – Schizoaffektive Störung:\nGleichzeitiges Vorliegen schizophrener UND affektiver (depressiver oder manischer) Symptome in derselben Episode.\nAbgrenzung: Bei Schizophrenie stehen psychotische Symptome im Vordergrund.\nBei affektiven Störungen fehlen typische schizophrene Symptome.',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Prodromalphase der Schizophrenie:\nUnspezifische Symptome vor der akuten Phase – Interessenverlust, sozialer Rückzug, Vernachlässigung der Hygiene, depressive Verstimmung.\nEin ausgestaltetes Wahnsystem gehört zur aktiven Krankheitsphase, NICHT zur Prodromalphase.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Prognose der Schizophrenie:\nGünstige Faktoren: Weibliches Geschlecht, akuter Beginn, gute prämorbide Anpassung.\nUngünstige Faktoren: Schleichender Beginn, männliches Geschlecht, Cannabiskonsum, familiäre Belastung.\nMänner erkranken im Schnitt früher (20-25 J) als Frauen (25-30 J).\nBei 10-30% heilt die Erkrankung aus.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Ich-Störungen bei Schizophrenie:\nGedankeneingebung (fremde Gedanken werden eingegeben), Gedankenentzug (Gedanken werden entzogen), Gedankenausbreitung (andere können Gedanken lesen), Gedankenlautwerden.\nDazu: Depersonalisation (Entfremdung vom eigenen Ich) und Derealisation (Umwelt erscheint unwirklich).',
    tags: ['F2 – Schizophrenie', 'Psychopathologie'],
  ),
  Flashcard(
    text:
        'Formale vs. inhaltliche Denkstörungen:\nFormale = Störung des Denkablaufs: Ideenflucht, Zerfahrenheit, Denkhemmung, Perseveration, Neologismen, Konkretismus.\nInhaltliche = Störung des Denkinhalts: Wahn (unkorrigierbar, subjektiv gewiss, realitätswidrig), überwertige Ideen.\nMerke: Konkretismus = Sprichwörter werden wörtlich genommen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Wahn – Definition und Merkmale:\n(1) Widerspruch zur Realität.\n(2) Subjektive Gewissheit (Patient ist absolut überzeugt).\n(3) Unkorrigierbarkeit (Gegenargumente helfen nicht).\nWahn ist ich-SYNTON (wird als Teil des eigenen Erlebens empfunden).\nWahnformen: Verfolgungswahn, Größenwahn, Beziehungswahn, Verarmungswahn, Eifersuchtswahn.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Schizophrenie vs. wahnhafte Störung (F22):\nWahnhafte Störung: Isolierter Wahn OHNE Halluzinationen, Persönlichkeit sonst erhalten, Dauer >3 Monate.\nSchizophrenie: Halluzinationen, Ich-Störungen, formale Denkstörungen, Negativsymptome zusätzlich zum Wahn.\nDie Differenzierung ist ein häufiger Prüfungsklassiker!',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Beziehungsideen (überwertige Ideen) sind ein Hinweis auf Schizophrenie:\nDer Patient bezieht alles auf sich selbst.\nÜberwertige Ideen und der symbiontische Wahn/Folie à deux (induzierte wahnhafte Störung) sind inhaltliche Denkstörungen.\nKonkretismus, Paralogik und Kontamination sind hingegen formale Denkstörungen.',
    tags: ['F2 – Schizophrenie', 'Psychopathologie'],
  ),

  // ============================================================
  // TEIL 5: F3 - AFFEKTIVE STÖRUNGEN (56-70)
  // ============================================================
  Flashcard(
    text:
        'F30 – Manische Episode:\nGehobene Stimmung, Antriebssteigerung, vermindertes Schlafbedürfnis, Größenideen, Rededrang, gesteigerte Geselligkeit, Enthemmung.\nWahnideen bei Manie sind typischerweise stimmungskongruent (Größenwahn).\nFormale Denkstörungen: Ideenflucht, Gedankenrasen.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'F31 – Bipolare affektive Störung:\nWechsel manischer und depressiver Episoden.\nF31.6 = Gemischte Episode (gleichzeitig manische und depressive Symptome).\nDepressive Phasen überwiegen zeitlich.\nManifestation oft vor dem 25. Lebensjahr.\nBeide Geschlechter etwa gleich betroffen.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'F32 – Depressive Episode:\n3 Hauptsymptome: (1) Gedrückte Stimmung, (2) Interessenverlust, (3) Antriebsminderung.\nZusatzsymptome: Konzentration↓, Selbstwert↓, Schuldgefühle, Zukunftspessimismus, Suizidgedanken, Schlafstörung, Appetitveränderung.\nDauer: mind. 2 Wochen.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Schweregrade der Depression:\nLeicht = 2 Hauptsymptome + 2 Zusatzsymptome.\nMittel = 2 Hauptsymptome + 3-4 Zusatzsymptome.\nSchwer = 3 Hauptsymptome + ≥4 Zusatzsymptome.\nSchwer mit psychotischen Symptomen = zusätzlich Wahn und/oder Halluzinationen (z.B. Verarmungswahn, nihilistischer Wahn); hier kann zusätzlich ein Neuroleptikum erforderlich sein.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'F33 – Rezidivierende depressive Störung:\nWiederholte depressive Episoden OHNE manische oder hypomanische Episode in der Vorgeschichte.\nAbgrenzung zu bipolar: Tritt auch nur EINE manische/hypomanische Episode auf, wird bipolar diagnostiziert.\nUnipolare Verläufe sind häufiger als bipolare.',
    tags: ['F3 – Affektive Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F34.0 – Zyklothymia:\nChronische Stimmungsinstabilität mit leichten Schwankungen (nicht schwer genug für F31).\nDauer ≥2 Jahre.\nWechsel zwischen leicht gehobener und leicht gedrückter Stimmung.\nF34.1 – Dysthymia: Chronische depressive Verstimmung ≥2 Jahre, nicht schwer genug für F33.\nBetroffene können meist den Alltag bewältigen.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Depression vs. Dysthymia:\nDepression = episodisch, schwerere Symptomatik, klarer Beginn/Ende.\nDysthymia = chronisch ≥2 Jahre, leichtere Symptomatik, keine klaren Episoden.\nBipolar vs. rezidivierende Depression: Bipolar = mind. 1 manische/hypomanische Episode.\nRezidivierende Depression = NUR depressive Episoden.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Somatisches Syndrom bei Depression:\nFrühes Erwachen (2+ Stunden vor üblicher Zeit), Morgentief, Appetit- und Gewichtsverlust, Libidoverlust, psychomotorische Hemmung oder Agitiertheit.\nMerke: Das somatische Syndrom beschreibt körperliche Begleiterscheinungen – nicht zu verwechseln mit den Kernsymptomen.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Suizidalität bei Depression:\nBei Neueinstellung auf antriebssteigerndes Antidepressivum besteht in den ersten Wochen erhöhte Suizidgefahr (Antrieb steigt vor Stimmungsaufhellung).\nAntidepressiva wirken dreistufig:\n1. sedierend → 2. antriebssteigernd → 3. stimmungsaufhellend.\nDepressive MÜSSEN direkt auf Suizidgedanken angesprochen werden.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Suizidalität – Stufen nach Pöldinger:\n1. Erwägungsphase (Suizid wird als Möglichkeit erwogen).\n2. Ambivalenzphase (Schwanken zwischen Leben und Tod).\n3. Entschlussphase (Patient hat sich entschieden, wirkt oft "ruhiger").\nMerke: „EAE" – Erwägung, Ambivalenz, Entschluss.\nDie scheinbare Ruhe in Phase 3 ist besonders gefährlich!',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Suizidalität – Merksätze:\nAkute Suizidalität = NOTFALL → zwangsweise Unterbringung möglich.\n"Weiche" Methoden seltener tödlich als "harte" → vollendete Suizide bei Männern häufiger.\nImperative (befehlende) Stimmen bei Schizophrenie können zum Suizid aufrufen.\n90% der Suizidopfer hatten eine psychische Erkrankung.',
    tags: ['F3 – Affektive Störungen', 'Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Lithium – Phasenprophylaxe bei bipolarer Störung:\nSowohl in manischen als auch in depressiven Phasen können psychotische Symptome auftreten.\nPhasenprophylaktika: Lithium, Valproat, Carbamazepin.\nLithium hat eine enge therapeutische Breite (regelmäßige Spiegelkontrollen nötig).\nHypomanie = leichtere Form der Manie, ohne Psychose.',
    tags: ['F3 – Affektive Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Zeitkriterien affektiver Störungen merken:\nDepressive Episode ≥2 Wochen.\nDysthymia ≥2 Jahre (chronisch, leichter).\nZyklothymia ≥2 Jahre (Schwankungen).\nBei schwerer Depression: Kombinationsbehandlung (Pharmako- + Psychotherapie) leitliniengerecht.\nLichttherapie besonders bei saisonaler Depression indiziert.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Organischer Ausschluss bei affektiven Störungen:\nVor Behandlungsbeginn einer affektiven Störung muss eine organische Ursache ausgeschlossen werden (z.B. Hypothyreose, Vitamin-B12-Mangel, Hirntumore).\nHypothyreose führt häufig zu depressiver Symptomatik.\nMerke: Hypothyreose = "alles gedrosselt" (Depression, Müdigkeit, Gewichtszunahme, Bradykardie).\nHyperthyreose = "alles auf Hochtouren".',
    tags: ['F3 – Affektive Störungen'],
  ),

  // ============================================================
  // TEIL 6: F4 - NEUROTISCHE, BELASTUNGS- UND SOMATOFORME STÖRUNGEN (71-88)
  // ============================================================
  Flashcard(
    text:
        'F40.0 – Agoraphobie:\nAngst vor Menschenmengen, öffentlichen Plätzen, Reisen, Situationen ohne Fluchtmöglichkeit.\nMit oder ohne Panikstörung.\nTypisches Vermeidungsverhalten.\nAbgrenzung: Soziale Phobie = Angst vor Bewertung.\nSpezifische Phobie = Angst vor einzelnem Objekt/Situation.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F40.1 – Soziale Phobien:\nAngst vor kritischer Bewertung durch andere in sozialen Situationen.\nSymptome: Erröten, Zittern, Übelkeit, Angst zu erbrechen.\nVermeidungsverhalten.\nErkrankungsbeginn meist vor dem 25. LJ.\nErhöhtes Risiko für Substanzmissbrauch.\nNiedriges Selbstwertgefühl.\nSymptome treten nur in Gesellschaft auf, nicht allein.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F40.2 – Spezifische (isolierte) Phobien:\nIsolierte Angst vor einem bestimmten Objekt oder einer Situation (z.B. Tiere, Höhe, Blut, Fliegen).\nBetroffene wissen, dass ihre Angst übertrieben ist.\nBehandlung der Wahl: Expositionstherapie (systematische Desensibilisierung oder Flooding).',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F41.0 – Panikstörung:\nWiederkehrende, unerwartete Panikattacken, NICHT an bestimmte Situationen gebunden.\nAbrupt beginnend, begleitet von vegetativen Symptomen (Herzrasen, Schwitzen, Zittern, Schwindel).\nDepersonalisation/Derealisation können auftreten.\nErwartungsangst ("Angst vor der Angst").\nBewusstsein bleibt klar!',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F41.1 – Generalisierte Angststörung (GAD):\nFrei flottierende, anhaltende Angst und Sorgen über ≥6 Monate.\nNicht an bestimmte Situationen gebunden.\nMultiple Symptome: Muskelanspannung, Schwitzen, Benommenheit, Reizbarkeit.\nPanikstörung vs. GAD: Panik = episodisch, attackenartig.\nGAD = anhaltend, frei flottierend.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F42 – Zwangsstörung:\nZwangsgedanken und/oder Zwangshandlungen.\nZwangsgedanken: wiederkehrend, stereotyp, als quälend empfunden, können aggressiver Natur sein.\nHäufigste Formen: Kontroll-, Wasch- und Zählzwänge.\nICH-DYSTON: Patient erkennt die Unsinnigkeit, kann aber nicht aufhören.\nTendenz zur Generalisierung.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Zwang vs. Wahn:\nZwang = ICH-DYSTON (als fremd, quälend, sinnlos erlebt, Patient leistet Widerstand).\nWahn = ICH-SYNTON (unerschütterliche Überzeugung, als Teil des eigenen Erlebens).\nZwanghafte PS (F60.5) ist ich-synton (als Persönlichkeitsmerkmal erlebt).\nTherapie der Wahl bei Zwangsstörung: VT mit Exposition und Reaktionsverhinderung (ERP).',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F43.0 – Akute Belastungsreaktion:\nUnmittelbare Reaktion auf ein Trauma oder außergewöhnliche Belastung.\nBeginn innerhalb von Minuten, klingt innerhalb von Stunden bis Tagen ab.\nSymptome: Betäubungsgefühl, Desorientiertheit, vegetative Zeichen.\nAbgrenzung zu PTBS: Akute Belastungsreaktion ist kurzfristig, PTBS entwickelt sich mit Latenz.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F43.1 – PTBS (Posttraumatische Belastungsstörung):\nEntwickelt sich nach schwerem Trauma mit Latenz von Wochen bis Monaten.\nPTBS-Trias: (1) Wiedererleben/Intrusionen (Flashbacks, Albträume), (2) Vermeidung von Triggern, (3) Übererregung/Hyperarousal.\nTherapie: Zuerst Stabilisierung, dann Konfrontation.\nFrühe Konfrontation kann retraumatisieren!',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F43.2 – Anpassungsstörung:\nReaktion auf ein belastendes Lebensereignis (muss KEIN schweres Trauma sein).\nBeginn innerhalb von 1 Monat nach Belastung, Dauer max. 6 Monate.\nPTBS vs. Anpassungsstörung: PTBS = nach schwerem Trauma, Flashbacks, Vermeidung.\nAnpassungsstörung = nach beliebigem Lebensereignis, keine Flashbacks.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F44 – Dissoziative Störungen:\nDissoziative Amnesie (partielle/vollständige Gedächtnislücke für belastende Ereignisse), dissoziative Fugue (plötzliches Wegreisen + Amnesie), dissoziativer Stupor, dissoziative Bewegungsstörungen, Konversionsstörungen, multiple Persönlichkeitsstörung.\nKeine hirnorganische Ursache!',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F45 – Somatoforme Störungen:\nKörperliche Beschwerden ohne ausreichenden organischen Befund.\nF45.0 Somatisierungsstörung: multiple wechselnde Beschwerden ≥2 Jahre, Beginn vor 30 Jahren.\nF45.2 Hypochondrie: Überzeugung, an schwerer Krankheit zu leiden.\nF45.4 Anhaltende Schmerzstörung.\nPatienten sind oft schwer für Psychotherapie zu motivieren.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Somatisierungsstörung:\nBeginn meist im frühen Erwachsenenalter (<30 Jahre), häufiger bei Frauen.\nMind. 2 Jahre multiple, wechselnde körperliche Beschwerden ohne organischen Befund.\nPatienten glauben an körperliche Ursachen.\nErhöhtes Risiko für Medikamentenmissbrauch durch häufige Arztbesuche.\nWichtig: Biopsychosoziales Störungsmodell erarbeiten.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Dissoziative Fugue:\nPlötzliches, unerwartetes Wegreisen von zu Hause mit Unfähigkeit, sich an die eigene Vergangenheit zu erinnern, bei äußerlich geordnetem Verhalten.\nDissoziative Amnesie: Charakteristisch ist eine partielle oder vollständige Amnesie für belastende Ereignisse bei gleichzeitigem Fehlen hirnorganischer Störungen.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Zur ICD-10-Kategorie F4 gehören:\nAngststörungen (F40-F41), Zwangsstörungen (F42), Belastungs-/Anpassungsstörungen (F43), dissoziative Störungen (F44), somatoforme Störungen (F45).\nNICHT dazu gehören: Schizophrenien (F2), Depressionen (F3), Persönlichkeitsstörungen (F6).',
    tags: ['F4 – Neurotische Störungen', 'ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'Krankheitsgewinn:\nPrimärer Krankheitsgewinn = innerpsychischer Gewinn (z.B. Angstreduktion durch Symptombildung).\nSekundärer Krankheitsgewinn = äußere Vorteile aus der Krankenrolle (Zuwendung, Entlastung, Berentung).\nSekundärer Krankheitsgewinn ist oft unbewusst.\nBewusstes Täuschen wäre Simulation!',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Somatoforme Störungen – richtige Zuordnung:\nDas Da-Costa-Syndrom (Herzneurose) ist eine somatoforme autonome Funktionsstörung des kardiovaskulären Systems (F45.30).\nDie Hypochondrie gehört zu den somatoformen Störungen (F45.2).\nDie körperdysmorphe Störung gehört ebenfalls zu den somatoformen Störungen, NICHT zu den Essstörungen.',
    tags: ['F4 – Neurotische Störungen'],
  ),

  // ============================================================
  // TEIL 7: F5 - VERHALTENSAUFFÄLLIGKEITEN (89-97)
  // ============================================================
  Flashcard(
    text:
        'F50.0 – Anorexia nervosa:\nBMI ≤17,5 kg/m², selbst herbeigeführter Gewichtsverlust, Körperschema-Störung (Betroffene halten sich für zu dick trotz Untergewicht), Amenorrhö.\nHöchste Mortalitätsrate aller psychischen Erkrankungen (ca. 5-10%).\nRefeeding-Syndrom als gefährliche Komplikation bei Wiederernährung.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'F50.2 – Bulimia nervosa:\nEssanfälle mit Kontrollverlust + kompensatorische Maßnahmen (Erbrechen, Laxantien, Fasten).\nGewicht oft normal.\nÜbertriebene Gewichtssorge.\nTypisch: depressive Symptome.\nIn der Vorgeschichte häufig Anorexia nervosa.\nCa. 90% Frauen betroffen.\nErbrechen/Diuretika → Elektrolytstörungen (Hypokaliämie).',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Binge-Eating-Störung:\nWiederkehrende Essanfälle mit Kontrollverlust und nachfolgenden Schuldgefühlen.\nHäufig Übergewicht.\nIm Gegensatz zur Bulimie werden KEINE gewichtsregulierenden Gegenmaßnahmen eingesetzt.\nEssen erfolgt hastig, oft allein aus Scham, nicht mit Genuss.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'F51 – Nichtorganische Schlafstörungen:\nInsomnie (Einschlaf-/Durchschlafstörung), Hypersomnie (übermäßige Schläfrigkeit), Schlafwandeln (Somnambulismus), Alpträume.\nNicht organisch bedingt.\nSchlafhygiene-Regeln: Kein Mittagsschlaf, regelmäßiger Aufstehzeitpunkt, kein intensiver Sport vor dem Schlafen, keine sichtbare Uhr.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'F52 – Sexuelle Funktionsstörungen:\nAppetenzstörung (Mangel an sexuellem Verlangen), Erregungsstörung, Orgasmusstörung, Vaginismus.\nNicht organisch bedingt.\nAbgrenzung: Geschlechtsinkongruenz = Störung der Geschlechtsidentität, KEINE Störung der Sexualpräferenz.\nFetischismus, Sadismus, Pädophilie = Paraphilien.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Narkolepsie:\nImperative Einschlafattacken, Kataplexie (plötzliche Muskelschwäche bei Emotionen), hypnagoge Halluzinationen, Schlafparalyse.\nFamiliäre Häufung.\nErfrischung nach kurzem Schlaf.\nAbgrenzung: Absencen = kurze Bewusstseinsaussetzer bei Epilepsie.\nSchlafapnoe führt nicht zu Kataplexie.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Pavor nocturnus (Nachtangst):\nPlötzlicher Panikschrei mit vegetativen Symptomen (Tachykardie, Schwitzen).\nTritt im ersten Drittel des Nachtschlafs auf (Tiefschlaf).\nKind hat typischerweise keine Erinnerung (Amnesie).\nGehört zu den Parasomnien.\nTherapie: Aufklärung und Beruhigung der Eltern, keine Medikamente als Standard.',
    tags: ['F5 – Verhaltensauffälligkeiten', 'F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Differentialdiagnosen bei Untergewicht:\nAnorexia nervosa, Leukämie und konsumierende Erkrankungen, Hyperthyreose (erhöhter Stoffwechsel), körperdysmorphe Störung, Zwangserkrankungen mit Nahrungsritualen, Diabetes mellitus Typ 1. Vor Diagnose Anorexie müssen organische Ursachen ausgeschlossen werden.',
    tags: ['F5 – Verhaltensauffälligkeiten', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'FASD (Fetales Alkoholsyndrom):\nTypische Gesichtsmerkmale – schmale Oberlippe, glattes Philtrum, kurze Lidspalten.\nMinderwuchs.\nStörungen der Exekutivfunktionen.\nKein sicherer Alkoholkonsum in der Schwangerschaft – Schädigung in jedem Trimenon möglich.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),

  // ============================================================
  // TEIL 8: F6 - PERSÖNLICHKEITSSTÖRUNGEN (98-113)
  // ============================================================
  Flashcard(
    text:
        'Allgemeine Kriterien Persönlichkeitsstörungen (F60):\nTief verwurzelte, anhaltende Verhaltensmuster, die deutlich von kulturell erwarteten Normen abweichen.\nBeginn in Kindheit/Adoleszenz, stabil im Erwachsenenalter.\nBetreffen: Kognition, Affektivität, Impulskontrolle und Beziehungsgestaltung.\nPS vs. Akzentuierung: PS = tiefgreifend, unflexibel, Leidensdruck.\nAkzentuierung = noch flexibel.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.0 – Paranoide PS:\nMisstrauen, Empfindlichkeit gegenüber Zurückweisung, Streitsucht, Überbewertung, Selbstbezogenheit.\nParanoide sind NICHT von anderen abhängig, sondern eher misstrauisch und eigenbrötlerisch.\nBeharren auf eigenen Rechten.\nCluster A (sonderbar).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.1 – Schizoide PS:\nEmotionale Kühle, Distanziertheit, Anhedonie, Einzelgänger.\nWenig Interesse an sozialen oder sexuellen Kontakten.\nMangel an engen Freunden.\nGleichgültigkeit gegenüber Lob und Kritik.\nCluster A (sonderbar).\nNicht zu verwechseln mit Schizophrenie!',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.2 – Dissoziale (antisoziale) PS:\nMissachtung sozialer Normen und Rechte anderer.\nFehlende Empathie, fehlendes Schuldbewusstsein.\nSehr niedrige Frustrationstoleranz mit Neigung zu aggressivem Verhalten.\nCluster B (dramatisch).\nAbgrenzung: Schizoide PS = emotionale Distanz, NICHT aggressiv.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.3 – Emotional instabile PS:\n.30 Impulsiver Typ: Affektlabilität, mangelnde Impulskontrolle, emotionale Instabilität. .31 Borderline-Typ: ZUSÄTZLICH gestörtes Selbstbild, chronisches Gefühl der Leere, instabile intensive Beziehungen, Selbstschädigung.\nCluster B (dramatisch).\n3 Kernmerkmale Borderline: Leere, Impulsivität, Selbstschädigung.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.4 – Histrionische PS:\nDramatisierung, Theatralik, übertriebener Gefühlsausdruck, Suggestibilität, Aufmerksamkeitssuche, flache und labile Affektivität.\nBedürfnis im Mittelpunkt zu stehen.\nCluster B (dramatisch).\nAbgrenzung: Bedürfnis nach Bewunderung = eher narzisstische PS.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.5 – Anankastische (zwanghafte) PS:\nPerfektionismus, Zweifel, Rigidität, übermäßige Gewissenhaftigkeit, Pedanterie.\nICH-SYNTON (wird als Teil der Persönlichkeit erlebt).\nCluster C (ängstlich).\nAbgrenzung zur Zwangsstörung (F42): Zwangsstörung = ICH-DYSTON (wird als fremd/quälend erlebt).',
    tags: ['F6 – Persönlichkeitsstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F60.6 – Ängstliche (vermeidende) PS:\nAnspannung, Unsicherheit, Überempfindlichkeit gegen Kritik.\nVermeidung sozialer Kontakte aus Angst vor Ablehnung.\nWÜNSCHT sich aber Kontakte (im Gegensatz zur schizoiden PS).\nCluster C (ängstlich).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.7 – Abhängige (asthenische) PS:\nÜberlässt Entscheidungen anderen, Trennungsangst, Hilflosigkeit, Unterordnung eigener Bedürfnisse.\nKann nicht allein entscheiden.\nAusgeprägte Angst vor Alleinsein/Verlassenwerden.\nCluster C (ängstlich).\nAbgrenzung: Streitsucht = paranoide PS.\nPerfektionismus = anankastische PS.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'PS-Cluster:\nCluster A (sonderbar/exzentrisch): Paranoid, schizoid, [schizotyp].\nCluster B (dramatisch/emotional): Dissozial, emotional instabil (Borderline), histrionisch, [narzisstisch].\nCluster C (ängstlich/furchtsam): Vermeidend (ängstlich), abhängig, anankastisch (zwanghaft).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F61 – Kombinierte und sonstige PS:\nMischbild mehrerer PS-Züge, das keiner einzelnen Kategorie zugeordnet werden kann.\nF62 – Andauernde Persönlichkeitsänderung: Nach Extrembelastung (z.B. KZ, Geiselnahme) oder schwerer psychiatrischer Krankheit.\nNicht als PS (F60) klassifizierbar, da erworben, nicht angeboren.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'Ich-synton vs. ich-dyston:\nPersönlichkeitsstörungen sind definitionsgemäß ich-synton (als zum Selbst gehörig).\nIn der Manie fühlt sich der Patient großartig (ich-synton).\nBei Schizophrenie werden Halluzinationen als real erlebt (ich-synton).\nZwänge bei Zwangsstörung (F42) sind typischerweise ich-DYSTON.\nWahn wird als real erlebt (ich-synton).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Störungen der Impulskontrolle und Geschlechtsidentität:\nPathologisches Spielen, Pyromanie, Kleptomanie gehören zu F63.\nGeschlechtsinkongruenz ist eine Störung der Geschlechtsidentität (F64), KEINE Störung der Sexualpräferenz.\nParaphilien (Fetischismus, Sadismus, Pädophilie) = Störungen der Sexualpräferenz (F65).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),

  // ============================================================
  // TEIL 9: F7-F9 - INTELLIGENZMINDERUNG, ENTWICKLUNG, KINDHEIT (114-129)
  // ============================================================
  Flashcard(
    text:
        'F7 – Intelligenzminderung nach IQ:\nF70 Leicht (IQ 50-69, mentales Alter 9-12 Jahre).\nF71 Mittelgradig (IQ 35-49, 6-9 Jahre).\nF72 Schwer (IQ 20-34, 3-6 Jahre).\nF73 Schwerst (IQ <20, <3 Jahre).\nMerke: IQ-Stufen "70-50-35-20".\nDurchschnittlicher IQ = 100 (Normalbereich 85-115, 68% der Bevölkerung).',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Intelligenzminderung – Merksätze:\nBeginnt ab IQ <70.\nGenetische Faktoren (z.B. Down-Syndrom) sind gesicherte Ursachen.\nKeine Heilung möglich, aber frühe Förderung kann Selbständigkeit verbessern.\nErhöhtes Risiko für psychische und physische Komorbiditäten.\nVT oder medikamentöse Behandlung ist möglich.\nDemenz kann zusätzlich auftreten.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F80 – Umschriebene Sprachentwicklungsstörungen:\nArtikulationsstörung, expressive und rezeptive Sprachstörung.\nF81 – Umschriebene schulische Entwicklungsstörungen: Lese-Rechtschreibstörung (Legasthenie) und Rechenstörung (Dyskalkulie).\nLegasthenie: Normaler IQ, kann jede Schulform besuchen, gezielt behandelbar.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F82 – Umschriebene motorische Entwicklungsstörung:\nKoordinationsstörung, nicht durch Intelligenzmangel erklärbar.\nF84.0 – Frühkindlicher Autismus (Kanner-Syndrom): Beginn vor dem 3. Lebensjahr.\nTrias: Soziale Interaktion↓, Kommunikation↓, stereotype Verhaltensweisen.\nJungen häufiger betroffen.\nTiefgreifende Entwicklungsstörung.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F84.5 – Asperger-Syndrom:\nSoziale Interaktion eingeschränkt, OHNE Sprach- oder Kognitionsverzögerung.\nSpezialinteressen, motorische Unbeholfenheit.\nAbgrenzung zum frühkindlichen Autismus: Asperger hat normale Sprachentwicklung und normale/überdurchschnittliche Intelligenz.\nBeide gehören zum Autismus-Spektrum.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F90 – Hyperkinetische Störungen (ADHS):\nAufmerksamkeitsdefizit + Hyperaktivität + Impulsivität.\nBeginn vor dem 7. Lebensjahr, Symptome ≥6 Monate, in ≥2 Situationen (z.B. Schule und Zuhause).\nJungen häufiger betroffen (ca. 3:1).\nErhöhtes Unfallrisiko.\nKann bis ins Erwachsenenalter fortbestehen.\nADS = ohne Hyperaktivität.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'ADHS – Therapie und Komorbiditäten:\nTherapie der Wahl: Stimulanzien (z.B. Methylphenidat), KEINE Beruhigungsmittel.\nVerhaltenstherapie ist leitliniengemäß.\nKomorbiditäten: Tic-Störungen, Störungen des Sozialverhaltens.\nIch-Störungen gehören NICHT zu den ADHS-Symptomen.',
    tags: ['F7-F9 – Entwicklung & Kindheit', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'F91 – Störung des Sozialverhaltens:\nDissoziales Verhalten: Aggressivität, Regelverstöße, Tierquälerei, Stehlen, Lügen.\nAbgrenzung zur dissozialen PS (F60.2): Kinder/Jugendliche erhalten F91, Erwachsene F60.2.\nF93 – Emotionale Störungen des Kindesalters: Trennungsangst, phobische Störung, soziale Ängstlichkeit (altertypische Verstärkung normaler Emotionen).',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F94 – Störungen sozialer Funktionen:\nElektiver Mutismus (Kind spricht nur in bestimmten Situationen), reaktive Bindungsstörung (im Kontext von Vernachlässigung/Misshandlung, vor 5. LJ), Bindungsstörung mit Enthemmung.\nAbgrenzung: Reaktive Bindungsstörung hat keine autismusvergleichbaren kognitiven Defizite.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F95 – Ticstörungen:\nMotorische und/oder vokale Tics.\nF95.2 = Tourette-Syndrom (kombiniert): Multiple motorische + mind. 1 vokaler Tic über ≥12 Monate.\nHauptmanifestationsalter 6-8 Jahre.\nKoprolalie (zwanghaftes Aussprechen obszöner Wörter) und Echolalie können auftreten.\nGehört zu den Ticstörungen, NICHT zu den Epilepsien.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F98 – Sonstige Verhaltens-/emotionale Störungen:\nEnuresis (Einnässen – vor 5. LJ entwicklungsbedingt normal), Enkopresis (Einkoten), Fütterstörung, Stereotypien.\nSekundäre Enuresis (nach ≥6 Monaten Trockenheit) ist häufiger mit psychischen Komorbiditäten assoziiert als primäre.\nNächtliches Einnässen ist häufiger als tagsüber.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Parkinson-Trias (nicht F-Diagnose, aber prüfungsrelevant):\n„RAT" – Rigor (Muskelsteifheit), Akinese (Bewegungsarmut), Ruhetremor (Zittern in Ruhe, NICHT Intentionstremor).\nDazu: Mikrografie (verkleinertes Schriftbild), monotone Stimme, Maskengesicht.\nIntentionstremor = Kleinhirnläsion.',
    tags: ['Psychopathologie'],
  ),

  // ============================================================
  // TEIL 10: DIFFERENTIALDIAGNOSEN & PRÜFUNGSTIPPS (130-142)
  // ============================================================
  Flashcard(
    text:
        'Prüfungsklassiker – Differentialdiagnosen (Teil 1):\nDemenz vs. Delir: Demenz = chronisch, klares Bewusstsein.\nDelir = akut, getrübtes Bewusstsein.\nDemenz vs. Depression (Pseudodemenz): Depression = klagt aktiv, "weiß nicht".\nDemenz = bagatellisiert, Konfabulationen.\nSchizophrenie vs. wahnhafte Störung: F22 = isolierter Wahn OHNE Halluzinationen, Persönlichkeit erhalten.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Prüfungsklassiker – Differentialdiagnosen (Teil 2):\nSchizophrenie vs. schizoaffektiv: Schizoaffektiv = gleichzeitig schizophrene UND affektive Symptome.\nDepression vs. Dysthymia: Depression = episodisch, schwerer.\nDysthymia = chronisch ≥2J, leichter.\nBipolar vs. rezidivierende Depression: Bipolar = mind. 1 manische Episode.\nRezidivierend = NUR depressive Episoden.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Prüfungsklassiker – Differentialdiagnosen (Teil 3):\nZwang vs. Wahn: Zwang = ICH-DYSTON (als sinnlos erkannt).\nWahn = ICH-SYNTON (unerschütterliche Überzeugung).\nPanikstörung vs. GAD: Panik = episodisch, attackenartig.\nGAD = anhaltend, ≥6 Monate, frei flottierend.\nAnpassungsstörung vs. PTBS: PTBS = nach schwerem Trauma, Flashbacks.\nAnpassungsstörung = nach beliebigem Ereignis.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Ausschluss organischer Ursachen:\nBei JEDER psychischen Störung muss zuerst eine organische Ursache ausgeschlossen werden – das ist HPP-Kernkompetenz!\nVor jeder Psychotherapie ist eine somatische Abklärung notwendig.\nBeispiele: Hypothyreose → Depression, Hirntumor → Persönlichkeitsveränderung, Hypoglykämie → Angst.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Notfälle erkennen:\nDelir, akute Psychose, schwere Intoxikation/Entzug, akute Suizidalität → sofort Notarzt/Einweisung!\nEin psychiatrischer Notfall erfordert sofortiges Handeln zur Abwendung von Lebensgefahr.\nTherapie muss sofort und symptomorientiert erfolgen.\nHPP muss Notfälle erkennen und angemessen reagieren!',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HPP-Grenzen:\nHPP darf KEINE organischen Erkrankungen diagnostizieren, KEINE Medikamente verordnen, KEINE Suchtbehandlung (z.B. Methadon-Substitution) durchführen.\nBei Verdacht auf organische Ursache → Überweisung an Arzt!\nDie Verordnung von Betäubungsmitteln unterliegt dem BtMG und bedarf eines Arztes.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Wahrnehmungsstörungen:\nHalluzination = Wahrnehmung OHNE realen Reiz (akustisch, optisch, taktil, olfaktorisch, gustatorisch).\nIllusionäre Verkennung = Fehldeutung eines REAL vorhandenen Reizes (z.B. Sitzsack wird für Einbrecher gehalten).\nIllusionäre Verkennungen können auch bei Gesunden auftreten.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Depersonalisation vs. Derealisation:\nDepersonalisation = Gefühl der Entfremdung vom eigenen Ich (man fühlt sich losgelöst vom eigenen Körper, Gedanken oder Gefühlen).\nDerealisation = Wahrnehmung der Umwelt als unwirklich/fremd.\nKönnen bei PTBS, dissoziativen Störungen, Panikattacken und Schizophrenie auftreten.\nSind Ich-Störungen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Hypoglykämie – psychische Symptome (prüfungsrelevant):\nZittern, Unruhe, Reizbarkeit (adrenerge Gegenregulation).\nWeitere: Schwitzen, Herzklopfen, Heißhunger, Konzentrationsstörungen.\nKann psychische Störungen imitieren!\nAbgrenzung: Hypothyreose = "alles gedrosselt" (Antriebsmangel, Depression).\nHyperthyreose = "alles auf Hochtouren" (Unruhe, Tachykardie).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Epilepsie (prüfungsrelevant):\nKann in jedem Alter auftreten.\nAbsencen = kurze Bewusstseinsaussetzer (vor allem bei Kindern).\nEEG zur Diagnose.\nBenzodiazepinabrupt-Absetzen kann Krampfanfälle auslösen.\nNach Gelegenheitskrampf: Fahrtauglichkeit beeinträchtigt.\nAbgrenzung: Dissoziative Krampfanfälle = keine epileptischen Veränderungen im EEG.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Psychopathologischer Befund – Orientierung:\nOrientierungsstörungen betreffen 4 Qualitäten: zeitlich, örtlich, situativ, zur Person (ZOSP).\nZeitliche Orientierung ist meist zuerst gestört.\nOrientierung zur eigenen Person ist am tiefsten verankert und zuletzt betroffen.\nPrüfung: Datum, Ort, Situation und Name erfragen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Psychopathologischer Befund – Affekt:\nAffektverflachung (reduzierte emotionale Schwingungsfähigkeit).\nParathymie (inadäquater Affekt, z.B. Lachen bei traurigem Inhalt).\nAffektinkontinenz (unkontrollierte Gefühlsausbrüche).\nAffektlabilität (rasche Stimmungswechsel).\nAmbivalenz (gleichzeitig widersprüchliche Gefühle).\nAlle können bei Schizophrenie auftreten.',
    tags: ['Psychopathologie'],
  ),

  // ============================================================
  // TEIL 11: THERAPIEVERFAHREN (143-158)
  // ============================================================
  Flashcard(
    text:
        'Kognitive Verhaltenstherapie (KVT) nach Beck:\nTagesprotokolle zur Selbstbeobachtung, Erkennen automatischer dysfunktionaler Gedanken, kognitive Umstrukturierung (z.B. Reattribuierung).\nDenkfehler nach Beck: Generalisierung, Katastrophisierung, Schwarz-Weiß-Denken, willkürliches Schlussfolgern.\nGrundprinzip VT: Abweichendes Verhalten durch Lernprozesse erworben – und änderbar.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Exposition/Konfrontation:\nFlooding (Reizüberflutung) und systematische Desensibilisierung sind Expositionsverfahren.\nWirkmechanismus: Habituation (Gewöhnung).\nWichtig: Angstkurve vollständig durchlaufen lassen!\nTranquilizer würden Exposition unwirksam machen.\nBei Zwängen: Exposition + Reaktionsverhinderung (ERP) = Goldstandard.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Psychoanalyse:\nGrundregel = Freies Assoziieren (alles aussprechen, was einfällt).\nTechniken: Deutung (Aufdecken unbewusster Bedeutung), Traumdeutung, Bearbeitung von Übertragung und Widerstand.\nWiderstand = alle Verhaltensweisen, die den therapeutischen Prozess behindern (Zuspätkommen, Vergessen, Schweigen).\nTherapeutische Ich-Spaltung ist eine Voraussetzung.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Gesprächspsychotherapie nach Carl Rogers:\n3 Grundhaltungen: (1) Empathie (einfühlendes Verstehen), (2) Akzeptanz (unbedingte Wertschätzung), (3) Kongruenz (Echtheit).\nBasiert auf der Aktualisierungstendenz.\nNicht-direktiver Ansatz.\nSuggestivfragen und rhetorische Fragen sind NICHT vereinbar mit Rogers.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Systemische Therapie:\nBefasst sich mit Beziehungsmustern und dysfunktionalen familiären Interaktionen.\nTechnik: Zirkuläres Fragen (ein Familienmitglied wird über Beziehung/Verhalten anderer befragt).\nDelegation (Stierlin) = Kinder erfüllen unbewusst Wünsche der Eltern.\nParentifizierung = Rollenumkehr Kind↔Elternteil.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'EMDR (Eye Movement Desensitization and Reprocessing):\nEvidenzbasierte Methode zur Traumaverarbeitung.\nBilaterale Stimulation (Augenbewegungen).\nPatient bleibt wach und bewusst (KEINE Hypnose).\nZiel: Verarbeitung und Umstrukturierung dysfunktionaler Kognitionen.\nNebenwirkungen möglich (emotionale Belastung).',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'DBT (Dialektisch-Behaviorale Therapie):\nSpeziell für Borderline-PS entwickelt.\nEmotionsregulationstraining: Gefühle wahrnehmen und regulieren, NICHT vermeiden oder unterdrücken.\nAchtsamkeit bezieht sich auf gegenwärtige Gefühle.\nStresstoleranz-Skills.\nCBASP wurde speziell für chronische Depression entwickelt.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Neuroleptika/Antipsychotika:\nAntipsychotische, anxiolytische und sedierende Wirkung.\nNebenwirkungen: Extrapyramidale Störungen (Dyskinesien, Akathisie, Frühdyskinesien), Gewichtszunahme, QT-Verlängerung.\nKEIN Abhängigkeitspotenzial (Unterschied zu Benzodiazepinen).\nAnticholinerge NW: Miktionsstörungen, Mydriasis.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Serotoninsyndrom:\nLebensbedrohliche Überaktivierung des Serotoninsystems, meist durch Kombination serotonerger Substanzen (SSRI + MAO-Hemmer, Triptane oder Johanniskraut).\nLeitsymptome: Ruhelosigkeit und Bewusstseinsstörung, neuromuskuläre Zeichen (Tremor, Muskelzuckungen, gesteigerte Reflexe) sowie vegetative Zeichen (Fieber, Schwitzen, Tachykardie, Übelkeit).\nNOTFALL – auslösende Substanz absetzen, sofort ärztliche Behandlung.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Johanniskraut (Hypericum perforatum):\nPhytopharmakon – KEIN Biologikum und KEIN Neuroleptikum.\nNachgewiesene antidepressive Wirkung bei leichten bis mittelschweren depressiven Episoden, dafür auch zugelassen.\nBei älteren Menschen nicht generell kontraindiziert.\nCave: erhebliche Wechselwirkungen durch CYP-Enzym-Induktion – schwächt u.a. Kontrazeptiva, Antikoagulanzien und Immunsuppressiva ab.\nZusammen mit SSRI droht ein Serotoninsyndrom.\nWeitere Nebenwirkung: Photosensibilisierung.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Lerntheorie – Verstärkung und Bestrafung:\nPositive Verstärkung = angenehmer Reiz wird hinzugefügt → Verhalten nimmt zu.\nNegative Verstärkung = unangenehmer Reiz wird entfernt → Verhalten nimmt zu (z.B. Kratzen → Juckreiz weg).\nDirekte Bestrafung = aversiver Reiz hinzugefügt.\nIndirekte Bestrafung (Typ II) = angenehmer Reiz entzogen.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Klassische vs. operante Konditionierung:\nKlassische Konditionierung (Pawlow) = ein neutraler Reiz wird durch wiederholte Kopplung mit einem unkonditionierten Reiz selbst zum Auslöser der Reaktion – unwillkürlich, Lernen am Reiz.\nOperante Konditionierung (Skinner) = Verhalten wird durch seine Konsequenzen gesteuert; Verstärkung erhöht, Bestrafung senkt die Auftretenswahrscheinlichkeit – Lernen am Erfolg.\nMerke: klassisch = Reiz VOR der Reaktion, operant = Konsequenz NACH dem Verhalten.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Löschung (Extinktion) und Verstärkerpläne:\nLöschung = ein konditioniertes Verhalten nimmt ab, wenn die Verstärkung bzw. der unkonditionierte Reiz ausbleibt.\nSie dient dem ABBAU, nicht dem Aufbau von Verhalten.\nKontinuierliche Verstärkung (jedes Mal) führt zu schnellem Lernen, aber auch zu schneller Löschung.\nIntermittierende Verstärkung (nur gelegentlich) baut Verhalten langsamer auf, macht es aber besonders löschungsresistent – Erklärung für die Hartnäckigkeit von Spielsucht.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Verhaltensaufbau in der Verhaltenstherapie:\nShaping = Verstärkung schrittweiser Annäherungen an das Zielverhalten.\nChaining = Verkettung einzelner beherrschter Teilschritte zu einer Handlungskette.\nPrompting = gezielte verbale, gestische oder körperliche Hilfestellung.\nFading = allmähliches Ausblenden dieser Hilfen.\nPremack-Prinzip = ein häufig gezeigtes Verhalten verstärkt ein selten gezeigtes.\nToken-System = symbolische Verstärker werden gesammelt und später eingetauscht.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Modelllernen nach Bandura:\nLernen durch Beobachtung und Nachahmung eines Modells – ohne eigene Verstärkungserfahrung.\nVier Phasen: (1) Aufmerksamkeit auf das Modell, (2) Behalten im Gedächtnis, (3) motorische Reproduktion, (4) Motivation/Verstärkung.\nNachahmung ist wahrscheinlicher, wenn das Modell hohen Status hat oder für sein Verhalten belohnt wird (stellvertretende Verstärkung).\nGrundlage von Rollenspiel und Modellvorgabe in der Verhaltenstherapie.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Reizverarbeitung – vier Begriffe zum Verwechseln:\nReizgeneralisierung = die konditionierte Reaktion tritt auch bei ähnlichen Reizen auf (so weitet sich eine Phobie aus).\nReizdiskriminierung = Unterscheidung ähnlicher Reize, nur der konditionierte Reiz löst die Reaktion aus.\nHabituation = Abnahme der Reaktion bei wiederholter Reizdarbietung – das Wirkprinzip der Exposition.\nSensitivierung = Zunahme der Reaktion bei wiederholtem Reiz, das Gegenstück zur Habituation.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Therapieverfahren richtig zuordnen:\nKatathymes Bilderleben gehört zu den tiefenpsychologisch fundierten Verfahren.\nBiofeedback und Flooding gehören zur Verhaltenstherapie.\nDas SORKC-Modell ist ein zentrales verhaltenstherapeutisches Analysemodell.\nAutogenes Training und Progressive Muskelrelaxation (PMR) sind Entspannungsverfahren.\nBei akuter Psychose sind Entspannungsverfahren KONTRAINDIZIERT.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Ähnlich klingende Konzepte:\nResilienz = psychische Widerstandsfähigkeit trotz belastender Umstände.\nReaktanz = Widerstand gegen wahrgenommene Einschränkung der Freiheit.\nCompliance = Therapietreue.\nKognitive Dissonanz = innere Widersprüche zwischen Einstellungen/Verhalten.\nErlernte Hilflosigkeit (Seligman) = lerntheoretisches Konzept, KEIN psychoanalytischer Abwehrmechanismus.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Serotonin:\nKommt zu ca. 90% im Darm vor, beeinflusst Stimmung, Temperatur, Schmerz und Schlaf-Wach-Rhythmus.\nKann die Blut-Hirn-Schranke NICHT passieren.\nSSRI wirken auch peripher → gastrointestinale Nebenwirkungen.\nJohanniskraut: Bei leichten bis mittelschweren Depressionen zugelassen, aber erhebliche Wechselwirkungen (CYP-Induktion).',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Selbstbeurteilungsbögen (z.B. BDI-II) erfassen:\nStimmung, Antrieb, Schlaf, Appetit, Suizidgedanken.\nNICHT erfassbar: Wahnerleben (Betroffene erkennen Wahn nicht als solchen → Fremdbeurteilung nötig).\nVor Therapiebeginn: Offene Fragen stellen, Suggestivfragen vermeiden, bei vagen Aussagen nachfragen.',
    tags: ['Therapieverfahren'],
  ),

  // ============================================================
  // TEIL 12: PSYCHOPATHOLOGISCHER BEFUND (159-163)
  // ============================================================
  Flashcard(
    text:
        'Neuroanatomie (prüfungsrelevant):\nCorpus callosum = verbindet Großhirnhemisphären.\nHippocampus = Gedächtnisbildung.\nKleinhirn = motorische Koordination, Feinmotorik.\nHirnstamm = Atmung, Kreislauf.\nHypothalamus = steuert autonomes NS.\nSympathikus = Fight-or-Flight.\nParasympathikus = Rest-and-Digest.\nLimbisches System = Emotionen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'MS (Multiple Sklerose) – psychische Symptome:\nEuphorie, Affektverflachung, kognitive Beeinträchtigungen bis zur Demenz, selten paranoide Symptome.\nSehstörungen durch Optikusneuritis.\nFlashbacks sind NICHT typisch für MS (sondern für PTBS).\nMS kann psychiatrische Symptome verursachen → organische Ursache ausschließen!',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Migräne (prüfungsrelevant):\nLichtempfindlichkeit, Übelkeit/Erbrechen.\nAuraphase: Flimmerskotome (Sehstörungen).\nKörperliche Betätigung verschlechtert die Kopfschmerzen.\nBestimmte Lebensmittel können triggern.\nAm häufigsten bei Frauen im gebärfähigen Alter.\nBessert sich oft nach der Menopause.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Fibromyalgie:\nChronische Schmerzen in mehreren Körperregionen, Schlafstörungen, Müdigkeit.\nKVT ist wirksamer Behandlungsansatz.\nNICHT gleichzusetzen mit somatoformer Schmerzstörung.\nRheumafaktoren sind nicht typisch.\nBetrifft ca. 2-4% der Bevölkerung.',
    tags: ['Psychopathologie'],
  ),

  // ============================================================
  // TEIL 13: RECHTLICHE THEMEN (164-200)
  // ============================================================
  Flashcard(
    text:
        'Unterbringung – wer entscheidet:\nEs kann immer nur der Richter rechtlich über die zwangsweise Unterbringung und Behandlung gegen den Willen des Betroffenen entscheiden.\nWeder Ärzte, noch Heilpraktiker, noch Angehörige können allein eine Unterbringung anordnen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Rechtsgrundlagen für eine geschlossene Unterbringung:\n(1) StGB §63 (Maßregelvollzug bei Straftaten), (2) PsychKG (öffentlich-rechtlich bei Fremd-/Selbstgefährdung), (3) BGB-Betreuungsrecht (zivilrechtlich mit Gerichtsgenehmigung), (4) Freiwillige Aufnahme.\nDie Ärztekammer hat KEINE Anordnungskompetenz.\nMerke: 4 Rechtsgrundlagen: StGB, PsychKG, BGB, freiwillig.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterbringung nach PsychKG:\nZulässig zur Abwehr akuter erheblicher Gefahren für Gesundheit/Leben des Betroffenen oder bedeutende Rechtsgüter anderer.\nDas Amtsgericht ordnet an.\nOrdnungsamt kann bei Gefahr im Verzug sofortige kurzfristige Unterbringung veranlassen.\nZeitlich befristet.\nBehandlungsunwilligkeit allein, Gesetzesverstöße oder HP-Attest reichen NICHT aus.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterbringung nach Betreuungsrecht:\nMuss zum Wohl des Betreuten erforderlich sein.\nBedarf der Genehmigung des Betreuungsgerichts (bei Gefahr im Verzug: nachträgliche Genehmigung).\nSachverständigengutachten erforderlich.\nAuch in Pflegeheimen möglich.\nPatientenverfügung schließt Unterbringung nicht grundsätzlich aus.\nZeitlich befristet, regelmäßige Überprüfung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterbringung – Voraussetzungen:\nDie Unterbringung ist bei Suizidgefahr oder drohendem Gesundheitsschaden zulässig.\nAuch ohne akute psychiatrische Diagnose möglich (z.B. bei Demenz).\nKann auch in Pflegeheimen erfolgen.\nDas offene Ansprechen von Suizidalität erhöht NICHT das Suizidrisiko.\nBei passiver Suizidalität ist eine sofortige Unterbringung nicht angemessen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterbringung Minderjähriger (§1631b BGB):\nSie bedarf der Genehmigung des Familiengerichts.\nErziehungsberechtigte können den Antrag stellen.\nAuch Fremdgefährdung kann ein Grund sein.\nBei Kindeswohlgefährdung kann auch ohne Einverständnis der Eltern eine Unterbringung erfolgen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Rechtliche Betreuung:\nVoraussetzung ist, dass der Betroffene aufgrund psychischer Erkrankung oder geistiger/seelischer Behinderung seine Angelegenheiten nicht selbst besorgen kann.\nNur für Volljährige (Minderjährige: Vormundschaft).\nAngehörige können beim Gericht anregen.\nÜberprüfung mind. alle 7 Jahre.\nFührt NICHT automatisch zur Geschäftsunfähigkeit.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Betreuer – Befugnisse und Grenzen:\nDer Aufgabenkreis des Betreuers kann auf bestimmte Bereiche beschränkt werden (z.B. Gesundheitsfürsorge).\nZwangsweise Behandlung ist mit richterlicher Genehmigung möglich.\nDer Betreuer kann die Unterbringung NICHT eigenständig anordnen – Genehmigung des Betreuungsgerichts erforderlich.\nKeine gesetzliche Methodenbeschränkung für HP bei Behandlung von Betreuten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Betreuung – Anlässe und Genehmigungen:\nOrganische psychische Störungen (Demenz) sind ein häufiger Anlass für Betreuung.\nAuch Geschäftsunfähige können eine Betreuung beantragen.\nPsychotherapie erfordert keine gerichtliche Genehmigung.\nNach Betreuungsrecht kann eine Unterbringung auch zum Zwecke einer notwendigen ärztlichen Untersuchung erfolgen (§1831 BGB, bis 2022 §1906 BGB).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Einwilligungsvorbehalt (§1825 BGB):\nBestimmte Rechtsgeschäfte des Betreuten werden ohne Zustimmung des Betreuers nicht wirksam.\nHöchstpersönliche Rechtsgeschäfte (Eheschließung, Testament) sind ausgenommen.\nDient dem Schutz des Betreuten.\nWird befristet und regelmäßig überprüft.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Einwilligungsfähigkeit und Zwangsmaßnahmen:\nIst der Patient einwilligungsfähig, hat sein Wille Vorrang (Selbstbestimmungsrecht).\nIst er nicht einwilligungsfähig und besteht ein Gesundheitsrisiko, muss der Betreuer die Genehmigung beim Betreuungsgericht beantragen (ärztliche Zwangsmaßnahme).\nDer Betreuer kann NICHT einfach einwilligen, sondern muss zum Wohl des Betreuten handeln.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Geschäftsunfähigkeit nach §104 BGB:\nGeschäftsunfähig ist, wer das 7. Lebensjahr nicht vollendet hat ODER sich in einem die freie Willensbestimmung ausschließenden Zustand krankhafter Störung der Geistestätigkeit befindet (sofern nicht vorübergehend).\nNicht jeder akute psychische Zustand führt zur Geschäftsunfähigkeit.\nRechenstörung und Analphabetismus begründen KEINE Geschäftsunfähigkeit.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Erlaubnis zur Psychotherapie in Deutschland:\nÄrzte, unbeschränkter Heilpraktiker, Heilpraktiker für Psychotherapie (HPP), Psychologische Psychotherapeuten.\nEin Psychologiestudium allein befähigt NICHT zur Behandlung – erst mit therapeutischer Ausbildung + Approbation darf man sich "Psychologischer Psychotherapeut" nennen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Der HPP darf alle psychotherapeutischen Verfahren anwenden:\nkognitive VT, tiefenpsychologisch fundierte PT, Psychoanalyse, Gruppentherapie, Einzelhypnose, psychologische Testverfahren (Intelligenztests).\nNICHT erlaubt: Osteopathie (körperliches Verfahren → große HP-Erlaubnis nötig), Akupunktur (invasiv), Medikamentenverordnung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HPP-Tätigkeitsverbote:\nSubstitutionstherapie mit Methadon (ärztliche Maßnahme), Medikamente verordnen (nur HP Vollzulassung oder Arzt), LSD-gestützte Therapie (Verstoß gegen BtMG), organische Erkrankungen diagnostizieren, Suchtbehandlung mit Substitution.\nErlaubt: Gruppentherapie, EMDR, Expositionstherapie, tiefenpsychologische Therapie.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HeilprG-Verbote:\nVerbot der Geburtshilfe (außer Notfall), Verbot der Behandlung von Mund-/Zahn-/Kiefererkrankungen (eigenes Zahnheilkundegesetz), Verbot der Heilkunde im Umherziehen (§3 HPG).\nDas HeilprG stammt von 1939.\nÄrzte benötigen keine HP-Erlaubnis.\nDie Hilfeleistungspflicht im Notfall ergibt sich aus StGB (§323c), NICHT aus dem HeilprG.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Wichtige Gesetze für HPP:\nHeilprG = regelt Berufsbezeichnung Heilpraktiker.\nBOH = Weiterbildungspflicht.\nIfSG = Meldung von Infektionskrankheiten (z.B. Masern).\nBtMG = Betäubungsmittel (z.B. Fentanyl).\nAMG = Arzneimittel.\nHWG = Verbot von Heilversprechen (Heilmittelwerbegesetz).\nDer sektorale HP wird durch das HeilprG geregelt, NICHT PsychThG.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Patientenrechtegesetz (§§630a-630h BGB):\nAufklärungspflicht, Aufbewahrungspflicht der Patientenakte (10 Jahre nach §630f BGB), Dokumentationspflicht, Informationspflicht.\nDie Meldepflicht ist NICHT im Patientenrechtegesetz, sondern im IfSG geregelt.\nElektronische Dokumentation ist zulässig.\nArztbriefe sind Teil der Patientenakte.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Akteneinsicht (§630g BGB):\nPatienten haben grundsätzlich Recht auf Einsicht.\nVerweigerung nur bei erheblichen therapeutischen Gründen (z.B. Suizidgefahr durch Diagnosekenntnis) oder wenn Rechte Dritter verletzt würden.\nVerweigerung muss begründet sein.\nDie Form des Antrags ist kein Verweigerungsgrund.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Schweigepflicht und Durchbrechung:\nSchriftliche Entbindung durch den Patienten erlaubt Weitergabe.\nHP haben KEIN Zeugnisverweigerungsrecht im Strafverfahren (nur Ärzte, Psychotherapeuten nach §53 StPO) und müssen aussagen.\nDurchbrechung der Schweigepflicht bei: geplanten schweren Straftaten (§34 StGB, rechtfertigender Notstand), akuter Suizidalität.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Meldepflicht nach IfSG:\nBestimmte Infektionskrankheiten müssen gemeldet werden (z.B. Masern).\nNicht im Patientenrechtegesetz geregelt, sondern im Infektionsschutzgesetz.\nHeilpraktiker unterliegen der Meldepflicht.\nDie Meldung geht an das zuständige Gesundheitsamt.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Praxisgründung HPP:\nMuss beim Gesundheitsamt angemeldet werden.\nFeste Praxisadresse erforderlich.\nFinanzamt-Anmeldung sofort bei Aufnahme der Tätigkeit.\nAngestellte müssen jährlich über Arbeitsschutz unterwiesen werden.\nBerufsgenossenschaft: Anmeldung als Arbeitgeber Pflicht.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Berufskunde HPP:\nNur approbierte Psychotherapeuten dürfen die Berufsbezeichnung "Psychotherapeut" führen.\nHP müssen über Kosten aufklären (wirtschaftliche Aufklärungspflicht).\nGebüH ist nur Orientierungshilfe, nicht verbindlich.\nPrivate Versicherungen können HP-Leistungen erstatten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Antisuizidvertrag (Non-Suizid-Vertrag):\nBei nicht akuter Suizidalität ein sinnvolles therapeutisches Instrument.\nDie bloße Äußerung von Suizidgedanken entbindet nicht automatisch von der Schweigepflicht – erst bei konkreter Gefahr besteht Handlungspflicht.\nAuch latente Suizidgedanken erfordern therapeutische Aufmerksamkeit.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Akute Suizidalität – richtiges Vorgehen:\nBei akuter Suizidalität muss ggf. eine beschützende stationäre Behandlung veranlasst werden.\nDer Patient darf nicht mehr alleine gelassen werden.\nHopfen/Baldrian sind inadäquat.\nNach Hause entlassen bei konkreten Suizidabsichten ist kontraindiziert.\nDie Frage nach Suizidalität dient der Risikoeinschätzung, nicht primär der Unterbringung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Behandlung von Kindern – Einwilligung:\nBei gemeinsamem Sorgerecht müssen BEIDE Elternteile einer Behandlung des Kindes zustimmen.\nEin 9-jähriges Kind ist nicht geschäftsfähig und kann keinen eigenen Behandlungsvertrag abschließen.\nEine Schulbescheinigung ersetzt nicht die Einwilligung beider Sorgeberechtigten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Betäubungsmittel und Substitution:\nDie Verordnung von Betäubungsmitteln unterliegt dem Betäubungsmittelgesetz (BtMG) und bedarf der Verordnung durch einen Arzt.\nHeilpraktiker dürfen keine Betäubungsmittel verordnen.\nDie Methadon-Substitution ist Ärzten mit Zusatzqualifikation vorbehalten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HPP – erlaubte und verbotene Verfahren:\nHP Psychotherapie dürfen kognitive Umstrukturierung, berufsbezogenes Training, Kommunikationstraining und Einbeziehung von Angehörigen anbieten.\nLSD-gestützte Therapie ist VERBOTEN (Verstoß gegen BtMG).\nEinzelhypnose, Gruppenhypnose und KVT sind erlaubt.\nAkupunktur gehört NICHT zum Tätigkeitsbereich des HPP.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Nebenwirkungen von Psychotherapie:\nEine vorübergehende Symptomverschlechterung (z.B. kurzfristige Angstausweitung bei Exposition) kann eine Nebenwirkung einer korrekt durchgeführten Therapie sein.\nEs gibt Instrumente wie den INEP zur Erfassung negativer Psychotherapieeffekte.\nNebenwirkungen können auch bei korrekter Therapie auftreten.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'HPP bei Intelligenzminderung und Kindern:\nBei Intelligenzminderung kann HP Psychotherapie eingesetzt werden.\nAuch die Anwendung psychologischer Testverfahren wie Intelligenztests ist dem HPP erlaubt.\nEs besteht kein generelles Behandlungsverbot für HP bei Kindern mit ADS/ADHS.\nAuch Kinder können mit analytischen Techniken und spieltherapeutischen Verfahren behandelt werden.',
    tags: ['Recht & Berufskunde', 'F7-F9 – Entwicklung & Kindheit'],
  ),

  // ============================================================
  // TEIL 15: ERGÄNZUNGEN (184-200)
  // ============================================================
  Flashcard(
    text:
        'Akute Belastungsreaktion vs. Anpassungsstörung vs. PTBS:\nAkute Belastungsreaktion = sofort (Minuten), klingt in Stunden/Tagen ab.\nAnpassungsstörung = innerhalb 1 Monat nach Belastung, max. 6 Monate, nach beliebigem Lebensereignis.\nPTBS = nach schwerem Trauma, Latenz Wochen-Monate, Flashbacks + Vermeidung + Hyperarousal.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Neurasthenie (F48):\nAnhaltende Erschöpfbarkeit nach geringer Anstrengung.\nAbgrenzung: Fatigue = anhaltende Erschöpfung, häufig bei Krebserkrankungen, durch Ruhe nicht ausreichend gebessert.\nFatigue und Neurasthenie sind NICHT synonym.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Agoraphobie mit vs. ohne Panikstörung:\nF40.00 = Agoraphobie ohne Panikstörung.\nF40.01 = Agoraphobie mit Panikstörung.\nPanikstörung allein = F41.0.\nWichtig: Agoraphobie kann auch ohne Panikattacken auftreten (reine Vermeidung).\nDie Kombination ist jedoch häufig.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Therapie bei Angststörungen:\nSpezifische Phobie → Exposition (Flooding/systematische Desensibilisierung).\nPanikstörung → KVT mit Psychoedukation und Interoceptive Exposure.\nGAD → Sorgenexposition (Exposition in sensu).\nSoziale Phobie → KVT + soziales Kompetenztraining.\nBei allen: Vor Therapie somatische Abklärung notwendig.',
    tags: ['Therapieverfahren', 'F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Bipolare Störung – Episodentypen:\nManische Episode (gehobene Stimmung), depressive Episode, gemischte Episode (F31.6 = gleichzeitig manische und depressive Symptome), hypomanische Episode (leichtere Form der Manie, keine Psychose).\nBei jeder depressiven Episode nach (hypo-)manischen Phasen fragen, um bipolare Störung nicht zu übersehen!',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Wochenbettdepression vs. Wochenbettpsychose:\nWochenbettdepression (postpartale Depression) = HPP darf behandeln, sofern keine Psychose vorliegt.\nWochenbettpsychose = psychiatrischer Notfall, ärztliche Behandlung erforderlich.\nPostpartales Stimmungstief ("Baby Blues") = häufig, selbstlimitierend, keine Behandlung nötig.',
    tags: ['F3 – Affektive Störungen', 'Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Schlafhygiene-Regeln (prüfungsrelevant):\nKein Mittagsschlaf (erhöht den Schlafdruck).\nRegelmäßiger Aufstehzeitpunkt (stabilisiert zirkadianen Rhythmus).\nKein intensiver Sport kurz vor dem Schlafen.\nKeine sichtbare Uhr (fördert Grübeln).\nBei Schlaflosigkeit aufstehen und erst bei Müdigkeit zurückkehren (Stimuluskontrolle).',
    tags: ['Therapieverfahren', 'F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Anorexia nervosa vs. Bulimia nervosa:\nAnorexia: BMI ≤17,5, Untergewicht, Körperschemastörung, Amenorrhö, höchste Mortalität.\nBulimia: Normalgewicht, Essanfälle + Kompensation (Erbrechen, Laxantien), depressive Symptome.\nBinge-Eating: Übergewicht, Essanfälle OHNE Kompensation, Schuldgefühle.',
    tags: ['Differentialdiagnosen', 'F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Borderline-PS – Therapie und Notfälle:\nDBT (Dialektisch-Behaviorale Therapie) = Therapie der Wahl.\n3 Kernmerkmale: chronische Leere, Impulsivität, Selbstschädigung.\nIn der mündlichen Prüfung wird erwartet, dass bei Borderline aktiv nach Suizidalität gefragt wird.\nInstabile, intensive Beziehungen sind typisch.',
    tags: ['F6 – Persönlichkeitsstörungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Persönlichkeitsstörungen vs. Persönlichkeitsänderung:\nPS (F60) = tief verwurzelt, seit Kindheit/Adoleszenz, ich-synton.\nPersönlichkeitsänderung (F62) = erworben nach Extrembelastung oder schwerer psych. Krankheit.\nPS vs. Akzentuierung: PS = unflexibel, Leidensdruck/Funktionsbeeinträchtigung.\nAkzentuierung = ausgeprägte Züge, noch flexibel.',
    tags: ['F6 – Persönlichkeitsstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Abhängigkeit – körperlich vs. psychisch:\nKörperliche Abhängigkeit: Opiate, Benzodiazepine, Alkohol, Nikotin (Entzugssymptome).\nPsychische Abhängigkeit: Cannabis, Halluzinogene (LSD), MDMA, Kokain (vorwiegend psychisch).\nStimulanzien (Kokain, Amphetamine): starke psychische, geringe körperliche Abhängigkeit.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'PTBS – Therapieansatz:\n3-Phasen-Modell:\n1. Stabilisierung (Sicherheit herstellen, Ressourcen aufbauen).\n2. Traumakonfrontation (erst wenn stabil! z.B. EMDR, prolongierte Exposition).\n3. Integration und Neuorientierung.\nFrühe Konfrontation kann retraumatisierend wirken!\nStabilisierung hat immer Vorrang.',
    tags: ['F4 – Neurotische Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Denkstörungen bei Manie:\nFormale Denkstörungen dominieren: Ideenflucht (schnelle Abfolge von Einfällen), Gedankenrasen, Zerfahrenheit.\nAbgrenzung: Bei Depression = Denkhemmung (verlangsamtes Denken).\nVerfolgungswahn = inhaltliche Denkstörung (Schizophrenie).\nGrübelzwang = eher bei Angststörungen.',
    tags: ['F3 – Affektive Störungen', 'Psychopathologie'],
  ),
  Flashcard(
    text:
        'Delir bei verschiedenen Ursachen:\nDelirium tremens = Alkoholentzug.\nAnticholinerges Delir = Medikamentennebenwirkung.\nDelir bei Infektionen = besonders bei älteren Patienten.\nPostoperatives Delir.\nDrogeninduziertes Delir.\nBei jedem Delir: Immer organische Ursache suchen!\nAkute organische Störungen sind immer als Notfall zu behandeln.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Somatoforme autonome Funktionsstörung (F45.3):\nBezieht sich auf ein bestimmtes Organsystem (kardiovaskulär = Da-Costa-Syndrom/Herzneurose, gastrointestinal = Reizdarmsyndrom, respiratorisch = Hyperventilationssyndrom).\nPatienten zeigen vegetative Symptome, die sie einem bestimmten Organ zuschreiben.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Dissoziative Konversionsstörungen im Detail:\nNeurologisch anmutende Symptome ohne organischen Befund – Lähmungen, Krampfanfälle, Sensibilitätsstörungen, Blindheit, Taubheit.\nDissoziativer Stupor = Bewegungslosigkeit ohne organische Ursache.\nAlle dissoziativen Störungen: Keine hirnorganische Ursache nachweisbar.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Schizoaffektive Störung vs. Schizophrenie vs. affektive Störung:\nSchizoaffektiv = gleichzeitig schizophrene UND affektive Symptome in gleicher Episode.\nBei Schizophrenie können depressive Symptome auftreten, dominieren aber nicht.\nBei bipolarer Störung: psychotische Symptome möglich, aber schizophrene Erstrangsymptome fehlen.',
    tags: ['Differentialdiagnosen'],
  ),

  // ============================================================
  // TEIL 16: KONSOLIDIERTE LERNKARTEN (Zeitkriterien, Notfälle, HPP-Grenzen)
  // ============================================================
  Flashcard(
    text:
        'Konsolidierte Zeitkriterien – alle auf einen Blick:\nMinuten bis Tage = Akute Belastungsreaktion (F43.0). ≥2 Wochen = Depressive Episode (F32). ≥1 Monat = Abhängigkeitssyndrom (3/6 Kriterien).\nInnerhalb 1 Monat = Anpassungsstörung Beginn (F43.2).\nLatenz Wochen bis Monate = PTBS (F43.1). >3 Monate = Anhaltende wahnhafte Störung (F22).\nMax. 6 Monate = Anpassungsstörung Dauer. ≥6 Monate = GAD (F41.1), ADHS (F90), Demenz. ≥12 Monate = Tourette-Syndrom (F95.2). ≥2 Jahre = Dysthymia (F34.1), Zyklothymia (F34.0), Somatisierungsstörung (F45.0).',
    tags: [
      'Differentialdiagnosen',
      'ICD-10 Grundlagen',
      'F4 – Neurotische Störungen',
    ],
  ),
  Flashcard(
    text:
        'Wichtige Zahlenwerte für die Prüfung:\nBMI ≤17,5 = Anorexia nervosa.\nIQ <70 = Intelligenzminderung.\nBeginn vor 7. Lebensjahr = ADHS.\nBeginn vor 3. Lebensjahr = Frühkindlicher Autismus.\n3 von 6 Kriterien = Abhängigkeit.\n2 Haupt- + 2 Zusatzsymptome = leichte Depression.\n90% Serotonin im Darm.\nAkute psychotische Störung = Beginn <2 Wochen.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'Psychiatrische Notfälle – Übersicht für HPP:\n(1) Delir (F05) – Bewusstseinssstörung, lebensbedrohlich.\n(2) Akute Psychose – Realitätsverlust, Eigen-/Fremdgefährdung.\n(3) Schwere Intoxikation/Entzug – Atemdepression, Krampfanfälle.\n(4) Akute Suizidalität – sofortige Sicherung.\n(5) Malignes Neuroleptisches Syndrom – hohes Fieber, Rigor.\n(6) Katatoner Stupor – lebensbedrohlich.\nBei allen: Notarzt rufen, Patient nicht allein lassen!',
    tags: ['Recht & Berufskunde', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'HPP-Tätigkeitsumfang und -grenzen zusammengefasst:\nDARF: Alle psychotherapeutischen Verfahren anwenden (KVT, TP, PA, EMDR, Hypnose), psychologische Tests, Gruppentherapie, Kinder behandeln.\nDARF NICHT: Organische Diagnosen stellen, Medikamente/BtM verordnen, Suchtsubstitution durchführen, körperliche Verfahren (Akupunktur, Osteopathie), Berufsbezeichnung "Psychotherapeut" führen.\nMUSS: Somatische Abklärung veranlassen, Notfälle erkennen und überweisen, dokumentieren, Schweigepflicht wahren.',
    tags: ['Recht & Berufskunde'],
  ),

  // ============================================================
  // TEIL 17: ERWEITERTE RECHTLICHE THEMEN FÜR HPP
  // ============================================================
  Flashcard(
    text:
        'Schuldfähigkeit nach StGB:\n§20 StGB = Schuldunfähigkeit bei krankhafter seelischer Störung, tiefgreifender Bewusstseinsstörung, Schwachsinn oder schwerer anderer seelischer Abartigkeit zum Tatzeitpunkt. §21 StGB = verminderte Schuldfähigkeit (Strafmilderung möglich).\nMerke: Alkoholrausch kann zur vorübergehenden Schuldunfähigkeit führen (Vollrausch §323a StGB).\nGutachter beurteilen die Schuldfähigkeit, nicht der Therapeut.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Die 4 Eingangsmerkmale des §20 StGB (biologische Voraussetzungen):\n(1) Krankhafte seelische Störung (z.B. Psychose, schwere Depression, Manie, Delir).\n(2) Tiefgreifende Bewusstseinsstörung (z.B. Affekttat, hochgradiger Rausch).\n(3) Schwachsinn (Intelligenzminderung).\n(4) Schwere andere seelische Abartigkeit (z.B. schwere PS, Sucht, Paraphilien).\nPersönlichkeitsstörungen können unter Nr. 4 fallen, wenn sie schwer ausgeprägt sind.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Garantenstellung und Garantenpflicht des HPP:\nDer HPP übernimmt mit der Behandlung eine Garantenstellung für den Patienten.\nDaraus folgt: Pflicht zur Gefahrenabwehr bei erkennbarer Suizidalität oder Fremdgefährdung.\nUnterlassung kann zur Strafbarkeit führen (§13 StGB Unterlassen).\nDie Garantenstellung endet mit dem Ende der Behandlungsbeziehung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterlassene Hilfeleistung (§323c StGB):\nJeder ist verpflichtet, bei Unglücksfällen oder gemeiner Gefahr/Not Hilfe zu leisten, soweit dies zumutbar ist.\nGilt auch für den HPP.\nVerstoß: Geldstrafe oder Freiheitsstrafe bis 1 Jahr.\nDie Hilfeleistungspflicht ergibt sich aus dem StGB, NICHT aus dem Heilpraktikergesetz.\nIn der Prüfung: Wann MUSS der HPP handeln (Notfall) vs. wann DARF er nicht behandeln (organisch)?',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Einwilligungsfähigkeit vs. Geschäftsfähigkeit:\nEinwilligungsfähigkeit = Fähigkeit, Art, Bedeutung und Tragweite einer Behandlung zu verstehen.\nKein festes Mindestalter – wird individuell beurteilt.\nAuch Minderjährige können einwilligungsfähig sein.\nGeschäftsfähigkeit = rechtliche Fähigkeit, Willenserklärungen wirksam abzugeben (§§104ff BGB).\nAb 18 Jahren voll geschäftsfähig.\nWichtig: Einwilligungsfähigkeit ≠ Geschäftsfähigkeit.\nEin geschäftsunfähiger Betreuter kann durchaus einwilligungsfähig sein.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Behandlungsvertrag nach §630a BGB (Patientenrechtegesetz):\nVertrag zwischen HPP und Patient.\nPflichten des HPP: (1) Behandlung nach fachlichem Standard, (2) Aufklärungspflicht über Diagnose, Therapie, Risiken und Alternativen (§630e BGB), (3) Dokumentationspflicht (§630f BGB), (4) Einsichtnahmerecht gewähren (§630g BGB).\nPflicht des Patienten: Vergütung.\nDer Behandlungsvertrag ist ein Dienstvertrag (Schulden der Behandlung, NICHT des Erfolgs).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Aufklärungspflicht des HPP (§630e BGB):\nAufklärung muss VOR Behandlungsbeginn erfolgen.\nInhalte: Diagnose, geplante Therapie, Risiken und Nebenwirkungen, Erfolgsaussichten, Alternativen.\nForm: Grundsätzlich mündlich, schriftliche Dokumentation empfohlen.\nAufklärungsverzicht des Patienten möglich (muss dokumentiert werden).\nBei fehlender/mangelhafter Aufklärung: Einwilligung unwirksam = Behandlung rechtswidrig.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Haftung und Sorgfaltspflicht des HPP:\nZivilrechtlich: Schadensersatz und Schmerzensgeld bei Behandlungsfehlern (§280 BGB).\nBeweislast: Grundsätzlich beim Patienten.\nBei Dokumentationsmängeln: Beweislastumkehr (§630h BGB) – was nicht dokumentiert ist, gilt als nicht geschehen.\nStrafrechtlich: Körperverletzung (§223 StGB), fahrlässige Tötung (§222 StGB).\nBerufshaftpflichtversicherung dringend empfohlen (keine gesetzliche Pflicht, aber faktisch unverzichtbar).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Datenschutz in der HPP-Praxis (DSGVO/BDSG):\nPatientendaten sind besonders schützenswerte personenbezogene Daten (Art. 9 DSGVO).\nRechtsgrundlage der Verarbeitung: Behandlungsvertrag (Art. 9 Abs. 2h DSGVO).\nPflichten: Verzeichnis der Verarbeitungstätigkeiten, technisch-organisatorische Maßnahmen (verschlossene Schränke, Passwortschutz), Auskunftsrecht des Patienten.\nVerstöße: Bußgelder nach DSGVO, Verletzung der Schweigepflicht (§203 StGB).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Schweigepflicht des HPP – vertieft:\nGrundlage: §203 Abs. 1 Nr. 1 StGB (Verletzung von Privatgeheimnissen).\nUmfasst ALLES, was im Rahmen der Behandlung bekannt wird (auch die bloße Tatsache der Behandlung).\nSchweigepflicht gilt auch über den Tod des Patienten hinaus.\nDurchbrechung erlaubt bei: (1) Einwilligung des Patienten (schriftlich!), (2) Rechtfertigender Notstand §34 StGB (geplante schwere Straftat, akute Suizidalität), (3) Gesetzliche Meldepflichten (IfSG).\nKEIN Zeugnisverweigerungsrecht im Strafverfahren (anders als Ärzte/Psychotherapeuten).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Heilmittelwerbegesetz (HWG) – Werberecht für HPP:\nVerboten: Werbung mit Heilversprechen oder Garantien, irreführende Werbung, Werbung mit Dankschreiben oder Gutachten, Werbung für verschreibungspflichtige Mittel.\nErlaubt: Sachliche Information über Qualifikation und Behandlungsspektrum, Praxis-Website mit Leistungsbeschreibung.\nMerke: Keine Erfolgsversprechen, keine Vorher-Nachher-Vergleiche bei psychischen Störungen.\nVerstöße = Ordnungswidrigkeit bis Straftat.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Berufsordnung und Fortbildungspflicht:\nHPP unterliegen der Berufsordnung ihres Berufsverbandes (z.B. BOH).\nFortbildungspflicht: Mindestens 15 Zeitstunden/Jahr Fortbildung (je nach Verband).\nSupervision wird empfohlen.\nDokumentation der Fortbildungen aufbewahren.\nKollegiale Umgangsformen (kein "Abwerben" von Patienten).\nAbstinenzregel: Keine privaten/sexuellen Beziehungen zu Patienten (auch nach Therapieende problematisch).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HPP und Kassenabrechnung:\nHPP können NICHT über die gesetzliche Krankenversicherung (GKV) abrechnen.\nGKV-Patienten zahlen selbst (Selbstzahler).\nPrivate Krankenversicherung (PKV) kann HPP-Leistungen erstatten – je nach Tarif.\nBeihilfe (Beamte) erstattet HPP-Leistungen in der Regel NICHT.\nGebührenverzeichnis: GebüH (Gebührenverzeichnis für Heilpraktiker) als Orientierung – NICHT verbindlich.\nWirtschaftliche Aufklärungspflicht VOR Behandlungsbeginn: Kosten pro Sitzung, voraussichtliche Dauer.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Praxisanmeldung und Gewerberecht:\nHPP-Tätigkeit ist ein freier Beruf (KEIN Gewerbe) → keine Gewerbeanmeldung nötig.\nAnmeldung beim Gesundheitsamt und Finanzamt erforderlich.\nUmsatzsteuerbefreiung nach §4 Nr. 14 UStG (Heilbehandlungen).\nFeste Praxisadresse erforderlich (kein "Umherziehen" nach §3 HeilprG).\nBerufshaftpflichtversicherung: Keine gesetzliche Pflicht, aber dringend empfohlen.\nHandelsregistereintrag: Nicht erforderlich.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Heilpraktikergesetz (HeilprG) – Kernpunkte:\nStammt von 1939, mehrfach geändert. §1: Wer Heilkunde ausüben will, ohne Arzt zu sein, braucht eine Erlaubnis. §2: Erlaubnis wird durch Überprüfung beim Gesundheitsamt erteilt. §3: Verbote (Umherziehen, Geschlechtskrankheiten [veraltet]).\nDer sektorale HPP darf NUR Psychotherapie ausüben.\nDie Erlaubnis ist nicht auf bestimmte Methoden beschränkt.\nHPP darf sich NICHT "Psychotherapeut" nennen (Titel geschützt nach PsychThG).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Überprüfung beim Gesundheitsamt (HPP-Prüfung):\nZweiteilig: schriftliche Prüfung (28 MC-Fragen, 75% zum Bestehen) + mündliche Überprüfung.\nZweck: Feststellung, ob eine Gefahr für die Volksgesundheit besteht.\nGeprüft werden: Psychopathologie, ICD-10-Kenntnisse, Differentialdiagnostik, Erkennen von Notfällen und Grenzen, rechtliche Grundlagen.\nKeine Methodenprüfung (therapeutische Verfahren werden nicht geprüft).\nDurchfallquote ca. 70-80%.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Kinderschutz und Kindeswohlgefährdung:\n§8a SGB VIII verpflichtet Fachkräfte (auch HPP), bei gewichtigen Anhaltspunkten für Kindeswohlgefährdung das Jugendamt einzuschalten.\nVorrang hat zunächst der Versuch, die Eltern einzubeziehen.\nDie Schweigepflicht kann bei Kindeswohlgefährdung durchbrochen werden (§34 StGB, rechtfertigender Notstand). §4 KKG (Gesetz zur Kooperation und Information im Kinderschutz): Berufsgeheimnisträger dürfen bei dringenden Gefahren das Jugendamt informieren.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Vorsorgevollmacht, Betreuungsverfügung, Patientenverfügung:\nVorsorgevollmacht = Bevollmächtigung einer Vertrauensperson für den Fall der eigenen Entscheidungsunfähigkeit.\nBetreuungsverfügung = Wunsch, WER als Betreuer bestellt werden soll.\nPatientenverfügung (§1827 BGB) = vorherige Festlegung über medizinische Maßnahmen.\nAlle drei sind UNTERSCHIEDLICHE Instrumente.\nPatientenverfügung bindet den Betreuer und Arzt, sofern sie auf die konkrete Situation zutrifft.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Rechtliche Stellung Minderjähriger in der Psychotherapie:\nKinder unter 7 Jahren: geschäftsunfähig (§104 BGB), Eltern schließen Vertrag.\n7-17 Jahre: beschränkt geschäftsfähig (§106 BGB), Einwilligung der Eltern nötig.\nEinwilligungsfähigkeit: Wird unabhängig vom Alter individuell beurteilt.\nAb ca. 14 Jahren wird Einwilligungsfähigkeit häufig angenommen.\nBei gemeinsamem Sorgerecht: BEIDE Elternteile müssen zustimmen.\nSchweigepflicht: Gilt auch gegenüber den Eltern, wenn der Minderjährige einwilligungsfähig ist.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Betreuungsrecht – Reform 2023:\n§1814 BGB neu: Betreuung nur wenn erforderlich und keine weniger einschneidende Maßnahme ausreicht (Erforderlichkeitsgrundsatz).\nWünsche des Betreuten haben Vorrang (§1821 BGB).\nBetreuer muss den Willen des Betreuten respektieren, nicht nur sein Wohl.\nUnterstützte Entscheidungsfindung vor stellvertretender Entscheidung.\nÜberprüfung der Betreuung: spätestens nach 7 Jahren, bei Erstbetreuung nach 2 Jahren.',
    tags: ['Recht & Berufskunde'],
  ),

  // ============================================================
  // TEIL 18: THEMEN AUS DEN PRÜFUNGEN 2016 & 2026 (225-237)
  // ============================================================
  Flashcard(
    text:
        'Vulnerabilitäts-Stress-Modell:\nEine psychische Erkrankung entsteht aus dem Zusammenspiel individueller Verwundbarkeit (genetische Disposition, frühe Erfahrungen, Persönlichkeit) und aktueller Belastung.\nJe höher die Vulnerabilität, desto weniger Stress genügt zum Ausbruch – umgekehrt können bei sehr schweren Belastungen oder Substanzmissbrauch auch wenig vulnerable Menschen erkranken.\nStressoren sind nicht nur Krisen, sondern auch normative Übergänge wie Adoleszenz, Menopause oder Berentung.\nBei den meisten psychischen Erkrankungen wird eine multifaktorielle Genese angenommen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'AMDP-System:\nStandardisiertes System zur Dokumentation des psychopathologischen Befundes.\nOrientierung hat VIER Dimensionen: zeitlich, örtlich, situativ und zur eigenen Person – in dieser Reihenfolge gehen sie typischerweise verloren, die Orientierung zur Person bleibt am längsten erhalten.\nWeitere Merksätze: Grübeln zählt zu den FORMALEN Denkstörungen, Ratlosigkeit zur Affektivität.\nDie Auffassungsstörung betrifft das Verstehen von Äußerungen und Texten in ihrer Bedeutung.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Wahninhalte und ihre Zuordnung:\nSynthym (stimmungskongruent) bei der schweren Depression sind Verarmungswahn, Versündigungs-/Schuldwahn, hypochondrischer und nihilistischer Wahn.\nZur Manie passt der Größenwahn, zur Schizophrenie Verfolgungs-, Beziehungs- und Abstammungswahn.\nDer Dermatozoenwahn (Insekten unter der Haut) spricht für eine organische Ursache oder Kokainkonsum.\nBeim systematisierten Wahn sind die Inhalte zu einem Gebäude verknüpft – logisch oder paralogisch.',
    tags: ['Psychopathologie', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Denkstörungen sicher trennen – der Prüfungsklassiker:\nFORMAL (Ablauf des Denkens) sind Perseveration, Denkhemmung, Gedankenabriss, Grübeln, Ideenflucht, Zerfahrenheit und Logorrhoe.\nINHALTLICH sind Wahn und Zwangsgedanken.\nEine ICH-STÖRUNG ist der Gedankenentzug, ebenso Gedankeneingebung, Gedankenausbreitung und Willensbeeinflussung.\nKernunterscheidung: Beim Gedankenabriss reißt der Gedanke ohne Fremdeinwirkung ab (formal), beim Gedankenentzug erlebt der Patient, dass ihm jemand die Gedanken wegnimmt (Ich-Störung).',
    tags: ['Psychopathologie', 'F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Psychomotorik und Antrieb – ähnlich klingende Begriffe:\nAkathisie = quälende Sitzunruhe mit Bewegungsdrang (typisch als Neuroleptika-Nebenwirkung).\nAdynamie = Antriebs- und Kraftlosigkeit (das Gegenteil).\nBradyphrenie = Verlangsamung von Denken und geistigen Abläufen, typisch bei Morbus Parkinson.\nManierismen = sonderbar verschrobene, gekünstelte Bewegungen, typisch bei katatoner Schizophrenie.\nParathymie = Affekt passt nicht zum Gedankeninhalt.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Dopaminhypothese und Parkinsonoid:\nDer Schizophrenie liegt laut Dopaminhypothese eine ÜBERaktivität des dopaminergen Systems zugrunde – deshalb wirken Antipsychotika als Dopamin-Antagonisten (historisch früh: Haloperidol).\nDem Morbus Parkinson liegt umgekehrt ein Dopamin-MANGEL zugrunde.\nDas Parkinsonoid ist eine extrapyramidal-motorische Nebenwirkung von Antipsychotika mit Rigor, Tremor und Akinese: verursacht durch Antipsychotika, behandelt durch Dosisreduktion, Präparatewechsel oder Anticholinergika wie Biperiden.\nAuch eine Lithiumintoxikation kann parkinsonoide Symptome auslösen.',
    tags: ['F2 – Schizophrenie', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Larvierte (maskierte) Depression:\nKörperliche Beschwerden wie Erschöpfung, Kopf- und Rückenschmerzen, Obstipation oder Herzbeschwerden stehen so im Vordergrund, dass die depressive Kernsymptomatik verdeckt wird.\nBesonders häufig bei älteren Patienten und in der hausärztlichen Praxis.\nAbzugrenzen ist die depressive Pseudodemenz, bei der kognitive Defizite im Vordergrund stehen: Betroffene klagen aktiv über ihre Gedächtnisstörung und antworten oft mit "Ich weiß nicht" – bei der echten Demenz wird die Störung eher bagatellisiert.',
    tags: ['F3 – Affektive Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Bipolare Störung – Verlauf und Prophylaxe:\nFür die Diagnose genügen zwei Episoden, von denen eine manisch oder hypomanisch sein muss.\nDas Rezidivrisiko ist sehr hoch, deshalb ist eine Phasenprophylaxe (z.B. Lithium) zu erwägen – eine Behandlung nur in der Akutphase reicht nicht.\nRapid Cycling = mindestens vier affektive Episoden pro Jahr, unabhängig von deren Polarität.\nDepressive Episoden dauern in der Regel länger als manische; manische Episoden beginnen meist abrupt.\nMerke: Bei jeder Depression nach früheren Hochphasen fragen – das entscheidet über unipolar oder bipolar.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Messie-Syndrom (pathologisches Horten):\nAnhäufen und Sammeln wertloser oder verbrauchter Dinge in der EIGENEN Wohnung, häufig begleitet von Zwangssymptomen.\nAus Scham reagieren die Betroffenen typischerweise mit sozialem Rückzug und vermeiden Besuch.\nBetroffen sind überwiegend Erwachsene, die Symptomatik nimmt mit dem Alter zu – nicht Kinder und Jugendliche.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Suizidalität – Risiko und Prävention:\nHochrisikogruppe sind ältere, alleinstehende Männer; etwa drei Viertel der vollendeten Suizide entfallen auf Männer.\nDer stärkste Einzelprädiktor ist ein früherer Suizidversuch, besonders gefährlich ist die Zeit direkt nach Klinikentlassung.\nBei etwa 90% liegt eine psychische Erkrankung vor.\nPräsuizidales Syndrom nach Ringel: Einengung, gehemmte und gegen sich gerichtete Aggression, Suizidfantasien – häufig, aber nicht obligat.\nVerhältnisprävention verändert die Umstände (Brückengeländer, Fangnetze), Verhaltensprävention das individuelle Verhalten (Aufklärung).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Abwehrmechanismen – Übersicht und Abgrenzung:\nUnbewusste Strategien des Ichs zur Konfliktbewältigung sind Verdrängung, Projektion (eigene abgelehnte Impulse werden anderen zugeschrieben), Regression (Rückfall auf frühere Entwicklungsstufen), Identifikation, Reaktionsbildung, Sublimierung, Verleugnung und Rationalisierung.\nACHTUNG Abgrenzung: Amnesie ist eine Gedächtnisstörung und Perseveration eine formale Denkstörung – beides psychopathologische Symptome, KEINE Abwehrmechanismen.\nAuch die erlernte Hilflosigkeit (Seligman) ist ein lerntheoretisches Konzept.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Kognitive Verfahren im Überblick:\nKognitive Triade nach Beck = negative Sicht auf sich selbst, die Welt und die Zukunft (Depressionsmodell).\nRational-emotive Therapie (RET) nach Ellis = Bearbeitung irrationaler Grundannahmen nach dem ABC-Modell; diese lassen sich NICHT durch einmaliges Aufdecken beheben, sondern erfordern wiederholtes Üben.\nKognitive Umstrukturierung ist das Basisverfahren kognitiver Therapien und zielt auf die Neubewertung von Gedanken, Gefühlen und Körperreaktionen – typische Methode ist der sokratische Dialog, nicht die Hypnotherapie.\nBei Demenz ist der sokratische Dialog ungeeignet.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Alkoholabhängigkeit – Behandlungsphasen in der richtigen Reihenfolge:\n1. Kontakt-/Motivationsphase,\n2. Entgiftung (körperlicher Entzug – hier drohen lebensbedrohliche Komplikationen wie Delirium tremens und Entzugskrampfanfälle),\n3. Entwöhnung (psychotherapeutische Bearbeitung, Grundlagen dauerhafter Abstinenz),\n4. Rehabilitation/Nachsorge (psychosoziale Maßnahmen, Selbsthilfegruppen).\nMerke: Entgiftung und Entwöhnung sind NICHT dasselbe, und die Motivationsphase steht am Anfang, nicht am Ende.',
    tags: ['F1 – Substanzstörungen'],
  ),
];
