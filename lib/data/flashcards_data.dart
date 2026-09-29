import '../models/flashcard.dart';

const List<Flashcard> allFlashcards = [
  // ============================================================
  // TEIL 1: GRUNDLAGEN & KLASSIFIKATION
  // ============================================================
  Flashcard(
    text:
        'ICD-10 – Aufbau und Geltung:\nDie ICD-10 (International Classification of Diseases, 10. Revision) ist das weltweit anerkannte Klassifikationssystem der WHO.\nKapitel V (Buchstabe F) umfasst psychische und Verhaltensstörungen (F00-F99).\nSie ist überwiegend phänomenologisch-deskriptiv: Beschreibt Symptome, Verlauf, Dauer und Schweregrad. Ausnahme: F0 (organisch) und F1 (Substanzen) sind nach der Ursache definiert.\nIn Deutschland seit 2000 verbindlich; kodiert wird mit der jährlich aktualisierten ICD-10-GM.\nDie HPP-Prüfung basiert weiterhin auf ICD-10. ICD-11: seit 2022 WHO-weit in Kraft, in Deutschland noch nicht eingeführt.',
    tags: ['ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'Aufbau des ICD-10-Codes:\nF = psychische Störung.\n1. Ziffer = Störungsgruppe (z.B. F2 = Schizophrenie, schizotype und wahnhafte Störungen).\nWeitere Ziffern = Spezifizierung (die 5. Stelle kodiert z.B. den Verlauf).\nBeispiel: F20.0 = Paranoide Schizophrenie.\nMehrere Diagnosen gleichzeitig sind erlaubt (Komorbidität); die im Vordergrund stehende ist die Hauptdiagnose.\nKapitel V ist kategorial aufgebaut. Das bekannte 5-Achsen-System stammt aus dem DSM-IV.',
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
  Flashcard(
    text:
        'Vulnerabilitäts-Stress-Modell:\nEine psychische Erkrankung entsteht aus dem Zusammenspiel individueller Verwundbarkeit (genetische Disposition, frühe Erfahrungen, Persönlichkeit) und aktueller Belastung.\nJe höher die Vulnerabilität, desto weniger Stress genügt zum Ausbruch – umgekehrt können bei sehr schweren Belastungen oder Substanzmissbrauch auch wenig vulnerable Menschen erkranken.\nStressoren sind nicht nur Krisen, sondern auch normative Übergänge wie Adoleszenz, Menopause oder Berentung.\nBei den meisten psychischen Erkrankungen wird eine multifaktorielle Genese angenommen.',
    tags: ['Psychopathologie'],
  ),

  // ============================================================
  // TEIL 2: PSYCHOPATHOLOGIE & BEFUND
  // ============================================================
  Flashcard(
    text:
        'Anamnese und Gesprächsführung:\nZu Beginn offene Fragen – der Patient schildert frei; danach gezielt und strukturiert nachfragen; am Ende Raum für Ergänzungen.\nSuggestiv-, Ja/Nein- und abwertende Fragen vermeiden; vage Angaben („überall Schmerzen“) durch Nachfragen eingrenzen.\nInhalte: Beschwerden und Auslöser, psychische und körperliche Vorerkrankungen, Medikamente/Alkohol/Drogen, Familie, Biografie inkl. Sexualanamnese, soziale Situation.\nSuizidalität IMMER erfragen – auch im Erstgespräch; das Ansprechen erhöht das Risiko NICHT.\nFremdanamnese, wenn der Patient nicht auskunftsfähig ist.\nZiel: Diagnose, Therapieplanung, Risikoeinschätzung.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'AMDP-System und psychopathologischer Befund:\nAMDP = Arbeitsgemeinschaft für Methodik und Dokumentation in der Psychiatrie; standardisiertes Fremdbeurteilungssystem zur Befunddokumentation.\nBereiche: Erscheinung/Verhalten, Bewusstsein, Orientierung, Aufmerksamkeit/Gedächtnis, Denken (formal/inhaltlich), Wahrnehmung, Ich-Erleben, Affekt, Antrieb/Psychomotorik, Tagesrhythmus, Suizidalität.\nGrundlage: Gespräch, eigene Beobachtung, ggf. Tests und Fremdanamnese.\nAMDP-Merksätze: Grübeln = FORMALE Denkstörung, Ratlosigkeit = Affektivität, Zwänge = eigene Gruppe „Befürchtungen und Zwänge“.\nAuffassungsstörung = Äußerungen und Texte in ihrer Bedeutung nicht verstehen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Bewusstseinsstörungen – quantitativ vs. qualitativ:\nQuantitativ = Wachheit (Vigilanz) vermindert: Benommenheit → Somnolenz → Sopor → Koma (zunehmende Schwere).\nSopor = nur durch starke Reize kurz erweckbar; Koma = auch durch stärkste Schmerzreize NICHT erweckbar.\nQualitativ: Bewusstseinstrübung (Verwirrtheit, z.B. Delir), Bewusstseinseinengung (z.B. Dämmerzustand), Bewusstseinsverschiebung (z.B. Drogenrausch).\nMerke: Eine Bewusstseinsstörung spricht in aller Regel für eine organische Ursache → sofort ärztlich abklären.\nHalluzinationen und illusionäre Verkennungen gehören zu den Wahrnehmungsstörungen.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Psychopathologischer Befund – Orientierung:\nOrientierungsstörungen betreffen 4 Qualitäten: zeitlich, örtlich, situativ, zur Person (ZOSP).\nZeitliche Orientierung ist meist zuerst gestört.\nOrientierung zur eigenen Person ist am tiefsten verankert und zuletzt betroffen.\nPrüfung: Datum, Ort, Situation und Name erfragen – ohne Suggestivfragen. Ein Tag Abweichung beim Datum ist noch keine Störung.\nMerke: Desorientiertheit spricht für eine organische Ursache (Delir, Demenz, amnestisches Syndrom) → ärztlich abklären.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Aufmerksamkeit und Gedächtnis – Prüfung im Befund:\nKonzentration: von 100 fortlaufend 7 abziehen, Wochentage rückwärts nennen.\nAuffassung und Abstraktion: Sprichwort oder Fabel erklären lassen.\nMerkfähigkeit = neue Eindrücke etwa 10 Minuten behalten: 3 Begriffe nennen, nach ca. 10 Min. abfragen.\nGedächtnis im engeren Sinn = länger als 10 Min. Zurückliegendes abrufen; Altgedächtnis über biografische Daten prüfen.\nMerke: Bei Demenz geht Neues zuerst verloren, Altes erst spät.\nMerkfähigkeitsstörungen v. a. bei organischen Störungen, aber auch bei Depression.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Amnesien, Konfabulation, Paramnesien:\nAmnesie = zeitlich oder inhaltlich begrenzte Erinnerungslücke.\nRetrograd = Lücke für die Zeit VOR dem Ereignis (z.B. Unfall); anterograd = für die Zeit DANACH; kongrad = für die Dauer der Bewusstlosigkeit.\nKonfabulation = Erinnerungslücken werden mit Einfällen gefüllt, die der Patient selbst für echte Erinnerungen hält – typisch beim Korsakow-Syndrom.\nAmnestisches Syndrom: Kurz- und Langzeitgedächtnis gestört, Immediatgedächtnis erhalten.\nParamnesien = Erinnerungstäuschungen: Déjà-vu (Neues wirkt schon erlebt), Jamais-vu (Vertrautes wirkt nie erlebt).',
    tags: ['Psychopathologie', 'F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Denkstörungen sicher trennen – der Prüfungsklassiker:\nFORMAL (Ablauf des Denkens): Denkverlangsamung, Denkhemmung, Grübeln, Perseveration, Gedankenabriss, Ideenflucht, Zerfahrenheit, Neologismen, Konkretismus, Paralogik, Kontamination.\nINHALTLICH (Inhalt des Denkens): Wahn (auch Folie à deux), überwertige Ideen, Zwangsgedanken.\nICH-STÖRUNG: Gedankenentzug, -eingebung, -ausbreitung, Willensbeeinflussung.\nKernunterscheidung: Gedankenabriss = Gedanke reißt ohne Fremdeinwirkung ab (formal); Gedankenentzug = jemand nimmt die Gedanken weg (Ich-Störung).\nMerke: Ideenflucht = Manie, Zerfahrenheit = Schizophrenie, Denkhemmung und Grübeln = Depression.',
    tags: ['Psychopathologie', 'F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Formale Denkstörungen (1) – verlangsamt, gehemmt, haftend:\nDenkverlangsamung = Denken schleppend und zäh, für den Untersucher erkennbar.\nDenkhemmung = Patient erlebt sein Denken als gebremst, wie gegen einen inneren Widerstand (typisch Depression).\nEingeengtes Denken = Haften an einem oder wenigen Themen; Übergang zum Grübeln (ständiges Kreisen um Unangenehmes, v. a. Depression).\nUmständliches Denken = Wesentliches wird nicht von Nebensächlichem getrennt, das Ziel wird aber erreicht.\nPerseveration = Haftenbleiben an zuvor gebrauchten Wörtern oder Gedanken.\nAbgrenzung: Grübelzwang = Zwangsgedanke.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Formale Denkstörungen (2) – beschleunigt, zerrissen, abreißend:\nIdeenflucht = Einfälle jagen sich, das Ziel wechselt ständig, der Zusammenhang bleibt aber nachvollziehbar (typisch Manie).\nZerfahrenheit/Inkohärenz = Denken und Sprechen ohne erkennbaren Zusammenhang, bis zum Wortsalat (typisch Schizophrenie, auch Delir).\nGedankenabreißen = flüssiger Gedankengang bricht plötzlich ab.\nVorbeireden = Frage wird verstanden, die Antwort geht aber daneben.\nNeologismen = Wortneubildungen; Verbigeration = sinnloses Wiederholen von Wörtern oder Silben.\nKonkretismus = übertragener Sinn wird nicht erfasst (Sprichwort wörtlich genommen).',
    tags: ['Psychopathologie', 'F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Überwertige Idee, Beziehungsidee, Wahn – Abgrenzung:\nÜberwertige Idee = stark gefühlsbesetzte Überzeugung, die das Denken beherrscht, aber NICHT wahnhaft ist: Realitätskontrolle erhalten, zeitweise Distanzierung möglich (z.B. Schuldgedanken bei Depression, querulatorische Züge). Zählt zu den inhaltlichen Denkstörungen.\nBeziehungsidee = Neutrales wird auf die eigene Person bezogen (Blicke, Zeitungsartikel); häufig bei akuter Schizophrenie und ein Hinweis auf sie.\nWird der Selbstbezug unkorrigierbar gewiss, liegt ein Beziehungswahn vor.\nMerke: Überwertige Idee ist NICHT dasselbe wie Beziehungsidee.',
    tags: ['Psychopathologie', 'F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Wahn – Definition und Merkmale:\n(1) Widerspruch zur Realität und zur Überzeugung der Mitmenschen.\n(2) Subjektive Gewissheit (Patient ist absolut überzeugt).\n(3) Unkorrigierbarkeit (Gegenargumente helfen nicht).\nWahn ist eine inhaltliche Denkstörung und ich-SYNTON (wird als Teil des eigenen Erlebens empfunden).\nVorkommen: Schizophrenie, wahnhafte Störung, schwere Depression oder Manie mit psychotischen Symptomen, organische Störungen (z.B. Demenz, Alkohol).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Wahnformen – Entstehung und Ausgestaltung:\nWahnstimmung = diffuse, unheimliche Ahnung, dass sich etwas Bedrohliches anbahnt; geht dem Wahn oft voraus.\nWahnwahrnehmung = eine richtig wahrgenommene reale Sache erhält eine wahnhafte Bedeutung (zweigliedrig); Erstrangsymptom, KEINE Wahrnehmungsstörung.\nWahneinfall = wahnhafte Überzeugung ohne Wahrnehmungsanlass (eingliedrig).\nWahnerinnerung = Früheres wird wahnhaft umgedeutet.\nSystematisierter Wahn (Wahnarbeit) = Inhalte werden logisch oder paralogisch zu einem Gebäude verknüpft; Wahndynamik = gefühlsmäßige Beteiligung.\nDoppelte Buchführung = gleichzeitige Orientierung an Wahn und Realität.',
    tags: ['Psychopathologie', 'F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Wahnthemen und ihre Zuordnung:\nSynthym (stimmungskongruent) bei der schweren Depression sind Verarmungswahn, Versündigungs-/Schuldwahn, hypochondrischer und nihilistischer Wahn.\nGrößenwahn (auch Abstammungs-, Berufungswahn) → Manie, auch Schizophrenie.\nVerfolgungs-, Beeinträchtigungs- und Beziehungswahn → typisch Schizophrenie.\nEifersuchtswahn → v. a. chronischer Alkoholismus; Liebeswahn → v. a. wahnhafte Störung.\nDermatozoenwahn (Tierchen in der Haut) → v. a. organisch oder Kokain, auch Schizophrenie.\nSymbiontischer Wahn (Folie à deux) = induzierter Wahn einer nahen Bezugsperson (F24).',
    tags: ['Psychopathologie', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Wahrnehmungsstörungen – Halluzination, Illusion und Verwandte:\nHalluzination = Wahrnehmung OHNE realen Reiz, vom Patienten für real gehalten; mehrere Sinnesgebiete gleichzeitig möglich.\nIllusionäre Verkennung = Fehldeutung eines REAL vorhandenen Reizes (z.B. Sitzsack wird für Einbrecher gehalten); auch bei Gesunden (Dunkelheit, Angst, Müdigkeit), gehäuft im Delir.\nPseudohalluzination = Sinnestäuschung, deren Trugcharakter der Patient erkennt.\nPareidolie = in Reales wird Fantasie hineingesehen (Gesichter in Wolken), beides besteht nebeneinander.\nMerke: Die Wahnwahrnehmung ist KEINE Wahrnehmungsstörung, sondern Wahn.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Halluzinationen – Sinnesgebiete und Vorkommen:\nAkustisch: Akoasmen (ungeformte Geräusche) oder Phoneme (Stimmen). Dialogisierende, kommentierende und imperative Stimmen → typisch Schizophrenie. Akoasmen auch bei Alkoholdelir und epileptischer Aura.\nOptisch → v. a. organisch (Delir, Drogen wie LSD).\nOlfaktorisch/gustatorisch → z.B. Hirntumor, epileptische Aura, Vergiftungsangst bei Schizophrenie.\nTaktil (Kribbeln, Tierchen auf der Haut) → v. a. organisch, Kokain.\nZönästhesie = abnormes Leibgefühl; Leibhalluzination = mit dem Gefühl des Gemachten (Schizophrenie).\nHypnagoge Halluzinationen beim Einschlafen auch bei Gesunden.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Ich-Störungen – psychotisch vs. Entfremdungserleben:\nPsychotisch (Ich-Umwelt-Grenze durchlässig, Erleben des Gemachten, typisch Schizophrenie): Gedankeneingebung, Gedankenentzug, Gedankenausbreitung (andere wissen, was man denkt), Willens- bzw. Fremdbeeinflussung.\nEntfremdungserleben (nicht psychotisch, unspezifisch, auch bei Gesunden, z.B. Übermüdung): Depersonalisation = losgelöst vom eigenen Körper, Denken oder Fühlen; Derealisation = Umwelt wirkt unwirklich.\nVorkommen: PTBS, Panik, dissoziative Störungen, Depression, Schizophrenie.\nGedankenlautwerden gilt als akustische Halluzination (Erstrangsymptom).',
    tags: ['Psychopathologie', 'F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Psychopathologischer Befund – Affekt:\nAffektverflachung (reduzierte emotionale Schwingungsfähigkeit) → typisch Schizophrenie; Gefühl der Gefühllosigkeit → Depression.\nParathymie (inadäquater Affekt, z.B. Lachen bei traurigem Inhalt) → Schizophrenie.\nAmbivalenz (gleichzeitig widersprüchliche Gefühle) → Schizophrenie, Depression, Zwang.\nAffektinkontinenz (Affekte schießen bei geringem Anlass übermäßig ein, nicht beherrschbar) und Affektlabilität (rasche Stimmungswechsel) → typisch organisch (z.B. vaskuläre Demenz, Parkinson).\nAffektstarre = Stimmung bleibt unabhängig von der Situation gleich.\nAnhedonie = Unfähigkeit, Freude zu empfinden.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Antrieb – Störungsformen:\nAntriebsarmut = Energie, Initiative und Interesse fehlen (Depression, schizophrene Negativsymptomatik, organisch).\nAntriebshemmung = der Wille ist da, aber ein innerer Widerstand bremst jede Handlung (typisch Depression).\nMerke: Armut = Wollen fehlt, Hemmung = Wollen wird gebremst.\nAntriebssteigerung bis -enthemmung = mehr Schwung, Ideen und Rededrang (Manie, Stimulanzien).\nAdynamie = Antriebs- und Kraftlosigkeit.\nBradyphrenie = Verlangsamung von Denken und geistigen Abläufen, typisch bei Morbus Parkinson.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Psychomotorik und katatone Symptome:\nStupor = Bewegungslosigkeit bei KLAREM Bewusstsein; Mutismus = Nichtsprechen trotz intakter Sprechorgane.\nNegativismus = tut nicht oder das Gegenteil des Verlangten; Befehlsautomatie = automatenhaftes Befolgen.\nKatalepsie = passiv gegebene Haltungen werden lange beibehalten; Echolalie/Echopraxie = Nachsprechen/Nachahmen.\nStereotypien = leeres Wiederholen; Manierismen = bizarr-gekünstelte Alltagsbewegungen.\nLogorrhö = Rededrang (Manie) – Psychomotorik, KEINE formale Denkstörung.\nAkathisie = quälende Sitzunruhe (Antipsychotika-Nebenwirkung).\nAbgrenzung: Parathymie, Ambivalenz, Derealisation sind KEINE Psychomotorik.',
    tags: ['Psychopathologie', 'F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Ich-synton vs. ich-dyston:\nIch-synton = als zum Selbst gehörig erlebt; ich-dyston = als fremd, störend oder unsinnig erlebt.\nPersönlichkeitsstörungen werden meist ich-synton erlebt (Leidensdruck oft gering oder erst durch Konflikte mit der Umwelt).\nIn der Manie fühlt sich der Patient großartig (ich-synton).\nBei Schizophrenie werden Halluzinationen und Wahn als real erlebt (ich-synton).\nZwänge bei Zwangsstörung (F42) sind typischerweise ich-DYSTON – bei der anankastischen PS (F60.5) dagegen ich-synton.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Testdiagnostik – Selbst- und Fremdbeurteilung, IQ-Tests:\nSelbstbeurteilungsbögen (z.B. BDI-II bei Depression) erfassen Stimmung, Hoffnungslosigkeit, Selbstwert, Konzentration, Schlaf, Appetit, Suizidgedanken.\nNICHT erfassbar: Wahnerleben (Betroffene erkennen Wahn nicht als solchen → Fremdbeurteilung nötig, z.B. HAMD, AMDP).\nSkalen quantifizieren den Schweregrad, ersetzen aber keine Diagnose.\nIQ-Tests (z.B. HAWIE): Mittelwert 100, Standardabweichung 15; ca. 68 % liegen zwischen 85 und 115; bei IQ 100 liegt die Hälfte der Referenzgruppe darüber.',
    tags: ['Psychopathologie'],
  ),

  // ============================================================
  // TEIL 3: F0 – ORGANISCHE STÖRUNGEN & NEUROLOGIE
  // ============================================================
  Flashcard(
    text:
        'F0 – Organische Ursache ausschließen (Warnzeichen):\nF0 (F00–F09) = psychische Störungen mit nachweisbarer organischer Ursache; Substanzfolgen stehen in F1.\nBei JEDER psychischen Störung zuerst organische Ursachen ausschließen: somatische Abklärung vor der Psychotherapie, bei Verdacht zum Arzt.\nWarnzeichen: Bewusstseinsstörung, Desorientiertheit, optische/taktile Halluzinationen, Fieber, vegetative Auffälligkeiten, neurologische Ausfälle, Erstmanifestation im Alter.\nDie psychischen Symptome sind unspezifisch: Verschiedene Körperkrankheiten können dasselbe Bild erzeugen.\nMerke: Jede akute organische psychische Störung ist ein Notfall.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Organische Differenzialdiagnosen – Depression und Angst:\nDepressive Symptome durch: Hypothyreose, Vitamin-B12-Mangel, Hirntumor, Morbus Parkinson, Kortikosteroide.\nAngst- und Paniksymptome durch: Hyperthyreose, Hypoglykämie, Herzerkrankungen (KHK, Rhythmusstörungen), Asthma, Epilepsie, Phäochromozytom, Koffein, Entzug (Alkohol, Benzodiazepine).\nMerke: Hypothyreose = "alles gedrosselt" (Antriebsmangel, Müdigkeit, Gewichtszunahme, Obstipation, Bradykardie).\nHyperthyreose = "alles auf Hochtouren" (Unruhe, Schlaflosigkeit, Tachykardie, Gewichtsverlust, Exophthalmus).\nDeshalb vor jeder Behandlung organisch abklären lassen.',
    tags: ['Differentialdiagnosen', 'F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F00 – Demenz bei Alzheimer-Krankheit:\nSchleichender Beginn mit kontinuierlich progredientem Verlauf; Alzheimer ist eine Ausschlussdiagnose.\nGedächtnis und kognitive Funktionen nehmen ab; Wahn und Halluzinationen sind im Verlauf möglich.\nF00.0 = früher Beginn (<65 Jahre), F00.1 = später Beginn (>65 Jahre).\nHäufigste Demenzform (ca. 60-70%).\nNeuropathologisch: Amyloid-Plaques und Tau-Fibrillen, cholinerges Defizit.\nRisikofaktoren: Alter (wichtigster), Demenz bei Verwandten 1. Grades, Down-Syndrom; hohe Bildung wirkt eher schützend.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F01 – Vaskuläre Demenz:\nPlötzlicher oder stufenweiser Beginn (im Gegensatz zum schleichenden Beginn bei Alzheimer), Verschlechterung in Schüben.\nUrsachen: Multiinfarkt oder subkortikale Durchblutungsstörungen.\nOft früh fokal-neurologische Ausfälle; Defizite ungleichmäßig verteilt.\nBehandlung: Kardiovaskuläre Risikofaktoren kontrollieren (Hypertonie, Rauchen, Diabetes).\nZweithäufigste Demenzform.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F02 – Demenz bei anderen Erkrankungen (Demenzformen unterscheiden):\nF02.0 Pick (frontotemporal), F02.1 Creutzfeldt-Jakob, F02.2 Huntington, F02.3 Parkinson, F02.4 HIV.\nFrontotemporale Demenz (Pick): Persönlichkeitsveränderung, Enthemmung, Distanzlosigkeit und Verlust sozialer Fähigkeiten VOR den Gedächtnisstörungen; oft Beginn vor 65.\nCreutzfeldt-Jakob: durch Prionen, rasch progredient über Monate, Myoklonien; Tod meist innerhalb eines Jahres.\nLewy-Körperchen-Demenz: stark schwankende Kognition, frühe optische Halluzinationen, Parkinson-Symptome, Überempfindlichkeit gegen Neuroleptika.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Chorea Huntington (Demenz: F02.2):\nAutosomal-dominant vererbt (Chromosom 4): Kinder Erkrankter erkranken zu 50 %.\nBeginn meist im mittleren Erwachsenenalter (ca. 20.–50. Lebensjahr).\nPsychische Symptome (Reizbarkeit, Affektlabilität, Depression, Wesensänderung) gehen der Bewegungsstörung oft Jahre voraus.\nChoreatische Hyperkinesen (plötzliche unwillkürliche Bewegungen) bei vermindertem Muskeltonus; später Demenz.\nHohes Suizidrisiko; nicht heilbar, Verlauf über 10–20 Jahre.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Demenz nach ICD-10 – Kriterien:\nAbnahme von Gedächtnis UND Denkvermögen mit Beeinträchtigung der Alltagsaktivitäten.\nBewusstsein KLAR (keine qualitative Bewusstseinsstörung).\nDauer mindestens 6 Monate; KEIN Mindestalter.\nWerkzeugstörungen: Aphasie (Sprache), Apraxie (Handeln), Agnosie (Erkennen), Alexie, Akalkulie; dazu Veränderungen von Affekt, Antrieb und Sozialverhalten.\nDiagnostik: Fremdanamnese, Tests (MMST, Uhrentest), Bildgebung (cCT/MRT) zum Ausschluss behandelbarer Ursachen (z. B. Vitamin-B12-Mangel, Schilddrüse, Normaldruckhydrozephalus).',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Frühsymptome einer beginnenden Demenz:\nAffektive Veränderungen (Reizbarkeit, Stimmungsschwankungen, Apathie, depressive Verstimmung) treten oft als erste Symptome auf, noch vor ausgeprägten kognitiven Defiziten.\nKognitiv zuerst betroffen: Merkfähigkeit und Kurzzeitgedächtnis; das Altgedächtnis bleibt lange erhalten.\nGangstörungen und Inkontinenz treten eher in fortgeschrittenen Stadien auf.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Nichtmedikamentöse Interventionen bei Demenz:\nKörperliche Aktivierung (Bewegungstherapie), basale Stimulation (sensorische Anregung), Ergotherapie (Alltagskompetenz), Realitätsorientierungstraining (zeitliche, örtliche, personelle Orientierung), supportive Psychotherapie.\nDemenz-Screening: MMST (Mini-Mental-Status-Test), Uhrentest.',
    tags: ['F0 – Organische Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Demenz vs. Depression (Pseudodemenz):\nBei Depression klagt der Patient aktiv über Vergesslichkeit und antwortet mit "weiß nicht"; Orientierung weitgehend erhalten, Alltagsleistung besser als Testleistung, kognitive Besserung unter Antidepressiva.\nBei echten Demenzen: Patient bagatellisiert und überspielt Defizite, Orientierung gestört.\nKonfabulationen sind KEIN Demenz-Leitsymptom, sondern typisch für das Korsakow-Syndrom.\nDie "Pseudodemenz" ist eine Depression im höheren Alter mit kognitiven Symptomen und hat keinen eigenen ICD-10-Schlüssel.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Merke Demenz vs. Delir:\nDemenz = chronisch, schleichender Beginn, Bewusstsein KLAR, progredient, vor allem Gedächtnis gestört.\nDelir = akut, plötzlicher Beginn, Bewusstsein GETRÜBT, fluktuierend, vor allem Aufmerksamkeit gestört; oft körperliche Erkrankung, Intoxikation oder Medikament als Auslöser.\nBeide können gleichzeitig auftreten (Delir auf dem Boden einer Demenz, F05.1).',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F04 – Organisches amnestisches Syndrom:\nAusgeprägte Störung von Kurz- und Langzeitgedächtnis (v. a. Neugedächtnis) mit zeitlicher Desorientierung; das Immediatgedächtnis ist erhalten.\nWichtig: Bewusstsein ist NICHT getrübt (Abgrenzung zum Delir); übrige kognitive Funktionen weitgehend erhalten.\nF04 gilt NUR ohne Alkohol oder andere Substanzen als Ursache: z. B. Schädel-Hirn-Trauma, Enzephalitis, Hypoxie, CO-Vergiftung, Hirninfarkt.\nAlkoholbedingtes Korsakow-Syndrom = F10.6 (siehe dort).\nKonfabulationen (Erinnerungslücken werden unbewusst mit erfundenen Inhalten gefüllt) sind möglich, aber nicht obligat.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F05 – Delir:\nAkuter Beginn mit Bewusstseins- und Aufmerksamkeitsstörung, Fluktuation der Symptome und Orientierungsstörung.\nWeitere Merkmale: Störungen von Denken, Gedächtnis und Wahrnehmung (v. a. optische Halluzinationen, illusionäre Verkennungen; akustische möglich), Psychomotorik, Schlaf-Wach-Rhythmus und Affekt; vegetative Zeichen, erhöhte Suggestibilität.\nDauer meist Tage bis wenige Wochen (unter 4 Wochen), Obergrenze 6 Monate.\nF05 = NICHT durch Alkohol oder Substanzen bedingt (sonst F1x.4, z. B. Delirium tremens).\nNOTFALL: unbehandelt lebensbedrohlich.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Delir – Ursachen und Risikofaktoren:\nEntzug von Alkohol oder Benzodiazepinen (Delirium tremens = F10.4).\nMedikamente, v. a. anticholinerg wirkende (z. B. trizyklische Antidepressiva, Anti-Parkinson-Mittel).\nInfektionen und Fieber, besonders bei Älteren (z. B. Harnwegsinfekt, Pneumonie).\nStoffwechsel- und Elektrolytstörungen, Exsikkose, Hypoglykämie, Leber- oder Nierenversagen; postoperativ, nach Schädel-Hirn-Trauma, Drogenintoxikation.\nRisikofaktoren: hohes Alter, vorgeschädigtes Gehirn (Demenz), Sucht, viele Medikamente.\nBei jedem Delir: Ursache suchen und behandeln lassen.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F06 – Sonstige organische psychische Störungen:\nOrganische Halluzinose, katatone Störung, wahnhafte (schizophreniforme) Störung, affektive Störung, Angststörung, dissoziative Störung, emotional labile (asthenische) Störung, leichte kognitive Störung.\nEntscheidend: Die Symptome sind durch eine nachweisbare Hirnfunktionsstörung oder körperliche Krankheit verursacht, nicht primär psychisch bedingt.\nHinweise: zeitlicher Zusammenhang mit der Grunderkrankung, Besserung bei deren Rückbildung.\nAbgrenzung: Das Bild kann einer Schizophrenie, Depression oder Angststörung gleichen.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'F07 – Organische Persönlichkeits- und Verhaltensstörungen:\nPersönlichkeitsveränderung nach Hirnschädigung (z.B. nach Schädel-Hirn-Trauma, Enzephalitis, Frontalhirnschädigung).\nÄnderung des Verhaltens, der Emotionalität und der Impulskontrolle (Reizbarkeit, Enthemmung, Apathie, Affektlabilität).\nUnterformen: F07.0 organische Persönlichkeitsstörung, F07.1 postenzephalitisches Syndrom, F07.2 organisches Psychosyndrom nach Schädel-Hirn-Trauma.\nNicht als Persönlichkeitsstörung (F60) zu klassifizieren, da organisch bedingt.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Morbus Parkinson – Trias und psychische Symptome:\n„RAT“ – Rigor (Muskelsteifheit), Akinese (Bewegungsarmut), Ruhetremor (Zittern in Ruhe, NICHT Intentionstremor).\nDazu: Mikrografie (verkleinertes Schriftbild), monotone Stimme, Maskengesicht, kleinschrittiger Gang.\nUrsache: Untergang dopaminerger Neurone in der Substantia nigra (Dopaminmangel).\nPsychisch: Depression und Angst (oft schon früh), Affektlabilität, Bradyphrenie (Denkverlangsamung), Demenz im Spätstadium (F02.3).\nIntentionstremor = Kleinhirnläsion.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Epilepsie (prüfungsrelevant):\nKann in jedem Alter auftreten.\nAbsencen = kurze Bewusstseinsaussetzer von Sekunden (vor allem bei Kindern).\nEEG zur Diagnose.\nAbruptes Absetzen von Benzodiazepinen kann Krampfanfälle auslösen; Entzugskrampfanfälle gibt es nicht nur beim Alkoholentzug.\nNach Gelegenheitskrampf: Fahrtauglichkeit beeinträchtigt.\nAbgrenzung: Dissoziative Krampfanfälle = keine epileptischen Veränderungen im EEG, meist kein Bewusstseinsverlust und kein Zungenbiss.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Epilepsie – Grand-mal-Anfall, Status, Erste Hilfe:\nAblauf: evtl. Aura (z. B. Lichtblitze, Gerüche, Akoasmen) → Initialschrei, Sturz, Bewusstlosigkeit → tonische Streckphase → klonische Zuckungen (Zungenbiss, Einnässen) → Terminalschlaf, Amnesie für den Anfall.\nStatus epilepticus: Anfall länger als 5 Minuten oder Anfallsserie ohne Wiedererlangen des Bewusstseins = NOTFALL.\nErste Hilfe: Verletzungsquellen entfernen, NICHT festhalten, NICHTS zwischen die Zähne, danach stabile Seitenlage; Notruf bei Anfall über 5 Minuten.\nIm Verlauf möglich: Wesensänderung (umständlich, haftend); Schlafmangel und Alkohol meiden.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'MS (Multiple Sklerose) – psychische Symptome:\nHäufigste chronisch-entzündliche Erkrankung des ZNS; Beginn meist 20.–40. Lebensjahr, Frauen häufiger.\nPsychisch: Depression am häufigsten (oft reaktiv), daneben Euphorie mit flachem Affekt, kognitive Beeinträchtigungen bis zur Demenz, selten paranoide Symptome.\nSehstörungen durch Optikusneuritis, oft erstes Symptom.\nFlashbacks sind NICHT typisch für MS (sondern für PTBS).\nMS kann psychiatrische Symptome verursachen → organische Ursache ausschließen!',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Hypoglykämie – psychische Symptome (prüfungsrelevant):\nZittern, Unruhe, Reizbarkeit (adrenerge Gegenregulation).\nWeitere: Schwitzen, Herzklopfen, Heißhunger, Konzentrationsstörungen, Verwirrtheit bis Bewusstlosigkeit.\nKann psychische Störungen imitieren (Angst, Panik, scheinbare Trunkenheit)!\nNICHT typisch: Größenwahn, gerötete überwärmte Haut.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Neuroanatomie (prüfungsrelevant):\nCorpus callosum (Balken) = verbindet die Großhirnhemisphären. Hippocampus = Gedächtnisbildung (NICHT Motorik).\nKleinhirn = motorische Koordination, Gleichgewicht, Feinmotorik; Schädigung → Ataxie, Intentionstremor, verwaschene Sprache.\nHirnstamm = Atmung, Kreislauf.\nHypothalamus = steuert autonomes NS; Hypophyse = Teil der Stressachse.\nSympathikus = Fight-or-Flight. Parasympathikus = Rest-and-Digest.\nLimbisches System = Emotionen; spielt eine wichtige Rolle bei der Suchtentstehung (Belohnungssystem).\nDas Hirngewebe selbst hat KEINE Schmerzrezeptoren.',
    tags: ['F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Migräne (prüfungsrelevant):\nLichtempfindlichkeit, Übelkeit/Erbrechen.\nAuraphase: Flimmerskotome (Sehstörungen).\nKörperliche Betätigung verschlechtert die Kopfschmerzen.\nBestimmte Lebensmittel können triggern.\nAm häufigsten bei Frauen im gebärfähigen Alter.\nBessert sich oft nach der Menopause.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Fibromyalgie:\nChronische Schmerzen in mehreren Körperregionen, Schlafstörungen, Müdigkeit.\nKVT ist wirksamer Behandlungsansatz.\nNICHT gleichzusetzen mit somatoformer Schmerzstörung.\nRheumafaktoren sind nicht typisch.\nBetrifft ca. 2-4% der Bevölkerung.',
    tags: ['Differentialdiagnosen', 'F4 – Neurotische Störungen'],
  ),

  // ============================================================
  // TEIL 4: F1 – STÖRUNGEN DURCH PSYCHOTROPE SUBSTANZEN
  // ============================================================
  Flashcard(
    text:
        'F1 – Aufbau der Codierung:\nDie 3. Stelle codiert die Substanz:\nF10=Alkohol, F11=Opioide, F12=Cannabinoide, F13=Sedativa/Hypnotika, F14=Kokain.\nF15=Stimulanzien (inkl. Koffein), F16=Halluzinogene, F17=Tabak, F18=Lösungsmittel, F19=multipel/andere.\nBeispiel: F10.2 = Alkoholabhängigkeit (4. Stelle = klinisches Bild).',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'F1x – Die 4. Stelle codiert das klinische Bild:\n.0 = Akute Intoxikation (Rausch). .1 = Schädlicher Gebrauch (Schaden, keine Abhängigkeit). .2 = Abhängigkeitssyndrom. .3 = Entzugssyndrom.\n.4 = Entzug mit Delir. .5 = Psychotische Störung. .6 = Amnestisches Syndrom (Korsakow). .7 = Restzustand/verzögerte psychotische Störung (z. B. Flashbacks).\nBeispiele: F10.4 = Delirium tremens, F10.6 = Korsakow-Syndrom.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        '6 Kriterien für Abhängigkeit nach ICD-10 (mind. 3 gleichzeitig innerhalb der letzten 12 Monate):\n(1) Starkes Verlangen/Craving.\n(2) Kontrollverlust.\n(3) Entzugssymptome.\n(4) Toleranzentwicklung.\n(5) Vernachlässigung anderer Interessen.\n(6) Fortgesetzter Konsum trotz nachweisbarer Schäden.\nMerke: Alle 6 Kriterien sind gleichwertig; Trinkmenge oder Konsumtage sind KEINE Kriterien.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Abhängigkeit vs. Schädlicher Gebrauch:\nAbhängigkeit = mind. 3 von 6 Kriterien gleichzeitig innerhalb der letzten 12 Monate.\nSchädlicher Gebrauch (.1) = nachweisbare körperliche oder psychische Schädigung durch Substanzkonsum, OHNE dass ein Abhängigkeitssyndrom vorliegt.\nSozial unüblicher Konsum, Craving oder Toleranz sind KEINE Kriterien des schädlichen Gebrauchs.\nEine bestimmte Konsumhäufigkeit oder Trinkmenge ist KEIN Abhängigkeitskriterium; kurze Abstinenz (z. B. 30 Tage) schließt Abhängigkeit nicht aus.',
    tags: ['F1 – Substanzstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Abhängigkeit – körperlich vs. psychisch:\nDie ICD-10 trennt im Abhängigkeitssyndrom NICHT zwischen körperlicher und psychischer Abhängigkeit (Prüfungsfalle).\nDeutliche körperliche Abhängigkeit mit Entzugssyndrom: Opioide, Alkohol, Benzodiazepine/Barbiturate, Nikotin.\nVorwiegend psychische Abhängigkeit: Kokain, Amphetamine, Halluzinogene (LSD, Psilocybin), MDMA/Ecstasy, Lösungsmittel.\nCannabis: v. a. psychisch; nach chronischem Hochdosiskonsum sind Entzugssymptome möglich.\nLSD und Ecstasy verursachen KEINE körperliche Abhängigkeit.\nSuchtpotenzial: Opioide am höchsten; Halluzinogene geringer als Benzodiazepine.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Polytoxikomanie und Verhaltenssüchte:\nPolytoxikomanie = Abhängigkeit von mehreren psychotropen Substanzen gleichzeitig (z. B. Heroin + Benzodiazepine + Alkohol; ICD-10 meist F19).\nVerhaltenssüchte (z. B. pathologisches Glücksspiel F63.0) gehören NICHT zu F1, sondern zu den Impulskontrollstörungen (F63).\nAbhängigkeit entsteht multifaktoriell (Substanz, Person, Umfeld); zentral ist das mesolimbische Belohnungssystem (Dopamin, limbisches System).\nKontrollverlust meint die Kontrolle über den Konsum (Beginn, Menge, Ende), NICHT über das ganze Leben.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Sucht und Suizidalität:\nAbhängigkeitskranke, v. a. Alkoholabhängige, haben ein deutlich erhöhtes Suizidrisiko: etwa jeder 10. Alkoholabhängige stirbt durch Suizid.\nRisikofaktoren: Depressivität mit Selbstvorwürfen, Enthemmung im Rausch, Entzug, soziale Verluste, Komorbidität (Depression, Persönlichkeitsstörung).\nMischungen aus Alkohol und Schlaf- oder Beruhigungsmitteln werden oft in suizidaler Absicht eingenommen.\nMerke: Sucht gehört wie Depression, Schizophrenie, Anorexie und Persönlichkeitsstörungen zu den Hochrisikogruppen; Suizidalität immer aktiv erfragen.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Alkoholintoxikation:\nKann auch unter 1,0 Promille diagnostiziert werden (individuelle Toleranz variiert).\nSchwere Intoxikation: Atemdepression und Hypothermie möglich.\nBinge-Drinking: 5+ Standardgläser (Männer) bzw. 4+ (Frauen) bei einer Gelegenheit.\nRiskanter Gebrauch: >24g/Tag (Männer), >12g/Tag (Frauen).\nEin Standardglas = ca. 10-12g reiner Alkohol.\nMerke: Eine Abhängigkeit wird NIE über die Trinkmenge definiert.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Pathologischer Rausch (F10.07):\nAtypischer Rauschzustand nach relativ geringer Alkoholmenge, meist bei vorgeschädigtem Gehirn (z. B. Schädel-Hirn-Trauma, Epilepsie, langjähriger Alkoholismus).\nSymptome: Bewusstseinstrübung (Dämmerzustand), Situationsverkennung, Erregungszustände, ggf. aggressives Verhalten.\nEndet oft in einem Terminalschlaf mit (Teil-)Amnesie.\nGeht nicht regelhaft in ein Delir über und ist KEINE Impulskontrollstörung (F63).\nAbgrenzung zum normalen Rausch: überproportionale Symptomatik zur aufgenommenen Menge.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Alkoholikertypen nach Jellinek (5 Typen):\nAlpha = Konflikt- bzw. Erleichterungstrinker: psychisch abhängig, kein Kontrollverlust.\nBeta = Gelegenheitstrinker: NICHT abhängig, aber Organschäden möglich.\nGamma = süchtiger Trinker: Kontrollverlust, Toleranz, erst psychisch, dann körperlich abhängig; häufigster Typ.\nDelta = Spiegeltrinker: kein Kontrollverlust, aber unfähig zur Abstinenz; trinkt kontinuierlich (körperlich abhängig).\nEpsilon = episodischer Trinker („Quartalstrinker“): tagelange Exzesse mit Kontrollverlust, dazwischen abstinent.\nMerke: 5 Typen (Alpha bis Epsilon), nicht 4.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Alkoholentzug (F10.3):\nBeginn einige Stunden (etwa einen halben Tag) nach dem letzten Trinken, Höhepunkt nach 1–2 Tagen.\nVegetative Symptome wie Schwitzen, Tremor, Tachykardie, Hypertonie; dazu Unruhe, Angst, Schlafstörungen, Übelkeit.\nKann zu Krampfanfällen und Delirium tremens führen – daher stationäre Überwachung; einem Alkoholkranken NIE raten, allein abrupt aufzuhören.\nVitamin B1 (Thiamin) und Folsäure als Prophylaxe.\nMedikamentös (ärztlich): Benzodiazepine oder Clomethiazol – Alkohol ist KEINE Therapie.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Delirium tremens (F10.4):\nBeginnt meist 1–3 Tage nach Absetzen oder Reduktion des Alkohols; seltener bei fortgesetztem Trinken (Kontinuitätsdelir). Dauer meist 3-5 Tage.\nLeitsymptom: Bewusstseinsstörung mit Desorientierung (Abgrenzung zur Alkoholhalluzinose mit klarem Bewusstsein).\nWeitere Symptome: Tremor (Kardinalsymptom), motorische Unruhe und Nesteln, optische Halluzinationen („weiße Mäuse“), erhöhte Suggestibilität, vegetative Entgleisung, Krampfanfälle.\nNOTFALL – unbehandelt bis ca. 20 % tödlich; Koma als Komplikation möglich.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Alkoholhalluzinose (F10.52) vs. Alkoholdelir:\nAlkoholhalluzinose = vorwiegend akustische Halluzinationen (oft beschimpfende Stimmen) mit Angst bei KLAREM Bewusstsein und erhaltener Orientierung.\nKEINE ausgeprägten vegetativen Symptome; Wahnideen und psychomotorische Erregung sind möglich.\nDelirium tremens = Bewusstseinsstörung + Tremor + optische Halluzinationen + vegetative Störungen.\nDie Bewusstseinslage ist das entscheidende Unterscheidungsmerkmal!',
    tags: ['F1 – Substanzstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Wernicke-Enzephalopathie (Alkoholfolge, Notfall):\nUrsache: Vitamin-B1-(Thiamin-)Mangel, meist bei chronischem Alkoholismus und Mangelernährung.\nSymptome: Augenmuskelstörungen (Doppelbilder, Nystagmus), Ataxie (Gang- und Standunsicherheit), Bewusstseinsstörung und Verwirrtheit.\nLebensbedrohlicher NOTFALL: sofort hochdosiert Thiamin in der Klinik.\nGeht häufig in ein Korsakow-Syndrom über (Wernicke-Korsakow-Syndrom).\nAbgrenzung: Augenmuskellähmungen gehören zur Wernicke-Enzephalopathie, NICHT zum Korsakow-Syndrom.',
    tags: ['F1 – Substanzstörungen', 'F0 – Organische Störungen'],
  ),
  Flashcard(
    text:
        'Korsakow-Syndrom (F10.6):\nAlkoholbedingtes amnestisches Syndrom bei chronischem Alkoholismus (Thiaminmangel), oft nach einer Wernicke-Enzephalopathie.\nSchwere Störung des Kurzzeitgedächtnisses und der Merkfähigkeit, Konfabulationen (Füllen von Erinnerungslücken mit erfundenen Inhalten), Desorientierung, Zeitgitterstörung.\nBewusstsein klar; übrige kognitive Funktionen relativ erhalten.\nProphylaxe: Vitamin B1 (Thiamin) zur Verhinderung der Wernicke-Enzephalopathie.\nAbgrenzung: Amnestisches Syndrom OHNE Alkohol- oder Substanzursache → F04.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Opioidintoxikation:\nTrias: Miosis (Stecknadelpupillen), Atemdepression, Bewusstseinsminderung bis Koma; dazu Euphorie, Bradykardie.\nBei Überdosis: lebensbedrohliche Atemdepression, besonders im Mischkonsum mit Alkohol oder Benzodiazepinen.\nGegenmittel: Naloxon.\nAbgrenzung: Kokainintoxikation zeigt Mydriasis, Tachykardie, Hypertonie, Euphorie, erhöhte Wachheit, mögliche Halluzinationen.\nAmphetamine: ähnlich Kokain, aber länger wirkend.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Opioid-Entzugssyndrom (F11.3):\nBeginn etwa 6–12 Stunden nach der letzten Dosis, Höhepunkt nach 2–3 Tagen, Abklingen nach etwa 7–10 Tagen.\nKörperlich: Mydriasis (!), Tränen- und Nasenfluss, Gähnen, Niesen, Schwitzen, Frösteln, Muskel- und Gliederschmerzen, Bauchkrämpfe, Durchfall, Tachykardie, Blutdruckanstieg.\nPsychisch: starkes Craving, Unruhe, Angst, Schlaflosigkeit.\nMeist weniger lebensgefährlich als ein Alkohol- oder Benzodiazepinentzug, sollte aber begleitet werden.\nDie psychische Abhängigkeit kann nach dem körperlichen Entzug noch Wochen andauern.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Methadon-Substitution:\nErhaltungstherapie (Maintenance-Therapie) bei Opioidabhängigkeit (Methadon, Buprenorphin); die Abhängigkeit bleibt bestehen, Methadon ist selbst suchterzeugend.\nDurchführung ist Ärzten mit suchtmedizinischer Qualifikation vorbehalten, NICHT Heilpraktikern.\nVollständige Abstinenz wird in der Regel nicht erreicht.\nNutzen: weniger Beschaffungskriminalität, geringeres HIV- und Hepatitisrisiko; begleitende Psychotherapie ist erwünscht.\nIn der Schwangerschaft ist Substitution Erstlinientherapie, da unkontrollierter Entzug das Kind gefährdet.',
    tags: ['F1 – Substanzstörungen', 'Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Pupillenreaktionen bei Substanzen:\nMydriasis (weite Pupillen) = Stimulanzien (Kokain, Amphetamine, Ecstasy), Halluzinogene (LSD, Psilocybin), Cannabis (v. a. hohe Dosis), anticholinerge Substanzen.\nMiosis (enge Pupillen / "Stecknadelpupillen") = Opioide (Morphin, Heroin, auch Methadon und Buprenorphin).\nPrüfungsfalle: Im Opioid-ENTZUG sind die Pupillen WEIT (Mydriasis).\nMerke: Mydriasis = Stimulanzien. Miosis = Opioide.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Cannabis (F12) – Rausch, Entzug, Folgen:\nRausch: gerötete Augen, KEINE Miosis (eher Mydriasis), veränderte Wahrnehmung, ideenflüchtiges Denken, Konzentration vermindert, Appetit gesteigert; hohe Dosis: Angst, Horrortrip.\nNach chronischem Hochdosiskonsum: Entzugssymptome möglich (Angst, Tremor, Schlafstörungen, Schwitzen, Reizbarkeit).\nChronisch: amotivationales Syndrom (Antriebsminderung, Leistungsabfall – NICHT Antriebssteigerung), Flashbacks (Echopsychosen), misstrauisch-dysphorische Verstimmung, erhöhtes Psychoserisiko.\nSynthetische Cannabinoide ("Kräutermischungen", "Spice") können akute Psychosen mit Selbstgefährdung auslösen.',
    tags: ['F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Substanzinduzierte psychotische Störungen (F1x.5):\nHalluzinationen und/oder Wahn während oder kurz nach Substanzgebrauch.\nKönnen bei praktisch allen Substanzen auftreten.\nSymptome wie Stupor, Personenverkennung, akustische Halluzinationen, Ekstase und Verfolgungsideen sind möglich.\nAbgrenzung: Wahrnehmungsstörungen während einer Halluzinogen-Intoxikation = F1x.0; Halluzinationen im Entzugsdelir = F1x.4 – beides NICHT F1x.5.\nDrogen können Schizophrenie-ähnliche Symptome auslösen; THC und Amphetamine erhöhen das Psychoserisiko.',
    tags: ['F1 – Substanzstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Nikotin/Tabak (F17):\nNikotin wirkt je nach Situation beruhigend oder anregend und macht körperlich und psychisch abhängig.\nEntzugssyndrom: starkes Rauchverlangen, Krankheitsgefühl, Angst, Unruhe, Reizbarkeit, dysphorische Stimmung, Konzentrations- und Schlafstörungen, gesteigerter Appetit mit Gewichtszunahme.\nNICHT typisch für den Nikotinentzug: Hypertonie, erhöhte Risikobereitschaft.\nHPP darf Raucherentwöhnung anbieten: KVT, Einzel- und Gruppenhypnose – NICHT Medikamente (Bupropion, Vareniclin) und NICHT Akupunktur (invasiv).\nNikotinersatz (Pflaster, Kaugummi) ist frei verkäuflich.',
    tags: ['F1 – Substanzstörungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Suchttherapie – 4 Phasen in der richtigen Reihenfolge:\n1. Kontakt- und Motivationsphase (steht am Anfang; motivierende Gesprächsführung ohne Konfrontation und Moralisieren).\n2. Entgiftung = körperlicher Entzug, meist stationär, 1–4 Wochen – hier drohen Delirium tremens und Entzugskrampfanfälle.\n3. Entwöhnung = psychotherapeutische Phase über Wochen bis Monate, meist stationär; Grundlagen dauerhafter Abstinenz.\n4. Nachsorge/Rehabilitation: Rückfallprophylaxe, Selbsthilfegruppen, soziale und berufliche Wiedereingliederung.\nMerke: Entgiftung und Entwöhnung sind NICHT dasselbe. Die "Remissionsphase" ist KEINE Therapiephase.',
    tags: ['F1 – Substanzstörungen', 'Therapieverfahren'],
  ),

  // ============================================================
  // TEIL 5: F2 – SCHIZOPHRENIE & WAHNHAFTE STÖRUNGEN
  // ============================================================
  Flashcard(
    text:
        'F20 – Diagnosekriterien der Schizophrenie nach ICD-10:\nDauer: Symptome mind. 1 Monat (DSM-5: 6 Monate).\nMind. 1 eindeutiges Symptom aus Gruppe 1–4: Gedankenlautwerden, -eingebung, -entzug, -ausbreitung; Kontroll-/Beeinflussungswahn, Gefühl des Gemachten, Wahnwahrnehmung; kommentierende oder dialogische Stimmen; anhaltender bizarrer Wahn.\nODER mind. 2 Symptome aus Gruppe 5–9: anhaltende Halluzinationen jeder Art; formale Denkstörungen; katatone Symptome; Negativsymptome; deutliche Verhaltensänderung (Ziellosigkeit, Rückzug).\nAusschluss: organische Ursache, Drogen. Bewusstsein und Orientierung sind in der Regel klar.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Symptome 1. Ranges nach Kurt Schneider:\nGedankenlautwerden, Gedankenentzug, Gedankeneingebung, Gedankenausbreitung, Stimmenhören (dialogisch/kommentierend), leibliche Beeinflussungserlebnisse, Wahnwahrnehmung, Gefühl des Gemachten (Willensbeeinflussung).\nSie haben hohes diagnostisches Gewicht, sind aber NICHT pathognomonisch – sie kommen auch bei organischen und affektiven Psychosen vor.\nDie ICD-10-Kriterien der Gruppe 1–4 bauen darauf auf.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Symptome 2. Ranges nach Schneider:\nSonstige Halluzinationen, Wahneinfälle, Ratlosigkeit, depressive oder frohe Verstimmung, erlebte Gefühlsverarmung, andere Sinnestäuschungen.\nDiese sind weniger spezifisch als Erstrangsymptome und können auch bei anderen Störungen auftreten.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Grund- und akzessorische Symptome nach Eugen Bleuler:\nGrundsymptome – Merke „4 A“: Assoziationslockerung (Zerfahrenheit), Affektstörung (z.B. Parathymie), Autismus (Rückzug in die eigene Innenwelt), Ambivalenz (gegensätzliche Gefühle und Strebungen zugleich).\nAkzessorische Symptome: Wahn, Halluzinationen, katatone Symptome – sie kommen auch bei anderen Psychosen vor.\nBleuler prägte 1911 den Begriff Schizophrenie (statt Kraepelins „Dementia praecox“).\nAbgrenzung: Autismus im Sinne Bleulers ≠ frühkindlicher Autismus (F84.0).',
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
        'F20.0 – Paranoide Schizophrenie:\nHäufigste Form der Schizophrenie.\nWahn und Halluzinationen dominieren das klinische Bild, meist begleitet von Ich-Störungen (Gedankeneingebung, -entzug, -ausbreitung, Gefühl des Gemachten).\nTypisch: Verfolgungswahn, Beziehungswahn, akustische Halluzinationen (Stimmenhören).\nFormale Denkstörungen, Affekt- und Antriebsstörungen sind meist weniger ausgeprägt.\nBeginn meist später als bei anderen Formen (ca. 30.–40. Lj.); Prognose eher günstig, gutes Ansprechen auf Antipsychotika.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F20.1 – Hebephrene Schizophrenie:\nTrias: Affektstörung, formale Denkstörung (ungeordnet, zerfahren, weitschweifig) und Antriebs-/Verhaltensstörung (ziellos, unvorhersehbar, verantwortungslos).\nTypisch: Läppischer, inadäquater Affekt, Grimassieren, Manierismen, Distanzlosigkeit.\nWahn und Halluzinationen stehen NICHT im Vordergrund.\nBeginn meist bei Jugendlichen und jungen Erwachsenen (15-25 Jahre).\nPrognose ungünstiger als bei paranoider Form.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F20.2 – Katatone Schizophrenie:\nPsychomotorische Störungen stehen im Vordergrund.\nStupor ↔ Erregung im Wechsel, Flexibilitas cerea (wächserne Biegsamkeit), Katalepsie (Erstarrung), Befehlsautomatie, Negativismus, Mutismus, Echolalie, Haltungs-, Bewegungs- und Sprachstereotypien.\nDie paranoide Form ist häufiger als die katatone.\nKatatone Symptome sind NICHT schizophreniespezifisch – sie kommen auch bei organischen, affektiven und substanzbedingten Störungen vor.',
    tags: ['F2 – Schizophrenie', 'Psychopathologie'],
  ),
  Flashcard(
    text:
        'Perniziöse (febrile) Katatonie – Notfall:\nLebensbedrohliche Extremform der Katatonie: rascher Wechsel von Stupor und heftiger Erregung, dazu hohes Fieber, Herzrasen, Kreislaufstörungen und Austrocknung.\nDer Muskelzerfall (CK erhöht) kann zu akutem Nierenversagen führen.\nTherapie: intensivmedizinisch, hochdosiert Lorazepam; die Elektrokonvulsionstherapie (EKT) kann lebensrettend sein.\nAbgrenzung: Malignes neuroleptisches Syndrom – durch Antipsychotika ausgelöst, die dann abgesetzt werden müssen (siehe Psychopharmaka).',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F20.4 – Postschizophrene Depression:\nDepressive Episode (mind. 2 Wochen), die innerhalb von 12 Monaten nach einer schizophrenen Erkrankung auftritt.\nEinzelne schizophrene Symptome bestehen noch, prägen das Bild aber nicht mehr.\nDeutlich erhöhtes Suizidrisiko!\nAbgrenzung: Schizophrenes Residuum (F20.5) = anhaltende Negativsymptomatik, KEINE depressive Episode. Auch Negativsymptome und Nebenwirkungen von Antipsychotika können eine Depression vortäuschen.',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F20.5 – Schizophrenes Residuum:\nChronische Negativsymptomatik über mind. 12 Monate nach mind. einer eindeutigen schizophrenen Episode.\nPsychomotorische Verlangsamung, Affektverflachung, Passivität mit Initiativemangel, Sprachverarmung, Vernachlässigung der Körperpflege.\nPositivsymptome sind abgeklungen oder deutlich reduziert.\nAkustische Halluzinationen wären Positivsymptome, keine typischen Residualsymptome.\nAbgrenzung: Demenz und chronische Depression ausschließen. Ein Residuum ist nicht zwangsläufig irreversibel.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F20.6 – Schizophrenia simplex:\nSchleichender Beginn ohne akute psychotische Episode.\nNegativsymptome ohne vorhergehende Positivsymptome.\nZunehmender sozialer Rückzug, Antriebsarmut, Leistungsabfall.\nSchwierige Diagnose wegen fehlender dramatischer Symptomatik.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F21 – Schizotype Störung:\nExzentrisches Verhalten, magisches Denken, kaltes/unnahbares Auftreten, Misstrauen, umständliches Denken und Sprechen, sozialer Rückzug.\nMind. 3 Merkmale über mind. 2 Jahre; die Kriterien einer Schizophrenie waren NIE erfüllt.\nKEINE anhaltende Psychose – nur gelegentliche, vorübergehende quasipsychotische Episoden (Illusionen, Halluzinationen, wahnähnliche Ideen) sind möglich.\nIn der ICD-10 bei F2 (Schizophrenie-Spektrum), im DSM als Persönlichkeitsstörung.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F22 – Anhaltende wahnhafte Störung:\nLang anhaltender Wahn (einzelne Wahnidee oder Wahnsystem) über mind. 3 Monate als einziges oder auffälligstes Symptom.\nThemen: Verfolgung, Eifersucht, Querulanz, Größe, Krankheit, entstellter Körper.\nPersönlichkeit und Funktionsfähigkeit sind außerhalb des Wahnthemas weitgehend erhalten.\nAbgrenzung zur Schizophrenie: kein bizarrer Wahn, keine anhaltenden schizophrenietypischen Halluzinationen (flüchtige, olfaktorische oder taktile sind möglich), keine formalen Denkstörungen, keine Negativsymptome.\nBeginn meist im mittleren bis höheren Alter.',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F23 – Akute vorübergehende psychotische Störung:\nAkuter Beginn innerhalb von 2 Wochen (oft abrupt binnen 48 Stunden), ohne Prodromalphase.\nPolymorphes, rasch wechselndes Bild (F23.0/F23.1) oder stabile schizophrene Symptomatik (F23.2).\nVollständige Remission meist innerhalb weniger Wochen.\nEine akute Belastung geht oft voraus, ist aber nicht Voraussetzung.\nAbgrenzung: Schizophrene Symptome länger als 1 Monat → Schizophrenie; F23.0 länger als 3 Monate → Diagnose ändern (z.B. F22).',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'F25 – Schizoaffektive Störung:\nIn DERSELBEN Episode eindeutig schizophrene UND eindeutig affektive (manische oder depressive) Symptome, gleichzeitig oder nur wenige Tage versetzt.\nUnterformen: schizomanisch (F25.0), schizodepressiv (F25.1), gemischt (F25.2).\nAbgrenzung: Bei Schizophrenie können depressive Symptome auftreten, dominieren aber nicht; Depression NACH der Episode = F20.4. Affektive Psychosen zeigen keine Ich-Störungen, keinen bizarren Wahn, keine dialogischen Stimmen.\nPrognose besser als bei Schizophrenie, schlechter als bei affektiven Störungen.',
    tags: ['F2 – Schizophrenie', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Prodromalphase der Schizophrenie:\nUnspezifische Symptome vor der akuten Phase – Interessenverlust, sozialer Rückzug, Vernachlässigung der Hygiene, depressive Verstimmung.\nSie kann Monate bis Jahre dauern und wird oft erst im Rückblick erkannt.\nEin ausgestaltetes Wahnsystem gehört zur aktiven Krankheitsphase, NICHT zur Prodromalphase.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Verlauf und Prognose der Schizophrenie:\nDrittelregel: ca. ⅓ Heilung oder nur leichte Residuen, ⅓ Rückfälle mit mittelschweren Residuen, ⅓ schwere Residuen bzw. chronischer Verlauf.\nGünstig: Weibliches Geschlecht, akuter Beginn, erkennbarer Auslöser, affektive Symptome, gute prämorbide Anpassung.\nUngünstig: Schleichender Beginn, männliches Geschlecht, Negativsymptomatik, Cannabiskonsum, familiäre Belastung, „High Expressed Emotions“ in der Familie.\nMänner erkranken im Schnitt früher (20-25 J) als Frauen (25-30 J).\nLebenszeitrisiko ca. 1 %, Suizidrate ca. 5–10 %.',
    tags: ['F2 – Schizophrenie'],
  ),
  Flashcard(
    text:
        'Schizophrenie – Antipsychotika und Rezidivprophylaxe:\nAntipsychotika sind zentraler Bestandteil der Akuttherapie; Positivsymptome sprechen rasch an, Negativsymptome schlechter.\nErhaltungstherapie nach Ersterkrankung mind. 1 Jahr, nach einem Rezidiv 2–5 Jahre, bei häufigen Rückfällen länger.\nNIE abrupt absetzen: Absetzen verdoppelt etwa das Rückfallrisiko im 1. Jahr. Häufigster Rückfallgrund ist unregelmäßige Einnahme → ggf. Depotpräparat.\nFrühwarnzeichen (Schlafstörung, Unruhe, Nervosität, Rückzug) kennen und im Krisenplan festhalten.\nNebenwirkungen: siehe Psychopharmaka.',
    tags: ['F2 – Schizophrenie', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Schizophrenie – Psychotherapie und Rolle des HPP:\nSupportiv statt aufdeckend: Psychoanalyse und andere aufdeckende Verfahren sowie Entspannungsverfahren wie autogenes Training sind bei akuter Psychose kontraindiziert.\nWirksam: Psychoedukation (auch in Gruppen, mit Angehörigen), KVT, Training sozialer Fertigkeiten, Familienintervention zur Senkung von „High Expressed Emotions“ (Kritik, Feindseligkeit, Überbehütung).\nPsycho- und Soziotherapie ergänzen die Medikation, ersetzen sie aber NICHT.\nDie akute Schizophrenie gehört in fachärztliche, oft stationäre Behandlung – nicht in die HP-Praxis.',
    tags: ['F2 – Schizophrenie', 'Therapieverfahren'],
  ),

  // ============================================================
  // TEIL 6: F3 – AFFEKTIVE STÖRUNGEN
  // ============================================================
  Flashcard(
    text:
        'F30 – Manische Episode:\nGehobene, expansive oder gereizte Stimmung über mind. 1 Woche (Hypomanie: mind. einige Tage, leichter, ohne Psychose).\nDazu mind. 3 weitere Symptome (bei nur gereizter Stimmung 4): Antriebssteigerung, vermindertes Schlafbedürfnis, Rededrang, Ideenflucht/Gedankenrasen, Ablenkbarkeit, Größenideen, Enthemmung, leichtsinnige Geldausgaben, gesteigerte Libido.\nF30.0 Hypomanie, F30.1 Manie ohne, F30.2 mit psychotischen Symptomen (Wahn meist stimmungskongruent: Größenwahn).\nIdeenflucht bleibt nachvollziehbar – Zerfahrenheit spricht für Schizophrenie.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Manie – Krankheitseinsicht und Umgang:\nManische Patienten fühlen sich gesund (ich-synton) und lehnen Behandlung oft ab; wegen Selbst- oder Fremdgefährdung ist häufig eine Unterbringung nötig.\nIn der Manie besteht oft Geschäfts- und Schuldunfähigkeit (z.B. ruinöse Käufe, Verträge).\nUmgang: ruhig, klar, konsequent; nicht provozieren, nicht über Wahninhalte streiten; Reize abschirmen.\nVorher abklären: Stimulanzien, Kortison, Stirnhirnprozesse, Hyperthyreose.\nNach der Episode drohen Scham, Schulden und Depression → Suizidgefahr.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'F31 – Bipolare affektive Störung – Episodentypen:\nMind. 2 Episoden, davon mind. eine manisch, hypomanisch oder gemischt; auch rein wiederkehrende Manien werden als bipolar codiert.\nEpisoden: manisch, hypomanisch (leichter, ohne Psychose), depressiv, gemischt (F31.6 = manische und depressive Symptome gleichzeitig oder rasch wechselnd).\nPsychotische Symptome sind in beiden Polen möglich.\nDepressive Phasen überwiegen zeitlich.\nBeginn früher als bei unipolarer Depression (meist 20.–30. Lj.); beide Geschlechter etwa gleich betroffen.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Bipolare Störung – Verlauf und Prophylaxe:\nDas Rezidivrisiko ist sehr hoch, deshalb ist eine Phasenprophylaxe (z.B. Lithium, siehe Psychopharmaka) zu erwägen – eine Behandlung nur in der Akutphase reicht nicht.\nRapid Cycling = mindestens vier affektive Episoden pro Jahr, unabhängig von deren Polarität.\nDepressive Episoden dauern in der Regel länger als manische; manische Episoden beginnen meist abrupt.\nAntidepressiva allein können einen Umschwung in die Manie auslösen.\nMerke: Bei jeder Depression nach früheren Hochphasen fragen – das entscheidet über unipolar oder bipolar.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'F32 – Depressive Episode:\n3 Hauptsymptome: (1) Gedrückte Stimmung, (2) Interessenverlust/Freudlosigkeit, (3) Antriebsminderung mit erhöhter Ermüdbarkeit.\nZusatzsymptome: Konzentration↓, Selbstwert↓, Schuldgefühle, Zukunftspessimismus, Suizidgedanken, Schlafstörung, Appetitveränderung.\nDauer: mind. 2 Wochen (bei sehr schweren, rasch einsetzenden Episoden auch kürzer).\nPrüfungsfalle: Schlaf- und Appetitstörung sind Zusatz-, KEINE Hauptsymptome.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Schweregrade der Depression:\nLeicht (F32.0) = 2 Hauptsymptome + 2 Zusatzsymptome.\nMittel (F32.1) = 2 Hauptsymptome + 3-4 Zusatzsymptome.\nSchwer (F32.2) = 3 Hauptsymptome + ≥4 Zusatzsymptome.\nSchwer mit psychotischen Symptomen (F32.3) = zusätzlich Wahn und/oder Halluzinationen (z.B. Verarmungswahn, nihilistischer Wahn); hier kann zusätzlich ein Neuroleptikum erforderlich sein.\nMerke: Psychotische Symptome → immer schwere Episode.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Somatisches Syndrom bei Depression (ICD-10):\nMind. 4 von: Interessen- oder Freudverlust, fehlende emotionale Reaktion auf Erfreuliches, frühes Erwachen (2+ Stunden vor üblicher Zeit), Morgentief, psychomotorische Hemmung oder Agitiertheit, deutlicher Appetitverlust, Gewichtsverlust (>5 % im letzten Monat), Libidoverlust.\nEntspricht etwa der früheren „endogenen“ Depression; bei der schweren Episode praktisch immer vorhanden.\nPrüfungsfalle: Schuldgefühle, Konzentrationsstörung und Suizidgedanken gehören NICHT dazu.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'F33 – Rezidivierende depressive Störung:\nWiederholte depressive Episoden OHNE eigenständige manische oder hypomanische Episode in der Vorgeschichte.\nAbgrenzung zu bipolar: Tritt auch nur EINE manische/hypomanische Episode auf, wird bipolar diagnostiziert – dieses Risiko bleibt lebenslang bestehen.\nAusnahme: Eine kurze Hypomanie direkt nach einer depressiven Episode (z.B. durch Antidepressiva ausgelöst) ist mit F33 vereinbar.\nUnipolare Verläufe sind häufiger als bipolare (ca. 65 % vs. 30 %, rein manisch ca. 5 %).',
    tags: ['F3 – Affektive Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F34 – Anhaltende affektive Störungen:\nF34.1 Dysthymia: chronische, eher leichte depressive Verstimmung über mind. 2 Jahre, zu leicht für F33; keine klaren Episoden, der Alltag wird meist bewältigt.\nF34.0 Zyklothymia: anhaltende Stimmungsinstabilität mit Phasen leicht gedrückter und leicht gehobener Stimmung über mind. 2 Jahre, zu leicht für F31.\nAbgrenzung: Depressive Episode = episodisch, schwerer, klarer Beginn und Ende.\nPrüfungsfalle: Bei Dysthymia wechseln KEINE manischen Phasen. „Zyklothymie“ war früher auch ein Name für die bipolare Störung.',
    tags: ['F3 – Affektive Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Depressive Episode – Behandlung und Zuständigkeit:\nVor jeder Behandlung organische Ursachen ärztlich abklären lassen.\nLeichte Episode, Dysthymia, Zyklothymia: Psychotherapie kann allein ausreichen; der HPP darf nach ärztlicher Abklärung behandeln.\nMittelgradige und schwere Episode: fachärztliche Behandlung; bei schwerer Depression ist die Kombination aus Antidepressivum und Psychotherapie leitliniengerecht.\nSchwer mit Suizidalität oder psychotischen Symptomen → meist stationär.\nErgänzend: Wach-, Licht- und Elektrokonvulsionstherapie (siehe biologische Verfahren).',
    tags: ['F3 – Affektive Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Psychische Störungen im Wochenbett:\n„Baby Blues“ (Heultage): häufig, meist 3.–5. Tag nach der Geburt, klingt in Tagen von selbst ab – keine Behandlung nötig.\nWochenbettdepression (postpartale Depression): kann schon Stunden nach der Entbindung beginnen; Suizidgedanken gehören NICHT zum Baby Blues. Meist günstige Prognose; bei schwerer Form Antidepressivum. Mutter und Kind NICHT trennen.\nHPP nur bei leichter Form nach ärztlicher Abklärung; mittelgradig, schwer oder suizidal → Facharzt.\nWochenbettpsychose = Notfall (Suizid, erweiterter Suizid) → sofort ärztlich.',
    tags: ['F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Larvierte (maskierte) Depression:\nKörperliche Beschwerden wie Erschöpfung, Kopf- und Rückenschmerzen, Obstipation oder Herzbeschwerden stehen so im Vordergrund, dass die depressive Kernsymptomatik verdeckt wird.\nBesonders häufig bei älteren Patienten und in der hausärztlichen Praxis.\nHinweise gezielt erfragen: Schlafstörungen (Früherwachen), Morgentief, Freud- und Antriebsverlust; organische Ursachen ärztlich ausschließen.\nAbgrenzung zur depressiven Pseudodemenz: siehe F0 (Demenz vs. Depression).',
    tags: ['F3 – Affektive Störungen', 'Differentialdiagnosen'],
  ),

  // ============================================================
  // TEIL 7: SUIZIDALITÄT
  // ============================================================
  Flashcard(
    text:
        'Suizidalität – Epidemiologie:\nIn Deutschland ca. 10.000 Suizide pro Jahr (mehr als Verkehrstote), seit 1980 deutlich gesunken; Suizidversuche sind 10- bis 100-mal häufiger.\nVollendete Suizide: etwa drei Viertel Männer, v.a. „harte“ Methoden (Erhängen, Sturz, Erschießen). Suizidversuche: häufiger Frauen, eher „weiche“ Methoden (Medikamente).\nDie Rate steigt mit dem Alter – Hochrisikogruppe sind ältere, alleinstehende Männer. Bei Jugendlichen ist Suizid eine der häufigsten Todesursachen.\nBei ca. 90 % liegt eine psychische Erkrankung vor: Depression (ca. 40–70 %), Sucht (ca. 20 %), Schizophrenie (ca. 10 %).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Suizidalität – Risikofaktoren und Prävention:\nStärkster Einzelprädiktor ist ein früherer Suizidversuch (Wiederholung v.a. im 1. Jahr); besonders gefährlich ist auch die Zeit direkt nach Klinikentlassung.\nWeitere: Suizide in Familie/Umfeld, Einsamkeit, Trennung/Verwitwung, chronische körperliche Krankheit, Sucht, Wahn, imperative Stimmen (Schizophrenie), Persönlichkeitsstörungen, Anorexie.\nVerhältnisprävention verändert die Umstände (Brückengeländer, Fangnetze), Verhaltensprävention das individuelle Verhalten (Aufklärung).\nNicht jeder Suizid geht auf eine psychische Krankheit zurück (Bilanzsuizid, selten).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Suizidalität – Stufen und Einschätzung:\nTypische Steigerung: passiver Todeswunsch → Suizidgedanken → konkreter Plan → Vorbereitungen/Abschied → Suizidhandlung. Je konkreter, desto größer die Gefahr.\nDie meisten Suizidenten kündigen den Suizid vorher an (ca. 75–80 %) – jede Ankündigung ernst nehmen.\nSuizidalität immer offen und konkret erfragen; das Ansprechen erhöht das Risiko NICHT, sondern entlastet.\nBegriffe: Parasuizid = Handlung ohne primäre Tötungsabsicht (Appell); erweiterter Suizid = vorher werden Angehörige getötet (z.B. bei wahnhafter Depression).',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Suizidalität – Stufen nach Pöldinger:\n1. Erwägungsphase (Suizid wird als Möglichkeit erwogen).\n2. Ambivalenzphase (Schwanken zwischen Leben und Tod; Hilferufe und Ankündigungen – hier greift Krisenintervention am besten).\n3. Entschlussphase (Patient hat sich entschieden, wirkt oft "ruhiger").\nMerke: „EAE“ – Erwägung, Ambivalenz, Entschluss.\nDie scheinbare Ruhe in Phase 3 ist besonders gefährlich!\nAbgrenzung: Einengung und Aggressionsumkehr gehören zu Ringel, NICHT zu Pöldinger.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Präsuizidales Syndrom nach Ringel:\n1. Einengung – situativ, sozial, im Fühlen, Denken und in den Werten; der Suizid scheint der einzige Ausweg.\n2. Aggressionsumkehr – gehemmte Aggression richtet sich gegen die eigene Person.\n3. Suizidfantasien – zunächst gesucht, später sich aufdrängend.\nHäufiges Warnzeichen, aber NICHT obligat (z.B. Kurzschlusshandlungen).\nPrüfungsfalle: Realitätsverkennung, Gedankenentzug, Fremdaggression oder Verschenken von Eigentum gehören NICHT zur Ringel-Trias.',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'Suizidalität bei Beginn einer Antidepressiva-Therapie:\nIn den ersten Wochen erhöhte Suizidgefahr: Der Antrieb steigt (nach Tagen) vor der Stimmungsaufhellung (nach ca. 1–3 Wochen).\nMerkhilfe für trizyklische Antidepressiva: 1. sedierend → 2. antriebssteigernd → 3. stimmungsaufhellend. Gilt NICHT für alle Antidepressiva – SSRI machen anfangs eher unruhig.\nDeshalb engmaschig begleiten; ggf. ärztlich eine vorübergehend beruhigende Begleitmedikation.\nDepressive MÜSSEN direkt auf Suizidgedanken angesprochen werden.',
    tags: ['F3 – Affektive Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Akute Suizidalität – richtiges Vorgehen:\nAkute Suizidalität = NOTFALL. Der Patient darf nicht mehr alleine gelassen werden.\nNach Hause entlassen bei konkreten Suizidabsichten ist kontraindiziert – begleitet (Angehörige, Rettungsdienst) in die psychiatrische Klinik bringen.\nStationär v.a. bei konkreten Plänen oder Vorbereitungen, fehlender Absprache- und Distanzierungsfähigkeit, psychotischen Symptomen.\nFreiwillige Aufnahme anstreben, sonst Unterbringung nach PsychKG (Ablauf siehe Recht).\nHopfen/Baldrian sind inadäquat.',
    tags: ['Psychopathologie', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Nicht akute Suizidalität – Vorgehen und Antisuizidvertrag:\nAuch passive oder latente Suizidgedanken erfordern therapeutische Aufmerksamkeit, aber KEINE sofortige Unterbringung.\nEngmaschige feste Termine, Krisenplan, Notfallnummern, Bezugspersonen einbeziehen; Risiko fortlaufend neu einschätzen.\nAntisuizidvertrag (Non-Suizid-Vertrag): Nutzen umstritten – nur ergänzend bei nicht akuter Suizidalität, über kurze, überschaubare Zeiträume; ersetzt keine Risikoeinschätzung.\nDie bloße Äußerung von Suizidgedanken rechtfertigt keinen Bruch der Schweigepflicht – erst eine akute, konkrete Gefahr.',
    tags: ['Psychopathologie', 'Therapieverfahren'],
  ),

  // ============================================================
  // TEIL 8: F4 – NEUROTISCHE, BELASTUNGS- UND SOMATOFORME STÖRUNGEN
  // ============================================================
  Flashcard(
    text:
        'Zur ICD-10-Kategorie F4 gehören:\nAngststörungen (F40-F41), Zwangsstörungen (F42), Belastungs-/Anpassungsstörungen (F43), dissoziative Störungen (F44), somatoforme Störungen (F45).\nDazu F48 – sonstige neurotische Störungen (Neurasthenie, Depersonalisations-/Derealisationssyndrom).\nNICHT dazu gehören: Schizophrenien (F2), Depressionen (F3), Persönlichkeitsstörungen (F6).',
    tags: ['F4 – Neurotische Störungen', 'ICD-10 Grundlagen'],
  ),
  Flashcard(
    text:
        'F40.0 – Agoraphobie:\nAngst vor Menschenmengen, öffentlichen Plätzen, Reisen, Situationen ohne Fluchtmöglichkeit.\nTypisches Vermeidungsverhalten.\nF40.00 = ohne Panikstörung (auch reine Vermeidung ohne Panikattacken möglich), F40.01 = mit Panikstörung (häufige Kombination). Panikstörung allein = F41.0.\nAbgrenzung: Soziale Phobie = Angst vor Bewertung.\nSpezifische Phobie = Angst vor einzelnem Objekt/Situation.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F40.1 – Soziale Phobien:\nAngst vor kritischer Bewertung durch andere in sozialen Situationen (z.B. Sprechen, Essen vor anderen, Blickkontakt).\nSymptome: Erröten, Zittern, Übelkeit, Harndrang, Angst zu erbrechen – bis hin zu Panikattacken.\nVermeidungsverhalten; aufrechterhaltend wirken erhöhte Selbstaufmerksamkeit und Sicherheitsverhalten.\nBeginn meist in der Jugend, selten nach dem 25. LJ; unbehandelt oft chronisch.\nErhöhtes Risiko für Substanzmissbrauch. Niedriges Selbstwertgefühl.\nSymptome treten nur in Gesellschaft auf, nicht allein.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F40.2 – Spezifische (isolierte) Phobien:\nIsolierte Angst vor einem bestimmten Objekt oder einer Situation (z.B. Tiere, Höhe, Blut, Fliegen, enge Räume, Prüfungen).\nBetroffene wissen, dass ihre Angst übertrieben ist.\nBehandlung der Wahl: Expositionstherapie (z.B. systematische Desensibilisierung, Flooding – Methodik siehe Karte Exposition).',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F41.0 – Panikstörung:\nWiederkehrende, unerwartete Panikattacken, NICHT an bestimmte Situationen gebunden.\nAbrupt beginnend, Maximum nach wenigen Minuten, begleitet von vegetativen Symptomen (Herzrasen, Schwitzen, Zittern, Schwindel).\nOft Todesangst oder Angst, die Kontrolle zu verlieren.\nDepersonalisation/Derealisation können auftreten.\nErwartungsangst ("Angst vor der Angst").\nBewusstsein bleibt klar!',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F41.1 – Generalisierte Angststörung (GAD):\nFrei flottierende, anhaltende Angst und Sorgen über ≥6 Monate, meist um alltägliche Dinge.\nNicht an bestimmte Situationen gebunden.\nMultiple Symptome: Muskelanspannung, Schwitzen, Benommenheit, Reizbarkeit.\nPanikstörung vs. GAD: Panik = episodisch, attackenartig.\nGAD = anhaltend, frei flottierend.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Therapie bei Angststörungen:\nSpezifische Phobie → Exposition in vivo.\nPanikstörung/Agoraphobie → KVT mit Psychoedukation (Teufelskreis der Angst) und Exposition, auch interozeptiv (gegenüber den eigenen Körpersymptomen).\nGAD → Sorgenexposition (Exposition in sensu).\nSoziale Phobie → KVT + soziales Kompetenztraining.\nBei allen: Vor Therapie somatische Abklärung notwendig.',
    tags: ['Therapieverfahren', 'F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F42 – Zwangsstörung:\nZwangsgedanken und/oder Zwangshandlungen; meist beides gemischt (F42.2).\nZwangsgedanken: wiederkehrend, stereotyp, als quälend empfunden, können aggressiver Natur sein. Formen: Zwangsbefürchtungen, Zwangsimpulse, Grübelzwang.\nAggressive Zwangsimpulse werden typischerweise NICHT in die Tat umgesetzt.\nHäufigste Formen: Kontroll-, Wasch- und Zählzwänge.\nICH-DYSTON: Patient erkennt die Unsinnigkeit, kann aber nicht aufhören.\nTendenz zur Generalisierung.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Zwangsstörung – Diagnose, Verlauf, Therapie:\nICD-10: an den meisten Tagen über mind. 2 Wochen; Gedanken werden als EIGENE erkannt; gegen mind. ein Symptom wird Widerstand geleistet.\nBeginn meist in Kindheit, Jugend oder frühem Erwachsenenalter, oft schleichend; Frauen und Männer etwa gleich häufig.\nErstauftreten nach dem 40. LJ → organische Ursache ausschließen.\nVerlauf oft chronisch, selten Spontanremission; aus Scham lange verheimlicht → gezielt nachfragen.\nHäufigste Komorbidität: Depression, dazu Angststörungen.\nTherapie: KVT mit Exposition und Reaktionsverhinderung, ggf. SSRI oder Clomipramin.',
    tags: ['F4 – Neurotische Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Zwang – Abgrenzungen:\nZwang vs. Wahn: Der Zwangskranke weiß, dass seine Befürchtungen übertrieben sind; der Wahnkranke ist unkorrigierbar überzeugt.\nZwang vs. Ich-Störung: Zwangsgedanken sind eigene Gedanken, nicht von außen eingegeben.\nZwang vs. anankastische PS (F60.5): Die PS hat keine echten Zwangsgedanken oder -handlungen und wird als Teil der Persönlichkeit erlebt.\nZwangssymptome kommen auch bei Depression, Schizophrenie und Demenz vor.\nMerke: Zwang = ich-dyston, Wahn und PS = ich-synton (siehe Karte ich-synton/ich-dyston).',
    tags: ['Differentialdiagnosen', 'F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Messie-Syndrom (pathologisches Horten):\nAnhäufen und Sammeln wertloser oder verbrauchter Dinge in der EIGENEN Wohnung, häufig begleitet von Zwangssymptomen.\nAus Scham reagieren die Betroffenen typischerweise mit sozialem Rückzug und vermeiden Besuch.\nBetroffen sind überwiegend Erwachsene, die Symptomatik nimmt mit dem Alter zu – nicht Kinder und Jugendliche.\nICD-11: eigene Diagnose (zwanghaftes Horten) im Zwangsspektrum.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F43.0 – Akute Belastungsreaktion:\nUnmittelbare Reaktion eines zuvor psychisch Gesunden auf ein Trauma oder eine außergewöhnliche Belastung.\nBeginn innerhalb von Minuten, klingt innerhalb von Stunden bis wenigen Tagen ab (meist nach 2–3 Tagen).\nSymptome: zuerst Betäubungsgefühl, eingeengtes Bewusstsein, Desorientiertheit, vegetative Zeichen; danach wechselnd Angst, Verzweiflung, Überaktivität oder Rückzug; oft Teilamnesie.\nHilfe: nicht allein lassen, beruhigen, abschirmen; Beruhigungsmittel nur zurückhaltend.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F43.1 – PTBS (Posttraumatische Belastungsstörung):\nNach einem Ereignis von außergewöhnlicher Bedrohung oder katastrophalem Ausmaß (selbst erlebt oder als Zeuge).\nBeginn mit Latenz von Wochen bis Monaten – innerhalb von 6 Monaten nach dem Trauma.\nPTBS-Trias: (1) Wiedererleben/Intrusionen (Flashbacks, Albträume), (2) Vermeidung von Triggern, (3) Übererregung/Hyperarousal.\nAußerdem häufig: emotionale Abstumpfung, Rückzug, Teilamnesie, Depersonalisation/Derealisation.\nOft komorbid Depression und Sucht (erschwert die Diagnose); Suizidrisiko erhöht.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'PTBS – Therapieansatz:\nMittel der Wahl: traumafokussierte Psychotherapie (traumafokussierte KVT mit Exposition, EMDR); sie wirkt besser als Medikamente.\nVoraussetzung für die Traumakonfrontation: ausreichende Stabilität, tragfähige Beziehung, sichere Lebenssituation.\nEine eigene Stabilisierungsphase wird nur bei erheblicher Instabilität vorgeschaltet (z.B. Substanzkonsum, gestörte Affektregulation, Dissoziation) – NICHT routinemäßig.\nUnvorbereitete, zu frühe Konfrontation und Debriefing direkt nach dem Trauma können schaden (Retraumatisierung).\nBenzodiazepine vermeiden.',
    tags: ['F4 – Neurotische Störungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'F43.2 – Anpassungsstörung:\nReaktion auf ein belastendes Lebensereignis oder eine Lebensveränderung (muss KEIN schweres Trauma sein, z.B. Trennung, Umzug, Krankheit).\nBeginn innerhalb von 1 Monat nach Belastung, Dauer max. 6 Monate.\nAusnahme: F43.21 längere depressive Reaktion – bis zu 2 Jahre.\nSymptome: depressive Stimmung, Angst, Sorgen, Überforderung; bei Jugendlichen auch Störung des Sozialverhaltens. Suizidalität beachten.\nDie abnorme (pathologische) Trauerreaktion gehört hierher; normale Trauer ist keine Störung.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Akute Belastungsreaktion vs. Anpassungsstörung vs. PTBS:\nAkute Belastungsreaktion = sofort (Minuten), klingt in Stunden bis ca. 2–3 Tagen ab.\nAnpassungsstörung = nach beliebigem, nicht katastrophalem Lebensereignis, Beginn innerhalb 1 Monat, max. 6 Monate (F43.21 bis 2 Jahre), keine Flashbacks.\nPTBS = nach schwerem Trauma, Latenz Wochen-Monate (Beginn innerhalb 6 Monaten), Flashbacks + Vermeidung + Hyperarousal.',
    tags: ['Differentialdiagnosen', 'F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F44 – Dissoziative Störungen [Konversionsstörungen]:\n„Konversionsstörung“ ist in der ICD-10 ein Synonym für die ganze Gruppe F44.\nF44.0 Amnesie, F44.1 Fugue, F44.2 Stupor, F44.3 Trance- und Besessenheitszustände, F44.4 Bewegungsstörungen, F44.5 Krampfanfälle, F44.6 Sensibilitäts- und Empfindungsstörungen, F44.80 Ganser-Syndrom, F44.81 multiple Persönlichkeitsstörung.\nKeine hirnorganische Ursache!\nDas Depersonalisations-/Derealisationssyndrom gehört NICHT zu F44, sondern zu F48.1.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Dissoziative Fugue:\nPlötzliches, unerwartetes Wegreisen von zu Hause mit Unfähigkeit, sich an die eigene Vergangenheit zu erinnern, bei äußerlich geordnetem Verhalten.\nDissoziative Amnesie: Charakteristisch ist eine partielle oder vollständige Amnesie für belastende Ereignisse bei gleichzeitigem Fehlen hirnorganischer Störungen.\nDie Amnesie ist meist reversibel; eine bewusste Simulation ist oft schwer auszuschließen.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Dissoziative Konversionsstörungen im Detail:\nNeurologisch anmutende Symptome ohne organischen Befund – Lähmungen, Gangstörungen, Krampfanfälle, Sensibilitätsstörungen, Blindheit, Taubheit.\nSensibilitätsausfälle halten sich NICHT an die Versorgungsgebiete der Nerven (Dermatome).\nDissoziative Anfälle: meist kein echter Bewusstseinsverlust, selten Zungenbiss, Einnässen oder Sturzverletzungen.\nDissoziativer Stupor = Bewegungslosigkeit ohne organische Ursache.\nAlle dissoziativen Störungen: Keine hirnorganische Ursache nachweisbar.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Dissoziative Störungen – Merkmale und Verlauf:\nFrauen häufiger betroffen (ca. 3:1); Beginn meist in Jugend oder jungem Erwachsenenalter.\nEnger zeitlicher Zusammenhang mit belastenden Ereignissen oder Konflikten.\nBeginn oft plötzlich; häufig spontane Rückbildung nach Wochen bis Monaten; chronische Verläufe möglich, nach über 2 Jahren schwer beeinflussbar.\nDiagnose erst nach gründlicher neurologischer und internistischer Abklärung.\nTherapie: Symptome nie als eingebildet abtun, schrittweise Einsicht in seelische Zusammenhänge fördern.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Krankheitsgewinn:\nPrimärer Krankheitsgewinn = innerpsychischer Gewinn (z.B. Angstreduktion durch Symptombildung).\nSekundärer Krankheitsgewinn = äußere Vorteile aus der Krankenrolle (Zuwendung, Entlastung, Berentung).\nSekundärer Krankheitsgewinn ist oft unbewusst.\nBewusstes Täuschen wäre Simulation!',
    tags: ['Psychopathologie'],
  ),
  Flashcard(
    text:
        'F45 – Somatoforme Störungen (Überblick):\nKörperliche Beschwerden ohne ausreichenden organischen Befund; trotz negativer Befunde werden weitere Untersuchungen gefordert (Doctor-Hopping).\nF45.0 Somatisierungsstörung, F45.1 undifferenzierte Somatisierungsstörung, F45.2 hypochondrische Störung, F45.3 somatoforme autonome Funktionsstörung, F45.4 anhaltende Schmerzstörung.\nF45.4: mind. 6 Monate quälender Schmerz, verbunden mit emotionalen oder psychosozialen Konflikten.\nPatienten gehen zuerst zu Hausarzt/Internist und sind oft schwer für Psychotherapie zu motivieren; häufig komorbid Depression und Angst, Neigung zur Chronifizierung.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F45.0 – Somatisierungsstörung:\nMind. 2 Jahre multiple, wechselnde körperliche Beschwerden ohne ausreichenden organischen Befund (mind. 6 Symptome aus mind. 2 Organbereichen).\nHartnäckige Weigerung, die ärztliche Versicherung anzunehmen, dass keine körperliche Ursache vorliegt.\nBeginn meist im frühen Erwachsenenalter, häufiger bei Frauen („Beginn vor 30“ ist ein DSM-IV-Kriterium, KEIN ICD-10-Kriterium).\nErhöhtes Risiko für Medikamentenmissbrauch durch häufige Arztbesuche.\nWichtig: Biopsychosoziales Störungsmodell erarbeiten.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'F45.2 – Hypochondrische Störung:\nMind. 6 Monate anhaltende Überzeugung oder Angst, an einer bestimmten schweren Krankheit zu leiden (z.B. Krebs, AIDS).\nNormale Körperempfindungen werden als Krankheitszeichen fehlgedeutet; unauffällige Befunde beruhigen nur kurz.\nTypisch: Checking (z.B. Abtasten) und Rückversicherung bei Ärzten und Angehörigen.\nAuch die körperdysmorphe Störung (sich ohne Grund entstellt fühlen) gehört hierher – NICHT zu den Essstörungen.\nAbgrenzung: Somatisierung = Fokus auf Symptome, Hypochondrie = Fokus auf eine Diagnose.\nICD-11: Hypochondrie und körperdysmorphe Störung im Zwangsspektrum.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F45.3 – Somatoforme autonome Funktionsstörung:\nVegetative Symptome (Herzklopfen, Schwitzen, Erröten, Zittern), die der Patient einem bestimmten, vegetativ versorgten Organsystem zuschreibt.\nKardiovaskulär (F45.30) = Da-Costa-Syndrom/Herzneurose; unterer Magen-Darm-Trakt (F45.32) = Reizdarmsyndrom; respiratorisch (F45.33) = Hyperventilationssyndrom; auch oberer Magen-Darm-Trakt und Urogenitalsystem.\nIm Gegensatz zur Somatisierungsstörung meist nur EIN Organsystem.\nTypisch: häufige Notarzt- oder Notaufnahme-Besuche.',
    tags: ['F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Somatoforme Störungen – Therapieprinzipien:\nBeschwerden ernst nehmen, tragfähige Beziehung aufbauen.\nRegelmäßige, feste Termine – unabhängig von aktuellen Beschwerden.\nKEINE wiederholte somatische Diagnostik (verstärkt das Krankheitsverhalten).\nGemeinsam ein biopsychosoziales Störungsmodell erarbeiten; Angehörige einbeziehen.\nChecking und Rückversicherung abbauen, Aktivierung statt Schonung; Entspannung und Stressbewältigung helfen.\nMedikamente: ggf. Antidepressiva; Neuroleptika sind NICHT Mittel der Wahl, Schmerz- und Beruhigungsmittel zurückhaltend (Abhängigkeit).',
    tags: ['Therapieverfahren', 'F4 – Neurotische Störungen'],
  ),
  Flashcard(
    text:
        'Psychosomatosen – „Holy Seven“ nach Alexander:\nKörperliche Krankheiten MIT Organbefund, bei deren Entstehung und Verlauf psychische Faktoren mitwirken.\nAsthma bronchiale, essenzielle Hypertonie, Colitis ulcerosa, Ulcus duodeni/ventriculi, rheumatoide Arthritis, Neurodermitis, Hyperthyreose.\nPsychische Faktoren wirken auch z.B. bei Morbus Crohn und Psoriasis mit; heute gilt ein multifaktorielles Modell.\nAbgrenzung: somatoforme Störung = Beschwerden OHNE Organbefund.\nAlexithymie = Unfähigkeit, Gefühle wahrzunehmen und auszudrücken, häufig bei psychosomatisch Kranken.\nEntspannungsverfahren sind z.B. bei Hypertonie und Asthma sinnvoll.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Neurasthenie (F48.0):\nAnhaltende Erschöpfbarkeit und Müdigkeit schon nach geringer geistiger oder körperlicher Anstrengung.\nGehört zu F48 (sonstige neurotische Störungen), NICHT zu den affektiven Störungen.\nAbgrenzung: Überwertige Krankheitsfurcht = Hypochondrie, nicht Neurasthenie.\nFatigue = anhaltende Erschöpfung, häufig bei Krebserkrankungen, durch Ruhe nicht ausreichend gebessert.\nFatigue und Neurasthenie sind NICHT synonym.',
    tags: ['F4 – Neurotische Störungen', 'Differentialdiagnosen'],
  ),

  // ============================================================
  // TEIL 9: F5 – VERHALTENSAUFFÄLLIGKEITEN MIT KÖRPERLICHEN STÖRUNGEN
  // ============================================================
  Flashcard(
    text:
        'F50.0 – Anorexia nervosa:\nBMI ≤17,5 kg/m², selbst herbeigeführter Gewichtsverlust (Fasten, übermäßiger Sport; bei F50.01 auch Erbrechen, Abführmittel), Körperschema-Störung (Betroffene halten sich für zu dick trotz Untergewicht), oft fehlende Krankheitseinsicht.\nAmenorrhö; bei Männern Libido- und Potenzverlust; bei Beginn vor der Pubertät primäre Amenorrhö.\nHöchste Letalität aller psychischen Erkrankungen (langfristig ca. 5–20 %, durch körperliche Komplikationen und Suizid).\nRefeeding-Syndrom als gefährliche Komplikation bei Wiederernährung.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'F50.2 – Bulimia nervosa:\nEssanfälle mit Kontrollverlust (auch geplant möglich) + kompensatorische Maßnahmen (Erbrechen, Laxantien, Diuretika, Schilddrüsenpräparate, Fasten).\nGewicht oft normal. Übertriebene Gewichtssorge.\nTypisch: depressive Symptome.\nIn der Vorgeschichte häufig Anorexia nervosa.\nCa. 90% Frauen betroffen.\nErbrechen/Diuretika → Elektrolytstörungen (Hypokaliämie).\nTherapie der Wahl: KVT.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Binge-Eating-Störung:\nWiederkehrende Essanfälle mit Kontrollverlust und nachfolgenden Schuldgefühlen.\nHäufig Übergewicht.\nIm Gegensatz zur Bulimie werden KEINE gewichtsregulierenden Gegenmaßnahmen eingesetzt.\nEssen erfolgt hastig, oft allein aus Scham, nicht mit Genuss.\nIn der ICD-10 keine eigene Kategorie (eigenständig erst in DSM-5 und ICD-11).',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Anorexia nervosa vs. Bulimia nervosa:\nAnorexia: BMI ≤17,5, Untergewicht, Körperschemastörung, Amenorrhö, höchste Mortalität.\nBulimia: Normalgewicht, Essanfälle + Kompensation (Erbrechen, Laxantien), depressive Symptome.\nBinge-Eating: Übergewicht, Essanfälle OHNE Kompensation, Schuldgefühle.\nMerke: Essanfälle mit Erbrechen bei BMI ≤17,5 = Anorexie (F50.01), nicht Bulimie.',
    tags: ['Differentialdiagnosen', 'F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Essstörungen – körperliche Folgen:\nAnorexie: Bradykardie, Hypothermie, Lanugobehaarung, Osteoporose, Obstipation, hormonelle Störungen.\nWiederholtes Erbrechen: Zahnschmelzschäden, Schwellung der Ohrspeicheldrüse, Schwielen oder Verletzungen am Handrücken.\nErbrechen, Abführmittel, Diuretika → Elektrolytentgleisung (v. a. Hypokaliämie) → lebensgefährliche Herzrhythmusstörungen, Krampfanfälle.\nDaher sind ärztliche Kontrollen und Labor auch bei laufender Psychotherapie nötig.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Differentialdiagnosen bei Untergewicht:\nAnorexia nervosa, Leukämie und konsumierende Erkrankungen, Hyperthyreose (erhöhter Stoffwechsel), Diabetes mellitus Typ 1, Kokainmissbrauch, körperdysmorphe Störung, Zwangserkrankungen mit Nahrungsritualen.\nVor Diagnose Anorexie müssen organische Ursachen ausgeschlossen werden.',
    tags: ['F5 – Verhaltensauffälligkeiten', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F51 – Nichtorganische Schlafstörungen:\nDyssomnien: F51.0 Insomnie (Ein-/Durchschlafstörung), F51.1 Hypersomnie (übermäßige Schläfrigkeit), F51.2 Störung des Schlaf-Wach-Rhythmus.\nParasomnien: F51.3 Schlafwandeln (Somnambulismus), F51.4 Pavor nocturnus, F51.5 Albträume.\nNicht organisch bedingt.\nOrganische Schlafstörungen wie Schlafapnoe (G47.3), Narkolepsie (G47.4) und Restless-Legs-Syndrom gehören NICHT zu F51.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'F51.0 – Nichtorganische Insomnie und ihre Therapie:\nEin-/Durchschlafstörung oder schlechte Schlafqualität mind. 3×/Woche über mind. 1 Monat, mit Leidensdruck, ohne organische Ursache.\nTherapie der Wahl: nichtmedikamentös (Aufklärung, Schlafhygiene, KVT).\nStimuluskontrolle: Bett nur zum Schlafen, bei Wachliegen aufstehen.\nSchlafrestriktion: Bettzeit begrenzen, dann schrittweise verlängern.\nParadoxe Intention: bewusst versuchen, wach zu bleiben – nimmt den Einschlafdruck.\nEntspannungsverfahren (z.B. PMR). Hypnotika nur kurzfristig.',
    tags: ['F5 – Verhaltensauffälligkeiten', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Schlafhygiene-Regeln (prüfungsrelevant):\nKein Mittagsschlaf (erhöht den Schlafdruck).\nRegelmäßiger Aufstehzeitpunkt (stabilisiert zirkadianen Rhythmus).\nKein intensiver Sport kurz vor dem Schlafen.\nKeine sichtbare Uhr (fördert Grübeln).\nBei Schlaflosigkeit aufstehen und erst bei Müdigkeit zurückkehren (Stimuluskontrolle).',
    tags: ['Therapieverfahren', 'F5 – Verhaltensauffälligkeiten'],
  ),
  Flashcard(
    text:
        'Pavor nocturnus (Nachtangst, F51.4):\nPlötzlicher Panikschrei mit vegetativen Symptomen (Tachykardie, Schwitzen).\nTritt im ersten Drittel des Nachtschlafs auf (Tiefschlaf).\nKind hat typischerweise keine Erinnerung (Amnesie) und lässt sich kaum beruhigen.\nGehört zu den Parasomnien.\nAbgrenzung: Albträume = eher zweite Nachthälfte, rasches Erwachen mit lebhafter Erinnerung.\nTherapie: Aufklärung und Beruhigung der Eltern, keine Medikamente als Standard.',
    tags: ['F5 – Verhaltensauffälligkeiten', 'F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Narkolepsie (G47.4):\nOrganische Schlafstörung – KEIN F51.\nImperative Einschlafattacken, Kataplexie (plötzliche Muskelschwäche bei Emotionen, ohne Bewusstseinsverlust), hypnagoge Halluzinationen, Schlafparalyse.\nFamiliäre Häufung.\nErfrischung nach kurzem Schlaf.\nAbgrenzung: Absencen = kurze Bewusstseinsaussetzer bei Epilepsie.\nSchlafapnoe führt nicht zu Kataplexie.',
    tags: ['F0 – Organische Störungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F52 – Sexuelle Funktionsstörungen:\nAppetenzstörung (Mangel an sexuellem Verlangen), Erregungsstörung (Erektionsstörung, fehlende Lubrikation), Orgasmusstörung, Ejaculatio praecox, Vaginismus, Dyspareunie (Schmerzen beim Geschlechtsverkehr).\nHäufigste Sexualstörungen; bei Frauen v. a. Appetenz- und Orgasmusstörungen, bei Männern Erektionsstörung und vorzeitiger Samenerguss.\nF52 = nichtorganisch – organische Ursachen aber IMMER mitbedenken (z.B. Gefäßerkrankungen, Diabetes, Medikamente).\nPrüfungsfalle: Anhedonie und Alexithymie bedeuten NICHT Schmerzen beim Geschlechtsverkehr.',
    tags: ['F5 – Verhaltensauffälligkeiten'],
  ),

  // ============================================================
  // TEIL 10: F6 – PERSÖNLICHKEITSSTÖRUNGEN
  // ============================================================
  Flashcard(
    text:
        'Allgemeine Kriterien Persönlichkeitsstörungen (F60):\nTief verwurzelte, anhaltende Verhaltensmuster, die deutlich von kulturell erwarteten Normen abweichen.\nBeginn in Kindheit/Adoleszenz, stabil im Erwachsenenalter.\nBetreffen: Kognition, Affektivität, Impulskontrolle und Beziehungsgestaltung.\nDurchgängig und unflexibel, NICHT auf Episoden einer anderen psychischen Störung begrenzt; nicht hirnorganisch bedingt.\nMeist ich-synton: Leidensdruck oft gering oder erst im Verlauf – Anlass zur Behandlung sind meist Konflikte mit dem Umfeld oder soziale/berufliche Einbußen.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'Persönlichkeitsstörungen – Verlauf, Komorbidität, Therapie:\nHäufig (ca. 10 % der Bevölkerung), über Jahrzehnte stabil; manche Züge mildern sich im Alter (z.B. dissoziale PS).\nSuizidrisiko erhöht; hohe Komorbidität mit Sucht, Depression, Angst- und Essstörungen.\nPS sind KEINE abgeschwächten Psychosen, sondern eigenständige Störungen.\nPsychotherapie hilft über der Hälfte der Betroffenen; Ziel ist Kompensation und bessere Lebensbewältigung, nicht Heilung.\nReihenfolge: zuerst Suizidalität/Fremdgefährdung, dann therapiegefährdendes Verhalten, dann übrige Probleme.\nPsychopharmaka nur ergänzend (Komorbidität, Krisen).',
    tags: ['F6 – Persönlichkeitsstörungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'PS-Cluster (Einteilung aus dem DSM, nicht aus der ICD-10):\nCluster A (sonderbar/exzentrisch): Paranoid, schizoid, [schizotyp].\nCluster B (dramatisch/emotional): Dissozial, emotional instabil (Borderline), histrionisch, narzisstisch.\nCluster C (ängstlich/furchtsam): Vermeidend (ängstlich), abhängig, anankastisch (zwanghaft).\nDie schizotype Störung ist in der ICD-10 KEINE PS, sondern F21 (schizophrener Formenkreis).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.0 – Paranoide PS:\nTiefes Misstrauen: neutrale oder freundliche Handlungen anderer werden als feindselig missgedeutet.\nÜbertriebene Empfindlichkeit bei Rückschlägen und Zurückweisung, nachtragend, Streitsucht, Beharren auf eigenen Rechten.\nÜberhöhtes Selbstwertgefühl, Selbstbezogenheit; ungerechtfertigte Eifersucht, Verschwörungsgedanken.\nParanoide sind NICHT von anderen abhängig, sondern eher misstrauisch und eigenbrötlerisch.\nKEIN Wahn, gehört NICHT zum schizophrenen Formenkreis. Cluster A (sonderbar).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.1 – Schizoide PS:\nEmotionale Kühle, Distanziertheit, flache Affektivität, Anhedonie, Einzelgänger.\nKann Gefühle (Wärme wie Ärger) kaum zeigen.\nWenig Interesse an sozialen oder sexuellen Kontakten; Mangel an engen Freunden.\nGleichgültigkeit gegenüber Lob und Kritik.\nVorliebe für Fantasie und Einzelaktivitäten; wenig Gespür für gesellschaftliche Regeln.\nCluster A (sonderbar). Nicht zu verwechseln mit Schizophrenie!',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.2 – Dissoziale (antisoziale) PS:\nMissachtung sozialer Normen und Rechte anderer.\nFehlende Empathie, fehlendes Schuldbewusstsein; lernt kaum aus Erfahrung oder Strafe, schiebt Schuld auf andere.\nSehr niedrige Frustrationstoleranz mit Neigung zu aggressivem Verhalten.\nKnüpft leicht Beziehungen, kann sie aber NICHT dauerhaft halten.\nSchließt die „psychopathische“ und „soziopathische“ PS ein. Cluster B (dramatisch).\nAbgrenzung: Schizoide PS = emotionale Distanz, NICHT aggressiv.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.3 – Emotional instabile PS:\nGemeinsam: Impulse werden ohne Rücksicht auf Folgen ausgelebt, Stimmung wechselhaft.\n.30 Impulsiver Typ: Affektlabilität, mangelnde Impulskontrolle, Wutausbrüche v.a. bei Kritik.\n.31 Borderline-Typ: ZUSÄTZLICH mind. 2 aus: gestörtes Selbstbild, chronische Leere, intensive instabile Beziehungen, Angst vor dem Verlassenwerden, wiederholte Selbstverletzung/Suiziddrohungen.\nSelbstverletzung ist häufig, aber NICHT obligat.\nCluster B (dramatisch).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'Borderline-PS – Verlauf und Besonderheiten:\nBeginn in der Adoleszenz/im frühen Erwachsenenalter, oft langer chronischer Verlauf.\nEtwa 70 % der Betroffenen sind Frauen; in der Vorgeschichte häufig Traumatisierung (Missbrauch, Vernachlässigung).\nIn Krisen: starke Anspannung, Dissoziation (Depersonalisation/Derealisation), kurze psychoseähnliche Episoden.\nHohes Suizidrisiko (ca. 8–10 % versterben durch Suizid) – aktiv nach Suizidalität fragen, Drohungen immer ernst nehmen.\nKomorbid oft Depression, Sucht, Essstörungen.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'Borderline-PS – Therapie (DBT nach Linehan):\nDBT = störungsspezifische Therapie der Wahl, Wirksamkeit belegt; verbindet VT mit Achtsamkeit (Zen) und Akzeptanz.\nZuerst Suizidalität, Selbstverletzung und therapiegefährdendes Verhalten; Traumaarbeit erst nach Stabilisierung.\nSkills: Achtsamkeit (für gegenwärtige Gefühle), Stresstoleranz, Emotionsregulation (wahrnehmen und steuern, NICHT unterdrücken), zwischenmenschliche Fertigkeiten.\nPsychopharmaka nur ergänzend, KEIN Kernbestandteil.\nAbgrenzung: CBASP = für chronische Depression.',
    tags: ['F6 – Persönlichkeitsstörungen', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'F60.4 – Histrionische PS:\nDramatisierung, Theatralik, übertriebener Gefühlsausdruck, Suggestibilität (leicht beeinflussbar), flache und labile Affektivität.\nBedürfnis im Mittelpunkt zu stehen – SUCHT Aufmerksamkeit, zieht sich NICHT zurück.\nÜbermäßige Beschäftigung mit der eigenen Attraktivität, unangemessen verführerisches Verhalten.\nCluster B (dramatisch).\nAbgrenzung: Bedürfnis nach Bewunderung = eher narzisstische PS.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.8 – Narzisstische PS:\nIn der ICD-10 unter „sonstige spezifische PS“ (F60.8); Cluster B.\nGrößengefühl, Gefühl der Einzigartigkeit, Bedürfnis nach Bewunderung, überhöhte Anspruchshaltung.\nMangel an Empathie, Ausnutzen anderer, Neid, Arroganz; Wechsel von Idealisierung und Entwertung.\nSelbstwert dahinter brüchig: Kränkung → narzisstische Krise mit akuter Suizidgefahr.\nTherapie: tragfähige Beziehung ist zentral, Ziel u.a. Beziehungsfähigkeit; Betroffene suchen meist spät Hilfe.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.5 – Anankastische (zwanghafte) PS:\nPerfektionismus, übermäßiger Zweifel und Vorsicht, Rigidität, übermäßige Gewissenhaftigkeit, Pedanterie.\nLeistungsbezogenheit auf Kosten von Vergnügen und Beziehungen.\nEigensinn: erwartet, dass andere sich den eigenen Gewohnheiten unterordnen.\nCluster C (ängstlich).\nAbgrenzung: Die PS ist ICH-SYNTON, die Zwangsstörung (F42) ICH-DYSTON.',
    tags: ['F6 – Persönlichkeitsstörungen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'F60.6 – Ängstliche (vermeidende) PS:\nAnhaltende Anspannung und Besorgtheit, Unsicherheit, Minderwertigkeitsgefühle, Überempfindlichkeit gegen Kritik.\nVermeidung sozialer Kontakte aus Angst vor Ablehnung; eingeschränkter Lebensstil aus Sicherheitsbedürfnis.\nWÜNSCHT sich aber Kontakte (im Gegensatz zur schizoiden PS).\nSynonym: selbstunsichere PS. Cluster C (ängstlich).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F60.7 – Abhängige (asthenische) PS:\nÜberlässt Entscheidungen anderen, Trennungsangst, Hilflosigkeit, Unterordnung eigener Bedürfnisse.\nKann nicht allein entscheiden.\nAusgeprägte Angst vor Alleinsein/Verlassenwerden.\nCluster C (ängstlich).\nAbgrenzung: Streitsucht = paranoide PS.\nPerfektionismus = anankastische PS.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F61 – Kombinierte und sonstige PS:\nMerkmale MEHRERER PS liegen vor, ohne dass eine einzelne PS (F60.x) eindeutig überwiegt.\nZ.B. können paranoide Züge dazugehören.\nNICHT gemeint: psychotische Symptome oder Intelligenzminderung.\nEs gelten die allgemeinen PS-Kriterien (Beginn in Kindheit/Jugend, überdauernd).',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'Persönlichkeitsstörung vs. Persönlichkeitsänderung vs. Akzentuierung:\nPS (F60) = tief verwurzelt, seit Kindheit/Adoleszenz, ich-synton; NICHT angeboren, sondern aus Anlage und Umwelt entstanden.\nAndauernde Persönlichkeitsänderung (F62) = Wandel einer zuvor unauffälligen Persönlichkeit nach Extrembelastung (z.B. KZ, Folter, Geiselhaft) oder schwerer psychischer Krankheit; mind. 2 Jahre.\nOrganische Persönlichkeitsveränderung (F07) = nach Hirnschädigung.\nAkzentuierung = ausgeprägte Züge, noch flexibel, ohne deutliche Beeinträchtigung.',
    tags: ['F6 – Persönlichkeitsstörungen', 'Differentialdiagnosen'],
  ),

  // ============================================================
  // TEIL 11: F63–F65 – IMPULSKONTROLLE & SEXUALITÄT
  // ============================================================
  Flashcard(
    text:
        'F63 – Abnorme Gewohnheiten und Störungen der Impulskontrolle:\nF63.0 pathologisches Spielen, F63.1 Pyromanie (pathologische Brandstiftung), F63.2 Kleptomanie (pathologisches Stehlen), F63.3 Trichotillomanie (Haareausreißen mit sichtbarem Haarverlust).\nGemeinsam: wiederholte Handlungen ohne vernünftiges Motiv, kaum kontrollierbar; Anspannung vorher, Erleichterung danach.\nKleptomanie: Stehlen ohne Bereicherungsabsicht, v. a. Frauen. Pyromanie: v. a. Männer.\nEine EINMALIGE Tat genügt nicht; Stehlen wegen Sucht ist keine Kleptomanie.\nICD-11: Trichotillomanie im Zwangsspektrum.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F63.0 – Pathologisches Spielen:\nHäufiges, wiederholtes, episodenhaftes Glücksspiel, das die Lebensführung beherrscht.\nKern: KONTROLLVERLUST – weiterspielen trotz Schulden und Schäden für Familie und Beruf.\nBeginn meist im jüngeren Erwachsenenalter.\nSuizidrisiko erhöht; häufig komorbid Substanzmissbrauch und ADHS.\nKEIN pathologisches Spielen: exzessives Spielen in der Manie oder Spielen, das nach Kritik beendet wird.\nKVT ist wirksam. ICD-11: Verhaltenssucht.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),
  Flashcard(
    text:
        'F64/F65 – Geschlechtsidentität vs. Sexualpräferenz:\nF64.0 Transsexualismus: dauerhafter Wunsch, als Angehöriger des anderen Geschlechts zu leben, meist mit Wunsch nach hormoneller/operativer Angleichung (ICD-11: Geschlechtsinkongruenz, keine psychische Störung mehr).\nF64.1 Transvestitismus unter Beibehaltung beider Geschlechtsrollen: zeitweise gegengeschlechtliche Kleidung OHNE sexuelle Erregung.\nF65 Paraphilien: Fetischismus, fetischistischer Transvestitismus (MIT sexueller Erregung), Exhibitionismus (Entblößen vor Fremden), Voyeurismus, Pädophilie, Sadomasochismus.\nHomo- und Bisexualität sind KEINE Störung.',
    tags: ['F6 – Persönlichkeitsstörungen'],
  ),

  // ============================================================
  // TEIL 12: F7–F9 – INTELLIGENZMINDERUNG, ENTWICKLUNG, KINDHEIT
  // ============================================================
  Flashcard(
    text:
        'F7 – Intelligenzminderung nach IQ:\nF70 Leicht (IQ 50-69, mentales Alter 9-12 Jahre) – mit ca. 80 % die häufigste Form.\nF71 Mittelgradig (IQ 35-49, 6-9 Jahre).\nF72 Schwer (IQ 20-34, 3-6 Jahre).\nF73 Schwerst (IQ <20, <3 Jahre).\nMerke: IQ-Stufen "70-50-35-20".\nIQ-Tests: Mittelwert 100 (= Prozentrang 50), Standardabweichung 15; 85-115 = ca. 68 % der Bevölkerung; Hochbegabung ab 130.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Intelligenzminderung – Merksätze:\nBeginnt ab IQ <70; zusätzlich ist die Alltagsbewältigung eingeschränkt.\nUrsache in ca. 50 % unklar; gesichert u.a. genetisch (z.B. Down-Syndrom), Röteln oder Alkohol in der Schwangerschaft, Geburtskomplikationen.\nKeine Heilung möglich, aber frühe Förderung kann Selbständigkeit verbessern.\nRisiko für psychische Störungen 3- bis 4-fach erhöht; oft Mehrfachbehinderung.\nVT oder medikamentöse Behandlung ist möglich.\nDemenz (= Verlust erworbener Fähigkeiten) kann zusätzlich auftreten.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'FASD (Fetale Alkoholspektrumstörung):\nFolge von Alkohol in der Schwangerschaft; Vollbild = Fetales Alkoholsyndrom (FAS).\nTypische Gesichtsmerkmale – schmale Oberlippe, glattes Philtrum, kurze Lidspalten.\nMinderwuchs (NICHT Hochwuchs).\nStörungen der Exekutivfunktionen.\nKein sicherer Alkoholkonsum in der Schwangerschaft – Schädigung in jedem Trimenon möglich.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F80 – Entwicklungsstörungen des Sprechens und der Sprache:\nArtikulationsstörung (F80.0): Laute fehlen, werden ersetzt oder verzerrt; Sprachverständnis NORMAL. Beispiel: Lispeln (Sigmatismus).\nExpressive Störung (F80.1): Wortschatz und Satzbau deutlich unter Alters- und IQ-Niveau; Verständnis und Intelligenz meist normal.\nRezeptive Störung (F80.2): Sprachverständnis GESTÖRT, meist auch der Ausdruck.\nAbgrenzung: Hörstörung, Intelligenzminderung, Autismus, Mutismus (spricht nicht, KANN aber).\nTherapie: Logopädie.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F81/F82 – Schulische und motorische Entwicklungsstörungen:\nF81: Lese-Rechtschreibstörung (Legasthenie) und Rechenstörung (Dyskalkulie).\nLeistung deutlich unter dem, was Alter, Intelligenz und Beschulung erwarten lassen; NICHT Folge einer Intelligenzminderung.\nLRS: Leseverständnis meist beeinträchtigt, oft ging eine Sprachentwicklungsstörung voraus, später häufig emotionale Probleme.\nLegasthenie: Normaler IQ, kann jede Schulform besuchen, gezielt behandelbar.\nF82: Koordinationsstörung, nicht durch Intelligenzmangel erklärbar.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F84.0 – Frühkindlicher Autismus (Kanner-Syndrom):\nTiefgreifende Entwicklungsstörung, Beginn vor dem 3. Lebensjahr.\nTrias: Soziale Interaktion↓, Kommunikation↓, stereotype, sich wiederholende Verhaltensweisen und Interessen.\nJungen deutlich häufiger betroffen (ca. 3:1).\nHäufig Intelligenzminderung; Epilepsie bei bis zu 30 %.\nNICHT durch Erziehungsfehler oder Impfungen verursacht.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Frühkindlicher Autismus – Symptome und Therapie:\nKaum Blickkontakt, soziales Lächeln fehlt oder kommt spät, wenig Interesse an Gleichaltrigen; Gegenstände interessieren mehr als Menschen.\nEtwa die Hälfte lernt keine funktionale Sprache; sonst Echolalie, Vertauschen von „ich“ und „du“, monotone Sprachmelodie.\nStarke Angst vor Veränderungen, Rituale, Stereotypien; oft Selbstverletzung und Wutausbrüche.\nTherapie: früh, verhaltenstherapeutisch (operante Methoden für Blickkontakt und Sprache), Elternarbeit.\nMedikamente NUR für Begleitsymptome.',
    tags: ['F7-F9 – Entwicklung & Kindheit', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'F84.5 – Asperger-Syndrom:\nBeeinträchtigte soziale Interaktion UND begrenzte, repetitive, stereotype Interessen/Verhaltensweisen – beides obligat.\nOHNE Sprach- oder Kognitionsverzögerung; Intelligenz normal bis überdurchschnittlich.\nSpezialinteressen, motorische Unbeholfenheit.\nKEIN Kriterium „Beginn vor 3 Jahren“: auffällig meist ab ca. 3 Jahren bzw. im Kindergarten-/Schulalter.\nJungen deutlich häufiger betroffen.\nICD-11: mit dem Kanner-Autismus unter Autismus-Spektrum-Störung zusammengefasst.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F84.2 – Rett-Syndrom:\nTiefgreifende Entwicklungsstörung, fast nur bei Mädchen (X-chromosomal).\nZunächst weitgehend normale Entwicklung, dann zwischen dem 7. und 24. Lebensmonat Verlust erworbener Sprache und gezielter Handfunktion.\nTypisch: stereotype „Waschbewegungen“ der Hände, verlangsamtes Kopfwachstum, Ataxie, epileptische Anfälle.\nFortschreitend, schwere Mehrfachbehinderung; Therapie nur symptomatisch.\nMerke: Verlust bereits erworbener Fähigkeiten unterscheidet Rett vom Kanner-Autismus.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F90 – Hyperkinetische Störungen (ADHS):\nAufmerksamkeitsdefizit + Hyperaktivität + Impulsivität.\nBeginn vor dem 7. Lebensjahr (ICD-10; DSM-5: vor 12), Symptome ≥6 Monate, in ≥2 Situationen (z.B. Schule und Zuhause).\nVor der Diagnose organische Ursachen (z.B. Hyperthyreose) ausschließen.\nJungen häufiger betroffen (ca. 3:1). Erhöhtes Unfallrisiko.\nKann bis ins Erwachsenenalter fortbestehen.\nADS = ohne Hyperaktivität. F90.1 = mit Störung des Sozialverhaltens.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'ADHS – Therapie und Komorbiditäten:\nMultimodal: Psychoedukation, Elterntraining, Verhaltenstherapie (z.B. Token-System), schulische Maßnahmen.\nMedikamentöse 1. Wahl: Stimulanzien (Methylphenidat), KEINE Beruhigungsmittel. Bei leichter Ausprägung zunächst ohne Medikamente; Kombination mit VT ist leicht überlegen.\nMethylphenidat ist BtM-pflichtig – Verordnung NICHT durch den HPP.\nKomorbiditäten: Tic-Störungen, Störungen des Sozialverhaltens, LRS, Angst, Depression.\nIch-Störungen gehören NICHT zu den ADHS-Symptomen.',
    tags: ['F7-F9 – Entwicklung & Kindheit', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'ADHS im Erwachsenenalter:\nPersistiert oft; die Diagnose ist auch nach dem 18. Lebensjahr zulässig.\nVoraussetzung: Symptome schon in der Kindheit (Fremdanamnese, Zeugnisse).\nHyperaktivität wird zu innerer Unruhe; im Vordergrund Desorganisation, Vergesslichkeit, fehlendes Durchhaltevermögen, Impulsivität, Stimmungsschwankungen.\nFolgen: Unfälle, häufige Job- und Partnerwechsel, Konflikte mit dem Gesetz.\nKomorbidität: Sucht, Depression, Angst, dissoziale PS.\nMethylphenidat auch hier 1. Wahl (NICHT kontraindiziert), dazu VT.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F91 – Störung des Sozialverhaltens:\nAndauernd dissoziales, aggressives oder aufsässiges Verhalten: Aggressivität, Tierquälerei, Stehlen, Lügen, Schulschwänzen.\nDauer mind. 6 Monate; normale jugendliche Aufmüpfigkeit oder einzelne Delikte reichen NICHT.\nBis zu 40–50 % entwickeln später eine dissoziale PS.\nTherapie psychosozial (Elterntraining, VT, Jugendhilfe), NICHT vorrangig medikamentös.\nAbgrenzung: Kinder/Jugendliche F91, Erwachsene F60.2. F93 = emotionale Störungen (Trennungsangst, Phobie, soziale Ängstlichkeit).',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F94 – Störungen sozialer Funktionen:\nF94.0 Elektiver Mutismus: Kind schweigt in bestimmten Situationen oder gegenüber bestimmten Personen trotz normalem Sprachvermögen; Dauer >4 Wochen.\nF94.1 Reaktive Bindungsstörung: ängstlich, übervorsichtig, widersprüchlich gegenüber Bezugspersonen; meist nach Vernachlässigung/Misshandlung.\nF94.2 Bindungsstörung mit Enthemmung: distanzlos, wahllos freundlich; nach häufig wechselnden Bezugspersonen.\nBeide Bindungsstörungen beginnen vor dem 5. Lebensjahr.\nAbgrenzung Autismus: KEINE vergleichbaren kognitiven Defizite.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F95 – Ticstörungen:\nPlötzliche, unwillkürliche, sich wiederholende Bewegungen (motorisch) oder Laute (vokal); kurz unterdrückbar.\nF95.0 vorübergehend: max. 12 Monate (bei ca. 10 % aller Kinder).\nF95.1 chronisch: >1 Jahr, NUR motorisch ODER NUR vokal.\nF95.2 Tourette: multiple motorische + mind. 1 vokaler Tic über ≥12 Monate; Koprolalie, Echolalie möglich.\nBeginn vor 18, Gipfel 6-8 Jahre; Diagnose klinisch. NICHT zu den Epilepsien.\nKomorbid ADHS, Zwang. Therapie: VT (Reaktionsumkehr), Tiaprid.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F98 – Sonstige Verhaltens-/emotionale Störungen:\nF98.0 Enuresis, F98.1 Enkopresis, F98.2 Fütterstörung, F98.3 Pica, F98.4 Stereotypien, F98.5 Stottern, F98.6 Poltern.\nEnkopresis: Einkoten ab 4 Jahren, willkürlich oder unwillkürlich; organische Ursachen ausschließen, oft begleitende Verstopfung.\nPica: anhaltendes Essen nicht essbarer Substanzen (z.B. Erde); häufig bei Intelligenzminderung.\nStottern: Störung des Redeflusses (Wiederholen, Dehnen, Blockieren), KEINE Sprachstörung; Beginn meist 2-5 Jahre, oft Spontanremission.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'F98.0 – Enuresis (nichtorganisch):\nUnwillkürliches Einnässen ab einem Alter von 5 Jahren, mind. 3 Monate, ohne organische Ursache.\nPrimär (häufigste Form): nie längere Zeit trocken. Sekundär: erneutes Einnässen nach ≥6 Monaten Trockenheit, oft nach Belastung – häufiger mit psychischen Komorbiditäten.\nNächtliches Einnässen ist häufiger als tagsüber; Jungen häufiger.\nFamiliär gehäuft; hohe Spontanremission, kommt aber auch bei Erwachsenen vor.\nTherapie: Aufklärung, Kalender mit Belohnung, Klingelmatratze/-hose, kurzzeitig Desmopressin.',
    tags: ['F7-F9 – Entwicklung & Kindheit'],
  ),

  // ============================================================
  // TEIL 13: PSYCHOTHERAPIEVERFAHREN
  // ============================================================
  Flashcard(
    text:
        'Psychoanalyse – Grundregel und Techniken:\nGrundregel = Freies Assoziieren (alles aussprechen, was einfällt).\nTechniken: Deutung (Aufdecken unbewusster Bedeutung), Traumdeutung, Bearbeitung von Übertragung und Widerstand.\nWiderstand = alle Verhaltensweisen, die den therapeutischen Prozess behindern (Zuspätkommen, Vergessen, Schweigen) – meist unbewusst, wird gedeutet.\nTherapeutische Ich-Spaltung ist eine Voraussetzung: regressive Gefühle zum Therapeuten erleben (erlebendes Ich) und zugleich mit Abstand betrachten (beobachtendes Ich).\nAbgrenzung: Spaltung als Abwehrmechanismus (Borderline) ist etwas anderes.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Übertragung und Gegenübertragung:\nÜbertragung = der Patient erlebt den Therapeuten unbewusst wie frühere Bezugspersonen (z.B. Eltern) und wiederholt alte Gefühle und Beziehungsmuster (Zuneigung, Verliebtheit, Ärger).\nZentrales Arbeitsmittel in Psychoanalyse und tiefenpsychologisch fundierter Therapie; wird zum passenden Zeitpunkt gedeutet – KEIN Abbruchgrund, KEINE Nebenwirkung.\nGegenübertragung = Gefühle und Reaktionen, die der Patient im Therapeuten auslöst; diagnostisch wertvoll, wenn der Therapeut eigene Anteile davon trennt (Selbsterfahrung, Supervision).\nIn der Verhaltenstherapie wird Übertragung nicht gezielt gefördert.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Abstinenzregel und Setting – Psychoanalyse vs. tiefenpsychologisch fundierte Therapie:\nAbstinenzregel: keine privaten, freundschaftlichen, geschäftlichen oder sexuellen Beziehungen zum Patienten UND zu ihm nahestehenden Personen; keine Dienste des Patienten annehmen, keine eigenen Konflikte offenbaren – der Therapeut bleibt „weiße Leinwand“.\nPsychoanalyse (PA): Patient liegt auf der Couch, Therapeut sitzt unsichtbar dahinter (gleichschwebende Aufmerksamkeit), mehrmals pro Woche über Jahre.\nTiefenpsychologisch fundierte Therapie (TP): Sitzen gegenüber, meist 1× pro Woche, Fokus auf dem aktuellen Konflikt, Therapeut aktiver.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Abwehrmechanismen – Übersicht und Abgrenzung:\nUnbewusste Strategien des Ichs zur Konfliktbewältigung sind Verdrängung, Projektion (eigene abgelehnte Impulse werden anderen zugeschrieben), Regression (Rückfall auf frühere Entwicklungsstufen), Identifikation, Reaktionsbildung, Sublimierung, Verleugnung und Rationalisierung.\nSie sind nicht per se krankhaft (Sublimierung gilt als reif).\nACHTUNG: Amnesie (Gedächtnisstörung) und Perseveration (formale Denkstörung) sind psychopathologische Symptome, KEINE Abwehrmechanismen.\nEbenfalls KEINE Abwehr: erlernte Hilflosigkeit (Seligman, lerntheoretisch), Gedankenstopp (VT-Technik), Aggressionshemmung.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Abwehrmechanismen – Definitionen (Teil 1):\nVerdrängung = unerträgliche Wünsche oder Erinnerungen werden ins Unbewusste abgeschoben (Grundmechanismus).\nVerleugnung = eine belastende äußere Tatsache wird nicht wahrgenommen („Das stimmt nicht“).\nReaktionsbildung = ein verpönter Impuls wird ins Gegenteil verkehrt (Abneigung → übertriebene Freundlichkeit).\nVerschiebung = das Gefühl wird an einem harmloseren Ersatzobjekt abreagiert (Ärger auf den Chef → Streit zu Hause).\nRationalisierung = nachträgliche, vernünftig klingende Scheinbegründung.\nSublimierung = Triebenergie fließt in sozial anerkannte Leistungen (Aggression → Sport, Kunst).',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Abwehrmechanismen – Definitionen (Teil 2):\nKonversion = ein seelischer Konflikt drückt sich in einem körperlichen Symptom aus (z.B. Lähmung ohne organischen Befund).\nIsolierung (Affektisolierung) = das Gefühl wird vom Inhalt abgetrennt; Schlimmes wird sachlich ohne Emotion berichtet.\nUngeschehenmachen = ein Ritual soll einen „verbotenen“ Gedanken aufheben – typisch bei Zwängen.\nSpaltung = andere werden abwechselnd nur gut oder nur böse erlebt (Idealisierung/Entwertung) – typisch bei Borderline.\nIdentifikation mit dem Aggressor = das Opfer übernimmt Haltung und Verhalten des Täters.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Kontraindikationen aufdeckender Verfahren:\nAufdeckende Verfahren (Psychoanalyse, TP, Gestalttherapie) sind KONTRAINDIZIERT bei akuter Psychose, akuter schwerer Depression und akuter Suizidalität – Gefahr der Verschlechterung bis zum Suizid.\nUngeeignet auch bei Demenz und fehlender Introspektionsfähigkeit.\nStattdessen supportiv-stützend und Psychoedukation; schwere Depression zuerst ärztlich/medikamentös, ggf. stationär.\nEntspannungsverfahren (AT, PMR) sind bei akuter Psychose ebenfalls kontraindiziert.\nMerke: Die Psychoanalyse ist v.a. für neurotische, somatoforme und Persönlichkeitsstörungen gedacht – NICHT für die akute Schizophrenie.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Gesprächspsychotherapie nach Carl Rogers:\n3 Grundhaltungen: (1) Empathie (einfühlendes Verstehen), (2) Akzeptanz (unbedingte Wertschätzung), (3) Kongruenz (Echtheit).\nBasiert auf der Aktualisierungstendenz.\nNicht-direktiver Ansatz.\nSuggestivfragen und rhetorische Fragen sind NICHT vereinbar mit Rogers.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Systemische Therapie:\nBefasst sich mit Beziehungsmustern und dysfunktionalen familiären Interaktionen; der Symptomträger zeigt die Störung des ganzen Systems.\nTechnik: Zirkuläres Fragen (der Therapeut fragt ein Familienmitglied nach Beziehung/Verhalten anderer).\nWeitere Techniken: Genogramm (Familie über mehrere Generationen), Reframing (Umdeutung), paradoxe Intervention (Symptomverschreibung), Familienskulptur.\nDelegation (Stierlin) = Kinder erfüllen unbewusst Wünsche der Eltern.\nParentifizierung = Rollenumkehr Kind↔Elternteil.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'EMDR (Eye Movement Desensitization and Reprocessing):\nVon Francine Shapiro entwickelte, evidenzbasierte Methode zur Traumaverarbeitung, v.a. bei PTBS.\nBilaterale Stimulation (Augenbewegungen, alternativ Töne oder Berührungen).\nPatient bleibt wach und bewusst (KEINE Hypnose).\nZiel: Verarbeitung und Umstrukturierung dysfunktionaler Kognitionen.\nNebenwirkungen möglich (emotionale Belastung); kontraindiziert z.B. bei florider Psychose.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Hypnose und Hypnotherapie (nach Milton Erickson):\nTrance = entspannter Wachzustand mit eingeengter, nach innen gerichteter Aufmerksamkeit – KEIN Schlaf.\nDer Patient behält die Kontrolle und tut nichts gegen seinen Willen oder seine Werte; mit Showhypnose hat Hypnotherapie nichts zu tun.\nErickson: indirekte Suggestionen, Geschichten und Metaphern, Nutzung der Ressourcen und Eigenheiten des Patienten (Utilisation); der Patient findet seine eigene Lösung.\nEinsatz z.B. bei Raucherentwöhnung, Ängsten, zur Stabilisierung (imaginative Techniken).\nAbgrenzung: Autogenes Training = Selbsthypnose; EMDR ist KEINE Hypnose.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Autogenes Training vs. Progressive Muskelrelaxation (PMR):\nAutogenes Training (J. H. Schultz) = Selbstentspannung durch Autosuggestion mit festen Formeln (Schwere, Wärme, Herz, Atmung, Sonnengeflecht, Stirnkühle); beeinflusst unwillkürliche vegetative Funktionen (z.B. Puls sinkt).\nPMR (E. Jacobson) = Muskelgruppen nacheinander kurz anspannen und bewusst lösen, KEINE Suggestion; gut für Menschen, die sich nicht „auf Befehl“ entspannen können; Basis der systematischen Desensibilisierung.\nBeide werden selbstständig geübt; bei akuter Psychose kontraindiziert.\nAbgrenzung: Body-Scan ist eine Achtsamkeitsübung.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Verhaltenstherapie und kognitive Therapie nach Beck:\nGrundprinzip VT: Abweichendes Verhalten durch Lernprozesse erworben – und änderbar; Fokus auf dem Hier und Jetzt, Hilfe zur Selbsthilfe.\nBeck: Tagesprotokolle zur Selbstbeobachtung, Erkennen automatischer dysfunktionaler Gedanken, Prüfung ihres Realitätsgehalts, Reattribuierung (Neubewertung).\nDenkfehler nach Beck: Generalisierung, Katastrophisierung, Schwarz-Weiß-Denken, willkürliches Schlussfolgern.\nKEINE Denkfehler: Wahngedanken, Vermeidungsverhalten.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Kognitive Verfahren im Überblick:\nKognitive Triade nach Beck = negative Sicht auf sich selbst, die Welt und die Zukunft (Depressionsmodell).\nRational-emotive Therapie (RET) nach Ellis = Bearbeitung irrationaler Grundannahmen nach dem ABC-Modell; diese lassen sich NICHT durch einmaliges Aufdecken beheben, sondern erfordern wiederholtes Üben.\nKognitive Umstrukturierung ist das Basisverfahren kognitiver Therapien und zielt auf die Neubewertung von Gedanken, Gefühlen und Körperreaktionen – typische Methode ist der sokratische Dialog, nicht die Hypnotherapie.\nBei Demenz ist der sokratische Dialog ungeeignet.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Exposition/Konfrontation:\nVarianten: in vivo (real) oder in sensu (in der Vorstellung), gestuft oder massiv. Flooding = massive Reizüberflutung, meist in vivo.\nWirkmechanismus von Exposition und Flooding: Habituation (Gewöhnung) – die Angst sinkt, die befürchtete Katastrophe bleibt aus.\nSystematische Desensibilisierung (Wolpe) = reziproke Hemmung: Entspannung (z.B. PMR) + Angsthierarchie, gestuft in sensu; Entspannung und Angst schließen sich aus.\nWichtig: Angstkurve vollständig durchlaufen lassen, keine Ablenkung oder Flucht! Tranquilizer beeinträchtigen den Lerneffekt.\nBei Zwängen: Exposition + Reaktionsverhinderung (ERP) = Goldstandard.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'SORKC-Modell (Verhaltensanalyse nach Kanfer):\nS = Stimulus: auslösende Situation, Gedanke oder Körperempfindung (z.B. Betreten eines Flugzeugs).\nO = Organismus: körperliche und psychische Voraussetzungen (Erkrankung, Veranlagung, Grundüberzeugungen).\nR = Reaktion: Verhalten, Gedanken, Gefühle und Körperreaktionen (z.B. Flucht, Herzrasen).\nK = Kontingenz: wie regelmäßig und wie schnell die Konsequenz auf das Verhalten folgt.\nC = Konsequenz: kurzfristig meist angenehm (Angst sinkt = negative Verstärkung, hält das Problem aufrecht), langfristig nachteilig.\nDient der Problemanalyse und ist Grundlage der Therapieplanung.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Lerntheorie – Verstärkung und Bestrafung:\nPositive Verstärkung = angenehmer Reiz wird hinzugefügt → Verhalten nimmt zu.\nNegative Verstärkung = unangenehmer Reiz wird entfernt → Verhalten nimmt zu (z.B. Kratzen → Juckreiz weg).\nDirekte Bestrafung (positive Bestrafung) = aversiver Reiz hinzugefügt.\nIndirekte Bestrafung (Typ II, negative Bestrafung) = angenehmer Reiz entzogen.\nMerke: Negative Verstärkung ist KEINE Bestrafung – Vermeidungsverhalten wird durch die Angstabnahme negativ verstärkt.',
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
        'Therapieverfahren richtig zuordnen:\nKatathymes Bilderleben gehört zu den tiefenpsychologisch fundierten Verfahren.\nBiofeedback und Flooding gehören zur Verhaltenstherapie, ebenso Gedankenstopp, Selbstverbalisationstraining und Token-Systeme.\nFreie Assoziation, Traumdeutung und Deutung von Übertragung und Widerstand gehören zur Psychoanalyse.\nGesprächstherapie (Rogers) und Gestalttherapie (Perls) sind humanistische Verfahren.\nAutogenes Training und Progressive Muskelrelaxation (PMR) sind Entspannungsverfahren.\nLicht- und Schlafentzugstherapie sind biologische Verfahren, KEINE Psychotherapie.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Ähnlich klingende Konzepte:\nResilienz = psychische Widerstandsfähigkeit trotz belastender Umstände.\nReaktanz = Widerstand gegen wahrgenommene Einschränkung der Freiheit.\nCompliance = Therapietreue.\nKognitive Dissonanz = innere Widersprüche zwischen Einstellungen/Verhalten.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Nebenwirkungen von Psychotherapie:\nEine vorübergehende Symptomverschlechterung (z.B. kurzfristige Angstausweitung bei Exposition) kann eine Nebenwirkung einer korrekt durchgeführten Therapie sein.\nMögliche unerwünschte Wirkungen: psychotische Dekompensation, Suizidalität bis Suizid, Destabilisierung von Beziehungen (Partnerschafts- und Familienkrisen), Retraumatisierung.\nDas Risiko steigt bei unsachgemäßer Therapie (falsche Indikation, fehlende Diagnostik oder Supervision).\nÜbertragung ist KEINE Nebenwirkung, sondern Arbeitsmittel der Psychoanalyse.\nEs gibt Instrumente wie den INEP zur Erfassung negativer Psychotherapieeffekte.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Soziotherapie und Rehabilitation:\nSoziotherapie = Förderung von Alltag, Kontakten und Aktivität: Ergotherapie (Beschäftigungs-, Arbeitstherapie), kreative Therapien (Kunst, Musik, Tanz), sozialpsychiatrische Beratung.\nRehabilitation = Wiedereingliederung in Alltag, Beruf und Gesellschaft: medizinisch, beruflich (z.B. stufenweise Wiedereingliederung, Umschulung) und sozial.\nMögliche Kostenträger (je nach Leistung und Versicherung): Rentenversicherung, Krankenkasse, Arbeitsagentur/Jobcenter, Sozialamt, Integrationsamt.\nMerke: Ausgeprägte Negativsymptomatik erschwert die Rehabilitation mehr als Positivsymptomatik.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Psychoedukation:\nStrukturierte Information von Patienten UND Angehörigen über Erkrankung, Ursachen, Frühwarnzeichen und Behandlung – einzeln oder in Gruppen.\nZiele: Krankheitsverständnis, kompetenter Umgang mit der Erkrankung, emotionale Entlastung („kein Einzelschicksal“), bessere Therapietreue, weniger Rückfälle.\nKein eigenständiges Verfahren, sondern Baustein vieler Behandlungen (z.B. Schizophrenie, Depression, Angst, Zwang, Sucht, Eltern von Kindern mit ADHS).\nBei Schizophrenie ausdrücklich empfohlen – NICHT kontraindiziert.',
    tags: ['Therapieverfahren'],
  ),

  // ============================================================
  // TEIL 14: PSYCHOPHARMAKA & BIOLOGISCHE VERFAHREN
  // ============================================================
  Flashcard(
    text:
        'Antidepressiva – Grundwissen:\nGruppen: trizyklische AD (TZA, z.B. Amitriptylin), SSRI (z.B. Citalopram, Sertralin), SNRI (Venlafaxin), MAO-Hemmer (Tranylcypromin), Mirtazapin; pflanzlich: Johanniskraut.\nWirkung: stimmungsaufhellend, je nach Substanz antriebssteigernd oder sedierend.\nWirkeintritt erst nach ca. 2–4 Wochen; der Antrieb bessert sich vor der Stimmung → anfangs erhöhtes Suizidrisiko.\nKEINE Abhängigkeit, aber Absetzsymptome (Unruhe, Schwitzen, Schlafstörungen) → immer ausschleichen.\nAuch bei Angst- und Zwangsstörungen, Bulimie und chronischen Schmerzen eingesetzt.\nCave: Bei bipolarer Störung kann eine Manie ausgelöst werden.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Antidepressiva – Nebenwirkungen nach Gruppe:\nTZA: anticholinerg (Mundtrockenheit, Verstopfung, Harnverhalt, Sehstörungen, Herzrasen), Müdigkeit, Gewichtszunahme, Blutdruckabfall; Überdosis lebensgefährlich (Herzrhythmusstörungen, Delir, Krampfanfälle) → kleine Packungen.\nSSRI: anfangs Übelkeit, Durchfall, Unruhe, Schlafstörungen; später sexuelle Funktionsstörungen; bei Überdosis vergleichsweise sicher.\nMAO-Hemmer (irreversibel): tyraminarme Diät (reifer Käse, Rotwein, Salami) wegen Blutdruckkrisen; nie mit SSRI kombinieren.\nMirtazapin: müde machend, Appetit- und Gewichtszunahme.\nMerke: Nebenwirkungen kommen vor der Wirkung.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Serotoninsyndrom:\nLebensbedrohliche Überaktivierung des Serotoninsystems, meist durch Kombination serotonerger Substanzen (SSRI + MAO-Hemmer, Triptane oder Johanniskraut; auch Lithium, Clomipramin, Kokain, Amphetamine).\nLeitsymptome: Ruhelosigkeit und Bewusstseinsstörung, neuromuskuläre Zeichen (Tremor, Muskelzuckungen, gesteigerte Reflexe) sowie vegetative Zeichen (Fieber, Schwitzen, Tachykardie, Übelkeit).\nNOTFALL – auslösende Substanz absetzen, sofort ärztliche Behandlung.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Johanniskraut (Hypericum perforatum):\nPhytopharmakon – KEIN Biologikum und KEIN Neuroleptikum.\nNachgewiesene antidepressive Wirkung bei leichten bis mittelschweren depressiven Episoden, dafür auch zugelassen.\nBei älteren Menschen nicht generell kontraindiziert.\nCave: erhebliche Wechselwirkungen durch CYP-Enzym-Induktion – schwächt u.a. Kontrazeptiva, Antikoagulanzien und Immunsuppressiva ab.\nZusammen mit SSRI droht ein Serotoninsyndrom.\nWeitere Nebenwirkung: Photosensibilisierung.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Serotonin:\nKommt zentral (ZNS) und peripher vor – ca. 90% im Darm; beeinflusst Stimmung, Temperatur, Schmerz und Schlaf-Wach-Rhythmus.\nKann die Blut-Hirn-Schranke NICHT passieren (mit der Nahrung aufgenommenes Serotonin wirkt nicht im Gehirn).\nSSRI ERHÖHEN die Serotoninkonzentration im synaptischen Spalt.\nSSRI wirken auch peripher → gastrointestinale Nebenwirkungen.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Neuroleptika/Antipsychotika:\nAntipsychotische, anxiolytische und sedierende Wirkung (dämpfend/angstlösend v.a. niederpotente Mittel); Wirkprinzip: Dopaminblockade.\nEinsatz: Schizophrenie, Manie, psychotische Depression, Erregungszustände.\nTypisch hochpotent (Haloperidol) = stark antipsychotisch, viele EPMS; niederpotent (Melperon) = stark sedierend, kaum EPMS. Atypisch (Olanzapin, Risperidon, Quetiapin) = weniger EPMS, mehr Gewichtszunahme.\nClozapin: kaum EPMS, aber Agranulozytose → regelmäßige Blutbildkontrollen.\nWeitere NW: QT-Verlängerung (EKG-Kontrollen), anticholinerg (Mundtrockenheit, Miktionsstörungen, Mydriasis). KEINE Abhängigkeit.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Extrapyramidal-motorische Nebenwirkungen (EPMS) im Zeitverlauf:\nV.a. unter typischen hochpotenten Neuroleptika.\n1. Frühdyskinesien (erste Tage): Zungen-, Schlund- und Blickkrämpfe, Kiefersperre → rasch durch Biperiden behebbar.\n2. Parkinsonoid (ab ca. 1–2 Wochen): Rigor, Tremor, Akinese, Maskengesicht → Dosisreduktion, Präparatewechsel, Biperiden.\n3. Akathisie (nach Wochen): quälende Sitz- und Bewegungsunruhe → Dosis senken oder Präparat wechseln.\n4. Spätdyskinesien (nach Monaten bis Jahren): Schmatz-, Kau- und Zungenbewegungen, Grimassieren – häufig IRREVERSIBEL.\nAbgrenzung: Harnverhalt und Mydriasis sind anticholinerg, keine EPMS.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Malignes neuroleptisches Syndrom (MNS) – Notfall:\nSeltene, lebensbedrohliche Reaktion auf Neuroleptika, meist in den ersten 2 Wochen der Behandlung.\nLeitsymptome: schwerer Rigor, hohes Fieber, Bewusstseinsstörung bis Koma, vegetative Entgleisung (Herzrasen, Blutdruckschwankungen, Schwitzen); im Labor CK erhöht.\nUnbehandelt in ca. 20–30 % tödlich.\nVorgehen: Neuroleptikum sofort absetzen, Notarzt, Intensivstation.\nAbgrenzung: Serotoninsyndrom (nach serotonergen Mitteln, eher Muskelzuckungen und gesteigerte Reflexe) und febrile Katatonie.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Dopaminhypothese:\nDer Schizophrenie liegt laut Dopaminhypothese eine ÜBERaktivität des dopaminergen Systems zugrunde – deshalb wirken Antipsychotika als Dopamin-Antagonisten (historisch früh: Haloperidol).\nDem Morbus Parkinson liegt umgekehrt ein Dopamin-MANGEL zugrunde.\nFolge: Dopaminblockade durch Antipsychotika kann ein Parkinsonoid auslösen; umgekehrt kann L-Dopa bei Parkinson psychotische Symptome hervorrufen.\nDopamin wirkt auch peripher und ist nicht alleinige Ursache von Sucht.',
    tags: ['F2 – Schizophrenie', 'Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Lithium – Wirkung, Spiegel, Nebenwirkungen:\nStimmungsstabilisierer: antimanisch, antidepressiv und antisuizidal; Standard der Phasenprophylaxe bipolarer Störungen (Alternativen: Valproat, Carbamazepin, Lamotrigin; bei Rapid Cycling eher diese).\nEnge therapeutische Breite → regelmäßige Spiegelkontrollen (12 h nach der letzten Einnahme), Prophylaxe-Zielspiegel 0,5–0,8 mmol/l; Nieren- und Schilddrüsenkontrollen.\nNebenwirkungen: feinschlägiger Tremor, Durst und viel Wasserlassen (Polydipsie, Polyurie), Gewichtszunahme, Struma, Übelkeit, Durchfall.\nProphylaktische Wirkung erst nach Monaten; NIE abrupt absetzen (Rückfallgefahr).',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Lithiumintoxikation – Warnzeichen und Auslöser:\nAb ca. 1,6 mmol/l; lebensbedrohlich ab ca. 3 mmol/l.\nFrühzeichen: grobschlägiger Tremor, Übelkeit, Erbrechen, Durchfall, Schläfrigkeit, Schwindel, verwaschene Sprache, Gangunsicherheit.\nSpäter: Rigor (parkinsonähnlich), gesteigerte Reflexe, Krampfanfälle, Bewusstseinstrübung bis Koma.\nAuslöser: Flüssigkeits- und Salzverlust (Fieber, Schwitzen, Durchfall, kochsalzarme Kost), Diuretika, Schmerzmittel wie Diclofenac (NSAR), Nierenschwäche, Überdosis in suizidaler Absicht.\nNOTFALL → sofort ärztlich abklären. Merke: feiner Tremor = Nebenwirkung, grober Tremor = Intoxikation.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Benzodiazepine – Wirkung und Einsatz:\nVier Wirkungen: anxiolytisch, sedierend/schlaffördernd, muskelrelaxierend, antikonvulsiv (Verstärkung der GABA-Wirkung).\nBeispiele: Diazepam, Lorazepam, Oxazepam, Alprazolam.\nEinsatz: akute Angst- und Panikzustände, Erregung, akute Suizidalität (Überbrückung), Stupor/Katatonie, Alkoholentzug, Krampfanfälle, kurzzeitig Schlafstörungen.\nKumulationsgefahr durch aktive Metaboliten (z.B. Diazepam) → Überhang am Folgetag, v.a. bei Älteren.\nRegel: so kurz wie möglich (max. ca. 2–4 Wochen), niedrigste wirksame Dosis. Antidot: Flumazenil.',
    tags: ['Therapieverfahren'],
  ),
  Flashcard(
    text:
        'Benzodiazepine – Risiken, Abhängigkeit, Entzug:\nHohes Abhängigkeitspotenzial, auch als Niedrigdosisabhängigkeit ohne Dosissteigerung; Toleranz, Rebound-Angst und -Schlaflosigkeit.\nNebenwirkungen: Müdigkeit, verlangsamte Reaktion (nicht fahrtüchtig), Gedächtnislücken; bei Älteren Stürze und paradoxe Erregung.\nLebensgefährlich: Kombination mit Alkohol oder Opioiden → Atemdepression.\nNach längerer Einnahme NIE abrupt absetzen, auch nicht bei niedriger Dosis: über Wochen ausschleichen, sonst Unruhe, Delir, Krampfanfälle.\nZ-Substanzen (Zolpidem, Zopiclon) wirken ähnlich und machen ebenfalls abhängig.',
    tags: ['Therapieverfahren', 'F1 – Substanzstörungen'],
  ),
  Flashcard(
    text:
        'Elektrokonvulsionstherapie (EKT, Elektrokrampftherapie):\nIn Kurznarkose mit Muskelrelaxation wird per Stromreiz ein generalisierter Krampfanfall ausgelöst; meist 6–12 Sitzungen, 2–3 pro Woche.\nIndikationen: schwere wahnhafte oder therapieresistente Depression (auch mit Stupor, Suizidalität, Nahrungsverweigerung), perniziöse Katatonie (lebensrettend), therapieresistente Manie oder Schizophrenie, MNS.\nSehr wirksam und schnell; wird heute weiter angewandt und gilt als sicher.\nNebenwirkungen: vorübergehende Gedächtnisstörungen und Verwirrtheit, Kopfschmerzen, Muskelkater, Narkoserisiko.\nAbgrenzung: EKT ist Therapie, das EEG Diagnostik.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),
  Flashcard(
    text:
        'Wachtherapie und Lichttherapie:\nWachtherapie (Schlafentzug): eine Nacht ganz oder ab der zweiten Nachthälfte wach bleiben; etwa die Hälfte spricht an, die Besserung hält aber nur kurz → meist ergänzend zu Antidepressiva, in Serien.\nAm Folgetag NICHT schlafen (auch kein Nickerchen). Nicht bei akuter Suizidalität, Epilepsie oder wahnhafter Depression.\nLichttherapie: v.a. bei saisonaler (Winter-)Depression, täglich morgens helles Licht (10.000 Lux ca. 30 min, 2.500 Lux ca. 2 h), UV-gefiltert; nicht bei jeder Depression notwendig.\nBeide sind biologische Verfahren, KEINE Psychotherapie.',
    tags: ['Therapieverfahren', 'F3 – Affektive Störungen'],
  ),

  // ============================================================
  // TEIL 15: NOTFÄLLE & HPP-GRENZEN
  // ============================================================
  Flashcard(
    text:
        'Psychiatrische Notfälle – Übersicht:\nNotfall = Zustand mit unmittelbarem Handlungszwang zur Abwendung von Lebensgefahr oder schweren Folgen; Behandlung sofort und symptomorientiert.\nWichtigste Notfälle: Delir (F05), akute Psychose mit Erregung, schwere Intoxikation oder Entzug, akute Suizidalität, malignes neuroleptisches Syndrom, katatoner Stupor (perniziöse Katatonie).\nAuch ohne psychiatrische Vorerkrankung möglich, z.B. durch körperliche Erkrankungen oder Arzneimittel; Gewaltrisiko beachten.\nHPP: Notfall erkennen, Notarzt (112) rufen, Patienten nicht allein lassen.\nMerke: Nicht jeder Notfall erfordert eine Einweisung nach PsychKG.',
    tags: ['Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Erste Hilfe in der Praxis – Grundschema:\nEigenschutz beachten, Patienten ansprechen, Bewusstsein und Atmung prüfen (max. 10 Sekunden), Notruf 112.\nBewusstlos, aber normale Atmung: stabile Seitenlage, Atmung weiter kontrollieren.\nKeine normale Atmung: sofort Herzdruckmassage und Beatmung im Wechsel 30:2 (100–120 Kompressionen/min), Defibrillator (AED) einsetzen, sobald verfügbar.\nKrampfanfall: vor Verletzungen schützen, nicht festhalten, nichts in den Mund; danach Seitenlage; erstmaliger Anfall oder Dauer über 5 Minuten → Notruf.\nDie Erstversorgung von Notfällen gehört laut Leitlinien 2018 zur Überprüfung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Akute Selbst- oder Fremdgefährdung in der Praxis – Ablauf:\n1. Gefährdung konkret einschätzen (Absicht, Plan, Absprachefähigkeit); den Patienten NICHT allein lassen.\n2. Zur freiwilligen stationären Aufnahme motivieren und in die Klinik begleiten lassen.\n3. Lehnt er ab: zuständige Stelle rufen – je nach Land Ordnungsamt, Polizei oder Sozialpsychiatrischer Dienst; bei körperlicher Gefahr Notarzt 112.\n4. Ein psychiatrisch erfahrener Arzt stellt das Zeugnis aus; danach entscheidet das Gericht.\nMerke: Der HPP kann NICHT selbst einweisen, ein HP-Attest genügt nicht. Bei passiver Suizidalität ohne akute Gefahr: Krisenplan statt Zwangseinweisung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HPP – was er darf:\nPsychische Störungen feststellen und nach ICD-10 diagnostizieren.\nAlle psychotherapeutischen Verfahren anwenden, nicht nur wissenschaftlich anerkannte: KVT, tiefenpsychologisch fundierte PT, Psychoanalyse, Gesprächspsychotherapie, EMDR, Exposition, Einzel- und Gruppenhypnose, Gruppentherapie.\nKognitive Umstrukturierung, Kommunikations- und berufsbezogenes Training, Angehörige einbeziehen.\nPsychologische Testverfahren einsetzen (auch Intelligenztests).\nKinder (auch mit ADHS), Menschen mit Intelligenzminderung und Betreute behandeln – kein generelles Verbot; bei Kindern auch Spieltherapie und analytische Techniken.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HPP – was er NICHT darf:\nKörperliche Erkrankungen diagnostizieren oder behandeln – bei Verdacht auf Organisches zum Arzt überweisen.\nMedikamente verordnen oder abgeben: Verschreibungspflichtige Mittel und Betäubungsmittel (BtMG) verordnen nur Ärzte – auch der Voll-HP nicht.\nSubstitution (z.B. Methadon), medikamentöse Entgiftung, LSD-gestützte Therapie.\nKörperliche oder invasive Verfahren wie Akupunktur oder Osteopathie.\nMeldepflichtige Infektionen und Geschlechtskrankheiten feststellen oder behandeln (Arztvorbehalt, §24 IfSG).\nMerke: Psychotherapie bei Sucht oder bei körperlich Kranken (z.B. HIV, Borreliose) ist erlaubt.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'HPP – Pflichten (Sorgfaltspflicht):\nEigene Grenzen kennen; körperliche Ursachen psychischer Symptome ärztlich abklären lassen.\nPsychosen, schwere Depressionen und akute Suizidalität fachärztlich (mit)behandeln lassen; Notfälle erkennen und handeln.\nVor Behandlungsbeginn aufklären – auch über Kosten; dokumentieren; Schweigepflicht wahren.\nNur Methoden anwenden, die er beherrscht; keine Heilversprechen; sich fortbilden.\nFahreignung ansprechen: eingeschränkt z.B. bei akuter Psychose, nach Krampfanfall, unter sedierenden Mitteln; Substitution ist KEIN genereller Ausschluss.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Psychiatrische Versorgung – Behandlungsangebote:\nGrundsatz: ambulant vor stationär, Betroffene möglichst im gewohnten Umfeld behandeln.\nPsychiatrische Klinik: vollstationär, bei akuter Gefährdung oder schwerer Erkrankung.\nTagesklinik: teilstationär – tagsüber Therapie, abends und am Wochenende zu Hause; ärztlich geleitet, multiprofessionelles Team.\nPsychiatrische Institutsambulanz (PIA): an eine Klinik angebunden, für schwer und chronisch Kranke.\nSozialpsychiatrischer Dienst (SpDi): kommunal, fachärztlich geleitet; Beratung, Krisenhilfe, Hausbesuche, Nachsorge nach der Klinik, Vermittlung weiterer Hilfen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Psychiatrische Versorgung – Wohnen, Arbeit, Alltag:\nBetreutes Wohnen: eigene Wohnung mit regelmäßiger Unterstützung durch Fachkräfte.\nWohnheim oder Wohngruppe: Übergang für Menschen, die noch nicht allein leben können.\nTagesstätte: Tagesstruktur, Beschäftigung, Alltagstraining. Kontakt- und Begegnungsstätte: niedrigschwellig, gegen soziale Isolation.\nWerkstatt für behinderte Menschen (WfbM): geschützte Arbeit und Vorbereitung auf den allgemeinen Arbeitsmarkt.\nSelbsthilfegruppen für Betroffene und Angehörige; gerontopsychiatrische Pflegeeinrichtungen bei Demenz.\nKostenträger: siehe Soziotherapie & Rehabilitation.',
    tags: ['Recht & Berufskunde'],
  ),

  // ============================================================
  // TEIL 16: RECHT & BERUFSKUNDE
  // ============================================================
  Flashcard(
    text:
        'Heilpraktikergesetz (HeilprG, 1939) – Kernpunkte:\n§1: Wer Heilkunde ausübt, ohne Arzt zu sein, braucht eine Erlaubnis. Heilkunde = berufs- oder gewerbsmäßige Feststellung, Heilung oder Linderung von Krankheiten, Leiden oder Körperschäden.\n§3: Keine Heilkunde im Umherziehen (Ordnungswidrigkeit, §5a); feste Praxis nötig, Hausbesuche erlaubt.\n§5: Heilkunde ohne Erlaubnis ist strafbar. §6: Zahnheilkunde fällt NICHT unter das Gesetz.\nDie Überprüfung regelt die 1. Durchführungsverordnung (DVO), nicht das Gesetz selbst.\nDie sektorale Erlaubnis für Psychotherapie (seit 1993) beruht auf dem HeilprG. Ärzte brauchen keine HP-Erlaubnis.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Welches Gesetz regelt was? – Prüfungsklassiker:\nHeilprG: Erlaubnis und Berufsbezeichnung „Heilpraktiker“ (auch sektoraler HPP), Verbot des Umherziehens. PsychThG: Bezeichnung „Psychotherapeut“.\nGeburtshilfe: nur Ärzte und Hebammen (§4 HebG, außer Notfall). Zahnheilkunde: Zahnheilkundegesetz.\nIfSG: Meldepflichten (z.B. Masern), Arztvorbehalt bei Geschlechtskrankheiten. BtMG: Betäubungsmittel (z.B. Fentanyl). AMG: Arzneimittel.\nHWG: Verbot von Heilversprechen. StGB §323c: Hilfeleistung im Notfall. BOH: Fortbildungspflicht.\nPrüfung 10/2024: Die Verbote von Geburtshilfe, Zahnbehandlung und Umherziehen wurden als „im HeilprG geregelt“ gewertet.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Erlaubnis nach HeilprG – Voraussetzungen (1. DVO §2):\nMindestens 25 Jahre alt.\nMindestens Hauptschulabschluss – eine Berufs- oder Therapieausbildung ist NICHT vorgeschrieben.\nSittliche Zuverlässigkeit (Führungszeugnis, Erklärung zu laufenden Strafverfahren).\nGesundheitliche Eignung (ärztliches Attest, keine Sucht).\nDie Überprüfung beim Gesundheitsamt ergibt keine Gefahr für die Gesundheit der Bevölkerung oder der Patienten.\nEntscheidung: untere Verwaltungsbehörde im Benehmen mit dem Gesundheitsamt. Die Erlaubnis gilt bundesweit; sie wird zurückgenommen, wenn Voraussetzungen nachträglich wegfallen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Überprüfung beim Gesundheitsamt (Leitlinien 2018):\nZweiteilig: schriftlich 28 MC-Fragen in 60 Minuten, bestanden ab ¾ richtig (21 Fragen); danach mündlich-praktisch, höchstens 45 Minuten.\nZweck: feststellen, ob eine Gefahr für die Gesundheit der Bevölkerung oder der Patienten besteht (früher „Volksgesundheit“).\nInhalte: Abgrenzung zu Arztvorbehalten und eigene Grenzen, Psychopathologie und ICD-10-Diagnostik, Notfälle, Recht und Dokumentation.\nAuch Diagnose mit Behandlungsvorschlag und Kenntnis der Therapieverfahren (Indikation, Grenzen) werden geprüft.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Psychotherapie ausüben und Berufsbezeichnung:\nPsychotherapie ausüben dürfen: Ärzte, Heilpraktiker (volle Erlaubnis), HPP und approbierte Psychotherapeuten. Ein Psychologiestudium allein berechtigt NICHT.\nPsychThG (Reform 2020): Approbation als „Psychotherapeut/in“ nach Psychotherapie-Studium und Staatsprüfung; Psychologische und Kinder- und Jugendlichenpsychotherapeuten nach altem Recht bleiben.\n„Psychotherapeut“ dürfen nur Approbierte und Ärzte führen – der HPP NICHT (strafbar, §132a StGB).\nZulässig z.B.: „Heilpraktiker (Psychotherapie)“, „Heilpraktiker für Psychotherapie“, „Heilpraktiker, beschränkt auf das Gebiet der Psychotherapie“.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Praxisgründung als HPP:\nFreier Beruf, KEIN Gewerbe: keine Gewerbeanmeldung, kein Handelsregistereintrag.\nAnmeldung beim Gesundheitsamt und beim Finanzamt (sofort bei Aufnahme der Tätigkeit).\nHeilbehandlungen sind umsatzsteuerfrei (§4 Nr. 14 UStG).\nFeste Praxisadresse erforderlich (kein Umherziehen, §3 HeilprG).\nMit Angestellten: Anmeldung bei der Berufsgenossenschaft, jährliche Unterweisung im Arbeitsschutz.\nBerufshaftpflichtversicherung: gesetzlich nicht vorgeschrieben, aber dringend empfohlen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Vergütung und Kosten beim HPP:\nKEINE Abrechnung mit der gesetzlichen Krankenversicherung (keine KV-Zulassung) – GKV-Versicherte zahlen selbst.\nPrivate Krankenversicherung erstattet je nach Tarif; die Beihilfe erstattet Psychotherapie durch HPP in der Regel NICHT.\nHonorar frei vereinbar; die GebüH ist nur Orientierung, NICHT verbindlich; ein Ausfallhonorar darf vereinbart werden.\nWirtschaftliche Aufklärungspflicht: vor Behandlungsbeginn über die voraussichtlichen Kosten in Textform informieren (§630c Abs. 3 BGB) und darauf hinweisen, dass Kassenpsychotherapie von der GKV bezahlt wird.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Berufsordnung, Fortbildung und Abstinenz:\nDie Berufsordnung für Heilpraktiker (BOH) ist Verbandsrecht und bindet die Mitglieder; sie nennt u.a. die Fortbildungspflicht.\nSupervision und regelmäßige Fortbildung sichern die Qualität; Nachweise aufbewahren. Kollegialität: kein Abwerben von Patienten.\nAbstinenzgebot: keine privaten oder sexuellen Beziehungen zu Patienten (auch nach Therapieende problematisch).\nSexuelle Handlungen unter Missbrauch des Behandlungsverhältnisses sind strafbar (§174c StGB: 3 Monate bis 5 Jahre Freiheitsstrafe).\nErotische Gefühle in der Therapie in der Supervision bearbeiten.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Heilmittelwerbegesetz (HWG) – Werbung als HPP:\nVerboten: irreführende Werbung, Heilversprechen oder Erfolgsgarantien, Werbung für verschreibungspflichtige Mittel gegenüber Laien.\nDankschreiben, Empfehlungen und Vorher-Nachher-Darstellungen sind nur verboten, wenn sie missbräuchlich, abstoßend oder irreführend sind (§11 HWG, seit 2012 gelockert).\nErlaubt: sachliche Information über Qualifikation, Verfahren und Praxis, z.B. auf der Website.\nZusätzlich gilt das Wettbewerbsrecht (UWG).\nVerstöße: Ordnungswidrigkeit bis Straftat.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Behandlungsvertrag und Patientenrechtegesetz (§§630a–h BGB):\nGilt auch für Heilpraktiker. Der Behandlungsvertrag (§630a) ist ein Dienstvertrag: geschuldet wird die fachgerechte Behandlung, NICHT der Erfolg.\nPflichten des Behandelnden: Information (§630c, auch über Kosten), Einwilligung einholen (§630d), Aufklärung (§630e), Dokumentation (§630f), Akteneinsicht gewähren (§630g).\nPflicht des Patienten: Vergütung.\nMerke: Die Meldepflicht steht NICHT im Patientenrechtegesetz, sondern im Infektionsschutzgesetz (IfSG).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Aufklärungspflicht des HPP (§630e BGB):\nAufklärung muss VOR Behandlungsbeginn erfolgen, rechtzeitig und verständlich.\nInhalte: Diagnose, geplante Therapie, Risiken und Nebenwirkungen, Erfolgsaussichten, Alternativen.\nForm: grundsätzlich mündlich, schriftliche Dokumentation empfohlen.\nAufklärungsverzicht des Patienten möglich (muss dokumentiert werden).\nBei fehlender oder mangelhafter Aufklärung: Einwilligung unwirksam = Behandlung rechtswidrig.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Dokumentation und Datenschutz in der HPP-Praxis:\nDokumentationspflicht (§630f BGB): zeitnah Anamnese, Befunde, Diagnosen, Maßnahmen, Aufklärung und Einwilligung festhalten; elektronisch zulässig; Arztbriefe gehören in die Akte.\nAufbewahrung: 10 Jahre nach Abschluss der Behandlung.\nGesundheitsdaten sind besonders geschützt (Art. 9 DSGVO); Verarbeitung im Rahmen der Behandlung ist zulässig.\nPflichten: Verzeichnis der Verarbeitungstätigkeiten, technische und organisatorische Schutzmaßnahmen (verschlossene Schränke, Passwörter), Auskunftsrecht des Patienten.\nVerstöße: Bußgelder nach DSGVO, Schadensersatz.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Akteneinsicht (§630g BGB):\nPatienten haben grundsätzlich Recht auf Einsicht in ihre vollständige Akte, auch auf Kopien (gegen Kostenerstattung).\nVerweigerung nur bei erheblichen therapeutischen Gründen (z.B. Suizidgefahr durch Diagnosekenntnis) oder wenn Rechte Dritter verletzt würden.\nVerweigerung muss begründet sein.\nDie Form des Antrags ist kein Verweigerungsgrund.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Haftung und Sorgfaltspflicht des HPP:\nZivilrechtlich: Schadensersatz und Schmerzensgeld bei Behandlungs- oder Aufklärungsfehlern (§280 BGB).\nBeweislast: grundsätzlich beim Patienten.\nBei Dokumentationsmängeln: Beweiserleichterung (§630h BGB) – was nicht dokumentiert ist, gilt als nicht geschehen.\nStrafrechtlich: Körperverletzung (§223 StGB), fahrlässige Tötung (§222 StGB).\nBerufshaftpflichtversicherung dringend empfohlen (keine gesetzliche Pflicht, aber faktisch unverzichtbar).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Schweigepflicht des HPP – Grundlage und Zeugnispflicht:\nGrundlage: Behandlungsvertrag (zivilrechtliche Schweigepflicht), Berufsordnung und Datenschutzrecht.\n§203 StGB erfasst den HP NICHT – er gilt nur für Heilberufe mit staatlich geregelter Ausbildung (z.B. Ärzte, Psychotherapeuten) und Berufspsychologen.\nUmfasst ALLES, was in der Behandlung bekannt wird – auch die Tatsache der Behandlung; gilt über den Tod hinaus.\nStrafverfahren: KEIN Zeugnisverweigerungsrecht (§53 StPO nennt HP nicht) → Aussagepflicht.\nZivilprozess: Zeugnisverweigerungsrecht nach §383 ZPO. Merke: HP müssen also nicht „auf jeden Fall“ aussagen.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Schweigepflicht – Durchbrechung:\n1. Entbindung durch den Patienten – am besten schriftlich, für bestimmten Empfänger und Zweck (z.B. Facharzt).\n2. Gesetzliche Meldepflicht nach IfSG (z.B. Masern): Auch HP sind meldepflichtig, Meldung an das Gesundheitsamt.\n3. Rechtfertigender Notstand (§34 StGB) bei akuter, konkreter Gefahr für Leib oder Leben: z.B. akute Suizidalität mit konkreter Absicht, drohende Gewalttat.\n4. Geplante schwere Straftat (z.B. Mord, Geiselnahme): Anzeigepflicht nach §138 StGB – für HP gilt keine Ausnahme.\nMerke: Die bloße Äußerung von Suizidgedanken entbindet NICHT von der Schweigepflicht.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Hilfspflichten – Garantenstellung und unterlassene Hilfeleistung:\nMit der Behandlung übernimmt der HPP eine Garantenstellung: Er muss erkennbare Gefahren wie akute Suizidalität oder Fremdgefährdung abwenden; Untätigkeit kann als Unterlassen strafbar sein (§13 StGB).\nFür jeden gilt §323c StGB: Hilfe bei Unglücksfällen, gemeiner Gefahr oder Not, soweit zumutbar; Verstoß: Freiheitsstrafe bis 1 Jahr oder Geldstrafe.\nDie Hilfeleistungspflicht stammt aus dem StGB, NICHT aus dem Heilpraktikergesetz.\nPrüfung: Wann MUSS der HPP handeln (Notfall) – wann DARF er nicht behandeln (organisch)?',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Kindeswohlgefährdung – Vorgehen des HPP:\nKeine gesetzliche Meldepflicht: §8a SGB VIII gilt für Jugendamt und Jugendhilfeträger, §4 KKG nennt Heilpraktiker nicht.\nAnspruch auf Beratung durch eine „insoweit erfahrene Fachkraft“ des Jugendamts (§8b SGB VIII).\nZuerst mit den Sorgeberechtigten sprechen und auf Hilfen hinwirken – sofern das Kind dadurch nicht zusätzlich gefährdet wird.\nReicht das nicht oder ist die Gefahr dringend: Information an das Jugendamt ist erlaubt (rechtfertigender Notstand, §34 StGB); bei akuter Gefahr Polizei.',
    tags: ['Recht & Berufskunde', 'F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Aufnahme auf geschlossener Station – Rechtsgrundlagen:\n(1) Strafrecht: Maßregelvollzug nach §63/§64 StGB (nach einer Straftat).\n(2) PsychKG bzw. Unterbringungsgesetz des Landes: öffentlich-rechtlich, bei Selbst- oder Fremdgefährdung.\n(3) Betreuungsrecht (§1831 BGB): zivilrechtlich, zum Wohl des Betreuten; bei Minderjährigen §1631b BGB.\n(4) Freiwillige Aufnahme – rechtlich keine Unterbringung, jederzeit widerrufbar.\nÜber Unterbringung und Behandlung gegen den Willen entscheidet immer ein Richter – weder Arzt, HP, Angehörige noch Ärztekammer.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterbringung nach PsychKG (Landesrecht):\nVoraussetzung: psychische Krankheit UND dadurch akute, erhebliche Gefahr für Leben/Gesundheit des Betroffenen oder bedeutende Rechtsgüter anderer UND keine mildere Alternative.\nAntrag der zuständigen Behörde mit ärztlichem Zeugnis; das Amtsgericht (Betreuungsgericht) ordnet an, zeitlich befristet.\nBei Gefahr im Verzug: vorläufige Unterbringung durch Ordnungsbehörde oder Polizei; das Gericht entscheidet meist bis Ende des Folgetags.\nReicht NICHT allein: Behandlungsunwilligkeit, Gesetzesverstöße, Drogenkonsum, Geschäftsunfähigkeit, HP-Attest.\nFremdgefährdung ohne psychische Krankheit → Polizeigewahrsam.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterbringung nach Betreuungsrecht (§1831 BGB, bis 2022 §1906):\nZulässig, solange zum Wohl des Betreuten erforderlich: bei Gefahr der Selbsttötung oder erheblichen Selbstschädigung ODER für eine notwendige Untersuchung/Behandlung, deren Notwendigkeit er krankheitsbedingt nicht einsieht.\nSetzt eine psychische Krankheit oder geistige/seelische Behinderung voraus – auch ohne akute Psychose (z.B. Demenz).\nGenehmigung des Betreuungsgerichts nach Sachverständigengutachten; bei Gefahr im Verzug unverzüglich nachholen.\nAuch im Pflegeheim möglich; eine Patientenverfügung schließt sie nicht grundsätzlich aus. Fremdgefährdung → PsychKG.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Unterbringung Minderjähriger (§1631b BGB):\nEine freiheitsentziehende Unterbringung des Kindes braucht die Genehmigung des Familiengerichts.\nDie Sorgeberechtigten können sie beantragen.\nGründe: Kindeswohl, v.a. erhebliche Selbst- ODER Fremdgefährdung.\nBei Kindeswohlgefährdung auch ohne Einverständnis der Eltern möglich (Familiengericht) – ebenso nach PsychKG.\nMerke: Auch Minderjährige können gegen ihren Willen untergebracht werden.',
    tags: ['Recht & Berufskunde', 'F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Maßregelvollzug (§§63, 64 StGB):\n§63: psychiatrisches Krankenhaus, wenn jemand eine rechtswidrige Tat schuldunfähig (§20) oder vermindert schuldfähig (§21) begangen hat und weitere erhebliche Taten zu erwarten sind.\n§64: Entziehungsanstalt bei Hang zu Alkohol oder Drogen (Substanzkonsumstörung) und Tat im Rausch oder aus dem Hang heraus – nur bei konkreter Aussicht auf Behandlungserfolg.\nDas Strafgericht ordnet an; keine vorherige Betreuung nötig, Eltern können sie NICHT anordnen.\nAbgrenzung: PsychKG und §1831 BGB setzen keine Straftat voraus; Sicherungsverwahrung ist keine psychiatrische Unterbringung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Rechtliche Betreuung – Voraussetzungen (§1814 BGB):\nVolljähriger kann wegen Krankheit oder Behinderung seine Angelegenheiten ganz oder teilweise nicht besorgen (häufig Demenz, Psychosen, geistige Behinderung).\nErforderlichkeitsgrundsatz: nur wenn Vollmacht oder andere Hilfen nicht reichen; nicht gegen den freien Willen.\nDas Betreuungsgericht bestellt (nicht das Gesundheitsamt) – auf Antrag des Betroffenen (auch Geschäftsunfähiger) oder von Amts wegen; Angehörige können nur ANREGEN.\nNur für Volljährige (Minderjährige: Vormundschaft).\nÜberprüfung spätestens nach 7 Jahren; nach 2 Jahren, wenn gegen den erklärten Willen angeordnet (§295 FamFG).',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Betreuer – Aufgaben und Grenzen:\nAufgabenkreise nur soweit nötig, z.B. nur Gesundheitssorge, Vermögen, Aufenthalt oder Behördenangelegenheiten.\nDie Betreuung macht NICHT geschäftsunfähig; außerhalb der Aufgabenkreise handelt der Betreute selbst.\nSeit 2023: Der Betreuer muss die Wünsche des Betreuten feststellen und ihnen grundsätzlich entsprechen (§1821 BGB); Unterstützung geht vor Stellvertretung.\nUnterbringung, riskante Eingriffe und Zwangsbehandlung NICHT eigenständig – nur mit Genehmigung des Betreuungsgerichts.\nPsychotherapie mit Betreuten braucht keine gerichtliche Genehmigung; keine Methodenbeschränkung für den HP.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Betreuter lehnt Behandlung ab – Einwilligung und Zwang:\nIst er einwilligungsfähig, hat sein Wille Vorrang (Selbstbestimmungsrecht) – die Maßnahme unterbleibt.\nIst er nicht einwilligungsfähig, entscheidet der Betreuer mit Aufgabenkreis Gesundheit nach den Wünschen und dem mutmaßlichen Willen des Betreuten.\nWidersetzt sich der Betreute, ist es eine ärztliche Zwangsmaßnahme: nur bei drohendem erheblichem Gesundheitsschaden, stationär und mit Genehmigung des Betreuungsgerichts (§1832 BGB).\nMerke: Der Betreuer kann dann NICHT einfach einwilligen, sondern beantragt die Genehmigung.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Einwilligungsvorbehalt (§1825 BGB, bis 2022 §1903):\nDas Betreuungsgericht ordnet an: Bestimmte Rechtsgeschäfte des Betreuten werden nur mit Einwilligung des Betreuers wirksam (z.B. Käufe in der Manie).\nVoraussetzung: erhebliche Gefahr für Person oder Vermögen des Betreuten – er schützt den Betreuten, nicht Dritte.\nAusgenommen: höchstpersönliche Geschäfte (Eheschließung, Testament) und geringfügige Alltagsgeschäfte.\nTypische Grundlage: psychische Krankheit oder geistige Behinderung, NICHT eine körperliche Erkrankung.\nBefristet und regelmäßig überprüft – nicht lebenslang.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Vorsorgevollmacht, Betreuungsverfügung, Patientenverfügung:\nVorsorgevollmacht (§1820 BGB): Eine Vertrauensperson handelt bei eigener Entscheidungsunfähigkeit – eine Betreuung wird dann meist überflüssig.\nBetreuungsverfügung: Wunsch, WER Betreuer werden soll (oder wer nicht).\nPatientenverfügung (§1827 BGB): schriftliche Vorab-Festlegung zu medizinischen Maßnahmen; bindet Betreuer und Arzt, wenn sie auf die Situation zutrifft.\nEhegatten-Notvertretung (§1358 BGB, seit 2023): Bei Bewusstlosigkeit oder Krankheit darf der Ehegatte bis zu 6 Monate in Gesundheitsfragen entscheiden – nicht bei Getrenntleben, Vollmacht oder Betreuer.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Geschäftsunfähigkeit (§104 BGB):\nGeschäftsunfähig ist, wer das 7. Lebensjahr nicht vollendet hat ODER sich in einem die freie Willensbestimmung ausschließenden Zustand krankhafter Störung der Geistestätigkeit befindet (sofern nicht nur vorübergehend).\nWillenserklärungen Geschäftsunfähiger sind nichtig (§105 BGB).\nNicht jeder akute psychische Zustand führt zur Geschäftsunfähigkeit.\nRechenstörung und Analphabetismus begründen KEINE Geschäftsunfähigkeit.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Einwilligungsfähigkeit vs. Geschäftsfähigkeit:\nEinwilligungsfähig ist, wer Art, Bedeutung und Tragweite einer Behandlung verstehen und danach entscheiden kann – vor Behandlungsbeginn prüfen.\nKein festes Mindestalter; Richtwert: unter 14 meist nicht, 14–16 Einzelfall, ab 16 in der Regel gegeben – entscheidend ist die individuelle Reife.\nGeschäftsfähigkeit = Fähigkeit, wirksam Verträge zu schließen (§§104 ff. BGB); voll ab 18.\nBeide sind unabhängig: Ein Geschäftsunfähiger (auch ein Betreuter) kann einwilligungsfähig sein – und umgekehrt.',
    tags: ['Recht & Berufskunde'],
  ),
  Flashcard(
    text:
        'Minderjährige in der Psychotherapie:\nUnter 7 Jahren geschäftsunfähig (§104 BGB), 7–17 beschränkt geschäftsfähig (§106 BGB): Den Behandlungsvertrag schließen die Sorgeberechtigten.\nBei gemeinsamem Sorgerecht müssen BEIDE Elternteile zustimmen – auch nach Trennung; die Zustimmung eines Elternteils oder eine Schulbescheinigung reicht nicht.\nEin 9-jähriges Kind kann keinen eigenen Behandlungsvertrag schließen.\nEinwilligungsfähigkeit wird unabhängig vom Alter individuell beurteilt (siehe dort).\nSchweigepflicht gilt auch gegenüber den Eltern, soweit der Jugendliche einwilligungsfähig ist.',
    tags: ['Recht & Berufskunde', 'F7-F9 – Entwicklung & Kindheit'],
  ),
  Flashcard(
    text:
        'Schuldfähigkeit (§§20, 21 StGB):\n§20: Schuldunfähig, wer das Unrecht nicht einsehen oder nicht danach handeln kann wegen (1) krankhafter seelischer Störung (Psychose, Delir, Rausch, Demenz), (2) tiefgreifender Bewusstseinsstörung (hochgradiger Affekt), (3) Intelligenzminderung oder (4) schwerer anderer seelischer Störung (schwere PS, Sucht, Paraphilie).\n§21: erheblich verminderte Schuldfähigkeit → Strafe kann gemildert werden.\nBegriffe seit 2021 neu (früher „Schwachsinn“, „schwere andere seelische Abartigkeit“).\nVollrausch (§323a StGB) ist ein eigener Straftatbestand. Die Schuldfähigkeit beurteilen Gutachter, nicht der Therapeut.',
    tags: ['Recht & Berufskunde'],
  ),

  // ============================================================
  // TEIL 17: ZEITKRITERIEN & ZAHLEN
  // ============================================================
  Flashcard(
    text:
        'Zeitkriterien (1) – Minuten bis 1 Monat:\nAkute Belastungsreaktion (F43.0): Minuten bis Tage.\nHypomanie (F30.0): mind. einige Tage.\nManische Episode (F30.1/F30.2): mind. 1 Woche.\nDepressive Episode (F32): mind. 2 Wochen.\nAkute vorübergehende psychotische Störung (F23): Beginn innerhalb von 2 Wochen.\nSchizophrenie (F20): Symptome mind. 1 Monat (DSM-5: 6 Monate).\nAnpassungsstörung (F43.2): Beginn innerhalb von 1 Monat nach der Belastung.',
    tags: ['ICD-10 Grundlagen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Zeitkriterien (2) – Monate:\nMind. 3 Monate: anhaltende wahnhafte Störung (F22); Enuresis (ab 5 Jahren).\nPTBS (F43.1): Beginn innerhalb von 6 Monaten nach dem Trauma.\nAnpassungsstörung: Dauer max. 6 Monate (Ausnahme F43.21 längere depressive Reaktion: bis 2 Jahre).\nMind. 6 Monate: GAD (F41.1), Hypochondrie (F45.2), ADHS (F90), Störung des Sozialverhaltens (F91), Demenz.\nAbhängigkeit: mind. 3 von 6 Kriterien gleichzeitig innerhalb der letzten 12 Monate.\nMind. 12 Monate: schizophrenes Residuum (F20.5); chronische Tics bzw. Tourette-Syndrom (F95.2) über 12 Monate.',
    tags: ['ICD-10 Grundlagen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Zeitkriterien (3) – mind. 2 Jahre:\nDysthymia (F34.1) und Zyklothymia (F34.0).\nSchizotype Störung (F21).\nSomatisierungsstörung (F45.0).\nAndauernde Persönlichkeitsänderung (F62).\nMerke: 2 Jahre = chronisch-anhaltende, eher leichte Bilder. Episoden sind deutlich kürzer: Manie 1 Woche, Depression 2 Wochen, Schizophrenie 1 Monat.',
    tags: ['ICD-10 Grundlagen', 'Differentialdiagnosen'],
  ),
  Flashcard(
    text:
        'Wichtige Zahlenwerte für die Prüfung:\nBMI ≤17,5 = Anorexia nervosa. IQ <70 = Intelligenzminderung.\nBeginn vor 7. Lebensjahr = ADHS; vor 3. Lebensjahr = Frühkindlicher Autismus.\n3 von 6 Kriterien innerhalb von 12 Monaten = Abhängigkeit.\n2 Haupt- + 2 Zusatzsymptome = leichte Depression.\nAkute psychotische Störung = Beginn innerhalb von 2 Wochen.\nCa. 90 % der Suizide bei psychischer Erkrankung; Lebenszeitrisiko Schizophrenie ca. 1 %.\n90% Serotonin im Darm.',
    tags: ['ICD-10 Grundlagen'],
  ),
];
