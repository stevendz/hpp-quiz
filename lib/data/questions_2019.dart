import '../models/question.dart';

const List<Question> questions2019 = [
  Question(
    id: 1,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Bei einer katatonen Schizophrenie (nach ICD-10)',
    options: [
      'A) Es handelt sich um die häufigste Form der Schizophrenie',
      'B) Stupor und Erregungszustände können im Wechsel auftreten',
      'C) Die Erkrankung beginnt typischerweise erst im höheren Lebensalter',
      'D) Es können Haltungsstereotypien und wächserne Biegsamkeit (Flexibilitas cerea) auftreten',
      'E) Katatone Symptome kommen ausschließlich bei schizophrenen Störungen vor',
    ],
    correct: [1, 3],
    explanation:
        'Bei der katatonen Schizophrenie (F20.2) stehen psychomotorische Störungen im Vordergrund. Stupor und Erregungszustände können im Wechsel auftreten (B richtig). Typisch sind auch Haltungsstereotypien und wächserne Biegsamkeit (Flexibilitas cerea) sowie Befehlsautomatie und Negativismus (D richtig). Die häufigste Form der Schizophrenie ist die paranoide Schizophrenie, nicht die katatone (A falsch). Die katatone Schizophrenie hat keinen typischen Beginn im höheren Lebensalter (C falsch). Katatone Symptome können auch bei anderen Erkrankungen auftreten, z.B. bei organischen Störungen (E falsch).',
  ),
  Question(
    id: 2,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Das Rollenspiel im Rahmen der Verhaltenstherapie beruht insbesondere auf den Lernmechanismen:',
    options: [
      'A) Indirekte Bestrafung',
      'B) Positive Verstärkung',
      'C) Negative Verstärkung',
      'D) Lernen am Modell',
      'E) Habituation',
    ],
    correct: [1, 3],
    explanation:
        'Das Rollenspiel in der Verhaltenstherapie basiert auf positiver Verstärkung (B richtig) – der Patient erhält positives Feedback für angemessenes Verhalten – und auf Lernen am Modell (D richtig) – der Therapeut demonstriert das gewünschte Verhalten (Modellernen nach Bandura). Indirekte Bestrafung (A), negative Verstärkung (C) und Habituation (E) sind nicht die zentralen Lernmechanismen beim Rollenspiel.',
  ),
  Question(
    id: 3,
    exam: 'März 2019',
    q: 'Welche Aussage zu Demenzerkrankung trifft zu?',
    options: [
      'A) Die Lewy-Körperchen-Demenz ist die häufigste Form der Demenzerkrankung',
      'B) Die Demenz bei Alzheimer-Krankheit ist durch einen akuten Beginn und den plötzlichen Verfall der kognitiven Fähigkeiten gekennzeichnet',
      'C) Die Creutzfeldt-Jakob-Krankheit tritt als sehr langsam fortschreitende Demenz in Erscheinung',
      'D) Zu Beginn der Demenz bei Pick-Krankheit (frontotemporale Demenz) stehen Charakterveränderungen und der Verlust sozialer Fähigkeiten im Vordergrund',
      'E) Die Blutwerte zeigen bei Demenz spezifische Veränderungen',
    ],
    correct: [3],
    explanation:
        'Bei der Pick-Krankheit (frontotemporale Demenz) stehen zu Beginn Persönlichkeitsveränderungen, Vergröberung des Sozialverhaltens und Enthemmung im Vordergrund, erst später kommen kognitive Defizite hinzu (D richtig). Die häufigste Demenzform ist die Alzheimer-Demenz, nicht die Lewy-Körperchen-Demenz (A falsch). Alzheimer beginnt schleichend, nicht akut (B falsch). Die Creutzfeldt-Jakob-Krankheit verläuft rasch progredient, nicht langsam (C falsch). Es gibt keine spezifischen Blutwerte für Demenz (E falsch).',
  ),
  Question(
    id: 4,
    exam: 'März 2019',
    q: 'Welches der folgenden Therapieverfahren eignet sich besonders für die Behandlung der Zwangsstörung?',
    options: [
      'A) Psychopharmakotherapie mit Mood Stabilizern (Stimmungsstabilisierer)',
      'B) Katathyme imaginative Therapie',
      'C) Hypnose',
      'D) Kognitive Verhaltenstherapie ohne Exposition',
      'E) Kognitive Verhaltenstherapie einschließlich Exposition',
    ],
    correct: [4],
    explanation:
        'Die kognitive Verhaltenstherapie mit Exposition und Reaktionsverhinderung (ERP) ist der Goldstandard der Behandlung von Zwangsstörungen (E richtig). Die Exposition gegenüber den zwangsauslösenden Reizen bei gleichzeitiger Verhinderung der Zwangshandlung ist der entscheidende Wirkfaktor. Mood Stabilizer (A) sind nicht Mittel der Wahl bei Zwangsstörungen. Katathyme Therapie (B) und Hypnose (C) sind nicht evidenzbasiert für Zwangsstörungen. KVT ohne Exposition (D) wäre deutlich weniger wirksam.',
  ),
  Question(
    id: 5,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Neben der Psychopharmakotherapie und Psychotherapie sind nachgewiesen wirksame Methoden der Behandlung einer depressiven Episode:\n1. Wachtherapie (Schlafentzugstherapie)\n2. Elektrokonvulsive Therapie (EKT)\n3. Hyperbare Oxygenierung\n4. Lichttherapie\n5. Aderlass',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 2 und 4 sind richtig',
      'C) Nur die Aussagen 1, 2 und 4 sind richtig',
      'D) Nur die Aussagen 1, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Wachtherapie (Schlafentzugstherapie) zeigt einen raschen, aber oft nur kurzfristigen antidepressiven Effekt (1 richtig). Die EKT ist eine der wirksamsten Behandlungen bei schwerer, therapieresistenter Depression (2 richtig). Lichttherapie ist besonders bei saisonal abhängiger Depression (SAD) wirksam (4 richtig). Die hyperbare Oxygenierung (3) ist keine evidenzbasierte Depressionsbehandlung. Aderlass (5) ist eine historische Methode ohne Evidenz bei Depression.',
  ),
  Question(
    id: 6,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Zu den typischen Differentialdiagnosen bei einer depressiven Episode (nach ICD-10) zählen:\n1. Organisch bedingte depressive Symptomatik\n2. Paranoide Persönlichkeitsstörung\n3. Anpassungsstörung\n4. Hypothyreose\n5. Dysthymia',
    options: [
      'A) Nur die Aussagen 1, 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 3 und 4 sind richtig',
      'C) Nur die Aussagen 1, 3 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: [4],
    explanation:
        'Typische Differentialdiagnosen bei Depression sind: organisch bedingte depressive Symptomatik (1 richtig, z.B. durch Hirnerkrankungen), Anpassungsstörung (3 richtig, depressive Reaktion auf Belastung), Hypothyreose (4 richtig, kann depressive Symptome verursachen) und Dysthymia (5 richtig, chronisch-depressive Verstimmung). Die paranoide Persönlichkeitsstörung (2) gehört nicht zu den typischen Differentialdiagnosen einer depressiven Episode.',
  ),
  Question(
    id: 7,
    exam: 'März 2019',
    q: 'Welche der folgenden Therapiemethoden sollten bei der Behandlung der spezifischen Phobie im Vordergrund stehen? Wählen Sie zwei Antworten!',
    options: [
      'A) Entspannungsverfahren',
      'B) Medikamentöse Behandlung mit Antidepressiva',
      'C) Medikamentöse Behandlung mit Anxiolytika',
      'D) Expositionstherapie',
      'E) Psychodynamische Therapie',
    ],
    correct: [0, 3],
    explanation:
        'Die Expositionstherapie (D richtig) ist die Methode der Wahl bei spezifischen Phobien. Entspannungsverfahren (A richtig) werden begleitend eingesetzt, z.B. als Bestandteil der systematischen Desensibilisierung nach Wolpe. Antidepressiva (B) und Anxiolytika (C) sind bei spezifischen Phobien nicht die erste Wahl. Psychodynamische Therapie (E) hat bei spezifischen Phobien ebenfalls keine vorrangige Stellung.',
  ),
  Question(
    id: 8,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zu somatoformen Störungen (nach ICD-10) treffen zu?\n1. Depressive Störungen können begleitend auftreten\n2. In den meisten Fällen geht einer somatoformen Schmerzstörung eine nachweisbare organische Ursache (z.B. Verletzung) voraus\n3. Eine Chronifizierung tritt nur in sehr seltenen Fällen auf\n4. Beim Vorliegen einer somatoformen Schmerzstörung ist ein Antipsychotikum Mittel der Wahl\n5. Patienten mit einer somatoformen Störung suchen häufig primär einen Hausarzt oder Internisten auf',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 1 und 5 sind richtig',
      'C) Nur die Aussagen 4 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2 und 5 sind richtig',
      'E) Nur die Aussagen 1, 3 und 5 sind richtig',
    ],
    correct: [1],
    explanation:
        'Bei somatoformen Störungen treten häufig komorbide depressive Störungen auf (1 richtig). Patienten suchen typischerweise zuerst somatische Ärzte auf, da sie eine körperliche Ursache vermuten (5 richtig). Definitionsgemäß liegt bei somatoformen Störungen keine ausreichende organische Ursache vor (2 falsch). Chronifizierung ist bei somatoformen Störungen häufig, nicht selten (3 falsch). Antipsychotika sind nicht Mittel der Wahl (4 falsch); ggf. kommen Antidepressiva in Betracht.',
  ),
  Question(
    id: 9,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen trifft (treffen) zu? Für eine schizoide Persönlichkeitsstörung (nach ICD-10) spricht/sprechen am ehesten:\n1. Wenige oder überhaupt keine Tätigkeiten bereiten Freude\n2. Starke Neigung zu theatralischem Verhalten und übertriebener Ausdruck von Gefühlen\n3. Übersteigertes Interesse an sexuellen Erfahrungen mit anderen Menschen\n4. Mangel an engen Freunden oder vertrauensvollen Beziehungen\n5. Übermäßiges Bedürfnis nach Anerkennung und Bewunderung',
    options: [
      'A) Nur die Aussage 4 ist richtig',
      'B) Nur die Aussagen 1 und 2 sind richtig',
      'C) Nur die Aussagen 1 und 4 sind richtig',
      'D) Nur die Aussagen 2, 3 und 5 sind richtig',
      'E) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Die schizoide Persönlichkeitsstörung ist durch emotionale Kühle, Distanziertheit und eingeschränkte Fähigkeit, Gefühle auszudrücken, gekennzeichnet. Wenige Tätigkeiten bereiten Freude (1 richtig) und es besteht ein Mangel an engen Freunden (4 richtig). Theatralisches Verhalten (2) gehört zur histrionischen PS. Übersteigertes sexuelles Interesse (3) ist untypisch – eher Gleichgültigkeit. Bedürfnis nach Anerkennung (5) gehört zur narzisstischen PS.',
  ),
  Question(
    id: 10,
    exam: 'März 2019',
    q: 'Ein 49-jähriger Mann kommt in Ihre Praxis, da er sich seit mehreren Wochen und ohne erkennbaren Anlass traurig und weniger leistungsfähig als früher fühlt. Sie vermuten eine leichte depressive Episode (nach ICD-10). Welche der folgenden Symptome passen am besten zu dieser Verdachtsdiagnose?\n1. Kreisende Gedanken\n2. Verarmungswahn\n3. Antriebsstörung\n4. Schlafstörungen\n5. Bewusstseinsstörung',
    options: [
      'A) Nur die Aussagen 1, 3 und 4 sind richtig',
      'B) Nur die Aussagen 1, 3 und 5 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
    ],
    correct: [0],
    explanation:
        'Bei einer leichten depressiven Episode passen kreisende Gedanken/Grübeln (1 richtig), Antriebsstörung (3 richtig) und Schlafstörungen (4 richtig). Verarmungswahn (2) tritt erst bei schweren depressiven Episoden mit psychotischen Symptomen auf, nicht bei leichten Episoden. Bewusstseinsstörungen (5) gehören nicht zum typischen Bild einer Depression.',
  ),
  Question(
    id: 11,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Diagnostische Leitlinien für den schädlichen Gebrauch von psychotropen Substanzen (nach ICD-10) sind:\n1. Sozial unüblicher Konsum der entsprechenden Substanz\n2. Starker Wunsch oder eine Art Zwang die Substanz zu konsumieren\n3. Fortschreitende Vernachlässigung anderer Interessen zugunsten des Substanzkonsums\n4. Körperliche Störung aufgrund des Substanzkonsums\n5. Psychische Störung aufgrund des Substanzkonsums',
    options: [
      'A) Nur die Aussagen 1 und 5 sind richtig',
      'B) Nur die Aussagen 2 und 4 sind richtig',
      'C) Nur die Aussagen 4 und 5 sind richtig',
      'D) Nur die Aussagen 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Der schädliche Gebrauch (F1x.1) ist definiert durch eine tatsächliche Schädigung der psychischen oder physischen Gesundheit (4 und 5 richtig). Sozial unüblicher Konsum allein (1) ist kein diagnostisches Kriterium. Starker Konsumwunsch/Zwang (2) und Vernachlässigung anderer Interessen (3) sind Kriterien des Abhängigkeitssyndroms (F1x.2), nicht des schädlichen Gebrauchs.',
  ),
  Question(
    id: 12,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Diagnostische Leitlinien für ein Delir (nach ICD-10) sind:\n1. Störungen des Schlaf-Wach-Rhythmus\n2. Irreversible kognitive Störung\n3. Dauer seit mindestens 6 Monaten\n4. Störungen des Bewusstseins und der Aufmerksamkeit\n5. Affektive Störungen wie Depression, Angst oder Reizbarkeit',
    options: [
      'A) Nur die Aussagen 1 und 5 sind richtig',
      'B) Nur die Aussagen 2 und 4 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'E) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Diagnostische Leitlinien des Delirs nach ICD-10: Störungen des Schlaf-Wach-Rhythmus (1 richtig), Störungen des Bewusstseins und der Aufmerksamkeit (4 richtig, Leitsymptom) sowie affektive Störungen wie Angst, Reizbarkeit oder Depression (5 richtig). Die kognitiven Störungen beim Delir sind prinzipiell reversibel, nicht irreversibel (2 falsch). Ein Delir ist ein akutes Geschehen und dauert nicht mindestens 6 Monate (3 falsch).',
  ),
  Question(
    id: 13,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zur Somatisierungsstörung (nach ICD-10) treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Die Betroffenen sind aufgrund ihres hohen Leidensdruckes meist rasch zu einer Psychotherapie motivierbar',
      'B) Im Störungsverlauf kann es zu einer Abhängigkeit oder einem Missbrauch von Medikamenten kommen',
      'C) Die Diagnose kann nach 3 Monaten bei entsprechender Symptomatik gestellt werden',
      'D) Die Störung tritt bei beiden Geschlechtern gleich häufig auf',
      'E) Die Störung beginnt meist im frühen Erwachsenenalter',
    ],
    correct: [1, 4],
    explanation:
        'Im Verlauf der Somatisierungsstörung kann es durch häufige Arztbesuche und Medikamenteneinnahme zu Abhängigkeit oder Missbrauch kommen (B richtig). Die Störung beginnt meist vor dem 30. Lebensjahr, also im frühen Erwachsenenalter (E richtig). Betroffene sind oft nicht leicht für Psychotherapie motivierbar, da sie eine somatische Ursache vermuten (A falsch). Die Diagnose erfordert nach ICD-10 eine Dauer von mindestens 2 Jahren, nicht 3 Monaten (C falsch). Frauen sind häufiger betroffen als Männer (D falsch).',
  ),
  Question(
    id: 14,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zur psychotischen Störung Alkoholhalluzinose treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Wahnideen sprechen gegen eine Alkoholhalluzinose',
      'B) Psychomotorische Störungen wie z.B. Erregung können auftreten',
      'C) Charakteristisch sind ausgeprägte vegetative Begleiterscheinungen',
      'D) Bewusstseinseintrübung ist ein Hauptmerkmal bei der Alkoholhalluzinose',
      'E) Die Alkoholhalluzinose ist typischerweise durch akustische Halluzinationen und Angst gekennzeichnet',
    ],
    correct: [1, 4],
    explanation:
        'Die Alkoholhalluzinose ist gekennzeichnet durch akustische Halluzinationen (oft beschimpfende oder bedrohende Stimmen) und begleitende Angst (E richtig). Psychomotorische Störungen wie Erregung können auftreten (B richtig). Im Gegensatz zum Delir ist das Bewusstsein bei der Alkoholhalluzinose klar, es liegt keine Bewusstseinseintrübung vor (D falsch). Ausgeprägte vegetative Symptome sind eher für das Alkoholdelir typisch (C falsch). Wahnideen können bei Alkoholhalluzinose durchaus begleitend auftreten (A falsch).',
  ),
  Question(
    id: 15,
    exam: 'März 2019',
    q: 'Eine Frau bittet einen Therapeuten wegen ihres 7-jährigen Sohnes, der an einer Aufmerksamkeitsdefizit-/Hyperaktivitätsstörung (ADHS) leidet, um Hilfe. Welche Aussage trifft zu?',
    options: [
      'A) Der Therapeut sollte grundsätzlich von einer Psychopharmakotherapie abraten',
      'B) Bei oppositionellem Problemverhalten des Kindes ist ein Elterntraining kontraindiziert',
      'C) Ein soziales Kompetenztraining ist immer indiziert',
      'D) Bei Kindern mit Problemen in der Schule sollte der Schwerpunkt der Behandlung auf einer Psychoedukation der Eltern liegen',
      'E) Mit einem Token-System (z.B. Sternchen, die in andere Verstärker eingetauscht werden können) lässt sich Verhalten gezielt operant konditionieren',
    ],
    correct: [4],
    explanation:
        'Ein Token-System (Verstärkerplan) ist eine bewährte Methode der operanten Konditionierung, mit der erwünschtes Verhalten systematisch aufgebaut werden kann (E richtig). Grundsätzlich von Medikamenten abraten wäre falsch, da Methylphenidat eine wichtige Behandlungsoption bei ADHS darstellt (A falsch). Elterntraining ist gerade bei oppositionellem Verhalten indiziert, nicht kontraindiziert (B falsch). Ein soziales Kompetenztraining ist nicht in jedem Fall indiziert (C falsch). Der Behandlungsschwerpunkt sollte multimodal sein, nicht nur auf Psychoedukation beschränkt (D falsch).',
  ),
  Question(
    id: 16,
    exam: 'März 2019',
    q: 'Welche der folgenden Störungen werden nach ICD-10 zu den neurotischen, Belastungs- und somatoformen Störungen gerechnet?\n1. Angststörungen\n2. Zwangsstörungen\n3. Schizophrenien\n4. Reaktionen auf schwere Belastungen und Anpassungsstörungen\n5. Dissoziative Störungen',
    options: [
      'A) Nur die Aussagen 1 und 5 sind richtig',
      'B) Nur die Aussagen 1, 2 und 4 sind richtig',
      'C) Nur die Aussagen 2, 4 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [3],
    explanation:
        'Zur ICD-10-Kategorie F4 (Neurotische, Belastungs- und somatoforme Störungen) gehören: Angststörungen F40-F41 (1 richtig), Zwangsstörungen F42 (2 richtig), Reaktionen auf schwere Belastungen und Anpassungsstörungen F43 (4 richtig) sowie dissoziative Störungen F44 (5 richtig). Schizophrenien (3) gehören zur Kategorie F2 und sind keine neurotischen Störungen.',
  ),
  Question(
    id: 17,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zur freiheitsentziehenden Unterbringung eines Betreuten (nach BGB) treffen zu?\n1. Eine Unterbringung des Betreuten durch den Betreuer, die mit Freiheitsentziehung verbunden ist, ist nur zulässig, solange sie zum Wohl des Betreuten erforderlich ist\n2. Die Unterbringung ist nur mit Genehmigung des Betreuungsgerichts zulässig. Ohne die Genehmigung ist die Unterbringung nur zulässig, wenn mit dem Aufschub Gefahr verbunden ist; die Genehmigung ist dann unverzüglich nachzuholen\n3. Liegt eine Patientenverfügung vor, so ist die Unterbringung nach BGB nicht möglich\n4. Eine Unterbringung ist nur in psychiatrischen Kliniken, nicht aber in Pflegeheimen möglich\n5. Im Rahmen der Erteilung einer Genehmigung zur Unterbringung muss das zuständige Gericht ein Sachverständigengutachten einholen',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 2 und 5 sind richtig',
      'C) Nur die Aussagen 1, 2 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Die Unterbringung muss zum Wohl des Betreuten erforderlich sein (1 richtig, § 1831 BGB). Sie bedarf der Genehmigung des Betreuungsgerichts, bei Gefahr im Verzug ist nachträgliche Genehmigung möglich (2 richtig). Ein Sachverständigengutachten muss vor der Genehmigung eingeholt werden (5 richtig). Eine Patientenverfügung schließt eine Unterbringung nicht grundsätzlich aus, wenn Gefahr für Leib und Leben besteht (3 falsch). Die Unterbringung kann auch in anderen geeigneten Einrichtungen erfolgen, nicht nur in psychiatrischen Kliniken (4 falsch).',
  ),
  Question(
    id: 18,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen trifft (treffen) zu? Negativsymptom(e) eines schizophrenen Residuums ist/sind:\n1. Psychomotorische Verlangsamung\n2. Affektverflachung\n3. Passivität und Initiativemangel\n4. Akustische und optische Halluzinationen\n5. Negativismus',
    options: [
      'A) Nur die Aussage 5 ist richtig',
      'B) Nur die Aussagen 1 und 4 sind richtig',
      'C) Nur die Aussagen 1, 2 und 3 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Typische Negativsymptome eines schizophrenen Residuums sind: psychomotorische Verlangsamung (1 richtig), Affektverflachung (2 richtig) und Passivität mit Initiativemangel (3 richtig). Akustische und optische Halluzinationen (4) sind Positivsymptome, keine Negativsymptome. Negativismus (5) ist ein katatones Symptom und wird nicht zu den typischen Negativsymptomen des Residuums gezählt.',
  ),
  Question(
    id: 19,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zur psychiatrisch-psychotherapeutischen Diagnostik treffen zu?\n1. In der Anamnese sollte auch immer nach körperlichen Vorerkrankungen gefragt werden\n2. Zu einer vollständigen psychiatrisch-psychotherapeutischen Anamnese gehört auch die Sexualanamnese\n3. Nach Suizidalität sollte nicht im Erstgespräch gefragt werden, da in dieser Situation noch keine Vertrauensbasis zwischen Patient und Untersucher besteht\n4. Die Beurteilung der Orientierung, der Affektivität, des Antriebs und der Wahrnehmung sind wichtige Inhalte des psychopathologischen Befundes\n5. Anamnese, eigene Beobachtung des Untersuchers sowie gegebenenfalls psychologische Tests und fremdanamnestische Angaben sind die Grundlage für die Erstellung eines psychopathologischen Befundes',
    options: [
      'A) Nur die Aussagen 1, 3 und 5 sind richtig',
      'B) Nur die Aussagen 2, 4 und 5 sind richtig',
      'C) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [3],
    explanation:
        'In der psychiatrischen Anamnese sollte immer nach körperlichen Vorerkrankungen gefragt werden (1 richtig). Die Sexualanamnese gehört zur vollständigen Anamnese (2 richtig). Orientierung, Affektivität, Antrieb und Wahrnehmung sind zentrale Elemente des psychopathologischen Befundes (4 richtig). Anamnese, Beobachtung, Tests und Fremdanamnese bilden die Grundlage (5 richtig). Nach Suizidalität sollte immer gefragt werden, auch im Erstgespräch – dies erhöht nicht das Suizidrisiko (3 falsch).',
  ),
  Question(
    id: 20,
    exam: 'März 2019',
    q: 'In der psychotherapeutischen Behandlung werden oft Entspannungsmethoden eingesetzt. Welche Aussage zu Entspannungsmethoden trifft am ehesten zu?',
    options: [
      'A) Das Erlernen einer Entspannungsmethode (z.B. progressive Muskelrelaxation) ist notwendig, um die systematische Desensibilisierung erfolgreich umsetzen zu können',
      'B) Die Wirkung von progressiver Muskelrelaxation (PMR) beruht auf autosuggestiver Konzentration',
      'C) Bei der Anwendung von Entspannungsmethoden können keine Angstzustände auftreten',
      'D) Entspannungsmethoden sind bei Abhängigkeitserkrankungen kontraindiziert',
      'E) Vor dem Einsatz von Entspannungsmethoden sollten Beruhigungsmedikamente eingenommen werden',
    ],
    correct: [0],
    explanation:
        'Die systematische Desensibilisierung nach Wolpe erfordert das vorherige Erlernen einer Entspannungsmethode (z.B. PMR), da die Angstreize in entspanntem Zustand dargeboten werden (Prinzip der reziproken Hemmung) (A richtig). PMR beruht auf dem Wechsel von Anspannung und Entspannung der Muskulatur, nicht auf Autosuggestion – das ist das autogene Training (B falsch). Paradoxe Angstreaktionen können bei Entspannung auftreten (C falsch). Abhängigkeitserkrankungen sind keine Kontraindikation (D falsch). Beruhigungsmedikamente sind nicht erforderlich (E falsch).',
  ),
  Question(
    id: 21,
    exam: 'März 2019',
    q: 'Bei welchen der folgenden Erkrankungen wirken psychische Faktoren in der Krankheitsentstehung oder -verschlimmerung mit?\n1. Colitis Ulcerosa\n2. Enterocolitis regionalis (Morbus Crohn)\n3. Asthma bronchiale\n4. Essenzielle arterielle Hypertonie\n5. Psoriasis vulgaris (Schuppenflechte)',
    options: [
      'A) Nur die Aussagen 1 und 4 sind richtig',
      'B) Nur die Aussagen 2 und 3 sind richtig',
      'C) Nur die Aussagen 1, 3 und 4 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [4],
    explanation:
        'Bei allen genannten Erkrankungen spielen psychische Faktoren eine Rolle in der Entstehung oder Verschlimmerung. Dies umfasst die klassischen psychosomatischen Erkrankungen (Holy Seven nach Alexander): Colitis ulcerosa (1), Asthma bronchiale (3), essenzielle Hypertonie (4). Ebenso bei Morbus Crohn (2) und Psoriasis (5) sind psychische Faktoren als Auslöser oder Verstärker von Schüben anerkannt. Alle Aussagen sind richtig.',
  ),
  Question(
    id: 22,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zur Benzodiazepinabhängigkeit trifft (treffen) zu?\n1. Abhängigkeitsstörungen von Benzodiazepinen sind selten und treten in der Regel erst nach sechs Monaten Gebrauch auf\n2. Die Halbwertzeiten von Benzodiazepinen haben keinen Einfluss auf den Zeitpunkt des Auftretens von Entzugserscheinungen\n3. Durch kontrollierte und zeitlich begrenzte Verschreibungen lässt sich das Risiko einer Abhängigkeitsentwicklung verringern\n4. Risiken des langfristigen Gebrauchs von Benzodiazepinen sind neben der Abhängigkeitsentwicklung, Sturzneigung und kognitive Einbußen\n5. In der Substitutionstherapie hat sich Methadon bei Benzodiazepinabhängigkeit bewährt',
    options: [
      'A) Nur die Aussage 4 ist richtig',
      'B) Nur die Aussagen 3 und 4 sind richtig',
      'C) Nur die Aussagen 1, 2 und 3 sind richtig',
      'D) Nur die Aussagen 1, 3 und 4 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [1],
    explanation:
        'Kontrollierte, zeitlich begrenzte Verschreibungen reduzieren das Abhängigkeitsrisiko (3 richtig). Langfristiger Benzodiazepingebrauch birgt neben Abhängigkeit auch Sturzneigung (besonders bei Älteren) und kognitive Einbußen (4 richtig). Abhängigkeiten können schon nach wenigen Wochen auftreten, nicht erst nach 6 Monaten (1 falsch). Die Halbwertzeit beeinflusst sehr wohl den Zeitpunkt der Entzugserscheinungen – kürzere HWZ führt zu früherem Einsetzen (2 falsch). Methadon ist für Opioidabhängigkeit vorgesehen, nicht für Benzodiazepinabhängigkeit (5 falsch).',
  ),
  Question(
    id: 23,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Typische formale Denkstörungen bei einer manifesten Schizophrenie sind:\n1. Katalepsie\n2. Gedankenentzug\n3. Gedankenabreißen\n4. Inkohärenz\n5. Neologismen',
    options: [
      'A) Nur die Aussagen 1, 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2 und 5 sind richtig',
      'C) Nur die Aussagen 1, 3 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [4],
    explanation:
        'Typische formale Denkstörungen bei Schizophrenie: Gedankenabreißen (3 richtig) – plötzliches Abbrechen des Gedankengangs, Inkohärenz (4 richtig) – zerfahrenes, zusammenhangloses Denken, und Neologismen (5 richtig) – Wortneuschöpfungen. Katalepsie (1) ist eine psychomotorische Störung (katatones Symptom), keine formale Denkstörung. Gedankenentzug (2) ist eine Ich-Störung, keine formale Denkstörung.',
  ),
  Question(
    id: 24,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zur Chorea Huntington treffen zu?\n1. Erste Symptome der Krankheit zeigen sich meist zwischen dem\n20. und\n50. Lebensjahr\n2. Bei frühzeitiger Therapie kann die Erkrankung geheilt werden\n3. Psychische Beschwerden gehen den Bewegungsstörungen oft mehrere Jahre voraus\n4. Die Bewegungsstörungen beginnen meist mit Hyperkinesen bei verringertem Muskeltonus\n5. Die geistige Leistungsfähigkeit ist nicht beeinträchtigt',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 3 und 5 sind richtig',
      'C) Nur die Aussagen 1, 3 und 4 sind richtig',
      'D) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Die Chorea Huntington manifestiert sich meist zwischen dem 20. und 50. Lebensjahr (1 richtig). Psychische Symptome wie Reizbarkeit, Depression und Wesensänderungen gehen den motorischen Symptomen oft Jahre voraus (3 richtig). Typisch sind choreatische Hyperkinesen (unwillkürliche Bewegungen) bei verringertem Muskeltonus (4 richtig). Die Erkrankung ist derzeit nicht heilbar (2 falsch). Es entwickelt sich im Verlauf eine subkortikale Demenz (5 falsch).',
  ),
  Question(
    id: 25,
    exam: 'März 2019',
    q: 'Welche Aussage trifft zu? Bei der Erhebung der Anamnese eines depressiven Patienten ist die Frage nach der Suizidalität obligat, um',
    options: [
      'A) die Angehörigen in die Verantwortung nehmen zu können',
      'B) den Grad der suizidalen Gefährdung abschätzen zu können',
      'C) das für den Betroffenen richtige Antidepressivum auswählen zu können',
      'D) die als Voraussetzung für die Suizidhandlungen unerlässlichen depressiven Wahninhalte erfassen zu können',
      'E) den Betroffenen stationär unterbringen zu können',
    ],
    correct: [1],
    explanation:
        'Die Frage nach Suizidalität dient der Einschätzung des Grades der suizidalen Gefährdung (B richtig), um angemessene Schutzmaßnahmen einleiten zu können. Es geht nicht primär darum, Angehörige in die Verantwortung zu nehmen (A falsch). Die Wahl des Antidepressivums hängt nicht direkt von der Suizidalität ab (C falsch). Depressive Wahninhalte sind keine Voraussetzung für Suizidhandlungen (D falsch). Die Frage dient nicht primär der Unterbringung, sondern der Risikoeinschätzung (E falsch).',
  ),
  Question(
    id: 26,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Bei einer posttraumatischen Belastungsstörung (PTBS) nach ICD-10 treten folgende Symptome gehäuft auf:\n1. Sozialer Rückzug\n2. Depression\n3. Albträume\n4. Ideenflucht\n5. Logorrhö',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 1 und 3 sind richtig',
      'C) Nur die Aussagen 1, 2 und 3 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Bei der PTBS treten gehäuft auf: sozialer Rückzug (1 richtig, emotionale Taubheit und Vermeidung), Depression (2 richtig, häufige Komorbidität) und Albträume (3 richtig, Wiedererleben des Traumas im Schlaf). Ideenflucht (4) ist ein Symptom der Manie, nicht der PTBS. Logorrhö (5, Rededrang) ist ebenfalls untypisch für PTBS.',
  ),
  Question(
    id: 27,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen zum Intelligenztest (z.B. Wechsler-Intelligenztest für Erwachsene, Mittelwert 100, Standardabweichung 15) treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Bei einem IQ von 100 haben 50% der Referenzgruppe einen höheren Intelligenzquotienten',
      'B) Ein IQ von 50 entspricht der durchschnittlichen Intelligenz',
      'C) Ein IQ von 115 entspricht einem Prozentrang von 99 (99% der Referenzgruppe erreichen niedrigere Werte im Test)',
      'D) 30% der Menschen liegen zwischen einem IQ von 85 und 115',
      'E) Ein IQ von weniger als 20 entspricht nach ICD-10 einer schwersten Intelligenzminderung',
    ],
    correct: [0, 4],
    explanation:
        'Bei einer Normalverteilung mit Mittelwert 100 haben bei einem IQ von 100 genau 50% der Referenzgruppe einen höheren IQ (A richtig). Nach ICD-10 entspricht ein IQ unter 20 einer schwersten Intelligenzminderung (E richtig). Ein IQ von 50 liegt deutlich unter dem Durchschnitt und entspricht einer mittelgradigen Intelligenzminderung (B falsch). Ein IQ von 115 entspricht einem Prozentrang von ca. 84, nicht 99 (C falsch). Ca. 68% der Menschen liegen zwischen IQ 85-115 (eine Standardabweichung), nicht 30% (D falsch).',
  ),
  Question(
    id: 28,
    exam: 'März 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Typische Methoden/Vorgehensweisen der kognitiven Umstrukturierung sind am ehesten:',
    options: [
      'A) Empirische Überprüfung verzerrter Wahrnehmungen',
      'B) Traumdeutung',
      'C) Sokratischer Dialog',
      'D) Motivierende Gesprächsführung (Motivational Interviewing)',
      'E) Empathisches Validieren',
    ],
    correct: [0, 2],
    explanation:
        'Die kognitive Umstrukturierung (nach Beck) nutzt die empirische Überprüfung verzerrter Wahrnehmungen/Kognitionen (A richtig) – der Patient prüft seine automatischen Gedanken auf Realitätsgehalt – und den sokratischen Dialog (C richtig) – durch gezieltes Fragen wird der Patient angeleitet, seine dysfunktionalen Überzeugungen selbst zu hinterfragen. Traumdeutung (B) ist eine psychoanalytische Methode. Motivierende Gesprächsführung (D) ist ein eigenständiges Verfahren (Miller & Rollnick). Empathisches Validieren (E) gehört zur DBT bzw. Gesprächstherapie.',
  ),
  Question(
    id: 1,
    exam: 'Oktober 2019',
    q: 'Empathie ist eine zentrale Komponente im therapeutischen Kontakt der Gesprächspsychotherapie (nach Rogers). Welche Aussage zur Empathie trifft zu?',
    options: [
      'A) Empathie bedeutet, die Gefühle des anderen zu übernehmen',
      'B) Empathie ist ausgerichtet auf den inneren Bezugsrahmen des Klienten',
      'C) Empathie ist gleichzusetzen mit billigendem Verständnishaben',
      'D) Empathie heißt, eine Bewertung abzugeben',
      'E) Empathie zielt darauf ab, die Selbstexploration des Klienten zu verhindern',
    ],
    correct: [1],
    explanation:
        'Nach Rogers bedeutet Empathie, den inneren Bezugsrahmen des Klienten möglichst genau wahrzunehmen – mit all seinen emotionalen Komponenten, gerade so als ob man die andere Person wäre, ohne die \'als ob\'-Position aufzugeben (B richtig). Empathie bedeutet nicht, die Gefühle des anderen zu übernehmen (A falsch) – das wäre Identifikation. Empathie ist kein billigendes Verständnis (C falsch) und keine Bewertung (D falsch). Sie fördert die Selbstexploration, verhindert sie nicht (E falsch).',
  ),
  Question(
    id: 2,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zum Störungsbild einer sozialen Phobie treffen zu?\n1. Die Ängste treten vorwiegend in größeren Menschenmengen auf\n2. Die Störung tritt ganz überwiegend bei Männern auf\n3. Soziale Phobien sind in der Regel mit einem niedrigen Selbstwertgefühl verbunden\n4. Die Symptome können sich bis hin zu Panikattacken verstärken\n5. Soziale Phobien können sich in Beschwerden wie Händezittern, Übelkeit und Drang zum Wasserlassen äußern',
    options: [
      'A) Nur die Aussagen 1, 2 und 3 sind richtig',
      'B) Nur die Aussagen 1, 4 und 5 sind richtig',
      'C) Nur die Aussagen 2, 3 und 5 sind richtig',
      'D) Nur die Aussagen 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [3],
    explanation:
        'Soziale Phobien sind typischerweise mit niedrigem Selbstwertgefühl verbunden (3 richtig). Die Symptome können sich bis zu Panikattacken steigern (4 richtig). Körperliche Symptome wie Händezittern, Übelkeit und Harndrang sind typisch (5 richtig). Die Ängste beziehen sich auf soziale Bewertungssituationen, nicht auf Menschenmengen – das wäre Agoraphobie (1 falsch). Soziale Phobien betreffen beide Geschlechter etwa gleich häufig (2 falsch).',
  ),
  Question(
    id: 3,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zu Antipsychotika (Neuroleptika) treffen zu?\n1. Antipsychotika sind zur Behandlung schizophrener Störungen geeignet\n2. Antipsychotika werden auch zur Behandlung schwerer depressiver Episoden eingesetzt\n3. Antipsychotika werden nach \'typischen\' und atypischen Antipsychotika unterschieden\n4. Bei Einnahme von Antipsychotika sollten regelmäßige Kontrolluntersuchungen (z.B. EKG) durchgeführt werden\n5. Bei Antipsychotika kann als typische Nebenwirkung ein Parkinsonoid auftreten',
    options: [
      'A) Nur die Aussagen 1, 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'C) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [4],
    explanation:
        'Alle Aussagen sind richtig: Antipsychotika sind Standardtherapie bei Schizophrenie (1). Sie werden auch bei schwerer Depression eingesetzt, z.B. atypische Antipsychotika als Augmentation (2). Die Einteilung in typische und atypische Antipsychotika ist grundlegend (3). Regelmäßige Kontrolluntersuchungen (EKG, Blutbild, Leberwerte) sind erforderlich (4). Parkinsonoid (medikamentöses Parkinson-Syndrom) ist eine häufige extrapyramidale Nebenwirkung, besonders bei typischen Antipsychotika (5).',
  ),
  Question(
    id: 4,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zu psychischen Störungen im Wochenbett treffen zu?\n1. Die postpartale Depression hat meist eine günstige Prognose\n2. Bei einer schweren postpartalen Depression empfiehlt sich eine Behandlung mit einem Antidepressivum\n3. Bei ersten Anzeichen für eine postpartale Depression sollte die Mutter vom Kind getrennt werden\n4. Im Wochenbett treten psychische Erkrankungen gehäuft auf\n5. Eine postpartale Depression kann sich innerhalb von Stunden nach der Entbindung entwickeln',
    options: [
      'A) Nur die Aussagen 2 und 3 sind richtig',
      'B) Nur die Aussagen 4 und 5 sind richtig',
      'C) Nur die Aussagen 1, 2 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [3],
    explanation:
        'Die postpartale Depression hat bei adäquater Behandlung meist eine günstige Prognose (1 richtig). Bei schwerer Ausprägung ist eine medikamentöse Behandlung mit Antidepressiva indiziert (2 richtig). Psychische Erkrankungen treten im Wochenbett gehäuft auf (4 richtig). Postpartale affektive Störungen können sich sehr rasch nach der Entbindung entwickeln (5 richtig). Eine Trennung von Mutter und Kind bei ersten Anzeichen einer Depression ist kontraproduktiv und wird nicht empfohlen (3 falsch).',
  ),
  Question(
    id: 5,
    exam: 'Oktober 2019',
    q: 'Welche Aussage trifft zu? Grübeln gehört im psychopathologischen Befund zur Gruppe der',
    options: [
      'A) Aufmerksamkeits- und Gedächtnisstörungen',
      'B) formalen Denkstörungen',
      'C) Befürchtungen und Zwänge',
      'D) Ich-Störungen',
      'E) inhaltlichen Denkstörungen',
    ],
    correct: [1],
    explanation:
        'Grübeln (Rumination) wird im psychopathologischen Befund den formalen Denkstörungen zugeordnet (B richtig). Es handelt sich um eingeengtes, perseverierendes Denken, bei dem die Gedanken ständig um bestimmte Themen kreisen. Es ist keine Aufmerksamkeits-/Gedächtnisstörung (A), keine Befürchtung/Zwang (C), keine Ich-Störung (D) und keine inhaltliche Denkstörung wie Wahn (E).',
  ),
  Question(
    id: 6,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Inhaber einer auf das Gebiet der Psychotherapie beschränkten Heilpraktikererlaubnis sind grundsätzlich berechtigt zur selbstständigen Anwendung\n1. der kognitiven Verhaltenstherapie\n2. der tiefenpsychologisch fundierten Psychotherapie\n3. der Psychoanalyse\n4. von Intelligenztests\n5. der Osteopathie',
    options: [
      'A) Nur die Aussagen 1 und 4 sind richtig',
      'B) Nur die Aussagen 3 und 5 sind richtig',
      'C) Nur die Aussagen 1, 2 und 3 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [3],
    explanation:
        'Der Heilpraktiker für Psychotherapie darf alle psychotherapeutischen Verfahren anwenden: kognitive VT (1 richtig), tiefenpsychologisch fundierte PT (2 richtig) und Psychoanalyse (3 richtig). Auch die Anwendung psychologischer Testverfahren wie Intelligenztests ist erlaubt (4 richtig). Die Osteopathie (5) ist ein körperliches Verfahren und fällt nicht unter die Psychotherapie-Erlaubnis – hierfür wäre die große Heilpraktikererlaubnis erforderlich.',
  ),
  Question(
    id: 7,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Sie wollen mit Ihrem Patienten im Rahmen eines sozialen Kompetenztrainings einüben, dass dieser angemessen für seine Rechte eintritt. Sie geben dem Patienten die Instruktionen',
    options: [
      'A) laut und deutlich zu reden',
      'B) bei Forderungen den Gebrauch von \'ich\' zu vermeiden',
      'C) sich für eigene Forderungen zu entschuldigen',
      'D) erst zu erklären, warum man etwas wolle, dann zu sagen, was',
      'E) Verständnis für die Position des anderen zu äußern',
    ],
    correct: [0, 4],
    explanation:
        'Im sozialen Kompetenztraining (Assertiveness-Training) lernt der Patient, laut und deutlich zu reden (A richtig) und Verständnis für die Position des Gegenübers zu äußern (E richtig) – beides sind Merkmale selbstsicheren (assertiven) Verhaltens. Der Gebrauch von \'Ich\'-Botschaften wird ausdrücklich empfohlen, nicht vermieden (B falsch). Sich für Forderungen zu entschuldigen schwächt die eigene Position (C falsch). Die Reihenfolge \'erst warum, dann was\' ist nicht die optimale Technik des assertiven Verhaltens (D falsch).',
  ),
  Question(
    id: 8,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zur Psychotherapie treffen zu?\n1. \'Erlernte Hilflosigkeit\' ist ein in der psychoanalytischen Therapie verwendeter Begriff eines Abwehrmechanismus\n2. Bei einer akuten schweren depressiven Episode ist eine ambulante psychodynamisch orientierte Psychotherapie der ersten Wahl\n3. In der kognitiven Therapie wird der sokratische Dialog angewendet\n4. Beim SORKC-Modell handelt es sich um ein in der verhaltenstherapeutischen Diagnostik anwendbares Modell zur Problem-, Situations- und Verhaltensanalyse\n5. Psychodynamisch orientierte Psychotherapiemethoden spielen in der Kindertherapie keine wesentliche Rolle',
    options: [
      'A) Nur die Aussagen 3 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2 und 3 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [0],
    explanation:
        'Der sokratische Dialog ist eine zentrale Methode der kognitiven Therapie nach Beck (3 richtig). Das SORKC-Modell (Stimulus-Organismus-Reaktion-Kontingenz-Konsequenz) ist ein verhaltenstherapeutisches Analysemodell (4 richtig). \'Erlernte Hilflosigkeit\' stammt von Seligman aus der Lerntheorie, nicht aus der Psychoanalyse (1 falsch). Bei akuter schwerer Depression ist zunächst medikamentöse Behandlung indiziert, nicht ambulante Psychodynamik (2 falsch). Psychodynamische Methoden (z.B. Spieltherapie) spielen durchaus eine wichtige Rolle in der Kindertherapie (5 falsch).',
  ),
  Question(
    id: 9,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zu Anpassungsstörungen (nach ICD-10) treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Auslöser sind meist nicht zu definieren',
      'B) Auftreten nach psychosozialer Belastung',
      'C) Bei Kindern häufig Auftreten regressiver Symptome, wie z.B. sekundäre Enuresis',
      'D) Dauer in der Regel länger als 6 Monate',
      'E) Individuelle Faktoren spielen bei dem Auftreten keine Rolle',
    ],
    correct: [1, 2],
    explanation:
        'Anpassungsstörungen treten definitionsgemäß nach einer identifizierbaren psychosozialen Belastung auf (B richtig). Bei Kindern können regressive Symptome wie sekundäre Enuresis (Wiederauftreten von Einnässen) auftreten (C richtig). Die Auslöser sind gerade nicht undefinierbar, sondern identifizierbar (A falsch). Die Dauer überschreitet in der Regel nicht 6 Monate nach Ende der Belastung (D falsch). Individuelle Vulnerabilität spielt eine wichtige Rolle bei der Entstehung (E falsch).',
  ),
  Question(
    id: 10,
    exam: 'Oktober 2019',
    q: 'Welche Aussage trifft zu? Ein 60-jähriger Patient berichtet Ihnen von einer quälenden Unruhe, verstärkt im Sitzen und Liegen, mit ausgeprägtem Bewegungsdrang, der den ganzen Körper betrifft. Während des Gesprächs ist er unfähig, still zu sitzen, tritt von einem Bein auf das andere oder wippt hin und her. Dies spricht am ehesten für ein/eine',
    options: [
      'A) Dissoziative Bewegungsstörung',
      'B) Schilddrüsenunterfunktion',
      'C) Tourette-Syndrom',
      'D) Adynamie',
      'E) Akathisie',
    ],
    correct: [4],
    explanation:
        'Die beschriebene Symptomatik – quälende innere Unruhe mit Unfähigkeit stillzusitzen und ständigem Bewegungsdrang – ist das klassische Bild einer Akathisie (Sitzunruhe) (E richtig). Dies ist eine häufige extrapyramidal-motorische Nebenwirkung von Antipsychotika. Eine dissoziative Bewegungsstörung (A) zeigt andere Symptome. Schilddrüsenunterfunktion (B) führt eher zu Verlangsamung. Das Tourette-Syndrom (C) ist durch Tics gekennzeichnet. Adynamie (D) bezeichnet Antriebslosigkeit – das Gegenteil.',
  ),
  Question(
    id: 11,
    exam: 'Oktober 2019',
    q: 'Welche Aussage trifft zu? Die Substitutionsbehandlung von Opioidabhängigen mit Methadon',
    options: [
      'A) darf durch den Heilpraktiker durchgeführt werden',
      'B) führt in aller Regel zur vollständigen Abstinenz',
      'C) hält die Opioidabhängigkeit aufrecht',
      'D) schließt eine gleichzeitige psychotherapeutische Behandlung aus',
      'E) ist nur stationär durchführbar',
    ],
    correct: [2],
    explanation:
        'Die Methadon-Substitution ist eine Erhaltungstherapie (Maintenance-Therapie), bei der die Opioidabhängigkeit pharmakologisch aufrechterhalten wird, jedoch unter kontrollierten Bedingungen (C richtig). Die Durchführung ist Ärzten mit Zusatzqualifikation vorbehalten, nicht Heilpraktikern (A falsch). Vollständige Abstinenz wird damit in der Regel nicht erreicht (B falsch). Begleitende Psychotherapie ist ausdrücklich erwünscht und Teil des Gesamtkonzepts (D falsch). Die Substitution kann auch ambulant erfolgen (E falsch).',
  ),
  Question(
    id: 12,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Demenzerkrankungen',
    options: [
      'A) sind ein Synonym für Alzheimer Erkrankung',
      'B) beginnen selten vor dem 75. Lebensjahr',
      'C) führen zu einer Abnahme des Gedächtnisses und des Denkvermögens',
      'D) sollten zur Differentialdiagnostik mit einem bildgebenden Verfahren (cCT, cMRT) untersucht werden',
      'E) führen in der Regel innerhalb von 12 Monaten zum Tod',
    ],
    correct: [2, 3],
    explanation:
        'Demenzerkrankungen führen zu einer Abnahme des Gedächtnisses und des Denkvermögens (C richtig). Bildgebende Verfahren (cCT, cMRT) sind wichtig für die Differentialdiagnostik (D richtig). Demenz ist ein Oberbegriff für verschiedene Erkrankungen (Alzheimer, vaskulär, Lewy-Körperchen etc.), nicht nur Alzheimer (A falsch). Demenzen können auch vor dem 75. Lebensjahr auftreten (B falsch). Die meisten Demenzen haben einen langsamen Verlauf über Jahre, nicht innerhalb von 12 Monaten (E falsch).',
  ),
  Question(
    id: 13,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Bei Menschen, die an einer hebephrenen Schizophrenie leiden, sind nach ICD-10 folgende Symptome am ehesten typisch:',
    options: ['A) Miosis', 'B) Antriebsverlust', 'C) Trance', 'D) Besessenheitszustände', 'E) Affektverflachung'],
    correct: [1, 4],
    explanation:
        'Die hebephrene Schizophrenie (F20.1) ist durch Antriebsverlust (B richtig) und Affektverflachung (E richtig) gekennzeichnet, zusammen mit läppischem, unvorhersehbarem Verhalten. Miosis (A, Pupillenverengung) ist ein somatisches Symptom, z.B. bei Opioidintoxikation. Trance (C) und Besessenheitszustände (D) gehören zu den dissoziativen Störungen (F44), nicht zur hebephrenen Schizophrenie.',
  ),
  Question(
    id: 14,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zu Wahrnehmungsstörungen treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Illusionäre Verkennungen treten u.a. beim Delir auf',
      'B) Eine Halluzination ist eine Sinnestäuschung ohne entsprechenden äußeren Reiz',
      'C) Optische Halluzinationen sprechen gegen eine körperlich begründbare Psychose',
      'D) Optische Halluzinationen bestimmen das klinische Bild der hebephrenen Schizophrenie',
      'E) Akustische Halluzinationen sind charakteristisch für die paranoide Persönlichkeitsstörung',
    ],
    correct: [0, 1],
    explanation:
        'Illusionäre Verkennungen (Fehlinterpretation realer Sinnesreize) treten typischerweise beim Delir auf (A richtig). Eine Halluzination ist definitionsgemäß eine Sinneswahrnehmung ohne entsprechenden äußeren Reiz (B richtig). Optische Halluzinationen sprechen gerade für eine organische/körperlich begründbare Psychose, nicht dagegen (C falsch). Die hebephrene Schizophrenie ist nicht primär durch optische Halluzinationen gekennzeichnet (D falsch). Akustische Halluzinationen treten bei der paranoiden Schizophrenie auf, nicht bei der paranoiden Persönlichkeitsstörung (E falsch).',
  ),
  Question(
    id: 15,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Techniken zählen am ehesten zu den Konfrontationstherapien? Wählen Sie zwei Antworten!',
    options: [
      'A) Flooding',
      'B) Time-out (Auszeit)',
      'C) Selbstmanagement',
      'D) Systematische Desensibilisierung',
      'E) Shaping (Verhaltensausformung)',
    ],
    correct: [0, 3],
    explanation:
        'Flooding (Reizüberflutung) ist eine klassische Konfrontationstherapie, bei der der Patient direkt mit dem angstauslösenden Reiz konfrontiert wird (A richtig). Die systematische Desensibilisierung ist ebenfalls eine Konfrontationsmethode, bei der die Konfrontation graduell in entspanntem Zustand erfolgt (D richtig). Time-out (B) ist eine Methode der operanten Konditionierung. Selbstmanagement (C) und Shaping (E, schrittweise Verhaltensformung) zählen nicht zu den Konfrontationsverfahren.',
  ),
  Question(
    id: 16,
    exam: 'Oktober 2019',
    q: 'Bei einer 25-jährigen Frau, die wegen depressiver Verstimmungen in Ihre psychotherapeutische Behandlung kommt, vermuten Sie eine Bulimia nervosa mit selbstinduziertem Erbrechen. Welche der folgenden Befunde stützen im Rahmen der Differenzialdiagnose am ehesten Ihren Verdacht? Wählen Sie zwei Antworten!',
    options: [
      'A) Adipositas Grad 3 (Body-Mass-Index > 40 kg/m²)',
      'B) Speicheldrüsenschwellung',
      'C) Zahnschäden',
      'D) Chloasma (Pigmentflecken im Gesicht)',
      'E) Akne',
    ],
    correct: [1, 2],
    explanation:
        'Speicheldrüsenschwellung (B richtig, besonders der Parotis, sog. \'Hamsterbacken\') und Zahnschäden (C richtig, Erosion des Zahnschmelzes durch wiederholten Kontakt mit Magensäure) sind typische körperliche Folgen des selbstinduzierten Erbrechens bei Bulimia nervosa. Adipositas Grad 3 (A) ist untypisch – Bulimikerinnen sind meist normalgewichtig. Chloasma (D, Pigmentflecken) und Akne (E) stehen nicht im Zusammenhang mit Bulimie.',
  ),
  Question(
    id: 17,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zu Zwangsstörungen treffen zu?\n1. Bei Zwangsstörungen beobachtet man sehr häufig Spontanremissionen\n2. Eine Zwangsstörung beginnt in der Regel im mittleren bis höheren Erwachsenenalter\n3. Aufgrund des hohen Leidensdruckes kommt es meist zu einer raschen Diagnosestellung\n4. Eine Kombination aus Psychotherapie und medikamentöser Behandlung hat sich bewährt\n5. Zwangssymptome können bei einer Depression auftreten',
    options: [
      'A) Nur die Aussagen 1 und 5 sind richtig',
      'B) Nur die Aussagen 4 und 5 sind richtig',
      'C) Nur die Aussagen 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 2, 4 und 5 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [1],
    explanation:
        'Die Kombination aus KVT (mit Exposition und Reaktionsverhinderung) und SSRI hat sich bei Zwangsstörungen bewährt (4 richtig). Zwangssymptome können als Begleitsymptom einer Depression auftreten (5 richtig). Spontanremissionen bei Zwangsstörungen sind selten (1 falsch). Der Beginn liegt meist in der Adoleszenz oder im frühen Erwachsenenalter (2 falsch). Trotz hohem Leidensdruck dauert es oft viele Jahre bis zur Diagnose, wegen Scham und Verheimlichung (3 falsch).',
  ),
  Question(
    id: 18,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? In der Verhaltenstherapie\n1. sind experimentelle Befunde zur klassischen und operanten Konditionierung eine wichtige Grundlage von Modellen zur Entstehung psychischer Störungen sowie von Interventionsmethoden\n2. gilt das Prinzip der klassischen Konditionierung inzwischen als veraltet und ist nur noch von untergeordneter Rolle\n3. bezeichnet operante Konditionierung einen Lernprozess, bei dem die Auftretenswahrscheinlichkeit von Verhalten durch seine Konsequenzen erhöht oder erniedrigt wird\n4. ist der Begriff \'negative Verstärkung\' innerhalb des operanten Konditionierens mit \'Bestrafung\' gleichzusetzen\n5. kommen Verstärkerpläne zum Aufbau neuen Verhaltens zum Einsatz',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 2 und 5 sind richtig',
      'C) Nur die Aussagen 3 und 5 sind richtig',
      'D) Nur die Aussagen 1, 3 und 5 sind richtig',
      'E) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: [3],
    explanation:
        'Klassische und operante Konditionierung bilden wichtige Grundlagen der VT (1 richtig). Operante Konditionierung beschreibt die Veränderung der Auftretenswahrscheinlichkeit durch Konsequenzen (3 richtig). Verstärkerpläne werden zum systematischen Verhaltensaufbau eingesetzt (5 richtig). Die klassische Konditionierung ist keineswegs veraltet (2 falsch). Negative Verstärkung ist nicht gleich Bestrafung – negative Verstärkung erhöht die Verhaltenshäufigkeit durch Wegfall eines unangenehmen Reizes, Bestrafung senkt sie (4 falsch).',
  ),
  Question(
    id: 19,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Mögliche Ursachen einer organischen depressiven Störung (nach ICD-10) sind:\n1. Maligne Hirnerkrankungen\n2. Zwangsstörungen\n3. Hypothyreose\n4. Morbus Parkinson\n5. Hypochondrische Störung',
    options: [
      'A) Nur die Aussagen 1 und 4 sind richtig',
      'B) Nur die Aussagen 1, 3 und 4 sind richtig',
      'C) Nur die Aussagen 2, 3 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [1],
    explanation:
        'Organische depressive Störungen haben definitionsgemäß eine nachweisbare körperliche Ursache: maligne Hirnerkrankungen (1 richtig, z.B. Hirntumore), Hypothyreose (3 richtig, Schilddrüsenunterfunktion) und Morbus Parkinson (4 richtig). Zwangsstörungen (2) und hypochondrische Störungen (5) sind psychische Störungen und keine organischen Ursachen einer Depression.',
  ),
  Question(
    id: 20,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Typische Charakteristika der anankastischen (zwanghaften) Persönlichkeitsstörung nach ICD-10 sind: Wählen Sie zwei Antworten!',
    options: [
      'A) Das Verlangen, im Mittelpunkt der Aufmerksamkeit zu stehen',
      'B) Übertriebene Gewissenhaftigkeit und unverhältnismäßige Leistungsbezogenheit unter Vernachlässigung von Vergnügen und zwischenmenschlichen Beziehungen',
      'C) Überlassung der Verantwortung für wichtige Lebensbereiche des eigenen Lebens an andere',
      'D) Übermäßige Vorlieben für Phantasie, einzelgängerisches Verhalten und in sich gekehrte Zurückhaltung',
      'E) Rigidität und Eigensinn, wobei anderen gegenüber auf einer Unterordnung unter eigene Gewohnheiten bestanden wird',
    ],
    correct: [1, 4],
    explanation:
        'Übertriebene Gewissenhaftigkeit und Leistungsbezogenheit auf Kosten von Vergnügen (B richtig) sowie Rigidität und Eigensinn (E richtig) sind typische Merkmale der anankastischen PS. Im Mittelpunkt stehen wollen (A) gehört zur histrionischen PS. Verantwortung an andere überlassen (C) ist typisch für die abhängige (dependente) PS. Phantasie und einzelgängerisches Verhalten (D) kennzeichnen die schizoide PS.',
  ),
  Question(
    id: 21,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zur Suizidalität treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Bei depressiven Patienten sollte man Fragen nach Suizidgedanken meiden, da diese das Suizidrisiko in der Regel erhöhen',
      'B) Suchtkranke Menschen sind in erhöhtem Maße suizidgefährdet',
      'C) Wenn suizidale Patienten nach vorheriger Verzweiflung plötzlich ruhig und gelöst wirken, ist dies ein Zeichen von Besserung, die Suizidgefahr lässt nach',
      'D) Nur wenige Patienten mit Suizidgedanken kündigen geplante Suizidhandlungen an',
      'E) In Deutschland sterben mehr Menschen an Suizid als im Verkehr',
    ],
    correct: [1, 4],
    explanation:
        'Suchtkranke haben ein deutlich erhöhtes Suizidrisiko (B richtig). In Deutschland sterben mehr Menschen durch Suizid als durch Verkehrsunfälle (E richtig). Fragen nach Suizidalität erhöhen das Risiko nicht, sondern sind therapeutisch notwendig (A falsch). Plötzliche Ruhe nach Verzweiflung kann darauf hindeuten, dass der Entschluss zum Suizid gefasst wurde – dies ist ein Warnzeichen, keine Besserung (C falsch). Die meisten suizidalen Menschen kündigen ihre Absicht direkt oder indirekt an (D falsch).',
  ),
  Question(
    id: 22,
    exam: 'Oktober 2019',
    q: 'Welche Aussage über die bipolare affektive Störung (nach ICD-10) trifft zu?',
    options: [
      'A) Akustische Halluzinationen sind mit der Diagnose einer manischen Episode im Rahmen einer bipolaren affektiven Störung nicht vereinbar',
      'B) Unter Rapid Cycling versteht man das ständige Umherlaufen manischer Patienten',
      'C) Die depressive Episode im Rahmen einer bipolaren affektiven Störung unterscheidet sich von der unipolaren Störung durch das Vorliegen parathymer Gedankeninhalte',
      'D) Eine manische Episode ist von einer Schizophrenie gelegentlich nur im Verlauf unterscheidbar',
      'E) Die Diagnose einer Dysthymia schließt eine bipolare affektive Störung aus',
    ],
    correct: [3],
    explanation:
        'Eine manische Episode kann einer akuten Schizophrenie ähneln und ist manchmal erst im Verlauf sicher zu unterscheiden (D richtig). Akustische Halluzinationen können bei schwerer Manie auftreten und sind damit vereinbar (A falsch). Rapid Cycling bezeichnet mindestens 4 affektive Episoden pro Jahr, nicht motorische Unruhe (B falsch). Die depressive Phase der bipolaren Störung unterscheidet sich klinisch kaum von der unipolaren Depression (C falsch). Dysthymia schließt eine bipolare Störung nicht aus (E falsch).',
  ),
  Question(
    id: 23,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zum Delir treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Bei alkohol- oder drogenabhängigen Patienten kann ein Delir in der Regel ambulant behandelt werden',
      'B) Ein Delir ist ein ätiologisch unspezifisches Syndrom mit Störungen des Bewusstseins, der Kognition und der Psychomotorik',
      'C) Ein Delir verläuft in der Regel asymptomatisch',
      'D) Ein Delir ist eine organisch bedingte psychische Störung',
      'E) Akustische Halluzinationen treten beim Delir nicht auf',
    ],
    correct: [1, 3],
    explanation:
        'Ein Delir ist ein ätiologisch unspezifisches Syndrom (kann verschiedene Ursachen haben) mit Bewusstseins-, Kognitions- und Psychomotorikstörungen (B richtig). Es ist eine organisch bedingte psychische Störung (D richtig). Ein Delir ist ein medizinischer Notfall und muss stationär behandelt werden, nicht ambulant (A falsch). Es ist keineswegs asymptomatisch, sondern zeigt vielfältige Symptome (C falsch). Halluzinationen – auch akustische – können beim Delir auftreten (E falsch).',
  ),
  Question(
    id: 24,
    exam: 'Oktober 2019',
    q: 'Welche Aussage trifft zu? Verantwortlich für die öffentlich-rechtliche Unterbringung eines psychisch Kranken im psychiatrischen Krankenhaus für eine Zeitdauer von 6 Wochen gemäß Unterbringungsrecht der Länder (z.B. Psychisch-Kranken-Gesetz) ist',
    options: [
      'A) das Ordnungsamt',
      'B) das Gericht',
      'C) das Gesundheitsamt',
      'D) die zuständige Ärztekammer',
      'E) die Kriminalpolizei',
    ],
    correct: [1],
    explanation:
        'Für eine Unterbringung von 6 Wochen Dauer nach PsychKG ist eine richterliche Genehmigung erforderlich (B richtig). Das Ordnungsamt (A) kann bei Gefahr im Verzug eine sofortige, kurzfristige Unterbringung veranlassen, aber für eine längere Dauer ist das Gericht zuständig. Das Gesundheitsamt (C), die Ärztekammer (D) und die Kriminalpolizei (E) sind nicht für Unterbringungsentscheidungen zuständig.',
  ),
  Question(
    id: 25,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Typische Symptome einer depressiven Episode (nach ICD-10) sind:\n1. Ideenflucht\n2. Interessensverlust\n3. Vermindertes Selbstbewusstsein\n4. Suizidgedanken\n5. Verminderter Antrieb',
    options: [
      'A) Nur die Aussagen 3 und 5 sind richtig',
      'B) Nur die Aussagen 1, 4 und 5 sind richtig',
      'C) Nur die Aussagen 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [3],
    explanation:
        'Typische Symptome einer depressiven Episode nach ICD-10: Interessensverlust (2 richtig, Zusatzsymptom), vermindertes Selbstwertgefühl/Selbstvertrauen (3 richtig, Zusatzsymptom), Suizidgedanken (4 richtig, Zusatzsymptom) und verminderter Antrieb (5 richtig, Hauptsymptom). Ideenflucht (1) ist ein Symptom der Manie, nicht der Depression – bei Depression findet sich eher gehemmtes oder eingeengtes Denken.',
  ),
  Question(
    id: 26,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen treffen zu? Die emotional instabile Persönlichkeitsstörung vom Borderline-Typ (nach ICD-10)\n1. neigt zu suizidalem und präsuizidalem Verhalten\n2. ist gleichbedeutend mit einer schweren Depression\n3. neigt selten zu Wutanfällen und aggressiven Durchbrüchen\n4. zeigt eine ausgeprägte und andauernde Instabilität des Selbstbildes oder der Selbstwahrnehmung\n5. ist gekennzeichnet durch ein intensives Bemühen, tatsächliches oder vermutetes Verlassenwerden zu vermeiden',
    options: [
      'A) Nur die Aussagen 1 und 4 sind richtig',
      'B) Nur die Aussagen 1 und 5 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 4 und 5 sind richtig',
      'E) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Die Borderline-PS ist gekennzeichnet durch: Neigung zu suizidalem und selbstverletzendem Verhalten (1 richtig), Instabilität des Selbstbildes (4 richtig) und intensives Bemühen, Verlassenwerden zu vermeiden (5 richtig). Borderline ist nicht gleichbedeutend mit Depression, obwohl komorbide Depression häufig ist (2 falsch). Wutanfälle und aggressive Durchbrüche treten häufig, nicht selten auf (3 falsch).',
  ),
  Question(
    id: 27,
    exam: 'Oktober 2019',
    q: 'Welche der folgenden Aussagen zur Aufmerksamkeitsdefizit-/Hyperaktivitätsstörung (ADHS) treffen zu?\n1. Typische Kennzeichen des ADHS im Kindesalter sind u.a. Hypermotorik und impulshafte Ausbrüche\n2. Typische Kennzeichen des ADHS im Erwachsenenalter sind u.a. Desorganisation und fehlendes Durchhaltevermögen\n3. Häufige komorbide Störungen bei ADHS im Kindesalter sind Tic-Störungen und Störungen des Sozialverhaltens\n4. Häufige komorbide Störungen bei ADHS im Erwachsenenalter sind Abhängigkeitserkrankungen, depressive Störungen und Angststörungen\n5. Bei der Behandlung eines ADHS im Erwachsenenalter ist die Gabe von Methylphenidat kontraindiziert',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 1 und 3 sind richtig',
      'C) Nur die Aussagen 2 und 3 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [3],
    explanation:
        'ADHS im Kindesalter zeigt sich durch Hypermotorik und Impulsivität (1 richtig). Im Erwachsenenalter stehen Desorganisation und mangelndes Durchhaltevermögen im Vordergrund (2 richtig). Typische Komorbiditäten im Kindesalter: Tic-Störungen und Störungen des Sozialverhaltens (3 richtig). Im Erwachsenenalter: Sucht, Depression und Angststörungen (4 richtig). Methylphenidat ist auch im Erwachsenenalter ein Mittel der Wahl und keineswegs kontraindiziert (5 falsch).',
  ),
  Question(
    id: 28,
    exam: 'Oktober 2019',
    q: 'Welche Aussage trifft zu? Charakteristisch für eine histrionische Persönlichkeitsstörung (nach ICD-10) ist/sind:',
    options: [
      'A) Starke Zweifel und übertriebene Vorsicht',
      'B) Ängste vor Alleinsein und Verlassenwerden',
      'C) Leichte Beeinflussbarkeit durch andere Personen',
      'D) Übermäßige Gewissenhaftigkeit',
      'E) Fehlen von Selbstvertrauen',
    ],
    correct: [2],
    explanation:
        'Die histrionische Persönlichkeitsstörung ist u.a. durch leichte Beeinflussbarkeit (Suggestibilität) gekennzeichnet (C richtig). Weitere Merkmale sind theatralisches Verhalten, übertriebener Gefühlsausdruck und das Verlangen nach Aufmerksamkeit. Starke Zweifel und Vorsicht (A) gehören zur ängstlich-vermeidenden PS. Ängste vor Verlassenwerden (B) sind typisch für Borderline oder dependente PS. Übermäßige Gewissenhaftigkeit (D) ist anankastisch. Fehlendes Selbstvertrauen (E) kennzeichnet die dependente PS.',
  ),
];
