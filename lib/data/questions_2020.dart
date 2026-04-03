import '../models/question.dart';

const List<Question> questions2020 = [
  Question(
    id: 1,
    exam: 'Oktober 2020',
    q: 'Welche der folgenden Aussagen zum Eye Movement Desensitization and Reprocessing (EMDR) treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'EMDR wird vor allem in der Behandlung der Posttraumatischen Belastungsstörung eingesetzt',
      'EMDR basiert auf der Annahme, dass traumatische Erlebnisse durch bilaterale Stimulation verarbeitet werden können',
      'EMDR ist eine rein psychoanalytische Technik',
      'EMDR wurde von Francine Shapiro entwickelt',
      'EMDR ist bei Traumafolgestörungen kontraindiziert',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. EMDR ist ein evidenzbasiertes Verfahren zur Behandlung von PTBS, das von Francine Shapiro entwickelt wurde. Durch bilaterale Stimulation (z.B. Augenbewegungen) wird die Verarbeitung traumatischer Erinnerungen gefördert. EMDR ist keine rein psychoanalytische Technik und ist bei Traumafolgestörungen gerade indiziert, nicht kontraindiziert.',
  ),
  Question(
    id: 2,
    exam: 'Oktober 2020',
    q: 'Welche Aussage zur verhaltenstherapeutischen Behandlung von Zwangsstörungen trifft am ehesten zu?',
    options: [
      'Der Therapeut versucht, die Verdrängung aufzuheben und den Patienten zu ermutigen, sich dem zu stellen, was er wirklich fürchtet',
      'Besonders wirksam ist die Rekonstruktion des auslösenden Ereignisses der Zwangsrituale',
      'Bei einem Expositionstraining mit Reaktionsmanagement soll der Patient die Erfahrung machen, dass sich der Spannungszustand auch abbaut, wenn er seine Rituale nicht ausführt',
      'Für die Wirkung einer Konfrontation ist es besser, wenn sich der Patient gedanklich ablenkt',
      'Begleitend zur verhaltenstherapeutischen Behandlung sollte eine Dauertherapie mit Benzodiazepinen erfolgen',
    ],
    correct: 2,
    explanation:
        'C ist richtig. Exposition mit Reaktionsverhinderung (ERP) ist die Methode der Wahl bei Zwangsstörungen. Der Patient wird dem angstauslösenden Reiz ausgesetzt und soll erleben, dass die Anspannung auch ohne Ausführung der Zwangsrituale nachlässt (Habituation). A beschreibt eher psychoanalytisches Vorgehen. Ablenkung (D) mindert die Wirksamkeit der Exposition. Benzodiazepine als Dauertherapie (E) sind nicht indiziert.',
  ),
  Question(
    id: 3,
    exam: 'Oktober 2020',
    q: 'Als Absetzphänomene nach längerem hochdosiertem Cannabiskonsum können auftreten:\n1. Angst\n2. Tremor\n3. Schlafstörungen\n4. Schwitzen\n5. Reizbarkeit',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Nach längerem hochdosiertem Cannabiskonsum können Entzugssymptome auftreten: Angst, Tremor, Schlafstörungen, Schwitzen und Reizbarkeit. Weitere mögliche Symptome sind Appetitlosigkeit, innere Unruhe und depressive Verstimmung. Cannabisentzug ist meist mild, aber bei chronischem Hochdosiskonsum klinisch relevant.',
  ),
  Question(
    id: 4,
    exam: 'Oktober 2020',
    q: 'Im Patientenrechtegesetz sind folgende Pflichten des Behandelnden verankert:\n1. Aufklärungspflicht\n2. Aufbewahrungspflicht der Patientenakte\n3. Dokumentationspflicht\n4. Informationspflicht\n5. Meldepflicht',
    options: [
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2, 3 und 4 sind richtig. Das Patientenrechtegesetz (§§630a-630h BGB) verankert die Aufklärungspflicht, Aufbewahrungspflicht der Patientenakte, Dokumentationspflicht und Informationspflicht des Behandelnden. Aussage 5 ist falsch: Die Meldepflicht (z.B. nach IfSG) ist nicht im Patientenrechtegesetz, sondern in anderen Gesetzen geregelt.',
  ),
  Question(
    id: 5,
    exam: 'Oktober 2020',
    q: 'Symptome einer schweren depressiven Episode ohne psychotische Symptome nach ICD-10 sind: (Wählen Sie zwei Antworten)',
    options: [
      'Gedankenausbreitung',
      'Schuldgefühle',
      'Psychomotorische Hemmung',
      'Verarmungswahn',
      'Anhaltende Halluzinationen',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Schuldgefühle und psychomotorische Hemmung sind typische Symptome einer schweren depressiven Episode. A (Gedankenausbreitung) ist ein Symptom der Schizophrenie. D (Verarmungswahn) und E (Halluzinationen) sind psychotische Symptome – die Frage fragt explizit nach einer Episode OHNE psychotische Symptome.',
  ),
  Question(
    id: 6,
    exam: 'Oktober 2020',
    q: 'Welche der folgenden Aussagen zur Diagnosestellung eines Abhängigkeitssyndroms (nach ICD-10) trifft zu?',
    options: [
      'Eine Alkoholabhängigkeit besteht, wenn täglich mehr als 50g (Männer) oder 30g (Frauen) Alkohol konsumiert werden',
      'Die Diagnose kann nur gestellt werden, wenn eindeutig schädliche Folgen nachgewiesen werden können',
      'Eine erhaltene Kontrollfähigkeit bezüglich Beginn, Beendigung oder Menge des Konsums schließt die Diagnose aus',
      'Zu den Kriterien zählt, ob ein starker Wunsch oder eine Art Zwang besteht, eine Substanz zu konsumieren',
      'Ein Abhängigkeitssyndrom kann ausgeschlossen werden, wenn der Betroffene 30 Tage auf die Substanz verzichten kann',
    ],
    correct: 3,
    explanation:
        'D ist richtig. Ein starker Wunsch oder Zwang zum Substanzkonsum (Craving) ist eines der sechs ICD-10-Kriterien für ein Abhängigkeitssyndrom. A ist falsch: Konsummengen allein definieren keine Abhängigkeit. B ist falsch: Schädliche Folgen sind nicht zwingend erforderlich. C ist falsch: Kontrollverlust ist ein Kriterium, aber erhaltene Kontrolle schließt Abhängigkeit nicht aus. E ist falsch: Kurzfristige Abstinenz schließt Abhängigkeit nicht aus.',
  ),
  Question(
    id: 7,
    exam: 'Oktober 2020',
    q: 'Ein erhöhtes Suizidrisiko gegenüber der Normalbevölkerung besteht bei einer Erkrankung an:\n1. Schizophrenie\n2. Depression\n3. Alkoholkrankheit\n4. Anorexia nervosa\n5. Persönlichkeitsstörung',
    options: [
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Alle genannten Erkrankungen gehen mit einem erhöhten Suizidrisiko einher: Schizophrenie (ca. 5-10% Suizidrate), Depression (häufigste Ursache), Alkoholabhängigkeit (enthemmend, depressionsfördernd), Anorexia nervosa (höchste Mortalität aller psych. Störungen) und Persönlichkeitsstörungen (besonders Borderline-PS).',
  ),
  Question(
    id: 8,
    exam: 'Oktober 2020',
    q: 'Typische Symptome des Morbus Parkinson sind:\n1. Monotone Stimme\n2. Mikrografie\n3. Bewegungsarmut\n4. Tremor\n5. Krampfanfälle',
    options: [
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 4 sind richtig. Typische Parkinson-Symptome: monotone, leise Stimme (Hypophonie), Mikrografie (zunehmend kleiner werdende Schrift), Bewegungsarmut (Akinese/Bradykinese) und Ruhetremor. Aussage 5 ist falsch: Krampfanfälle sind kein typisches Symptom des Morbus Parkinson, sondern eher bei Epilepsie.',
  ),
  Question(
    id: 9,
    exam: 'Oktober 2020',
    q: 'Welche Aussage zur schweren Intelligenzminderung (nach ICD-10) trifft zu?',
    options: [
      'Der IQ liegt unter 20',
      'Der IQ liegt im Bereich zwischen 20 und 34',
      'Der IQ liegt im Bereich zwischen 50 und 69',
      'Der IQ liegt im Bereich zwischen 70 und 84',
      'Der IQ liegt im Bereich zwischen 85 und 115',
    ],
    correct: 1,
    explanation:
        'B ist richtig. Die schwere Intelligenzminderung (F72) nach ICD-10 ist definiert durch einen IQ-Bereich von 20-34. Zur Orientierung: IQ unter 20 = schwerste IM (F73), IQ 35-49 = mittelgradige IM (F71), IQ 50-69 = leichte IM (F70). IQ 70-84 gilt als Lernbehinderung, IQ 85-115 ist der Normbereich.',
  ),
  Question(
    id: 10,
    exam: 'Oktober 2020',
    q: 'Welche der folgenden Aussagen zu Essstörungen treffen zu?\n1. Patienten mit Anorexia nervosa klagen meist über Kraftlosigkeit und körperliche Erschöpfung\n2. Bei einem BMI kleiner als 18,5 kg/m² spricht man von Untergewicht\n3. Charakteristisch für die Binge-Eating-Störung sind gewichtsregulierende Maßnahmen wie z.B. Erbrechen\n4. Patienten mit Anorexia nervosa haben hohen Leidensdruck und erleben sich als zu dünn\n5. Zu den Symptomen der Anorexia nervosa gehören übertriebene körperliche Aktivitäten',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        '2 und 5 sind richtig. Ein BMI unter 18,5 kg/m² definiert Untergewicht (WHO). Übertriebene körperliche Aktivität ist ein typisches Symptom der Anorexie. Aussage 1 ist falsch: Trotz objektiver Mangelernährung klagen Anorexie-Patienten selten über Kraftlosigkeit – sie leugnen oft ihre Symptome. Aussage 3 ist falsch: Gewichtsregulierende Maßnahmen wie Erbrechen sind typisch für Bulimie, nicht BES. Aussage 4 ist falsch: Anorexie-Patienten haben oft geringe Krankheitseinsicht und erleben sich als zu dick (Körperschemastörung).',
  ),
  Question(
    id: 11,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zum unterschiedlichen Vorgehen von Psychoanalyse und Verhaltenstherapie treffen am ehesten zu?\n1. In der Psychoanalyse wird überwiegend gegenwartsbezogen gearbeitet\n2. In der Psychoanalyse werden vor allem kognitive Techniken eingesetzt\n3. In der Psychoanalyse bleibt der Therapeut neutral-indifferent\n4. In der KVT geht es auch um beobachtbares Verhalten\n5. Ziel der KVT ist u.a. eine Verbesserung des Selbstmanagements',
    options: [
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '3, 4 und 5 sind richtig. Der Psychoanalytiker bleibt neutral-indifferent (Abstinenzregel). In der KVT geht es um beobachtbares Verhalten und Selbstmanagement. Aussage 1 ist falsch: Die Psychoanalyse arbeitet vergangenheitsbezogen (Kindheitserfahrungen). Aussage 2 ist falsch: Kognitive Techniken gehören zur Verhaltenstherapie, nicht zur klassischen Psychoanalyse.',
  ),
  Question(
    id: 12,
    exam: 'Oktober 2020',
    q: 'Störungen der Affektivität bei Schizophrenie sind: (Wählen Sie zwei Antworten)',
    options: ['Ambivalenz', 'Haltungsstereotypien', 'Manierismen', 'Parathymie', 'Akustische Halluzinationen'],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Ambivalenz (gleichzeitiges Bestehen widersprüchlicher Gefühle) und Parathymie (inadäquater Affekt, z.B. Lachen bei traurigen Inhalten) sind Störungen der Affektivität bei Schizophrenie. B (Haltungsstereotypien) und C (Manierismen) sind psychomotorische Störungen. E (akustische Halluzinationen) sind Wahrnehmungsstörungen.',
  ),
  Question(
    id: 13,
    exam: 'Oktober 2020',
    q: 'Welche der folgenden Aussagen zur anhaltenden wahnhaften Störung (nach ICD-10) trifft zu?',
    options: [
      'Ständiges Stimmenhören und schizophrene Symptome in der Vorgeschichte sind typisch',
      'Die Wahnvorstellungen müssen mindestens 12 Monate dauern',
      'Die Betroffenen zeigen auch in wahnfreien Bereichen massive Auffälligkeiten',
      'Nur in seltenen Fällen bestehen Verfolgungs- und Beeinträchtigungsideen',
      'Nicht vereinbar mit der Diagnose ist eine hirnorganische Erkrankung',
    ],
    correct: 4,
    explanation:
        'E ist richtig: Eine hirnorganische Erkrankung muss ausgeschlossen werden, sie ist nicht mit der Diagnose einer anhaltenden wahnhaften Störung vereinbar. A ist falsch: Stimmenhören ist nicht typisch. B ist falsch: Die Mindestdauer beträgt 3 Monate, nicht 12. C ist falsch: Außerhalb des Wahns sind die Betroffenen oft unauffällig. D ist falsch: Verfolgungswahn und Beeinträchtigungsideen sind gerade häufig.',
  ),
  Question(
    id: 14,
    exam: 'Oktober 2020',
    q: 'Welche der folgenden Aussagen zu Bindungsstörungen (nach ICD-10) treffen zu?\n1. Die reaktive Bindungsstörung wird von kognitiven Defiziten begleitet, die denen des Autismus vergleichbar sind\n2. Zur Leitsymptomatik gehören repetitive und stereotype Verhaltensmuster\n3. Wichtig ist die diagnostische Abgrenzung von tiefgreifenden Entwicklungsstörungen\n4. Die reaktive Bindungsstörung tritt meist im Kontext von Vernachlässigung oder Misshandlung auf\n5. Beginn vor dem Alter von 5 Jahren',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '3, 4 und 5 sind richtig. Die reaktive Bindungsstörung muss von tiefgreifenden Entwicklungsstörungen (Autismus) abgegrenzt werden, tritt im Kontext von Vernachlässigung/Misshandlung auf und beginnt vor dem 5. Lebensjahr. Aussage 1 ist falsch: Autismus-vergleichbare kognitive Defizite sind nicht typisch. Aussage 2 ist falsch: Repetitive/stereotype Verhaltensmuster gehören zum Autismus, nicht zur Bindungsstörung.',
  ),
  Question(
    id: 15,
    exam: 'Oktober 2020',
    q: 'Für eine schizoide Persönlichkeitsstörung (nach ICD-10) sprechen: (Wählen Sie zwei Antworten)',
    options: [
      'Deutlich mangelnde Sensibilität im Erkennen und Befolgen gesellschaftlicher Regeln',
      'Emotionale Kühle, Distanziertheit oder flache Affektivität',
      'Übermäßiges Interesse an körperlicher Attraktivität',
      'Bedürfnis nach übermäßiger Bewunderung',
      'Übermäßiger Zweifel und Vorsicht',
    ],
    correct: [1, 4],
    explanation:
        'B und E sind richtig. Emotionale Kühle und flache Affektivität sind Kernmerkmale der schizoiden PS. Übermäßiger Zweifel und Vorsicht sind ebenfalls typisch (Rückzug, Vermeidung). A beschreibt eher die dissoziale PS. C beschreibt eher die histrionische PS. D beschreibt eher die narzisstische PS.',
  ),
  Question(
    id: 16,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zur Übertragung/Gegenübertragung im Sinne der Psychoanalyse treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei der Übertragung werden aggressive Triebe übertrieben und theatralisch dargestellt',
      'Eine Übertragung ist kein Grund eine Therapie zu beenden',
      'Der Therapeut muss auf Übertragung rasch mit Gegenmaßnahmen reagieren',
      'Die Gegenübertragung bezeichnet das Erahnen von Wünschen des Therapeuten durch den Patienten',
      'Je nach Zeitpunkt der Therapie kann der Therapeut auf eine Übertragung im Sinne einer Deutung hinweisen',
    ],
    correct: [1, 4],
    explanation:
        'B und E sind richtig. Übertragung ist ein erwarteter und therapeutisch wertvoller Prozess – kein Grund zum Therapieabbruch. Der Therapeut kann die Übertragung deuten, um dem Patienten Einsicht zu ermöglichen. A ist falsch: Übertragung ist die Projektion früherer Beziehungsmuster auf den Therapeuten. C ist falsch: Es geht nicht um Gegenmaßnahmen, sondern um Verständnis. D ist falsch: Gegenübertragung sind die emotionalen Reaktionen des Therapeuten auf den Patienten.',
  ),
  Question(
    id: 17,
    exam: 'Oktober 2020',
    q: 'Bei somatoformen Störungen (nach ICD-10): (Wählen Sie zwei Antworten)',
    options: [
      'findet sich bei der Abklärung keine ausreichende organische Erklärung für die Körperbeschwerden',
      'sollten die Patienten wiederholt die komplette somatische Diagnostik durchlaufen',
      'besteht häufig eine Komorbidität mit depressiven Störungen',
      'spielen soziale Faktoren keine Rolle',
      'steht die medikamentöse Therapie im Vordergrund',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Somatoforme Störungen sind definiert durch fehlende ausreichende organische Erklärung der Beschwerden. Depressive Störungen sind eine häufige Komorbidität. B ist falsch: Wiederholte Diagnostik verstärkt das Krankheitsverhalten. D ist falsch: Soziale Faktoren spielen eine wichtige Rolle. E ist falsch: Psychotherapie (v.a. KVT) steht im Vordergrund.',
  ),
  Question(
    id: 18,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zu Persönlichkeitsstörungen (nach ICD-10) treffen zu?\n1. Das auffällige Verhaltensmuster ist andauernd\n2. Charakteristisch sind Gedächtnisprobleme\n3. Die Störungen beginnen in der Kindheit oder Adoleszenz\n4. Die Störungen sind gut mit Medikamenten behandelbar\n5. Die Störungen werden durch organische Erkrankung oder Hirnverletzung verursacht',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        '1 und 3 sind richtig. Persönlichkeitsstörungen zeichnen sich durch andauernde, stabile Verhaltensmuster aus und beginnen in Kindheit/Adoleszenz. Aussage 2 ist falsch: Gedächtnisprobleme sind kein Merkmal. Aussage 4 ist falsch: PS sind medikamentös schlecht behandelbar – Psychotherapie ist die Methode der Wahl. Aussage 5 ist falsch: PS werden nicht durch organische Ursachen verursacht – dann wäre es eine organische Persönlichkeitsveränderung.',
  ),
  Question(
    id: 19,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zur ADHS treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'ADHS ist gekennzeichnet durch motorische Hyperaktivität, Impulsivität und Störung der Aufmerksamkeit',
      'ADHS tritt im Erwachsenenalter nicht auf',
      'Vor Diagnosestellung muss eine organische Ursache ausgeschlossen werden',
      'Genetische Faktoren spielen bei ADHS keine Rolle',
      'Eine alleinige Verhaltenstherapie ist medikamentöser Therapie eindeutig überlegen',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. ADHS ist durch die Trias Hyperaktivität, Impulsivität und Aufmerksamkeitsstörung gekennzeichnet. Organische Ursachen (z.B. Schilddrüsenfunktionsstörungen) müssen ausgeschlossen werden. B ist falsch: ADHS persistiert oft ins Erwachsenenalter. D ist falsch: Genetische Faktoren spielen eine wesentliche Rolle (Heritabilität ca. 70-80%). E ist falsch: Multimodale Therapie (Medikation + VT) ist am wirksamsten.',
  ),
  Question(
    id: 20,
    exam: 'Oktober 2020',
    q: 'Zwangssymptome können auftreten bei:\n1. Angststörungen\n2. Depressive Episode\n3. Schizophrenie\n4. ADHS\n5. Hirntumor',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Zwangssymptome können bei zahlreichen Störungen auftreten: bei Angststörungen (komorbid), depressiven Episoden (Grübelzwang), Schizophrenie (zwanghafte Phänomene), ADHS (repetitive Verhaltensweisen) und Hirntumoren (organische Ursache, z.B. frontale Läsionen). Differentialdiagnostik ist wichtig.',
  ),
  Question(
    id: 21,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zu Sexualstörungen nach ICD-10 treffen zu?\n1. Transsexualismus ist der dauerhafte Wunsch, dem anderen Geschlecht anzugehören\n2. Anhedonie bezeichnet psychogen bedingte Schmerzen beim Geschlechtsverkehr\n3. Bei sexuellen Funktionsstörungen muss an organische Ursachen gedacht werden\n4. Homo-/Bisexualität werden zu Störungen der Sexualpräferenz gerechnet\n5. Exhibitionismus wird zu den sexuellen Funktionsstörungen gerechnet',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        '1 und 3 sind richtig. Transsexualismus (F64.0) ist der Wunsch, als Angehöriger des anderen Geschlechts zu leben. Bei sexuellen Funktionsstörungen müssen organische Ursachen ausgeschlossen werden. Aussage 2 ist falsch: Anhedonie ist Freudlosigkeit – psychogene Schmerzen beim GV heißen Dyspareunie. Aussage 4 ist falsch: Homo-/Bisexualität sind keine Störungen. Aussage 5 ist falsch: Exhibitionismus gehört zu den Störungen der Sexualpräferenz (Paraphilien), nicht zu den Funktionsstörungen.',
  ),
  Question(
    id: 22,
    exam: 'Oktober 2020',
    q: 'Typische Symptome des amnestischen Syndroms (Korsakow-Syndrom) sind: (Wählen Sie zwei Antworten)',
    options: [
      'Akustische Halluzinationen',
      'Zeitgitterstörungen',
      'Erhöhte Vigilanz',
      'Augenmuskellähmungen',
      'Beeinträchtigungen des Kurzzeitgedächtnisses',
    ],
    correct: [1, 4],
    explanation:
        'B und E sind richtig. Das Korsakow-Syndrom ist gekennzeichnet durch Zeitgitterstörungen (Unfähigkeit, Erinnerungen zeitlich einzuordnen) und Störungen des Kurzzeitgedächtnisses bei relativ erhaltenem Altgedächtnis. Typisch sind auch Konfabulationen. A (Halluzinationen) und C (erhöhte Vigilanz) gehören nicht zum Korsakow-Syndrom. D (Augenmuskellähmungen) gehört zur Wernicke-Enzephalopathie, die dem Korsakow vorausgehen kann, aber nicht zum amnestischen Syndrom selbst.',
  ),
  Question(
    id: 23,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zur dialektisch-behavioralen Therapie (DBT) treffen zu?\n1. Die DBT integriert Techniken aus VT, humanistischer Therapie, psychodynamischer Therapie und Zen-Meditation\n2. Die DBT findet in erster Linie bei schweren komorbiden Störungen (z.B. akute Drogenintoxikationen) Anwendung\n3. Die DBT ist bei chronisch suizidalen Patienten mit BPS kontraindiziert\n4. Die DBT wird u.a. als Fertigkeitentraining (Skillstraining) durchgeführt\n5. Die Wirksamkeit der DBT bei BPS ist wissenschaftlich belegt',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 4 und 5 sind richtig. Die DBT nach Linehan integriert verschiedene therapeutische Ansätze einschließlich Zen-Meditation/Achtsamkeit. Skillstraining ist ein zentrales Element. Die Wirksamkeit bei BPS ist gut belegt. Aussage 2 ist falsch: DBT wurde primär für BPS mit Suizidalität entwickelt, nicht für komorbide Drogenintoxikationen. Aussage 3 ist falsch: DBT ist gerade bei chronisch suizidalen BPS-Patienten indiziert.',
  ),
  Question(
    id: 24,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zur Behandlung chronischer Schmerzstörungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Opioidhaltige Analgetika führen nicht selten zu einer Abhängigkeitsentwicklung',
      'Training zur Stressbewältigung kann dazu beitragen, Hilflosigkeitsgefühle zu überwinden',
      'Entspannungstraining ist kontraindiziert',
      'Auf Schonung und Vermeidung körperlicher Aktivität sollte konsequent geachtet werden',
      'Der Patient sollte regelmäßig auf das Fortbestehen seiner Beschwerden hingewiesen werden',
    ],
    correct: [0, 1],
    explanation:
        'A und B sind richtig. Opioide bergen ein relevantes Abhängigkeitsrisiko bei chronischen Schmerzen. Stressbewältigungstraining hilft, Hilflosigkeit zu reduzieren und Selbstwirksamkeit aufzubauen. C ist falsch: Entspannung ist wichtiger Therapiebaustein. D ist falsch: Aktivierung und Bewegung sind zentral. E ist falsch: Das verstärkt die Schmerzfokussierung und ist kontraproduktiv.',
  ),
  Question(
    id: 25,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zu psychotischen Störungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei der katatonen Schizophrenie treten nur selten psychomotorische Erregungszustände auf',
      'Die zönästhetische Schizophrenie ist gekennzeichnet durch körperliche Missempfindungen und Leibhalluzinationen',
      'Die hebephrene Schizophrenie beginnt selten vor dem 25. Lebensjahr',
      'Amphetaminkonsum ist ein Risikofaktor für psychotische Störungen',
      'Die Lebenserwartung schizophrener Patienten ist gegenüber der Gesamtbevölkerung nicht verringert',
    ],
    correct: [1, 3],
    explanation:
        'B und D sind richtig. Die zönästhetische Schizophrenie (Coenästhesie) zeigt bizarre Körpermissempfindungen und Leibhalluzinationen. Amphetamine können psychotische Episoden auslösen und sind ein Risikofaktor. A ist falsch: Bei katatoner Schizophrenie treten gerade psychomotorische Erregungszustände auf. C ist falsch: Hebephrenie beginnt typischerweise in der Adoleszenz (15-25 Jahre). E ist falsch: Die Lebenserwartung ist um 15-20 Jahre reduziert.',
  ),
  Question(
    id: 26,
    exam: 'Oktober 2020',
    q: 'Ein depressiver Patient klagt über innere Leere, Antriebslosigkeit, Grübeln, Rückzug. Welche Aussagen zum verhaltenstherapeutischen Vorgehen treffen am ehesten zu? (Wählen Sie zwei Antworten)',
    options: [
      'Der Therapeut sollte das Teufelskreismodell der Angst erarbeiten',
      'Der Therapeut sollte in Planung herausfordernder Aktivitäten (z.B. Marathon) unterstützen',
      'Der Therapeut sollte gezielt Gegenargumente nennen, die beweisen, dass automatische Gedanken falsch sind',
      'Der Therapeut sollte Techniken einüben, Grübelgedanken zu unterbrechen und umzustrukturieren',
      'Der Therapeut sollte soziale Fertigkeiten trainieren und Ressourcen aktivieren',
    ],
    correct: [3, 4],
    explanation:
        'D und E sind richtig. Kognitive Umstrukturierung von Grübelgedanken und Training sozialer Fertigkeiten mit Ressourcenaktivierung sind zentrale verhaltenstherapeutische Interventionen bei Depression. A ist falsch: Das Teufelskreismodell der Angst passt nicht zur Depression. B ist falsch: Überforderung (Marathon) wäre kontraproduktiv – graduierter Aktivitätsaufbau ist richtig. C ist falsch: Der Therapeut liefert keine Gegenbeweise, sondern leitet den Patienten an, seine Gedanken selbst zu hinterfragen (sokratischer Dialog).',
  ),
  Question(
    id: 27,
    exam: 'Oktober 2020',
    q: 'Welche Aussagen zur gesetzlichen Betreuung treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die Anordnung einer Betreuung führt zur Geschäftsunfähigkeit',
      'Ein volljähriger Geschäftsunfähiger kann keine Betreuung für sich beantragen',
      'Organische psychische Störungen sind häufig Anlass für die Einrichtung einer Betreuung',
      'Psychotherapeutische Gespräche mit Betreuten erfordern grundsätzlich die Genehmigung durch das Gericht',
      'Angehörige können eine Betreuung beim Gericht anregen',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Organische psychische Störungen (Demenz) sind ein häufiger Anlass für die Einrichtung einer Betreuung. Angehörige können beim Betreuungsgericht eine Betreuung anregen. A ist falsch: Eine Betreuung führt nicht automatisch zur Geschäftsunfähigkeit. B ist falsch: Auch Geschäftsunfähige können eine Betreuung beantragen. D ist falsch: Psychotherapie erfordert keine gerichtliche Genehmigung.',
  ),
  Question(
    id: 28,
    exam: 'Oktober 2020',
    q: 'Unerwünschte Nebenwirkungen der Antipsychotika (Neuroleptika) sind:\n1. Parkinsonoid\n2. Sitzunruhe (Akathisie)\n3. Herzkreislaufstörungen\n4. Gewichtszunahme\n5. Abhängigkeitsentwicklung',
    options: [
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 4 sind richtig. Typische Nebenwirkungen von Neuroleptika: Parkinsonoid (extrapyramidal-motorische Störungen), Akathisie (Sitzunruhe), Herzkreislaufstörungen (QT-Verlängerung, orthostatische Hypotonie) und Gewichtszunahme (v.a. atypische Neuroleptika). Aussage 5 ist falsch: Neuroleptika haben kein Abhängigkeitspotenzial – dies unterscheidet sie von Benzodiazepinen.',
  ),
];
