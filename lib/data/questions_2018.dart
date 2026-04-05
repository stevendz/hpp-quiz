import '../models/question.dart';

const List<Question> questions2018 = [
  Question(
    id: 1,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Sogenannte "Denkfehler" im Rahmen der kognitiven Therapie der Depression (nach Beck) sind:\n1. Generalisierung\n2. Wahngedanken\n3. Katastrophisierung\n4. Schwarz-Weiß-Denken\n5. Vermeidungsverhalten',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 1, 2 und 4 sind richtig',
      'C) Nur die Aussagen 1, 3 und 4 sind richtig',
      'D) Nur die Aussagen 2, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Denkfehler nach Beck umfassen Generalisierung, Katastrophisierung und Schwarz-Weiß-Denken (C: 1, 3 und 4 richtig). Wahngedanken sind psychotische Symptome, keine kognitiven Verzerrungen (2 falsch). Vermeidungsverhalten ist ein Verhaltensmuster, kein Denkfehler (5 falsch). Weitere Denkfehler nach Beck sind u.a. Gedankenlesen und willkürliches Schlussfolgern.',
  ),
  Question(
    id: 2,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zu Zwangsgedanken treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Im Beisein anderer Personen treten keine Zwangsgedanken auf',
      'B) Begleitend kann es zu Zwangshandlungen kommen',
      'C) Zwangsgedanken wiederholen sich und werden als unangenehm empfunden',
      'D) Es gibt keine aggressiven Zwangsgedanken',
      'E) Zählzwang gehört nicht zu den Zwangsgedanken',
    ],
    correct: [1, 2],
    explanation:
        'Bei Zwangsstörungen können Zwangsgedanken von Zwangshandlungen begleitet werden (B richtig). Zwangsgedanken wiederholen sich stereotyp und werden als quälend und unangenehm empfunden (C richtig). Zwangsgedanken treten unabhängig von der Anwesenheit anderer auf (A falsch). Es gibt durchaus aggressive Zwangsgedanken, z.B. Impulse anderen zu schaden (D falsch). Zählzwang gehört zu den Zwangsgedanken (E falsch).',
  ),
  Question(
    id: 3,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zur Alkoholkrankheit treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Der Entzug bei Alkoholabhängigkeit sollte ambulant erfolgen',
      'B) Der Alkoholentzug sollte als "kalter Entzug" ohne Substitutionsbehandlung erfolgen',
      'C) Im Alkoholentzug können schwere neurologische Komplikationen auftreten',
      'D) Die Substitution der Vitamine B1 (Thiamin) und Folsäure ist ein wichtiger Bestandteil in der Behandlung der chronischen Alkoholkrankheit',
      'E) Die Alkoholkrankheit kommt selten in Verbindung mit weiteren psychischen Erkrankungen vor',
    ],
    correct: [2, 3],
    explanation:
        'Im Alkoholentzug können schwere neurologische Komplikationen wie Krampfanfälle und Delirium tremens auftreten (C richtig). Die Substitution von Vitamin B1 (Thiamin) und Folsäure ist ein wichtiger Bestandteil der Behandlung chronischer Alkoholkrankheit zur Prophylaxe von Wernicke-Enzephalopathie (D richtig). Der Entzug sollte stationär und medikamentös begleitet erfolgen (A und B falsch). Alkoholkrankheit ist häufig mit weiteren psychischen Erkrankungen komorbid (E falsch).',
  ),
  Question(
    id: 4,
    exam: 'Oktober 2018',
    q: 'Bei welcher Therapieform zur Behandlung psychischer Erkrankungen besteht für Heilpraktiker mit einer auf das Gebiet der Psychotherapie beschränkten Erlaubnis ein Tätigkeitsverbot?',
    options: [
      'A) Gruppentherapie (Psychotherapie im Gruppensetting)',
      'B) Substitutionstherapie mit Methadon',
      'C) EMDR-Therapie (Eye Movement Desensitization and Reprocessing)',
      'D) Expositionstherapie',
      'E) Tiefenpsychologisch orientierte Psychotherapie',
    ],
    correct: [1],
    explanation:
        'Für Heilpraktiker mit auf Psychotherapie beschränkter Erlaubnis besteht ein Tätigkeitsverbot für die Substitutionstherapie mit Methadon (B richtig), da dies eine ärztliche Maßnahme darstellt. Gruppentherapie (A), EMDR (C), Expositionstherapie (D) und tiefenpsychologisch orientierte Psychotherapie (E) dürfen von HPP ausgeübt werden.',
  ),
  Question(
    id: 5,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Wichtige Risikofaktoren für Suizide sind:\n1. Weibliches Geschlecht\n2. Frühere Suizidversuche\n3. Konkrete Suizidvorbereitungen\n4. Wahnsymptome\n5. Mittleres Lebensalter',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 2 und 5 sind richtig',
      'C) Nur die Aussagen 1, 2 und 3 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [3],
    explanation:
        'Wichtige Risikofaktoren für Suizide sind frühere Suizidversuche (2), konkrete Suizidvorbereitungen (3) und Wahnsymptome (4) - D richtig. Männliches (nicht weibliches) Geschlecht ist ein Risikofaktor für vollendeten Suizid (1 falsch). Höheres (nicht mittleres) Lebensalter ist ein Risikofaktor (5 falsch).',
  ),
  Question(
    id: 6,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen trifft (treffen) zu? Bei einer kombinierten Persönlichkeitsstörung (nach ICD-10)\n1. sind psychotische Symptome vorhanden\n2. können paranoide Wesenszüge vorhanden sein\n3. Besteht eine Intelligenzminderung mit Verhaltensstörung\n4. treten unterschiedliche Merkmale verschiedener Persönlichkeitsstörungen auf\n5. sind die typischen Merkmale der dissozialen Persönlichkeitsstörungen das vorherrschende Symptombild',
    options: [
      'A) Nur die Aussage 2 ist richtig',
      'B) Nur die Aussage 5 ist richtig',
      'C) Nur die Aussagen 1 und 2 sind richtig',
      'D) Nur die Aussagen 2 und 4 sind richtig',
      'E) Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: [3],
    explanation:
        'Bei der kombinierten Persönlichkeitsstörung (F61.0) können paranoide Wesenszüge vorhanden sein (2 richtig) und es treten unterschiedliche Merkmale verschiedener Persönlichkeitsstörungen auf (4 richtig) - D richtig. Bei PS gibt es keine psychotischen Symptome (1 falsch). Intelligenzminderung ist eine separate Diagnose (3 falsch). Per Definition gibt es kein vorherrschendes Symptombild einer einzelnen PS (5 falsch).',
  ),
  Question(
    id: 7,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zu Störungen des Sozialverhaltens (nach IDC-10) treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Jugendliche Aufmüpfigkeit zählt zu den typischen Symptomen der Störungen des Sozialverhaltens',
      'B) Bei einem Jugendlichen, der seit zwei bis drei Monaten die Schule schwänzt, sollte die Diagnose einer Störung des Sozialverhaltens gestellt werden',
      'C) Für die Behandlung von Kindern und Jugendlichen mit einer Störung des Sozialverhaltens sind vorrangig medikamentöse Maßnahmen zielführend',
      'D) In seinen extremsten Auswirkungen beinhaltet das Verhalten bei Störungen des Sozialverhaltens gröbste Verletzungen altersentsprechender sozialer Erwartungen, wie z.B. Grausamkeit gegenüber anderen Menschen oder Tieren',
      'E) Störungen des Sozialverhaltens können sich in einigen Fällen zu einer dissozialen Persönlichkeitsstörung entwickeln',
    ],
    correct: [3, 4],
    explanation:
        'Bei Störungen des Sozialverhaltens (F91) beinhaltet das Verhalten in extremsten Auswirkungen gröbste Verletzungen sozialer Erwartungen wie Grausamkeit (D richtig). Die Störung kann sich zu einer dissozialen Persönlichkeitsstörung entwickeln (E richtig). Jugendliche Aufmüpfigkeit ist normales Pubertätsverhalten (A falsch). Die Diagnose erfordert mindestens 6 Monate Dauer (B falsch). Medikamentöse Behandlung ist nicht vorrangig (C falsch).',
  ),
  Question(
    id: 8,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zur Elektrokrampftherapie (EKT) treffen zu?\n1. Durch elektrische Reizung des Gehirns wird ein Krampfanfall ausgelöst\n2. Die EKT ist eine wirksame Behandlungsmethode\n3. Die EKT kann bei Depressionen eingesetzt werden\n4. Die EKT ist eine Sonderform der Elektroenzephalografie (EEG)\n5. Die EKT wird aufgrund der hohen Risiken nicht mehr angewendet',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 1 und 3 sind richtig',
      'C) Nur die Aussagen 1 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2 und 3 sind richtig',
      'E) Nur die Aussagen 2, 3 und 4 sind richtig',
    ],
    correct: [3],
    explanation:
        'Bei der EKT wird durch elektrische Reizung ein Krampfanfall ausgelöst (1 richtig), sie ist eine wirksame Behandlungsmethode (2 richtig) und kann bei schweren Depressionen eingesetzt werden (3 richtig) - D richtig. EKT ist keine Sonderform des EEG (4 falsch). EKT wird weiterhin angewendet, insbesondere bei therapieresistenten Depressionen (5 falsch).',
  ),
  Question(
    id: 9,
    exam: 'Oktober 2018',
    q: 'Welche Aussage zur emotional instabilen Persönlichkeitsstörung vom Borderline-Typ (nach ICD-10) trifft zu?',
    options: [
      'A) Patienten mit einer Borderline-Persönlichkeitsstörung profitieren von langen stationären Aufenthalten',
      'B) Patienten mit einer Borderline-Persönlichkeitsstörung neigen selten zu selbstverletzendem Verhalten',
      'C) Die Borderline-Persönlichkeitsstörung führt selten zu suizidalen Gedanken',
      'D) Borderline-Persönlichkeitsstörungen treten in der Regel im mittleren Erwachsenenalter auf',
      'E) Borderline-Persönlichkeitsstörungen haben häufig einen langen chronischen Verlauf',
    ],
    correct: [4],
    explanation:
        'Borderline-Persönlichkeitsstörungen haben häufig einen langen chronischen Verlauf (E richtig). Lange stationäre Aufenthalte sind kontraproduktiv (A falsch). Patienten neigen häufig zu selbstverletzendem Verhalten (B falsch). Die Störung führt häufig zu suizidalen Gedanken und Handlungen (C falsch). Der Beginn liegt typischerweise in der Adoleszenz/frühem Erwachsenenalter (D falsch).',
  ),
  Question(
    id: 10,
    exam: 'Oktober 2018',
    q: 'Welche Aussagen trifft zu? Der Begriff "Habituation" aus der Verhaltenstherapie bedeutet',
    options: [
      'A) ein Nachlassen an Spannungen und Reaktionsstärke durch Ermüdung nach häufigem Ausführen eines Verhaltens',
      'B) eine Abnahme der Leistung im zeitlichen Verlauf',
      'C) Eine Abnahme der Reaktionshäufigkeit nach Weglassen der Verstärkung',
      'D) eine Abnahme der Reaktionsbereitschaft auf einen mehrfach dargebotenen Reiz',
      'E) Eine Erhöhte Aufmerksamkeit und Hinwendung bezogen auf eine neue Situation',
    ],
    correct: [3],
    explanation:
        'Habituation bezeichnet die Abnahme der Reaktionsbereitschaft auf einen mehrfach dargebotenen Reiz (D richtig). Dies ist ein grundlegender Lernmechanismus der Verhaltenstherapie, z.B. bei der Expositionsbehandlung. Ermüdung (A), Leistungsabnahme (B) und Löschung nach Wegfall der Verstärkung (C) beschreiben andere Phänomene. Erhöhte Aufmerksamkeit auf neue Reize (E) beschreibt Orientierungsreaktion/Sensitivierung.',
  ),
  Question(
    id: 11,
    exam: 'Oktober 2018',
    q: 'Unter welcher Bedingung ist die Unterbringung gemäß Unterbringungsrecht der Länger (z.B. Unterbringungsgesetzt bzw. Psychisch-Kranken-Gesetz) eines psychisch Kranken in einer psychiatrischen Klinik gegen dessen Willen zulässig?',
    options: [
      'A) Der Patient ist nicht bereit, sich einer notwendigen Behandlung zu unterziehen',
      'B) Die betroffene Person hat gegen Gesetze verstoßen und ist nicht zur freiwilligen Behandlung bereit',
      'C) Vorherige ambulante Behandlungsversuche sind fehlgeschlagen',
      'D) Die Unterbringung ist zur Abwehr von akuten erheblichen Gefahren für Gesundheit oder Leben des Betroffenen oder besonders bedeutende Rechtsgüter anderer erforderlich',
      'E) Ein Heilpraktiker hat die Notwenigkeit einer stationären Behandlung attestiert',
    ],
    correct: [3],
    explanation:
        'Die Unterbringung nach PsychKG ist zulässig zur Abwehr von akuten erheblichen Gefahren für Gesundheit und Leben des Betroffenen oder besonders bedeutende Rechtsgüter anderer (D richtig). Behandlungsunwilligkeit allein (A), Gesetzesverstöße (B), gescheiterte ambulante Versuche (C) oder ein Attest eines Heilpraktikers (E) reichen nicht aus.',
  ),
  Question(
    id: 12,
    exam: 'Oktober 2018',
    q: 'Sie haben bei einem Patienten den Verdacht auf eine schizotype Störung (nach ICD-10). Welche der folgenden Symptome stützen Ihren Verdacht im Rahmen der Differenzialdiagnose\n1. Der Patient erscheint kalt und unnahbar\n2. Ausgeprägte Ideenflucht\n3. Antriebsschwäche\n4. Misstrauen\n5. Denken und Sprache vage, gekünstelt und umständlich',
    options: [
      'A) Nur die Aussagen 1, 2 und 5 sind richtig',
      'B) Nur die Aussagen 1, 3 und 4 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 4 und 5 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Bei der schizotypen Störung (F21) erscheinen Betroffene kalt und unnahbar (1 richtig), zeigen Misstrauen (4 richtig) sowie vages, gekünsteltes und umständliches Denken und Sprechen (5 richtig) - C richtig. Ideenflucht (2) ist typisch für Manie, nicht für schizotype Störung. Antriebsschwäche (3) gehört nicht zu den Kernmerkmalen.',
  ),
  Question(
    id: 13,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zur Epilepsie trifft (treffen) zu?\n1. Nach einem einzigen Gelegenheitskrampfanfall ist die Fahrtauglichkeit nicht beeinträchtigt\n2. Entzugskrampfanfälle treten ausschließlich beim Alkoholentzugssyndrom auf\n3. Das abrupte Absetzen von Benzodiazepinen kann zu einem epileptischen Anfall führen\n4. Epilepsie manifestiert sich nur in der Kindheit\n5. Zur Diagnosesicherung wird ein Enzephalogramm (EEG) durchgeführt',
    options: [
      'A) Nur die Aussage 3 ist richtig',
      'B) Nur die Aussagen 1 und 2 sind richtig',
      'C) Nur die Aussagen 3 und 5 sind richtig',
      'D) Nur die Aussagen 1, 3 und 5 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Das abrupte Absetzen von Benzodiazepinen kann zu epileptischen Anfällen führen (3 richtig). Zur Diagnosesicherung wird ein EEG durchgeführt, das typische steile Wellen (sharp waves) zeigt (5 richtig) - C richtig. Nach einem Gelegenheitskrampf ist die Fahrtauglichkeit sehr wohl beeinträchtigt (1 falsch). Entzugskrämpfe treten nicht nur beim Alkoholentzug auf (2 falsch). Epilepsie kann in jedem Alter auftreten (4 falsch).',
  ),
  Question(
    id: 14,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Bei einer substanzinduzierten psychotischen Störung (nach IDC-10) können folgenden Symptome auftreten:\n1. Stupor\n2. Personenverkennungen\n3. Akustische Halluzinationen\n4. Ekstase\n5. Verfolgungsideen',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 1 und 4 sind richtig',
      'C) Nur die Aussagen 1, 2 und 3 sind richtig',
      'D) Nur die Aussagen 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [4],
    explanation:
        'Bei substanzinduzierten psychotischen Störungen (F1x.5) können alle genannten Symptome auftreten: Stupor (1), Personenverkennung (2), akustische Halluzinationen (3), Ekstase (4) und Verfolgungsideen (5) - E (alle Aussagen richtig).',
  ),
  Question(
    id: 15,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zur Demenz treffen zu?\n1. Typisch sind qualitative Bewusstseinsstörungen\n2. Eine depressive Störung kann Merkmale einer frühen Demenz zeigen\n3. Wesentliche Voraussetzung für die Diagnose einer Demenz ist der Nachweis einer Abnahme des Gedächtnisses und des Denkvermögens mit Beeinträchtigung der Aktivität des täglichen Lebens\n4. Ein Delir kann auch bei einer Demenz vorkommen\n5. Eine Demenz bei Alzheimer Krankheit muss gegenwärtig als reversibel angesehen werden',
    options: [
      'A) Nur 1 und 3 sind richtig',
      'B) Nur 2 und 4 sind richtig',
      'C) Nur 2, 3 und 4 sind richtig',
      'D) Nur 1, 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Eine depressive Störung kann als Pseudodemenz Merkmale einer frühen Demenz zeigen (2 richtig). Wesentliche Voraussetzung für die Demenzdiagnose ist der Nachweis einer Abnahme von Gedächtnis und Denkvermögen mit Beeinträchtigung der Alltagsaktivitäten (3 richtig). Ein Delir kann auch bei Demenz vorkommen (4 richtig) - C richtig. Qualitative Bewusstseinsstörungen sind nicht typisch für Demenz, sondern für Delir (1 falsch). Alzheimer-Demenz ist irreversibel (5 falsch).',
  ),
  Question(
    id: 16,
    exam: 'Oktober 2018',
    q: 'Welche Aussage trifft zu? Ein Einwilligungsvorbehalt',
    options: [
      'A) ist ein Zustand krankhafter Störung der Geistestätigkeit, der die freie Willensbestimmung ausschließt',
      'B) ist eine Regelung zum Umgang mit vertraulichen Patientendaten',
      'C) regelt, dass bestimmte Rechtsgeschäfte ohne Einwilligung eines vom Gericht bestellten Betreuers nicht rechtswirksam werden',
      'D) liegt vor, wenn der Betroffene Art, Bedeutung und Tragweite (Risiken) der ärztlichen Maßnahme nicht erfassen kann',
      'E) regelt die zukünftige ärztliche Behandlung',
    ],
    correct: [2],
    explanation:
        'Ein Einwilligungsvorbehalt regelt, dass bestimmte Rechtsgeschäfte ohne Einwilligung eines vom Gericht bestellten Betreuers nicht rechtswirksam werden (C richtig). Dies ist eine Schutzmaßnahme im Betreuungsrecht. Die anderen Optionen beschreiben andere Rechtsbegriffe: Geschäftsunfähigkeit (A), Datenschutz (B), Einwilligungsunfähigkeit (D), Patientenverfügung (E).',
  ),
  Question(
    id: 17,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Zu den psychischen Symptomen einer Schilddrüsenunterfunktion zählen.\n1. Rededrang\n2. Motorische Unruhe\n3. Depressive Verstimmung\n4. Antriebsmangel\n5. Leichte Ermüdbarkeit',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 4 und 5 sind richtig',
      'C) Nur die Aussagen 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 3, 4 und 5 sind richtig',
      'E) Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: [3],
    explanation:
        'Psychische Symptome einer Schilddrüsenunterfunktion (Hypothyreose) sind depressive Verstimmung (3), Antriebsmangel (4) und leichte Ermüdbarkeit (5) - D richtig. Rededrang (1) und motorische Unruhe (2) sind typisch für Schilddrüsenüberfunktion (Hyperthyreose).',
  ),
  Question(
    id: 18,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Merkmale lassen am ehesten an eine abhängige (asthenischE) Persönlichkeitsstörung (nach ICD-10) denken?\n1. Streitsüchtiges und beharrliches Bestehen auf eigenen Rechten\n2. Ausgeprägte Ängste vor dem Alleinsein bzw. Verlassen werden\n3. Eingeschränkte Fähigkeit beim Treffen von alltäglichen Entscheidungen ohne Ratschläge und Bestätigung von anderen\n4. Übermäßige Gewissenhaftigkeit bis hin zum Perfektionismus, um Fehler zu vermeiden\n5. Unterordnung der eigenen Bedürfnisse unter die anderen nahestehender Personen',
    options: [
      'A) Nur die Aussagen 1, 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2 und 5 sind richtig',
      'C) Nur die Aussagen 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 2, 3 und 5 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [3],
    explanation:
        'Bei der abhängigen (asthenischen) Persönlichkeitsstörung (F60.7) bestehen ausgeprägte Ängste vor Alleinsein bzw. Verlassenwerden (2), eingeschränkte Entscheidungsfähigkeit ohne Ratschläge anderer (3) und Unterordnung eigener Bedürfnisse (5) - D richtig. Streitsüchtiges Bestehen auf eigenen Rechten (1) passt zur paranoiden PS. Übermäßige Gewissenhaftigkeit (4) ist typisch für die anankastische PS.',
  ),
  Question(
    id: 19,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zur sozialen Angststörung (sozialen PhobiE) treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Die intensiven physiologischen Symptome werden meist als vitale Bedrohung erlebt',
      'B) Die Ängste treten in Situationen auf, in denen eigenes Verhalten einer Bewertung durch andere ausgesetzt ist',
      'C) Erhöhte Selbstaufmerksamkeit und Sicherheitsverhalten tragen zur Aufrechterhaltung der sozialen Angststörung bei',
      'D) Die meisten Betroffenen erkranken erst nach dem 30. Lebensjahr',
      'E) Das Risiko, einen Substanzmissbrauch oder eine Abhängigkeit zu entwickeln, ist bei Menschen mit ausgeprägten sozialen Ängsten im Vergleich zur Normalbevölkerung vermindert',
    ],
    correct: [1, 2],
    explanation:
        'Bei der sozialen Phobie treten Ängste in Bewertungssituationen auf (B richtig). Erhöhte Selbstaufmerksamkeit und Sicherheitsverhalten tragen zur Aufrechterhaltung bei (C richtig). Die physiologischen Symptome werden nicht als vitale Bedrohung erlebt - das ist typisch für die Panikstörung (A falsch). Erkrankungsbeginn ist meist vor dem 25. Lebensjahr (D falsch). Das Risiko für Substanzmissbrauch ist erhöht, nicht vermindert (E falsch).',
  ),
  Question(
    id: 20,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zum Drogenkonsum trifft (treffen) zu?\n1. Typisch für eine Opioidintoxikation ist eine Mydriasis\n2. Bei der akuten Kokainintoxikation können Halluzinationen auftreten\n3. Halluzinogene führen zu einer sehr starken körperlichen Abhängigkeit\n4. Amphetamine führen zu einer sehr starken körperlichen Abhängigkeit\n5. Bei Konsum von Cannabis ist das Risiko später harte Drogen zu konsumieren nicht erhöht',
    options: [
      'A) Nur die Aussage 2 ist richtig',
      'B) Nur die Aussagen 2 und 5 sind richtig',
      'C) Nur die Aussagen 1, 2 und 3 sind richtig',
      'D) Nur die Aussagen 1, 3 und 4 sind richtig',
      'E) Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: [0],
    explanation:
        'Bei Opioidintoxikation tritt Miosis (Pupillenverengung) auf, nicht Mydriasis (1 falsch). Bei akuter Kokainintoxikation können Halluzinationen auftreten (2 richtig). Halluzinogene führen primär zu psychischer, nicht starker körperlicher Abhängigkeit (3 falsch). Amphetamine führen ebenfalls nicht zu sehr starker körperlicher Abhängigkeit (4 falsch). Cannabis kann als Einstiegsdroge das Risiko für härtere Drogen erhöhen (5 falsch) - A richtig (nur Aussage 2).',
  ),
  Question(
    id: 21,
    exam: 'Oktober 2018',
    q: 'Eine Mutter bittet um eine Entwicklungsdiagnostik bei ihrer 2-jährigen Tochter. Das Mädchen habe sich zuerst unauffällig entwickelt, mit 1 Jahr zu laufen und zu sprechen begonnen. Seit mehreren Monaten stagniere die Entwicklung; bereits erworbene Fähigkeiten habe sie wieder verlernt. Das Kind laufe zunehmend schlechter, spreche immer weniger und müsse wieder gefüttert werden. Bei der Untersuchung fallen unter anderem Stereotypen der Hände (waschende Bewegungen) auf. Welche der folgenden Diagnosen trete am ehesten auf?',
    options: [
      'A) Aufmerksamkeitsdefizit-/Hyperaktivitätsstörung (ADHS)',
      'B) Selektiver Mutismus',
      'C) Rett-Syndrom',
      'D) Chorea Huntington',
      'E) Sog. Trotzphase',
    ],
    correct: [2],
    explanation:
        'Das Rett-Syndrom (F84.2) ist durch eine zunächst normale Entwicklung gekennzeichnet, gefolgt von Entwicklungsregression mit Verlust erworbener Fähigkeiten (Sprache, Lokomotion, Handfunktion). Typisch sind Handstereotypien (waschende/wringende Bewegungen). Beginn zwischen 7. und 24. Lebensmonat. Es betrifft fast ausschließlich Mädchen - C richtig.',
  ),
  Question(
    id: 22,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Selektive Serotoninwiederaufnahme-Hemmer (SSRI)',
    options: [
      'A) sind bei psychotherapeutisch behandelten Patienten kontraindiziert',
      'B) können zu Serotoninsyndrom führen',
      'C) werden zur Behandlung von Angststörungen eingesetzt',
      'D) führen typischerweise zu einem deutlich erhöhten Speichelfluss',
      'E) vermindert die Serotonin-Konzentration im synaptischen Spalt im Gehirn',
    ],
    correct: [1, 2],
    explanation:
        'SSRI können zum Serotoninsyndrom führen mit Symptomen wie Ruhelosigkeit, Übelkeit, Muskelzuckungen, Schwitzen und Tremor (B richtig). Sie werden auch zur Behandlung von Angststörungen eingesetzt (C richtig). SSRI sind nicht bei psychotherapeutisch behandelten Patienten kontraindiziert (A falsch). Erhöhter Speichelfluss ist nicht typisch (D falsch). SSRI erhöhen die Serotonin-Konzentration im synaptischen Spalt (E falsch).',
  ),
  Question(
    id: 23,
    exam: 'Oktober 2018',
    q: 'Welche Aussage trifft zu? Eine typische formelle Achtsamkeitsübung ist/sind:',
    options: [
      'A) Genusstraining',
      'B) Progressive Muskelentspannung',
      'C) Autogenes Training',
      'D) Phantasiereisen',
      'E) Body-Scan',
    ],
    correct: [4],
    explanation:
        'Body-Scan ist eine typische formelle Achtsamkeitsübung (E richtig). Beim Body-Scan wird der Körper systematisch durchgescannt, wobei Körpergefühle, Emotionen und Kognitionen bewusst wahrgenommen werden. Genusstraining (A), PMR (B), Autogenes Training (C) und Phantasiereisen (D) sind andere Entspannungstechniken, aber keine formellen Achtsamkeitsübungen.',
  ),
  Question(
    id: 24,
    exam: 'Oktober 2018',
    q: 'Welche Aussage trifft zu? Für die Eröffnung des Anamnesegesprächs mit einem Patienten ist folgender Fragetyp im Allgemeinen am besten geeignet:',
    options: ['A) Konfrontationsfrage', 'B) Suggestivfrage', 'C) Fangfrage', 'D) Katalogfrage', 'E) Offene Frage'],
    correct: [4],
    explanation:
        'Für die Eröffnung des Anamnesegesprächs ist die offene Frage am besten geeignet (E richtig). Offene Fragen ermöglichen dem Patienten, frei zu berichten und eigene Schwerpunkte zu setzen. Konfrontations- (A), Suggestiv- (B), Fang- (C) und Katalogfragen (D) sind für den Gesprächsbeginn ungeeignet.',
  ),
  Question(
    id: 25,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Typische Symptome der Schizophrenie sind:n\1.Ambivalenz\n2. Zerfahrenheit des Denkens\n3. Katatoner Stupor\n4. Gedankenentzug\n5. Intelligenzminderung',
    options: [
      'A) Nur die Aussagen 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 3 und 4 sind richtig',
      'C) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Typische Symptome der Schizophrenie sind Ambivalenz (1), Zerfahrenheit des Denkens (2), katatoner Stupor (3) und Gedankenentzug (4) - C richtig. Intelligenzminderung (5) ist kein typisches Symptom der Schizophrenie; die Intelligenz bleibt in der Regel erhalten.',
  ),
  Question(
    id: 26,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Ein 53-jähriger Patient erwähnt während des Patientengesprächs die frühere Einnahme von Haloperidol (z.B. Haldol). Dies kann am ehesten auf folgenden Erkrankungen hinweisen:\n1. Manische Episode\n2. Schizophrenie\n3. Organisch bedingte Psychose\n4. Epilepsie\n5. Morbus Parkinson',
    options: [
      'A) Nur die Aussagen 1, 2 und 3 sind richtig',
      'B) Nur die Aussagen 1, 2 und 4 sind richtig',
      'C) Nur die Aussagen 1, 2 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: [0],
    explanation:
        'Haloperidol (Haldol) ist ein hochpotentes Antipsychotikum. Die frühere Einnahme weist auf manische Episode (1), Schizophrenie (2) oder organisch bedingte Psychose (3) hin - A richtig. Bei Epilepsie (4) wird Haloperidol nicht eingesetzt, da es die Krampfschwelle senkt. Bei Morbus Parkinson (5) ist es kontraindiziert, da es Parkinson-Symptome verschlechtert.',
  ),
  Question(
    id: 27,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zur Aufmerksamkeitsdefizit-/Hyperaktivitätsstörung (ADHS) treffen zu?\n1. Erkrankungen wie das Tourette-Syndrom oder der Asperger-Autismus treten oft mit einer begleitenden ADHS-Symptomatik auf\n2. Erworbene Erkrankungen wie Schädel-Hirn-Traumata und entzündliche Hirnerkrankungen können ähnliche Symptome wie ein ADHS bedingen\n3. Bei neuropsychologischen Testungen fallen ADHS-Patienten im Vergleich zu gesunden Kontrollpersonen durch geringere Auslassungsfehler und Falschantworten auf\n4. Bei erwachsenen ADHS-Patienten treten dissoziale Persönlichkeitsstörungen gehäuft komorbid auf\n5. Bei Erwachsenen spricht impulsives Verhalten gegen ein ADHS',
    options: [
      'A) Nur die Aussagen 1 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2 und 4 sind richtig',
      'C) Nur die Aussagen 1, 3 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [1],
    explanation:
        'Bei ADHS treten Tourette-Syndrom und Asperger-Autismus oft komorbid auf (1 richtig). Schädel-Hirn-Traumata können ähnliche Symptome bedingen (2 richtig). Bei erwachsenen ADHS-Patienten treten dissoziale PS gehäuft komorbid auf (4 richtig) - B richtig. ADHS-Patienten fallen durch MEHR Auslassungsfehler auf (3 falsch). Impulsivität spricht FÜR ADHS, nicht dagegen (5 falsch).',
  ),
  Question(
    id: 28,
    exam: 'Oktober 2018',
    q: 'Welche der folgenden Aussagen zu Psychotherapieverfahren treffen zu?\n1. Hauptindikation der klassischen Psychoanalyse ist die akute paranoide Schizophrenie\n2. Bei der Psychoanalyse wird der Patient zum "freien Assoziieren" angehalten\n3. Die kognitive Verhaltenstherapie (KVT) hat sich bei der generalisierten Angststörung als wirksam erwiesen\n4. Verfahren der ersten Wahl bei der Zwangsstörung ist die kognitive Verhaltenstherapie (KVT) mit Exposition und Reaktionsmanagement\n5. Bei Behandlungsbeginn der Posttraumatischen Belastungsstörung (PTBS) ist eine Retraumatisierung durch die Exposition mit dem traumatischen Inhalt notwendig',
    options: [
      'A) Nur die Aussagen 2 und 3 sind richtig',
      'B) Nur die Aussagen 3 und 4 sind richtig',
      'C) Nur die Aussagen 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'E) Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Bei der Psychoanalyse wird der Patient zum freien Assoziieren angehalten (2 richtig). KVT hat sich bei generalisierter Angststörung als wirksam erwiesen (3 richtig). KVT mit Exposition und Reaktionsmanagement ist Verfahren der ersten Wahl bei Zwangsstörungen (4 richtig) - C richtig. Hauptindikation der Psychoanalyse ist nicht die akute Schizophrenie (1 falsch). Bei PTBS-Behandlung ist keine Retraumatisierung notwendig oder erwünscht (5 falsch).',
  ),
  Question(
    id: 29,
    exam: 'März 2018',
    q: 'Eine Frau kommt mit ihrem 44-jährigen Ehemann in Ihre Praxis. Der Mann sitzt wort- und teilnahmslos und nahezu apathisch neben seiner Frau. Die Ehefrau klagt, dass ihr Mann seit etwa 4 Wochen zunehmend „zu nichts mehr in der Lage“ sei, ihm alles zu viel sei, er keinerlei Antrieb mehr habe, er sich über nichts mehr freuen könne und jegliche vorherige Interessen vernachlässige. Zudem habe der Mann ihr vor drei Tagen gestanden, dass er fast täglich Stimmen höre, welche ihn diffamieren und abwerten würden. In der Vorgeschichte bestanden bisher keine psychischen Auffälligkeiten. Der Mann berichtet wortarm, dass er keinen Appetit mehr habe und nachts nicht mehr als 2 Stunden schlafen könne und daher „keine Kraft mehr“ habe. Welche der folgenden Verdachtsdiagnosen (nach ICD-10) trifft am ehesten zu?',
    options: [
      'A) Erstmanifestation einer paranoiden Schizophrenie',
      'B) Postschizophrene Depression',
      'C) Bipolare affektive Störung, gegenwärtig schwere depressive Episode mit psychotischen Symptomen',
      'D) Schwere depressive Episode mit psychotischen Symptomen',
      'E) Anpassungsstörung mit kurzer depressiver Reaktion',
    ],
    correct: [3],
    explanation:
        'Die Symptomatik zeigt eine schwere depressive Episode (Antriebslosigkeit, Anhedonie, Appetitlosigkeit, Schlafstörungen seit 4 Wochen) mit psychotischen Symptomen (akustische Halluzinationen mit diffamierenden Stimmen). Da keine psychiatrische Vorgeschichte besteht, ist D richtig. Eine paranoide Schizophrenie (A) hätte andere Leitsymptome. Postschizophrene Depression (B) setzt eine vorherige Schizophrenie voraus. Bipolare Störung (C) erfordert eine manische Episode in der Vorgeschichte. Eine Anpassungsstörung (E) erklärt nicht die psychotischen Symptome.',
  ),
  Question(
    id: 30,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zur Multiplen Sklerose treffen zu?\n1. Im Erkrankungsverlauf kommt es bei einem Teil der Patienten auch zu psychischen Veränderungen mit insbesondere affektiven Störungen\n2. Männer sind etwa doppelt so häufig betroffen wie Frauen\n3. Die Erkrankung wird durch Zecken übertragen\n4. Der Ersterkrankungsgipfel liegt zwischen dem\n20. und\n40. Lebensjahr\n5. In Spätstadien der Erkrankung ist eine dementielle Entwicklung möglich',
    options: [
      'A) Nur die Aussagen 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 3 und 5 sind richtig',
      'C) Nur die Aussagen 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [4],
    explanation:
        'Laut Lösungsschlüssel E (alle Aussagen richtig). Anmerkung: Diese Frage ist umstritten. MS führt bei vielen Patienten zu affektiven Störungen (1 richtig). Der Ersterkrankungsgipfel liegt zwischen 20-40 Jahren (4 richtig). Dementielle Entwicklung in Spätstadien ist möglich (5 richtig). Medizinisch sind die Aussagen 2 (Frauen sind häufiger betroffen) und 3 (MS ist eine Autoimmunerkrankung, keine Zeckenübertragung) falsch. Die offizielle Lösung lautet dennoch E.',
  ),
  Question(
    id: 31,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Wenn Sie einen Patienten bitten, das Sprichwort „Wer anderen eine Grube gräbt, fällt selbst hinein“ zu erläutern,\n1. dann prüfen Sie das Abstraktionsvermögen\n2. dann prüfen Sie das Orientierungsvermögen\n3. können Sie – bei Erfassung des Zusammenhangs – eine leichte kognitive Störung ausschließen\n4. können Sie dies – bei Nichterfassen des Zusammenhangs – mit dem psychopathologischen Begriff des Konkretismus bezeichnen\n5. kann dies – bei Nichterfassen des Zusammenhangs – ein Hinweis auf Schizophrenie sein',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 1 und 4 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 4 und 5 sind richtig',
      'E) Nur die Antworten 1, 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Sprichwörter erläutern prüft das Abstraktionsvermögen (1 richtig). Kann der Patient den übertragenen Sinn nicht erfassen, spricht man von Konkretismus (4 richtig), was ein Hinweis auf Schizophrenie sein kann (5 richtig) – C richtig. Das Orientierungsvermögen wird hierdurch nicht geprüft (2 falsch). Ein korrektes Erfassen schließt keine kognitive Störung aus (3 falsch).',
  ),
  Question(
    id: 32,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen trifft (treffen) zu? Zu den Störungen der Psychomotorik bei schizophrenen Erkrankungen zählen:\n1. Wächserne Biegsamkeit (flexibilitas cerea)\n2. Haltungsstereotypien\n3. Sinnlose motorische Aktivitäten\n4. Bewegungs- und Sprachstereotypien\n5. Echolalie',
    options: [
      'A) Nur die Aussage 5 ist richtig',
      'B) Nur die Aussagen 1 und 2 sind richtig',
      'C) Nur die Aussagen 3 und 4 sind richtig',
      'D) Nur die Aussagen 1, 2 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [4],
    explanation:
        'Alle genannten Symptome gehören zu den Störungen der Psychomotorik bei Schizophrenie (E richtig): Wächserne Biegsamkeit (1), Haltungsstereotypien (2), sinnlose motorische Aktivitäten (3), Bewegungs- und Sprachstereotypien (4) sowie Echolalie (5) – das krankhafte Nachsprechen von Wörtern oder Sätzen.',
  ),
  Question(
    id: 33,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Zur Manie gehören:\n1. Innere Getriebenheit, vermehrte Aktivität\n2. Stimmungsschwankungen mit Niedergeschlagenheit und Verzweiflung\n3. Unangepasstes, distanzloses Verhalten\n4. Ausgeprägter Rededrang\n5. Gesteigertes Schlafbedürfnis mit Tag-Nacht-Umkehr',
    options: [
      'A) Nur die Aussagen 1, 3 und 4 sind richtig',
      'B) Nur die Aussagen 1, 3 und 5 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [0],
    explanation:
        'Zur Manie gehören innere Getriebenheit und vermehrte Aktivität (1 richtig), unangepasstes, distanzloses Verhalten (3 richtig) und ausgeprägter Rededrang (4 richtig) – A richtig. Stimmungsschwankungen mit Niedergeschlagenheit (2) sind typisch für Depression, nicht Manie. Bei Manie besteht ein vermindertes (nicht gesteigertes) Schlafbedürfnis (5 falsch).',
  ),
  Question(
    id: 34,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Ursachen von organischen psychischen Störungen (nach ICD-10) sind am ehesten:',
    options: [
      'A) Hirninfarkte',
      'B) Morbus Crohn',
      'C) Atopisches Ekzem',
      'D) Morbus Parkinson',
      'E) Spinalkanalstenose',
    ],
    correct: [0, 3],
    explanation:
        'Hirninfarkte (A) und Morbus Parkinson (D) sind direkte Hirnerkrankungen, die zu organischen psychischen Störungen führen können. Morbus Crohn (B) ist eine entzündliche Darmerkrankung. Atopisches Ekzem (C) ist eine Hauterkrankung. Spinalkanalstenose (E) betrifft den Wirbelkanal – diese drei verursachen keine organischen psychischen Störungen im engeren Sinne.',
  ),
  Question(
    id: 35,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zur Behandlung von Zwangsstörungen treffen zu?\n1. Eine Medikation mit selektiven Serotonin-Wiederaufnahmehemmern (SSRI) hat sich als wirksam erwiesen\n2. Exposition und Reaktionsmanagement gilt mittlerweile als veraltetes Therapieverfahren\n3. Psychodynamische Therapien können zum Einsatz kommen\n4. Die Kognitive Verhaltenstherapie gilt als Verfahren der 2. Wahl\n5. Als unterstützende Maßnahme kann sich Psychoedukation positiv auswirken',
    options: [
      'A) Nur die Aussagen 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2 und 3 sind richtig',
      'C) Nur die Aussagen 1, 3 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'SSRI haben sich bei Zwangsstörungen als wirksam erwiesen (1 richtig). Psychodynamische Therapien können ergänzend eingesetzt werden (3 richtig). Psychoedukation kann unterstützend wirken (5 richtig) – C richtig. Exposition mit Reaktionsmanagement ist nicht veraltet, sondern Goldstandard (2 falsch). KVT mit Exposition ist Verfahren der 1. Wahl (4 falsch).',
  ),
  Question(
    id: 36,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zur anhaltenden wahnhaften Störung (nach ICD-10) trifft zu?',
    options: [
      'A) Die Betroffenen zeigen auch in Bereichen und Handlungen, die sich nicht auf den Wahn beziehen, massive Auffälligkeiten',
      'B) Nur in seltenen Fällen bestehen Verfolgungs- und Beeinträchtigungsideen',
      'C) Nach den diagnostischen Leitlinien müssen die Wahnvorstellungen mindestens 12 Monate dauern',
      'D) Nicht vereinbar mit der Diagnose ist eine hirnorganische Erkrankung',
      'E) Ständiges Stimmenhören und schizophrene Symptome in der Vorgeschichte sind typisch',
    ],
    correct: [3],
    explanation:
        'Bei der anhaltenden wahnhaften Störung (F22.0) nach ICD-10 ist eine hirnorganische Erkrankung nicht mit der Diagnose vereinbar (D richtig) – organische Ursachen müssen ausgeschlossen werden. Die Betroffenen funktionieren außerhalb des Wahnbereichs oft unauffällig (A falsch). Verfolgungsideen sind häufig, nicht selten (B falsch). Die Mindestdauer beträgt laut ICD-10 3 Monate, nicht 12 (C falsch). Ständiges Stimmenhören ist nicht typisch (E falsch).',
  ),
  Question(
    id: 37,
    exam: 'März 2018',
    q: 'Ein 54-jähriger Mann kommt in reduziertem Allgemeinzustand in Ihre Praxis. Er sei bis vor etwa einer Woche über 3 Monate wegen eines schmerzhaften Bandscheibenvorfalls vom Hausarzt mit starken Schmerzpflastern behandelt worden. Der Mann beklagt, dass er seit etwa einer Woche an Schlaflosigkeit, starker motorischer Unruhe und einer ängstlich-depressiven Grundstimmung leide. Welche körperlichen Symptome bzw. Befunde stützen Ihren Verdacht eines bestehenden Opioidentzugssyndroms?\n1. Tachykardie\n2. Mydriasis\n3. Diarrhöe\n4. Trockene Nasenschleimhäute\n5. Muskelschmerzen oder -krämpfe',
    options: [
      'A) Nur die Aussagen 1, 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2 und 5 sind richtig',
      'C) Nur die Aussagen 2, 3 und 4 sind richtig',
      'D) Nur die Aussagen 3, 4 und 5 sind richtig',
      'E) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: [4],
    explanation:
        'Beim Opioidentzugssyndrom treten auf: Tachykardie (1 richtig), Mydriasis (2 richtig), Diarrhöe (3 richtig) und Muskelschmerzen/-krämpfe (5 richtig) – E richtig. Typisch ist Rhinorrhöe (laufende Nase), nicht trockene Nasenschleimhäute (4 falsch). Weitere Entzugssymptome sind Gänsehaut, Schwitzen, Erbrechen und Gähnen.',
  ),
  Question(
    id: 38,
    exam: 'März 2018',
    q: 'Welche Aussage trifft zu? Bei einer chronischen Alkoholerkrankung kann typischerweise folgende Komplikation auftreten:',
    options: [
      'A) Querolatorische Persönlichkeitsstörung',
      'B) Wernicke-Enzephalopathie',
      'C) Abhängige Persönlichkeitsstörung',
      'D) Erstmanifestation einer schizophrenen Psychose',
      'E) Creutzfeldt-Jakob-Krankheit',
    ],
    correct: [1],
    explanation:
        'Die Wernicke-Enzephalopathie ist eine typische Komplikation der chronischen Alkoholkrankheit (B richtig). Sie entsteht durch Thiaminmangel (Vitamin B1) und zeigt die Trias: Augenmuskelparese, Ataxie und Bewusstseinsstörungen. Persönlichkeitsstörungen (A, C) sind keine Komplikationen des Alkoholismus. Schizophrenie (D) wird nicht durch Alkohol verursacht. Creutzfeldt-Jakob (E) ist eine Prionenerkrankung.',
  ),
  Question(
    id: 39,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zu affektiven Störungen treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Bei den affektiven Störungen kommen bipolare Verläufe wesentlich häufiger vor als unipolare depressive Verläufe',
      'B) Vor Beginn der Behandlung einer neu aufgetretenen affektiven Störung muss eine organische Ursache abgeklärt werden',
      'C) Wahnideen im Rahmen einer manischen Episode sind dadurch gekennzeichnet, dass diese in der Regel mit der Gemütslage des Patienten nicht übereinstimmen',
      'D) Die sog. Wochenbett-Depression darf von einem Heilpraktiker nicht behandelt werden',
      'E) Im Rahmen der Behandlung einer Depression kann auch die zusätzliche Gabe eines Neuroleptikums zu einem Antidepressivum erforderlich sein',
    ],
    correct: [1, 4],
    explanation:
        'Vor Behandlungsbeginn einer affektiven Störung muss eine organische Ursache ausgeschlossen werden (B richtig). Bei schwerer Depression mit psychotischen Symptomen kann die zusätzliche Gabe eines Neuroleptikums erforderlich sein (E richtig). Unipolare Verläufe sind häufiger als bipolare (A falsch). Wahnideen bei Manie sind typischerweise stimmungskongruent (C falsch). Heilpraktiker dürfen eine Wochenbett-Depression behandeln, sofern keine Psychose vorliegt (D falsch).',
  ),
  Question(
    id: 40,
    exam: 'März 2018',
    q: 'Zu den typischen Merkmalen des somatischen Syndroms bei einer depressiven Episode (nach ICD-10) zählen:\n1. Deutlicher Appetitverlust\n2. Verminderung von Konzentration und Aufmerksamkeit\n3. Morgentief\n4. Suizidgedanken\n5. Psychomotorische Hemmung',
    options: [
      'A) Nur die Aussagen 1, 2 und 4 sind richtig',
      'B) Nur die Aussagen 1, 2 und 5 sind richtig',
      'C) Nur die Aussagen 1, 3 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Zum somatischen Syndrom bei Depression gehören: deutlicher Appetitverlust (1 richtig), Morgentief (3 richtig) und psychomotorische Hemmung (5 richtig) – C richtig. Verminderung von Konzentration (2) und Suizidgedanken (4) sind Symptome der Depression, gehören aber nicht zum somatischen Syndrom. Weitere Merkmale: Früherwachen, Libidoverlust, Gewichtsverlust.',
  ),
  Question(
    id: 41,
    exam: 'März 2018',
    q: 'In der Psychoanalyse gehören zu den Abwehrmechanismen:\n1. Sublimierung\n2. Rationalisierung\n3. Konversion\n4. Gedankenstopp\n5. Aggressionshemmung',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 1, 2 und 3 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 5 sind richtig',
      'E) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
    ],
    correct: [1],
    explanation:
        'Psychoanalytische Abwehrmechanismen sind: Sublimierung (1 richtig) – Umwandlung von Triebimpulsen in sozial akzeptable Handlungen; Rationalisierung (2 richtig) – nachträgliche rationale Begründung; Konversion (3 richtig) – Umsetzung psychischer Konflikte in körperliche Symptome – B richtig. Gedankenstopp (4) ist eine verhaltenstherapeutische Technik. Aggressionshemmung (5) ist kein klassischer Abwehrmechanismus.',
  ),
  Question(
    id: 42,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zu Angststörungen treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Bei einer Panikstörung treten die Angstattacken in bestimmten auslösenden Situationen auf',
      'B) Herzrasen, Hitzewallungen und Übelkeit sind typische Symptome bei einer Panikattacke',
      'C) Bei einer Phobie liegt eine unangemessene Angst vor einem konkreten Objekt oder einer bestimmten Situation vor',
      'D) Die bei Angststörungen häufig eingenommenen Benzodiazepine (z.B. Lorazepam) haben ein erhöhtes Potenzial für die Entwicklung einer Abhängigkeit und sollten deshalb nach langfristiger Einnahme sofort abgesetzt werden',
      'E) Bei spezifischer Phobie sind expositionsorientierte Verfahren kontraindiziert',
    ],
    correct: [1, 2],
    explanation:
        'Herzrasen, Hitzewallungen und Übelkeit sind typische vegetative Symptome einer Panikattacke (B richtig). Bei Phobien liegt eine unangemessene Angst vor konkreten Objekten oder Situationen vor (C richtig). Panikattacken treten bei der Panikstörung gerade NICHT situationsgebunden auf (A falsch). Benzodiazepine dürfen nicht abrupt abgesetzt werden (D falsch). Exposition ist Therapie der 1. Wahl bei Phobien (E falsch).',
  ),
  Question(
    id: 43,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zur somatoformen Schmerzstörung (nach ICD-10) treffen zu?\n1. Die vorherrschende Beschwerde ist ein andauernder, schwerer und quälender Schmerz, der durch einen physiologischen Prozess oder eine körperliche Störung nicht vollständig erklärt werden kann\n2. Die Störung tritt in Verbindung mit emotionalen Konflikten oder psychosozialen Problemen auf\n3. Betroffen sind in der Regel Funktionen der Willkürmotorik oder der Sinneswahrnehmung\n4. Die Symptome sind meist vorübergehend oder stark fluktuierend\n5. Oft weigern die Patienten sich hartnäckig zu akzeptieren, dass den Beschwerden keine körperlichen Ursachen zugrunde liegen',
    options: [
      'A) Nur die Aussagen 1, 2 und 5 sind richtig',
      'B) Nur die Aussagen 2, 3 und 4 sind richtig',
      'C) Nur die Aussagen 3, 4 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [0],
    explanation:
        'Bei der somatoformen Schmerzstörung (F45.4) steht ein andauernder Schmerz im Vordergrund (1 richtig). Die Störung tritt in Verbindung mit emotionalen Konflikten auf (2 richtig). Die Patienten weigern sich oft, psychische Ursachen zu akzeptieren (5 richtig) – A richtig. Willkürmotorik und Sinneswahrnehmung (3) sind bei Konversionsstörungen betroffen. Die Schmerzen sind anhaltend, nicht vorübergehend (4 falsch).',
  ),
  Question(
    id: 44,
    exam: 'März 2018',
    q: 'Welche Aussage trifft zu? Die Dysthymia (nach ICD-10) ist eine',
    options: [
      'A) abhängige Persönlichkeitsstörung',
      'B) Bewegungsstörung',
      'C) körperliche Fehlbildung',
      'D) chronische depressive Verstimmung',
      'E) schwere depressive Episode',
    ],
    correct: [3],
    explanation:
        'Die Dysthymia (F34.1) ist eine chronische depressive Verstimmung (D richtig), die über mindestens 2 Jahre andauert, aber nicht die Kriterien einer schweren depressiven Episode erfüllt.',
  ),
  Question(
    id: 45,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zu Sexualstörungen treffen nach ICD-10 zu?\n1. Bei sexuellen Funktionsstörungen muss an eine organische Ursache gedacht werden\n2. Anhedonie bezeichnet psychogene Schmerzen während des Geschlechtsverkehrs\n3. Der dauerhafte Wunsch, dem anderen Geschlecht anzugehören, wird als Transsexualismus bezeichnet\n4. Exhibitionismus wird zu den sexuellen Funktionsstörungen gerechnet\n5. Homo- und Bisexualität werden zu den Störungen der Sexualpräferenz gerechnet',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 1, 2 und 4 sind richtig',
      'C) Nur die Aussagen 1, 3 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 5 sind richtig',
      'E) Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: [0],
    explanation:
        'Bei sexuellen Funktionsstörungen muss an organische Ursachen gedacht werden (1 richtig). Transsexualismus bezeichnet den dauerhaften Wunsch, dem anderen Geschlecht anzugehören (3 richtig) – A richtig. Anhedonie bedeutet Freudlosigkeit, nicht Schmerzen (Dyspareunie) (2 falsch). Exhibitionismus gehört zu den Störungen der Sexualpräferenz (4 falsch). Homo-/Bisexualität sind keine Störungen (5 falsch).',
  ),
  Question(
    id: 46,
    exam: 'März 2018',
    q: 'Welche der folgenden Maßnahmen sollten unter anderem im Rahmen der Behandlung einer Somatisierungsstörung erfolgen?\n1. Regelmäßige Vorstellung in der Sprechstunde mit Festlegen eines gemeinsamen Therapieplans\n2. Wiederholte somatische Diagnostik\n3. Ausschluss der Familienangehörigen\n4. Ausführliche Erklärung des Therapeuten über die psychosomatischen Zusammenhänge\n5. Ausführliche Sozialanamnese',
    options: [
      'A) Nur die Aussagen 1 und 2 sind richtig',
      'B) Nur die Aussagen 1 und 4 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 5 sind richtig',
      'E) Nur die Aussagen 1, 2, 4 und 5 sind richtig',
    ],
    correct: [2],
    explanation:
        'Bei Somatisierungsstörungen sind wichtig: regelmäßige Termine (1 richtig), Erklärung psychosomatischer Zusammenhänge (4 richtig) und ausführliche Sozialanamnese (5 richtig) – C richtig. Wiederholte somatische Diagnostik (2) verstärkt das Krankheitsverhalten. Familienangehörige sollten einbezogen werden (3 falsch).',
  ),
  Question(
    id: 47,
    exam: 'März 2018',
    q: 'Welche der folgenden Kriterien lassen typischerweise an eine hebephrene Schizophrenie denken? Wählen Sie zwei Antworten!',
    options: [
      'A) Ausgeprägte und häufige optische Halluzinationen',
      'B) Erstmanifestation zwischen dem 15. und 25. Lebensjahr',
      'C) Affektverflachung und Antriebsverlust',
      'D) Zwangshaltungen und Zwangsstellungen',
      'E) Negativismus',
    ],
    correct: [1, 2],
    explanation:
        'Die hebephrene Schizophrenie (F20.1) beginnt typischerweise zwischen 15 und 25 Jahren (B richtig) und ist durch Affektverflachung und Antriebsverlust gekennzeichnet (C richtig). Optische Halluzinationen (A) sind nicht typisch für Schizophrenie. Zwangshaltungen (D) und Negativismus (E) gehören zur katatonen Schizophrenie.',
  ),
  Question(
    id: 48,
    exam: 'März 2018',
    q: 'Eine 32-jährige Frau schildert sich seit ihrer Jugend als schüchtern und ängstlich und leidet unter Minderwertigkeitsgefühlen. Sie meidet neue soziale Kontakte aus Angst abgelehnt zu werden, demgegenüber steht jedoch das Bedürfnis nach Zuneigung und Anerkennung. Sie leidet zunehmend unter Gefühlen der Anspannung und übersteigerter Besorgtheit. Sie schränkt auch ihren Lebensstil aufgrund des Bedürfnisses nach körperlicher Sicherheit immer weiter ein. Welche der folgenden Verdachtsdiagnosen (nach ICD-10) kommt am ehesten in Frage?',
    options: [
      'A) Bipolare affektive Störung, gegenwärtig depressive Episode',
      'B) Schizoide Persönlichkeitsstörung',
      'C) Soziale Phobie',
      'D) Ängstliche (vermeidende) Persönlichkeitsstörung',
      'E) Anpassungsstörung mit längerer depressiver Reaktion',
    ],
    correct: [3],
    explanation:
        'Die ängstliche (vermeidende) Persönlichkeitsstörung (F60.6) ist gekennzeichnet durch andauernde Anspannung, Minderwertigkeitsgefühle, Vermeidung sozialer Kontakte aus Angst vor Ablehnung bei gleichzeitigem Bedürfnis nach Zuneigung und Einschränkung des Lebensstils – D richtig. Die Symptomatik besteht seit der Jugend. Schizoide PS (B) zeigt kein Bedürfnis nach Zuneigung. Soziale Phobie (C) ist situationsbezogen.',
  ),
  Question(
    id: 49,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen treffen zu? Wählen Sie zwei Antworten! Die Kriterien für die Zuordnung einer Verhaltensstörung zur Kategorie abnorme Gewohnheiten und Störungen der Impulskontrolle sind nach ICD-10 bei folgenden Fallbeispielen erfüllt:',
    options: [
      'A) Eine 24-jährige Frau stiehlt mehrmals im Monat ohne Motivation im Supermarkt Lebensmittel. Direkt vor den Diebstählen ist sie sehr angespannt, danach spürt sie Befriedigung und eine Abnahme der Anspannung. Die gestohlenen Lebensmittel verschenkt sie.',
      'B) Ein 30-jähriger Mann legt einmalig einen Brand, ohne ein erkennbares Motiv. Nach der Tat zeigt er eine große Erregung und beobachtet das Feuer.',
      'C) Ein 17-jähriger Jugendlicher stiehlt mehrmals pro Woche eine Flasche Wodka, um diese vor dem Supermarkt zu konsumieren. Bei ihm wurde eine Alkoholabhängigkeit diagnostiziert.',
      'D) Ein 42-jähriger Manager verliert beim Roulettespielen mehrere Hundert Euro. Nachdem er von seiner Frau kritisiert wird, spielt er nicht mehr.',
      'E) Ein 9-jähriges Mädchen reißt sich täglich Kopfhaare aus, was zu sichtbarem Haarverlust geführt hat. Sie wolle damit aufhören, könne aber nicht. Die neurologische Untersuchung ergibt keinen pathologischen Befund.',
    ],
    correct: [0, 4],
    explanation:
        'Fall A beschreibt Kleptomanie (F63.2): wiederholtes Stehlen ohne Motiv, Anspannung vorher, Erleichterung danach (A richtig). Fall E beschreibt Trichotillomanie (F63.3): wiederholtes Haarausreißen, Unfähigkeit aufzuhören (E richtig). Fall B ist EINMALIG – Pyromanie erfordert wiederholtes Verhalten (B falsch). Fall C: Stehlen wegen Alkoholabhängigkeit (C falsch). Fall D: Kontrolliertes Aufhören spricht gegen pathologisches Spielen (D falsch).',
  ),
  Question(
    id: 50,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zu Persönlichkeitsstörungen (nach ICD-10) treffen zu?\n1. Die Betroffenen profitieren nicht von psychotherapeutischen Verfahren\n2. Es besteht eine hohe Komorbiditätsrate, z.B. für Alkohol- oder Substanzmissbrauch\n3. Charakteristisch ist der bereits initial vorhandene hohe äußere Leidensdruck der Betroffenen\n4. Das Suizidrisiko ist im Vergleich zur Normalbevölkerung erhöht\n5. Von der Norm abweichende Verhaltens- und Denkmuster entwickeln sich häufig bereits in der Kindheit und Jugend',
    options: [
      'A) Nur die Aussagen 1, 2 und 3 sind richtig',
      'B) Nur die Aussagen 1, 3 und 5 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3 und 4 sind richtig',
      'E) Nur die Aussagen 2, 4 und 5 sind richtig',
    ],
    correct: [4],
    explanation:
        'Hohe Komorbidität für Substanzmissbrauch (2 richtig). Erhöhtes Suizidrisiko (4 richtig). Abweichende Muster entwickeln sich oft in Kindheit/Jugend (5 richtig) – E richtig. PS-Patienten können von Psychotherapie profitieren (1 falsch). Typisch ist geringer eigener Leidensdruck (ich-synton), nicht hoher äußerer (3 falsch).',
  ),
  Question(
    id: 51,
    exam: 'März 2018',
    q: 'Eine 45-jährige Frau berichtet von leichter Erschöpfbarkeit, Konzentrationsschwierigkeiten und Durchschlafstörungen. Sie habe Angst vor der Zukunft und dass etwas Schlimmes passieren könne. Sie habe sich sozial zurückgezogen, da ihr alles zu viel sei. Welche der folgenden Diagnosen können den beschriebenen Symptomen zugrunde liegen?\n1. Eine depressive Episode\n2. Eine Schizophrenie\n3. Eine organische affektive Störung\n4. Eine generalisierte Angststörung\n5. Eine Anpassungsstörung',
    options: [
      'A) Nur die Aussagen 1 und 3 sind richtig',
      'B) Nur die Aussagen 2 und 3 sind richtig',
      'C) Nur die Aussagen 4 und 5 sind richtig',
      'D) Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [4],
    explanation:
        'Die unspezifischen Symptome (Erschöpfbarkeit, Konzentrations-/Schlafstörungen, Zukunftsangst, sozialer Rückzug) können bei allen Diagnosen auftreten: depressive Episode (1), Schizophrenie im Prodromalstadium (2), organische affektive Störung (3), generalisierte Angststörung (4) und Anpassungsstörung (5) – E richtig.',
  ),
  Question(
    id: 52,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zur Gesprächspsychotherapie nach Rogers treffen zu?\n1. Rollenspiele sind von zentraler Bedeutung\n2. Eine Grundannahme ist die Aktualisierungstendenz des Menschen\n3. Das Verhalten des Patienten wird ausführlich analysiert und kommentiert\n4. Ein Aspekt der therapeutischen Beziehung ist die Traumdeutung\n5. Kongruentes Verhalten ist dem Therapeuten nur möglich, wenn er in sich nicht inkongruent ist',
    options: [
      'A) Nur die Aussagen 2 und 3 sind richtig',
      'B) Nur die Aussagen 2 und 5 sind richtig',
      'C) Nur die Aussagen 1, 3 und 5 sind richtig',
      'D) Nur die Aussagen 1, 4 und 5 sind richtig',
      'E) Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: [1],
    explanation:
        'Die Gesprächspsychotherapie nach Rogers basiert auf der Aktualisierungstendenz (2 richtig). Kongruenz des Therapeuten setzt voraus, dass er selbst nicht inkongruent ist (5 richtig) – B richtig. Rollenspiele (1) gehören zum Psychodrama/VT. Verhaltensanalyse (3) ist VT. Traumdeutung (4) gehört zur Psychoanalyse.',
  ),
  Question(
    id: 53,
    exam: 'März 2018',
    q: 'Ein Patient äußert konkrete Suizidabsichten. Welche der folgenden Maßnahmen sind unbedingt zu treffen? Wählen Sie zwei Antworten!',
    options: [
      'A) Dem Patienten Hopfen und Baldrian zur Sedierung verabreichen',
      'B) Den Patienten zur Reizreduktion erst einmal im Behandlungszimmer alleine lassen',
      'C) Bei akuter Suizidalität muss, ggf. auch gegen den Willen des Patienten, eine beschützende stationäre Behandlung veranlasst werden',
      'D) Den Patienten nach eingehendem Interventionsgespräch nach Hause entlassen',
      'E) Den Patienten nicht mehr alleine lassen',
    ],
    correct: [2, 4],
    explanation:
        'Bei akuter Suizidalität muss ggf. eine beschützende stationäre Behandlung veranlasst werden (C richtig). Der Patient darf nicht mehr alleine gelassen werden (E richtig). Hopfen/Baldrian (A) sind inadäquat. Alleine lassen (B) erhöht das Risiko. Nach Hause entlassen (D) ist bei konkreten Suizidabsichten kontraindiziert.',
  ),
  Question(
    id: 54,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zur rechtlichen Betreuung treffen zu?\n1. Der Aufgabenkreis eines Betreuers kann sich auf die Gesundheitsfürsorge beschränken\n2. Die Behandlung von Menschen mit Betreuung ist Heilpraktikern nur mit wissenschaftlich anerkannten Methoden gestattet\n3. Der Betreuer kann die dauerhafte Unterbringung eines Betroffenen im Pflegeheim anordnen\n4. Im Rahmen des Betreuungsrechtes kann ggf. auch eine zwangsweise Behandlung eines Patienten erfolgen\n5. Die Bestellung eines Betreuers kommt grundsätzlich nur für Volljährige in Betracht',
    options: [
      'A) Nur die Aussagen 1 und 4 sind richtig',
      'B) Nur die Aussagen 1 und 5 sind richtig',
      'C) Nur die Aussagen 1, 4 und 5 sind richtig',
      'D) Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'E) Alle Aussagen sind richtig',
    ],
    correct: [2],
    explanation:
        'Der Aufgabenkreis kann auf Gesundheitsfürsorge beschränkt werden (1 richtig). Zwangsweise Behandlung ist mit richterlicher Genehmigung möglich (4 richtig). Betreuung nur für Volljährige (5 richtig) – C richtig. Keine Methodenbeschränkung für HP (2 falsch). Dauerhafte Unterbringung bedarf richterlicher Genehmigung (3 falsch).',
  ),
  Question(
    id: 55,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zum Delir treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Ein Delir sollte wegen der höheren Komplikationsrate nicht medikamentös behandelt werden',
      'B) Ein Delir hat typischerweise einen schleichenden Beginn und eine Symptomdauer von mehr als 6 Monaten',
      'C) Ein Delir geht mit einer Bewusstseinsstörung einher',
      'D) Ein Delir ist meistens medikamentös bedingt',
      'E) Ein Delir kann bei Stoffwechselstörungen auftreten',
    ],
    correct: [2, 4],
    explanation:
        'Ein Delir geht mit einer Bewusstseinsstörung einher (C richtig). Stoffwechselstörungen können ein Delir auslösen (E richtig). Medikamentöse Behandlung ist indiziert (A falsch). Akuter Beginn, Dauer Tage bis Wochen (B falsch). Medikamente sind nur eine mögliche Ursache (D falsch).',
  ),
  Question(
    id: 56,
    exam: 'März 2018',
    q: 'Welche der folgenden Aussagen zur Migräne treffen zu? Wählen Sie zwei Antworten!',
    options: [
      'A) Bei Migräne reicht in der Regel eine augenärztliche Behandlung',
      'B) Oft besteht ausgeprägte Lichtempfindlichkeit, Übelkeit oder Erbrechen',
      'C) In der Auraphase treten häufig Sehstörungen auf',
      'D) Die Kopfschmerzen bessern sich bei körperlicher Betätigung',
      'E) Lebensmittel können keinen Anfall auslösen',
    ],
    correct: [1, 2],
    explanation:
        'Bei Migräne bestehen häufig Lichtempfindlichkeit, Übelkeit oder Erbrechen (B richtig). In der Auraphase treten häufig Sehstörungen wie Flimmerskotome auf (C richtig). Augenärztliche Behandlung reicht nicht (A falsch). Körperliche Betätigung verschlechtert die Kopfschmerzen (D falsch). Bestimmte Lebensmittel können Migräne triggern (E falsch).',
  ),
];
