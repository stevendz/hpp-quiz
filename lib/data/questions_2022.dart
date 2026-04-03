import '../models/question.dart';

const List<Question> questions2022 = [
  Question(
    id: 1,
    exam: 'März 2022',
    q: 'Bei einem 35-jährigen Patienten mit insulinpflichtigem Typ-1 Diabetes mellitus bemerken Sie während der psychotherapeutischen Behandlung Veränderungen. Welche der folgenden Symptome lassen Sie an eine Hypoglykämie denken?\n1. Zittern\n2. Unruhe\n3. Reizbarkeit\n4. Größenwahn\n5. Gerötete überwärmte Haut',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 2 und 3 sind richtig. Typische Symptome einer Hypoglykämie sind Zittern, Unruhe und Reizbarkeit – ausgelöst durch die adrenerge Gegenregulation bei niedrigem Blutzucker. Weitere Symptome sind Schwitzen, Herzklopfen, Heißhunger und Konzentrationsstörungen. Aussage 4 ist falsch: Größenwahn ist kein Hypoglykämie-Symptom. Aussage 5 ist falsch: Gerötete überwärmte Haut ist eher typisch für Hyperglykämie/diabetisches Koma, bei Hypoglykämie findet sich eher blasse, schweißige Haut.',
  ),
  Question(
    id: 2,
    exam: 'März 2022',
    q: 'Geschäftsunfähigkeit nach BGB besteht:\n1. Bei nicht vollendetem siebten Lebensjahr\n2. Grundsätzlich im akuten Zustand einer psychischen Erkrankung\n3. Beim Vorliegen eines der freien Willensbestimmung ausschließenden Zustandes krankhafter Störung der Geistestätigkeit, sofern dieser nicht vorübergehend ist\n4. Bei Rechenstörung\n5. Bei Analphabetismus',
    options: [
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1 und 3 sind richtig. Nach §104 BGB ist geschäftsunfähig, wer das siebte Lebensjahr nicht vollendet hat, und wer sich in einem die freie Willensbestimmung ausschließenden Zustand krankhafter Störung der Geistestätigkeit befindet, sofern dieser nicht vorübergehend ist. Aussage 2 ist falsch: Nicht jeder akute Zustand einer psychischen Erkrankung führt zur Geschäftsunfähigkeit. Aussagen 4 und 5 sind falsch: Rechenstörung und Analphabetismus begründen keine Geschäftsunfähigkeit.',
  ),
  Question(
    id: 3,
    exam: 'März 2022',
    q: 'Ein Therapeut beabsichtigt bei einem Patienten mit Prüfungsangst eine systematische Desensibilisierung durchzuführen. Welche Aussagen zur systematischen Desensibilisierung treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Es handelt sich um ein Reizkonfrontationsverfahren',
      'Systematische Desensibilisierung ist bei chronischem Asthma bronchiale kontraindiziert',
      'Systematische Desensibilisierung ist bei früherem Drogenkonsum kontraindiziert',
      'Systematische Desensibilisierung ist bei Epilepsie kontraindiziert',
      'Systematische Desensibilisierung ist bei starker kognitiver Vermeidung weniger erfolgversprechend',
    ],
    correct: [0, 4],
    explanation:
        'A und E sind richtig. Die systematische Desensibilisierung nach Wolpe ist ein Reizkonfrontationsverfahren, bei dem der Patient schrittweise (in sensu) mit angstauslösenden Reizen konfrontiert wird, während er gleichzeitig entspannt ist (Gegenkonditionierung). Bei starker kognitiver Vermeidung ist das Verfahren weniger wirksam, da sich der Patient gedanklich nicht auf die Angstauslöser einlassen kann. Die anderen Optionen sind keine typischen Kontraindikationen.',
  ),
  Question(
    id: 4,
    exam: 'März 2022',
    q: 'Unter Zerfahrenheit versteht man in der Psychotherapie:',
    options: [
      'Das phänomenologische Bild der Parathymie',
      'Eine formale Denkstörung',
      'Eine Aufmerksamkeitsstörung',
      'Eine Störung der Affektivität',
      'Eine Bewusstseinsstörung',
    ],
    correct: 1,
    explanation:
        'Zerfahrenheit (Inkohärenz) ist eine formale Denkstörung. Sie bezeichnet einen Zustand, bei dem der Zusammenhang zwischen den einzelnen Gedanken verloren geht – das Denken wirkt zusammenhanglos und unverständlich. Zerfahrenheit tritt typischerweise bei der Schizophrenie auf und ist keine Affektstörung, Aufmerksamkeitsstörung oder Bewusstseinsstörung.',
  ),
  Question(
    id: 5,
    exam: 'März 2022',
    q: 'Nach Diagnosestellung einer schweren depressiven Episode: (Wählen Sie zwei Antworten)',
    options: [
      'Sollte die Akutbehandlung von einem Arzt durchgeführt werden',
      'Ist eine alleinige psychotherapeutische Behandlung meist ausreichend erfolgversprechend',
      'Muss die Behandlung wegen möglicher Suizidgefahr immer auf einer beschützenden Station durchgeführt werden',
      'Ist eine kombinierte Behandlung, bestehend aus medikamentöser Behandlung und Psychotherapie, angezeigt',
      'Ist bei Entscheidung für eine medikamentöse Behandlung ein Antipsychotikum das Medikament der Wahl',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Bei einer schweren depressiven Episode sollte die Akutbehandlung ärztlich erfolgen (Suizidgefahr, ggf. Medikation nötig). Die Leitlinien empfehlen eine Kombinationsbehandlung aus Pharmakotherapie und Psychotherapie. B ist falsch: Alleinige Psychotherapie reicht bei schwerer Depression meist nicht aus. C ist falsch: Nicht jede schwere Depression erfordert eine beschützende Station. E ist falsch: Antidepressiva (nicht Antipsychotika) sind Medikamente der Wahl.',
  ),
  Question(
    id: 6,
    exam: 'März 2022',
    q: 'Die Zwangsstörung (nach ICD-10):\n1. Beginnt meist in der Kindheit oder im frühen Erwachsenenalter\n2. Wird als Psychotherapie der Wahl verhaltenstherapeutisch behandelt\n3. Ist überzufällig häufig mit einem depressiven Syndrom vergesellschaftet\n4. Verläuft häufig chronisch\n5. Wird durch Zwangsgedanken und Zwangshandlungen charakterisiert',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Zwangsstörungen beginnen typischerweise in der Adoleszenz oder im frühen Erwachsenenalter. Verhaltenstherapie (Exposition mit Reaktionsverhinderung) ist Therapie der Wahl. Depression ist die häufigste Komorbidität. Der Verlauf ist häufig chronisch. Zwangsgedanken und/oder Zwangshandlungen sind die charakteristischen Symptome.',
  ),
  Question(
    id: 7,
    exam: 'März 2022',
    q: 'Welche Aussagen zur Hebephrenie treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Das Krankheitsbild ist u.a. gekennzeichnet durch ungeordnetes Denken, weitschweifige Sprache sowie verantwortungsloses und unvorhersehbares Verhalten',
      'Der Beginn der Erkrankung liegt meist zwischen der Pubertät und der Mitte des 3. Lebensjahrzehntes',
      'Eindeutige Verflachung oder Inadäquatheit des Affektes können in leichter Form vorkommen, bestimmen aber nicht das klinische Bild',
      'Halluzinationen und Wahn bestimmen das klinische Bild',
      'Die Störung wird meist rasch erkannt, da katatone motorische Erscheinungen im Vordergrund stehen',
    ],
    correct: [0, 1],
    explanation:
        'A und B sind richtig. Die hebephrene Schizophrenie (F20.1) ist gekennzeichnet durch desorganisiertes Denken, weitschweifige Sprache und unvorhersehbares Verhalten. Der Beginn liegt typischerweise zwischen Pubertät und Mitte der Zwanziger. C ist falsch: Affektverflachung und inadäquater Affekt bestimmen gerade das klinische Bild. D ist falsch: Halluzinationen und Wahn stehen nicht im Vordergrund (das wäre die paranoide Form). E ist falsch: Katatone Symptome gehören zur katatonen Schizophrenie.',
  ),
  Question(
    id: 8,
    exam: 'März 2022',
    q: 'Um einen sekundären Krankheitsgewinn kann es sich handeln bei:\n1. Entlastung des Kranken von alltäglichen Verpflichtungen\n2. Emotionale Zuwendung von Angehörigen\n3. Aufmerksamkeit von Seiten des medizinischen Personals\n4. Nachlassen von krankheitsbedingten Beschwerden\n5. Krankheitsbedingte Berentung',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 5 sind richtig. Sekundärer Krankheitsgewinn bezeichnet Vorteile, die sich aus der Krankenrolle ergeben: Entlastung von Pflichten, emotionale Zuwendung, Aufmerksamkeit und Berentung. Aussage 4 ist falsch: Das Nachlassen von Beschwerden ist kein sekundärer Krankheitsgewinn, sondern ein Therapieeffekt (primärer Krankheitsgewinn ist die Symptomreduktion durch die Symptombildung selbst).',
  ),
  Question(
    id: 9,
    exam: 'März 2022',
    q: 'Typische Symptome der generalisierten Angststörung sind:\n1. Vegetative Symptome (Herzklopfen, Schweißausbrüche, Tremor)\n2. Psychische Symptome (Gefühl von Schwindel, Derealisation, Angst vor Kontrollverlust)\n3. Häufige und unvorhersehbare Episoden von abrupt beginnender intensiver Angst\n4. Gedanken, die sich dauernd wiederholen und als unangenehm und unsinnig empfunden werden\n5. Symptome der Anspannung (Muskelverspannung, Ruhelosigkeit, Nervosität)',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 5 sind richtig. Die generalisierte Angststörung zeigt vegetative Symptome, psychische Angstsymptome und Anspannungssymptome. Charakteristisch ist die frei flottierende, chronische Angst und Besorgnis. Aussage 3 ist falsch: Episodische, abrupt beginnende Angstattacken beschreiben eine Panikstörung. Aussage 4 ist falsch: Sich wiederholende, als unsinnig empfundene Gedanken beschreiben Zwangsgedanken.',
  ),
  Question(
    id: 10,
    exam: 'März 2022',
    q: 'Zu den nichtmedikamentösen Interventionen bei demenziellen Syndromen gehören:\n1. Körperliche Aktivierung\n2. Basale Stimulation\n3. Ergotherapie\n4. Realitätsorientierungstraining (ROT)\n5. Supportive Psychotherapie',
    options: [
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Nichtmedikamentöse Interventionen bei Demenz umfassen: körperliche Aktivierung (Bewegungstherapie), basale Stimulation (sensorische Anregung), Ergotherapie (Alltagskompetenz), Realitätsorientierungstraining (zeitliche, örtliche, personelle Orientierung) und supportive Psychotherapie (emotionale Unterstützung, Bewältigungsstrategien).',
  ),
  Question(
    id: 11,
    exam: 'März 2022',
    q: 'Im Rahmen der Psychotherapie sind Gruppentherapien als Alternative zu Einzeltherapien denkbar. Welche Aussage trifft zu?',
    options: [
      'Eine auf das Gebiet der Psychotherapie beschränkte Heilpraktikererlaubnis berechtigt grundsätzlich auch zur Durchführung einer Gruppentherapie',
      'Gruppentherapien sind bei depressiven Störungen kontraindiziert',
      'Gruppentherapien kommen nur bei der Behandlung zwischenmenschlicher Probleme in Frage',
      'Die Wirkfaktoren sind in der Einzel- und Gruppentherapie völlig identisch',
      'In methodenorientierten Psychotherapiegruppen geht es vor allem um die Bearbeitung gruppendynamischer Konflikte',
    ],
    correct: 0,
    explanation:
        'A ist richtig: Die sektorale Heilpraktikererlaubnis für Psychotherapie berechtigt grundsätzlich auch zur Durchführung von Gruppentherapie. B ist falsch: Gruppentherapie ist bei Depressionen wirksam und indiziert. C ist falsch: Gruppentherapie wird bei vielen Störungsbildern eingesetzt. D ist falsch: Es gibt zusätzliche gruppendynamische Wirkfaktoren (z.B. Gruppenkohäsion, Universalität des Leidens). E ist falsch: In methodenorientierten Gruppen steht die Methode im Vordergrund, nicht die Gruppendynamik.',
  ),
  Question(
    id: 12,
    exam: 'März 2022',
    q: 'Klassische psychoanalytische Techniken, um unbewusste psychische Anteile zu verstehen, sind: (Wählen Sie zwei Antworten)',
    options: [
      'Freies Assoziieren des Patienten während der Therapiestunde',
      'Autosuggestion des Patienten während der Therapiestunde',
      'Deutung von sogenannten Fehlleistungen',
      'Strukturierte und standardisierte Interviews',
      'Brainstorming',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Freies Assoziieren ist die Grundregel der Psychoanalyse – der Patient soll alles aussprechen, was ihm einfällt. Die Deutung von Fehlleistungen (Versprecher, Vergessen etc.) ist eine klassische psychoanalytische Technik zum Verständnis unbewusster Inhalte. Autosuggestion (B) gehört zur Autogenen Training. Standardisierte Interviews (D) und Brainstorming (E) sind keine psychoanalytischen Techniken.',
  ),
  Question(
    id: 13,
    exam: 'März 2022',
    q: 'Inhaber der auf das Gebiet der Psychotherapie beschränkten Heilpraktikererlaubnis dürfen grundsätzlich im Rahmen der psychotherapeutischen Behandlung anbieten:\n1. Bewusstseinsveränderung durch Gabe von LSD\n2. Kognitive Umstrukturierung\n3. Training von berufsbezogenen Fähigkeiten\n4. Kommunikationstraining\n5. Einbeziehung von Freunden und Angehörigen des Patienten',
    options: [
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. HP Psychotherapie dürfen kognitive Umstrukturierung, berufsbezogenes Training, Kommunikationstraining und die Einbeziehung von Angehörigen anbieten – dies sind alles psychotherapeutische Maßnahmen. Aussage 1 ist falsch: Die Gabe von LSD ist für HP verboten (Verstoß gegen BtMG und Arzneimittelrecht), zudem ist LSD-gestützte Therapie keine zugelassene Behandlungsform.',
  ),
  Question(
    id: 14,
    exam: 'März 2022',
    q: 'Ein Patient mit emotional instabiler Persönlichkeitsstörung vom Borderline-Typ spricht auf kognitive Umstrukturierung nicht an. Sie denken an ein Emotionsregulationstraining als Teil der DBT. Welche Aussage zum Emotionsregulationstraining trifft zu?',
    options: [
      'Eingeübt wird die Achtsamkeit für vergangene Gefühle',
      'Der Patient soll befähigt werden, mit seinen Gefühlen umzugehen',
      'Gefördert wird, sich stärker mit seinem Gefühl zu identifizieren',
      'Der Patient wird bestärkt, die Wahrnehmung negativer Gefühle zu vermeiden und zu unterdrücken',
      'Der Therapeut hilft dem Patienten dabei, problematische Gefühle zu verstärken',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Das Emotionsregulationstraining in der DBT zielt darauf ab, den Patienten zu befähigen, mit seinen Gefühlen umzugehen und sie zu regulieren. A ist falsch: Achtsamkeit bezieht sich auf gegenwärtige Gefühle, nicht vergangene. C ist falsch: Übermäßige Identifikation mit Gefühlen soll gerade reduziert werden. D ist falsch: Gefühle sollen wahrgenommen, nicht vermieden oder unterdrückt werden. E ist falsch: Problematische Gefühle sollen reguliert, nicht verstärkt werden.',
  ),
  Question(
    id: 15,
    exam: 'März 2022',
    q: 'Als Widerstand wird in der Psychoanalyse bezeichnet: (Wählen Sie zwei Antworten)',
    options: [
      'Interventionstechnik, bei der der Patient mit seinen Interpretationen konfrontiert wird',
      'Das Fernbleiben eines Patienten von einer Therapiestunde, weil er keine Lust habe',
      'Gleichschwebende Aufmerksamkeit des Analytikers gegenüber den Äußerungen des Patienten',
      'Das Ziel eines Selbstbehauptungstrainings',
      'Alles, was sich dem Fortschritt der Behandlung entgegenstellt',
    ],
    correct: [1, 4],
    explanation:
        'B und E sind richtig. In der Psychoanalyse bezeichnet Widerstand alles, was sich dem Fortschritt der analytischen Arbeit entgegenstellt. Das Fernbleiben von Therapiestunden ist ein klassisches Beispiel für Widerstand. A ist falsch: Das beschreibt eher Konfrontation/Deutung, nicht Widerstand. C ist falsch: Gleichschwebende Aufmerksamkeit ist die Grundhaltung des Analytikers. D ist falsch: Selbstbehauptungstraining gehört zur Verhaltenstherapie.',
  ),
  Question(
    id: 16,
    exam: 'März 2022',
    q: 'Zu den Behandlungsformen der Psychotherapie werden gerechnet:\n1. Homöopathie\n2. Hypnotherapie\n3. Psychopharmakotherapie\n4. Logotherapie\n5. Gestalttherapie',
    options: [
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 4 und 5 sind richtig. Hypnotherapie, Logotherapie (nach Frankl, existenzanalytisch) und Gestalttherapie (nach Perls) sind psychotherapeutische Verfahren. Aussage 1 ist falsch: Homöopathie ist ein alternativmedizinisches Verfahren, keine Psychotherapie. Aussage 3 ist falsch: Psychopharmakotherapie ist eine medikamentöse Behandlung, keine Psychotherapie im engeren Sinne.',
  ),
  Question(
    id: 17,
    exam: 'März 2022',
    q: 'Unkontrollierte Steigerung des Antriebs (Antriebsenthemmung) wird beobachtet:\n1. Bei organischen psychischen Störungen\n2. Bei Dysthymia\n3. Bei Manie\n4. Nach Einnahme von Substanzen des Amphetamintyps\n5. Nach Einnahme von Alkohol',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3, 4 und 5 sind richtig. Antriebsenthemmung tritt auf bei: organischen psychischen Störungen (z.B. Frontalhirnschädigungen), Manie (typisches Symptom), Amphetaminkonsum (stimulierende Wirkung) und Alkoholkonsum (enthemmende Wirkung). Aussage 2 ist falsch: Bei Dysthymia (chronische depressive Verstimmung) besteht typischerweise eine Antriebsminderung, keine Antriebsenthemmung.',
  ),
  Question(
    id: 18,
    exam: 'März 2022',
    q: 'Zu den Symptomen bzw. Folgen eines häufigeren und chronischen Cannabiskonsums zählen:\n1. Miosis\n2. Amotivationales Syndrom\n3. Echopsychosen (Flashbacks)\n4. Misstrauisch-dysphorische Verstimmungszustände\n5. Schizophrenieartige paranoid-halluzinatorische Psychosen',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '2, 3, 4 und 5 sind richtig. Chronischer Cannabiskonsum kann zu amotivationalem Syndrom, Echopsychosen (Flashbacks), dysphorischen Verstimmungen und schizophrenieartigen Psychosen führen. Aussage 1 ist falsch: Cannabis verursacht typischerweise eine Mydriasis (Pupillenerweiterung), keine Miosis (Pupillenverengung). Miosis ist typisch für Opioide.',
  ),
  Question(
    id: 19,
    exam: 'März 2022',
    q: 'Welche Aussagen zu chronischen Depressionen treffen am ehesten zu? (Wählen Sie zwei Antworten)',
    options: [
      'Als chronisch wird eine Depression mit einer Symptomdauer ab 3 Monaten bezeichnet',
      'Bei chronischen Verläufen der Depression kommen frühe negative Erfahrungen selten vor',
      'Bei chronischen Formen der Depression finden sich erhöhte Raten an Persönlichkeitsakzentuierungen und -störungen',
      'Chronische Depressionen sind deckungsgleich mit therapieresistenten Depressionen',
      'Zur Behandlung von Patienten mit chronischer Depression kommen sowohl Psychotherapie als auch Pharmakotherapie in Betracht',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Bei chronischen Depressionen finden sich gehäuft Persönlichkeitsstörungen/-akzentuierungen. Sowohl Psychotherapie (insbes. CBASP) als auch Pharmakotherapie sind indiziert. A ist falsch: Chronisch wird eine Depression ab einer Dauer von ca. 2 Jahren bezeichnet. B ist falsch: Frühe negative Erfahrungen (Traumata, Vernachlässigung) sind bei chronischen Depressionen besonders häufig. D ist falsch: Chronische und therapieresistente Depressionen sind nicht deckungsgleich.',
  ),
  Question(
    id: 20,
    exam: 'März 2022',
    q: 'Welche Aussagen zum SORKC-Modell aus der Verhaltenstherapie treffen zu?\n1. Stimulus (S) bezeichnet das sichtbare, problematische Verhalten\n2. Das Modell berücksichtigt konstitutionelle und biologisch-physiologische Aspekte eines problematischen Verhaltens nicht\n3. Ziel ist die Aufdeckung und Bearbeitung unbewusster psychischer Konflikte\n4. Mit Hilfe des Modells lassen sich dem Klienten auslösende und aufrechterhaltende Bedingungen eines problematischen Verhaltens vermitteln\n5. Für die Therapieplanung ist das Modell ungeeignet',
    options: [
      'Nur die Aussage 4 ist richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur Aussage 4 ist richtig. Das SORKC-Modell dient dazu, auslösende und aufrechterhaltende Bedingungen problematischen Verhaltens zu identifizieren und dem Klienten zu vermitteln. Aussage 1 ist falsch: S (Stimulus) bezeichnet den auslösenden Reiz, nicht das Verhalten (das wäre R = Reaktion). Aussage 2 ist falsch: O (Organismus) berücksichtigt biologisch-physiologische Aspekte. Aussage 3 ist falsch: Das ist ein psychoanalytisches Ziel. Aussage 5 ist falsch: Das Modell ist gerade für die Therapieplanung konzipiert.',
  ),
  Question(
    id: 21,
    exam: 'März 2022',
    q: 'Typische Symptome einer akuten Schizophrenie sind:\n1. Gedankeneingebung\n2. Wahnwahrnehmungen\n3. Multiple Persönlichkeit\n4. Sopor\n5. Akustische Halluzinationen',
    options: [
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 5 sind richtig. Gedankeneingebung (Ich-Störung), Wahnwahrnehmungen und akustische Halluzinationen (besonders kommentierende und dialogische Stimmen) sind typische Erstrangsymptome der Schizophrenie nach Kurt Schneider. Aussage 3 ist falsch: Multiple Persönlichkeit (dissoziative Identitätsstörung) ist keine Schizophrenie. Aussage 4 ist falsch: Sopor ist eine quantitative Bewusstseinsstörung, kein Schizophrenie-Symptom.',
  ),
  Question(
    id: 22,
    exam: 'März 2022',
    q: 'Welche Aussagen zur ADHS treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei ADHS im Erwachsenenalter tritt Substanzmissbrauch gehäuft auf',
      'Für die Diagnosestellung ist eine Dauer der Symptome von 4 Wochen ausreichend',
      'Das klinische Bild von Betroffenen in der Kindheit verglichen mit dem im Erwachsenenalter unterscheidet sich häufig',
      'Die Diagnose lässt sich begrenzt auf bestimmte Lebensbereiche stellen (z.B. Schule)',
      'Für das ADHS des Erwachsenenalters ist ein Symptombeginn nach der Pubertät charakteristisch',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Erwachsene mit ADHS haben ein erhöhtes Risiko für Substanzmissbrauch. Das klinische Bild verändert sich mit dem Alter – bei Erwachsenen tritt die Hyperaktivität oft zurück, während Aufmerksamkeitsdefizite und innere Unruhe bestehen bleiben. B ist falsch: Die Symptome müssen mindestens 6 Monate bestehen. D ist falsch: Die Symptome müssen in mehr als einem Lebensbereich auftreten. E ist falsch: Die Symptome müssen bereits vor dem 12. Lebensjahr begonnen haben.',
  ),
  Question(
    id: 23,
    exam: 'März 2022',
    q: 'Welche Aussagen zur Unterscheidung zwischen Demenz bei Alzheimer-Krankheit und Depression treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei der Depression besteht meist eine deutliche Störung des Orientierungsvermögens und der Gedächtnisfunktionen',
      'Ein korrekt ausgeführter Uhren-Zeichen-Test spricht gegen eine schwere Demenz',
      'Ein Mini-Mental-Status-Test (MMST) wird bei der Diagnose und Verlaufskontrolle der Demenz verwendet',
      'Der typische depressive Patient überspielt seine Unsicherheiten um kompetent zu wirken',
      'Der typische demente Patient im Frühstadium klagt über Vergesslichkeit und aggraviert seine Leistungseinbußen',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Ein korrekt ausgeführter Uhrentest spricht gegen eine schwere Demenz. Der MMST ist ein Standardinstrument zur Demenzdiagnostik und Verlaufskontrolle. A ist falsch: Ausgeprägte Orientierungs- und Gedächtnisstörungen sind für Demenz typisch, nicht für Depression. D ist falsch: Eher der demente Patient überspielt Defizite (Fassade); depressive Patienten neigen zur Aggravation. E ist falsch: Demente Patienten bagatellisieren eher ihre Defizite.',
  ),
  Question(
    id: 24,
    exam: 'März 2022',
    q: 'Auf welchen Rechtsgrundlagen kann ein volljähriger Patient mit Schizophrenie auf einer geschlossenen Station aufgenommen werden?\n1. Nach Beschluss einer Kommission der zuständigen Ärztekammer\n2. Nach Strafrecht (StGB)\n3. Nach dem Unterbringungsrecht des jeweiligen Landes (PsychKG)\n4. Nach bürgerlichem Recht (BGB, Betreuungsrecht)\n5. Nach eigener Freiwilligkeitserklärung',
    options: [
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. Geschlossene Unterbringung kann erfolgen nach: StGB (Maßregelvollzug §63), PsychKG (öffentlich-rechtlich bei Fremd-/Selbstgefährdung), BGB-Betreuungsrecht (zivilrechtlich mit Gerichtsgenehmigung) und freiwilliger Aufnahme. Aussage 1 ist falsch: Die Ärztekammer hat keine Kompetenz zur Anordnung einer Unterbringung.',
  ),
  Question(
    id: 25,
    exam: 'März 2022',
    q: 'Welche Aussagen zu affektiven Störungen (nach ICD-10) treffen zu?\n1. Es wird zwischen einzelnen Episoden und Störungen unterschieden\n2. Die depressive Episode kann mit oder ohne somatisches Syndrom auftreten\n3. Der Schweregrad wird u.a. in leicht, mittelgradig und schwer eingeteilt\n4. Typische Merkmale des somatischen Syndroms sind frühmorgendliches Erwachen, Appetitverlust, Libidoverlust\n5. Eine depressive Störung erhöht das Risiko für eine Herzerkrankung',
    options: [
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. ICD-10 unterscheidet Episoden und rezidivierende Störungen. Depression kann mit/ohne somatisches Syndrom auftreten. Der Schweregrad wird in leicht/mittelgradig/schwer eingeteilt. Somatisches Syndrom umfasst frühmorgendliches Erwachen, Appetitverlust, Libidoverlust, Gewichtsverlust u.a. Depressionen erhöhen nachweislich das kardiovaskuläre Risiko.',
  ),
  Question(
    id: 26,
    exam: 'März 2022',
    q: 'Eine Patientin berichtet von jahrelangen wechselnden Beschwerden (Kopfschmerzen, Brustschmerzen, Herzstechen, Übelkeit, Durchfall, sexuelle Gleichgültigkeit, Kloßgefühl, Muskelschmerzen) ohne organischen Befund. Welche Aussage zum therapeutischen Vorgehen bei Verdacht auf Somatisierungsstörung trifft zu?',
    options: [
      'Der Therapeut sollte die Patientin ablehnen, weil die Beschwerden möglicherweise organisch bedingt sind',
      'Da die Patientin stark körperlich leidet, ist automatisch von hoher Veränderungsmotivation auszugehen',
      'Der Therapeut sollte die Patientin zu körperlichem Schonverhalten motivieren',
      'Der Therapeut sollte gemeinsam mit der Patientin ein Störungsmodell erarbeiten',
      'Der Therapeut sollte das Checking-Verhalten der Patientin fördern und ihr empfehlen, diese zur Beruhigung einzusetzen',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Das gemeinsame Erarbeiten eines biopsychosozialen Störungsmodells ist ein zentraler therapeutischer Schritt bei somatoformen Störungen. Dies fördert das Verständnis der Patientin für die Zusammenhänge zwischen psychischen Faktoren und körperlichen Beschwerden. A ist falsch: Die Patientin nicht ablehnen. B ist falsch: Die Veränderungsmotivation ist oft gering. C ist falsch: Schonverhalten verstärkt die Symptomatik. E ist falsch: Checking-Verhalten sollte reduziert, nicht gefördert werden.',
  ),
  Question(
    id: 27,
    exam: 'März 2022',
    q: 'Welche Aussagen zum Alkoholdelir treffen zu?\n1. Es tritt meist innerhalb von Stunden bis Tagen nach plötzlicher Unterbrechung einer chronischen Alkoholzufuhr auf\n2. Es tritt meist innerhalb von wenigen Minuten nach plötzlicher Unterbrechung auf\n3. Im Vollbild treten Orientierungsstörungen auf\n4. Tremor ist ein typisches Symptom\n5. Eine Komplikation ist ein Übergang in ein Koma',
    options: [
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3, 4 und 5 sind richtig. Das Alkoholdelir tritt typischerweise Stunden bis Tage nach Alkoholkarenz auf. Orientierungsstörungen gehören zum Vollbild. Tremor (Delirium tremens) ist ein Kardinalsymptom. Koma kann als lebensbedrohliche Komplikation auftreten. Aussage 2 ist falsch: Das Delir entwickelt sich nicht innerhalb von Minuten, sondern über Stunden bis Tage.',
  ),
  Question(
    id: 28,
    exam: 'März 2022',
    q: 'Kennzeichnend für den \'pathologischen Rausch\' ist: (Wählen Sie zwei Antworten)',
    options: [
      'Rausch durch pathologisch gesteigerte Trinkmenge',
      'Rausch durch illegale Droge mit einem Erscheinungsbild eines üblichen Alkoholrausches',
      'Auftreten psychopathologischer Symptome, wie z.B. Situationsverkennung',
      'Der Rausch geht im Regelfall über in ein manifestes Alkoholdelir',
      'Auftreten nach Zufuhr einer relativ geringen Menge Alkohol',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Der pathologische Rausch ist ein atypischer Rauschzustand, der nach Zufuhr relativ geringer Alkoholmengen auftritt und durch psychopathologische Symptome wie Situationsverkennung, Erregungszustände und ggf. aggressives Verhalten gekennzeichnet ist. A ist falsch: Es geht nicht um eine gesteigerte Trinkmenge. B ist falsch: Es handelt sich um Alkohol, nicht illegale Drogen. D ist falsch: Ein pathologischer Rausch geht nicht regelhaft in ein Delir über.',
  ),
  Question(
    id: 29,
    exam: 'Oktober 2022',
    q: 'In der dialektisch behavioralen Therapie (DBT) zur Behandlung der Persönlichkeitsstörungen vom Borderline-Typ:\n1. Ist die Vermittlung von Skills ein Kernstück der DBT\n2. Kann das Skillstraining je nach Symptomatik unterschiedlich komponiert werden\n3. Soll die Emotionsregulation verbessert werden\n4. Werden Problemlösungsfertigkeiten und soziale Kompetenzen trainiert\n5. Findet der Einsatz von kognitiven Methoden keine Anwendung',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 4 sind richtig. Die DBT nach Linehan umfasst Skillsvermittlung als Kernstück, individuell angepasstes Skillstraining, Verbesserung der Emotionsregulation und Training von Problemlösungs- und sozialen Kompetenzen. Die vier Skillsmodule sind: Achtsamkeit, Stresstoleranz, Emotionsregulation und zwischenmenschliche Fertigkeiten. Aussage 5 ist falsch: Kognitive Methoden werden in der DBT durchaus eingesetzt (die DBT kombiniert behaviorale und kognitive Strategien).',
  ),
  Question(
    id: 30,
    exam: 'Oktober 2022',
    q: 'Ein unter Betreuung stehender Patient mit Schizophrenie lehnt eine Herzkatheteruntersuchung ab. Welche Aussagen zum weiteren Vorgehen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Der Betreuer befürwortet die Untersuchung und gibt dem Arzt die Einwilligung',
      'Ist der Betroffene zum Zeitpunkt der Untersuchung einwilligungsfähig, darf die Untersuchung nicht stattfinden',
      'Ist der Betroffene nicht einwilligungsfähig, lehnt der Betreuer auf dessen Wunsch hin ebenfalls ab',
      'Ist der Betroffene nicht einwilligungsfähig, darf der Betreuer die Untersuchung anordnen',
      'Ist der Betroffene nicht einwilligungsfähig, beantragt der Betreuer die Genehmigung beim Betreuungsgericht',
    ],
    correct: [1, 4],
    explanation:
        'B und E sind richtig. Ist der Patient einwilligungsfähig, hat sein Wille Vorrang – die Untersuchung darf nicht stattfinden (Selbstbestimmungsrecht). Ist er nicht einwilligungsfähig und besteht ein erhebliches gesundheitliches Risiko, muss der Betreuer die Genehmigung beim Betreuungsgericht beantragen, da es sich um eine ärztliche Zwangsmaßnahme handeln kann. A ist falsch: Der Betreuer kann nicht einfach einwilligen. C ist falsch: Der Betreuer muss zum Wohl des Betreuten handeln. D ist falsch: Der Betreuer braucht die Genehmigung des Gerichts.',
  ),
  Question(
    id: 31,
    exam: 'Oktober 2022',
    q: 'Faktoren, die bei der Erstmanifestation einer Schizophrenie hinsichtlich der Prognose als eher günstig gelten, sind: (Wählen Sie zwei Antworten)',
    options: [
      'Cannabiskonsum',
      'Weibliches Geschlecht',
      'Akuter Krankheitsbeginn',
      'Schleichender Krankheitsbeginn',
      'Auftreten von Schizophrenie bei nahen Angehörigen',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Weibliches Geschlecht und akuter Krankheitsbeginn gelten als prognostisch günstige Faktoren bei Schizophrenie. A ist falsch: Cannabiskonsum verschlechtert die Prognose. D ist falsch: Ein schleichender Beginn ist prognostisch ungünstig. E ist falsch: Familiäre Belastung ist eher ein Risikofaktor, kein prognostisch günstiger Faktor.',
  ),
  Question(
    id: 32,
    exam: 'Oktober 2022',
    q: 'Welche Aussage zum Suizid trifft zu?',
    options: [
      'Bei Jugendlichen ist Suizid eine sehr seltene Todesursache',
      'Bei Menschen, die an Suizid verstorben sind, bestand meist eine psychische Erkrankung',
      'Bei Personen mit mehreren Suizidversuchen sinkt die Wahrscheinlichkeit eines Suizids',
      'Nach Entlassung aus einer psychiatrischen Klinik haben Patienten ein geringeres Suizidrisiko als die Allgemeinbevölkerung',
      'Die Suizidrate in Deutschland ist in den letzten Jahren deutlich gestiegen',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Bei ca. 90% der Menschen, die durch Suizid verstarben, lag eine psychische Erkrankung vor (v.a. Depression, Suchterkrankungen, Schizophrenie, Persönlichkeitsstörungen). A ist falsch: Suizid ist bei Jugendlichen eine der häufigsten Todesursachen. C ist falsch: Frühere Suizidversuche erhöhen das Risiko. D ist falsch: Nach Entlassung ist das Risiko besonders erhöht. E ist falsch: Die Suizidrate ist in Deutschland seit Jahren rückläufig.',
  ),
  Question(
    id: 33,
    exam: 'Oktober 2022',
    q: 'Zu den inhaltlichen Denkstörungen gehören: (Wählen Sie zwei Antworten)',
    options: ['Überwertige Ideen', 'Konkretismus', 'Paralogik', 'Kontamination', 'Symbiontischer Wahn (Folie à deux)'],
    correct: [0, 4],
    explanation:
        'A und E sind richtig. Überwertige Ideen (stark affektiv besetzte Überzeugungen, die das Denken dominieren) und der symbiontische Wahn/Folie à deux (induzierte wahnhafte Störung) sind inhaltliche Denkstörungen. Konkretismus (B), Paralogik (C) und Kontamination (D) sind formale Denkstörungen.',
  ),
  Question(
    id: 34,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zur geistigen Behinderung treffen zu?\n1. Menschen mit geistiger Behinderung haben oft eine Mehrfachbehinderung\n2. Von einer mittelgradigen Intelligenzminderung spricht man bei einem IQ von 85\n3. Bei Kindern mit geistiger Behinderung gelingt es heute in über 90% der Fälle die Ursache zu klären\n4. Bei Kindern mit geistiger Behinderung besteht ein erhöhtes Risiko für psychische Störungen\n5. Zu den präventiven Maßnahmen gehören Schutzimpfungen der Mutter vor Eintritt der Schwangerschaft',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 4 und 5 sind richtig. Mehrfachbehinderungen sind bei geistiger Behinderung häufig. Kinder mit geistiger Behinderung haben ein erhöhtes Risiko für psychische Störungen. Impfungen der Mutter (z.B. Röteln) können bestimmte Intelligenzminderungen verhindern. Aussage 2 ist falsch: IQ 85 liegt im Normalbereich; mittelgradige Intelligenzminderung entspricht IQ 35-49. Aussage 3 ist falsch: Bei vielen geistigen Behinderungen bleibt die Ursache unklar.',
  ),
  Question(
    id: 35,
    exam: 'Oktober 2022',
    q: 'Ein Behandlungs- bzw. Tätigkeitsverbot besteht für Inhaber einer auf das Gebiet der Psychotherapie beschränkten Heilerlaubnis für:\n1. Verhaltenstherapie bei einem zwangserkrankten Patienten mit Neurosyphilis\n2. Verordnung von Betäubungsmitteln bei einem Patienten mit hyperkinetischer Störung\n3. Psychotherapeutische Behandlung der depressiven Störung eines Patienten mit chronischer Virushepatitis C\n4. Empfehlung einer beschützenden stationären Behandlung bei einem Patienten mit paranoider Schizophrenie\n5. Psychoedukation bei einem alkoholkranken Patienten mit Leberzirrhose',
    options: [
      'Nur die Aussage 2 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Alle Aussagen 1, 3 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur Aussage 2 ist richtig: HP Psychotherapie dürfen keine Betäubungsmittel verordnen – dies ist ausschließlich Ärzten vorbehalten. Aussage 1 ist falsch: Psychotherapie bei Zwang ist erlaubt, auch wenn eine somatische Erkrankung vorliegt; die Syphilis muss ärztlich behandelt werden. Aussage 3 ist falsch: PT bei Depression ist erlaubt, auch bei Hepatitis C. Aussage 4 ist falsch: Eine Empfehlung zur stationären Behandlung ist keine Behandlung und daher erlaubt. Aussage 5 ist falsch: Psychoedukation ist erlaubt.',
  ),
  Question(
    id: 36,
    exam: 'Oktober 2022',
    q: 'Zu den affektiven Störungen (nach ICD-10) zählen: (Wählen Sie zwei Antworten)',
    options: [
      'Aufmerksamkeitsdefizit/Hyperaktivitätsstörung (ADHS)',
      'Entzugssyndrom mit Delir',
      'Hypomanie',
      'Somatisierungsstörung',
      'Zyklothymia',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Hypomanie (F30.0) und Zyklothymia (F34.0) gehören zu den affektiven Störungen (F30-F39) nach ICD-10. ADHS (A) gehört zu den Verhaltens- und emotionalen Störungen mit Beginn in der Kindheit (F90). Entzugssyndrom mit Delir (B) gehört zu den psychischen Störungen durch psychotrope Substanzen. Somatisierungsstörung (D) gehört zu den somatoformen Störungen.',
  ),
  Question(
    id: 37,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zur primären Enuresis treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Über 1 Jahr nach bereits erworbener Blasenkontrolle tritt wieder Einnässen auf',
      'Familiäre Häufung wird nur selten beobachtet',
      'Primäre Enuresis bezeichnet Einnässen bei einem Kind, das noch nie längere Zeit trocken war',
      'Der Verlauf zeigt eine hohe Spontanheilungsrate',
      'Am häufigsten tritt sie tagsüber auf (Enuresis diurna)',
    ],
    correct: [2, 3],
    explanation:
        'C und D sind richtig. Primäre Enuresis liegt vor, wenn das Kind noch nie über einen längeren Zeitraum trocken war (im Gegensatz zur sekundären Enuresis). Die Spontanheilungsrate ist hoch – ca. 15% der Betroffenen werden pro Jahr spontan trocken. A ist falsch: Das beschreibt die sekundäre Enuresis. B ist falsch: Familiäre Häufung ist gut belegt. E ist falsch: Enuresis nocturna (nachts) ist die häufigste Form.',
  ),
  Question(
    id: 38,
    exam: 'Oktober 2022',
    q: 'Zu den Ich-Störungen zählen:\n1. Derealisation\n2. Gedankenabreißen\n3. Gedankenausbreitung\n4. Gedankendrängen\n5. Gedankeneingebung',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3 und 5 sind richtig. Derealisation, Gedankenausbreitung und Gedankeneingebung sind Ich-Störungen. Gedankenabreißen (2) und Gedankendrängen (4) sind formale Denkstörungen.',
  ),
  Question(
    id: 39,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zum Asperger-Syndrom (nach ICD-10) treffen zu?\n1. Es ist vor allem durch Schwächen in sozialer Interaktion und Kommunikation gekennzeichnet\n2. Die Intelligenz ist in den meisten Fällen normal ausgeprägt\n3. Mädchen sind häufiger betroffen als Jungen\n4. Die ersten Auffälligkeiten treten bereits in den ersten Lebensmonaten zu Tage\n5. Die betroffenen Kinder fallen durch extreme Sprachentwicklungsstörung auf',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        '1 und 2 sind richtig. Das Asperger-Syndrom ist durch Defizite in sozialer Interaktion und Kommunikation bei normaler Intelligenz gekennzeichnet. Aussage 3 ist falsch: Jungen sind deutlich häufiger betroffen (ca. 4:1). Aussage 4 ist falsch: Die Auffälligkeiten zeigen sich meist ab dem 3. Lebensjahr, nicht in den ersten Monaten. Aussage 5 ist falsch: Beim Asperger-Syndrom ist die Sprachentwicklung gerade nicht verzögert – dies unterscheidet es vom frühkindlichen Autismus.',
  ),
  Question(
    id: 40,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zur Agoraphobie (nach ICD-10) treffen zu?\n1. Die Symptome sind primäre Manifestationen der Angst und beruhen nicht auf Wahn oder Zwangsgedanken\n2. Die Angst tritt auf öffentlichen Plätzen, in Menschenmengen, beim allein Reisen auf\n3. Die Angst flottiert frei\n4. Vermeidung ist ein entscheidendes Symptom\n5. Eine Behandlung mit Expositionsverfahren ist grundsätzlich kontraindiziert',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 4 sind richtig. Die Agoraphobie zeigt primäre Angstsymptome (nicht wahnbedingt). Die Angst bezieht sich auf öffentliche Plätze, Menschenmengen und Situationen ohne schnelle Fluchtmöglichkeit. Vermeidung ist ein Kernsymptom. Aussage 3 ist falsch: Die Angst flottiert nicht frei (das wäre die GAS), sondern ist an bestimmte Situationen gebunden. Aussage 5 ist falsch: Exposition ist die Therapie der Wahl, nicht kontraindiziert.',
  ),
  Question(
    id: 41,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen treffen für eine Lese- und Rechtschreibstörung (nach ICD-10) zu? (Wählen Sie zwei Antworten)',
    options: [
      'Eine umschriebene Entwicklungsstörung des Sprechens oder der Sprache geht der LRS häufig voraus',
      'Die Störung tritt vor allem im Rahmen einer allgemeinen Intelligenzminderung auf',
      'Ein Defizit des Leseverständnisses ist typischerweise nicht vorhanden',
      'Die Leseleistung muss unter dem Niveau liegen, das aufgrund des Alters, der Intelligenz und Beschulung zu erwarten wäre',
      'Soziale und emotionale Anpassungsprobleme stehen mit einer LRS in keinem Zusammenhang',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Sprachentwicklungsstörungen gehen der LRS häufig voraus. Die Leseleistung muss unter dem erwarteten Niveau liegen (Diskrepanzkriterium). B ist falsch: LRS ist definitionsgemäß eine umschriebene Störung bei normaler Intelligenz. C ist falsch: Defizite im Leseverständnis sind typisch. E ist falsch: LRS ist häufig mit sozialen und emotionalen Problemen assoziiert.',
  ),
  Question(
    id: 42,
    exam: 'Oktober 2022',
    q: 'Bei welchen Erkrankungen ist die Letalität am höchsten? (Wählen Sie zwei Antworten)',
    options: [
      'Schizophrenie',
      'Anorexia nervosa',
      'Hypochondrische Störung',
      'Somatoforme autonome Funktionsstörung',
      'Generalisierte Angststörung',
    ],
    correct: [0, 1],
    explanation:
        'A und B sind richtig. Schizophrenie hat eine deutlich erhöhte Mortalität (Suizidrate ca. 5-10%, plus somatische Komorbiditäten). Anorexia nervosa hat mit ca. 5-15% die höchste Letalität unter den psychiatrischen Erkrankungen. Hypochondrie (C), somatoforme Funktionsstörung (D) und GAS (E) haben keine vergleichbar hohe Letalität.',
  ),
  Question(
    id: 43,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zur Depression treffen am ehesten zu? (Wählen Sie zwei Antworten)',
    options: [
      'Inhaltliche Denkstörungen treten bei depressiven Störungen nicht auf',
      'Bei einer akuten schweren depressiven Episode führt eine Krankschreibung in der Regel zu einer deutlichen Verbesserung der Antriebshemmung',
      'Der Unterschied zwischen depressiver Episode und Dysthymie liegt im Wesentlichen im Schweregrad und zeitlichen Verlauf',
      'Ohne Behandlung folgt auf eine depressive Episode meist eine Manie',
      'Medikamente können Depressionen auslösen',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Depressive Episode und Dysthymie unterscheiden sich in Schweregrad (Episode schwerer) und Verlauf (Dysthymie chronisch, aber leichter). Bestimmte Medikamente (z.B. Betablocker, Kortikosteroide, Interferone, Kontrazeptiva) können Depressionen auslösen. A ist falsch: Inhaltliche Denkstörungen (z.B. Schuld-, Verarmungs-, nihilistischer Wahn) kommen vor. B ist falsch: Krankschreibung allein verbessert keine Antriebshemmung. D ist falsch: Depression führt nicht zwangsläufig zu Manie.',
  ),
  Question(
    id: 44,
    exam: 'Oktober 2022',
    q: 'Abwehrmechanismen im Sinne der Psychoanalyse sind:\n1. Projektion\n2. Regression\n3. Amnesie\n4. Identifikation\n5. Perseveration',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 4 sind richtig. Projektion (Zuschreibung eigener unerwünschter Eigenschaften auf andere), Regression (Rückfall auf eine frühere Entwicklungsstufe) und Identifikation (Übernahme von Eigenschaften einer anderen Person) sind psychoanalytische Abwehrmechanismen. Aussage 3 ist falsch: Amnesie ist eine Gedächtnisstörung, kein Abwehrmechanismus (Verdrängung wäre der entsprechende Mechanismus). Aussage 5 ist falsch: Perseveration ist eine formale Denkstörung.',
  ),
  Question(
    id: 45,
    exam: 'Oktober 2022',
    q: 'Wann sollte ein Therapeut am ehesten von der Anwendung der kognitiven Umstrukturierung absehen? (Wählen Sie zwei Antworten)',
    options: [
      'Dem Patienten ist es trotz therapeutischer Unterstützung unmöglich, Gedanken zu benennen',
      'Es ist motivierende Gesprächsführung erforderlich, damit sich der Patient zum kognitiven Arbeiten bereit erklärt',
      'Bei dem Patienten besteht ein Mindestmaß an Einsicht in kognitive Prozesse',
      'Der Patient leidet an Zwangsgedanken, die er selbst als sinnlos erlebt',
      'Der Patient kommt nach einem abgeklungenen psychotischen Zustand zur Behandlung',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Von kognitiver Umstrukturierung sollte abgesehen werden, wenn der Patient nicht in der Lage ist, Gedanken zu identifizieren und zu benennen (Grundvoraussetzung fehlt). Bei Zwangsgedanken, die als sinnlos erlebt werden (Ich-Dystonie), ist kognitive Umstrukturierung weniger sinnvoll – hier ist Exposition mit Reaktionsverhinderung indiziert. B ist kein Grund abzusehen. C spricht gerade für die Anwendung. E ist ebenfalls kein automatischer Ausschlussgrund.',
  ),
  Question(
    id: 46,
    exam: 'Oktober 2022',
    q: 'Kognitive Verhaltenstherapie mit einem Konfrontationsverfahren ist in der Regel vorrangige Behandlungsmethode bei:',
    options: ['Alkoholdelir', 'Spezifischer (isolierter) Phobie', 'Rett-Syndrom', 'Manie', 'Katatoner Schizophrenie'],
    correct: 1,
    explanation:
        'B ist richtig: Die spezifische (isolierte) Phobie ist die Hauptindikation für kognitive VT mit Konfrontationsverfahren (Exposition). Durch systematische Konfrontation mit dem gefürchteten Objekt/Situation findet Habituation statt. A (Delir), D (Manie) und E (katatone Schizophrenie) erfordern primär medikamentöse Behandlung. C (Rett-Syndrom) ist eine tiefgreifende Entwicklungsstörung, die nicht primär mit Konfrontation behandelt wird.',
  ),
  Question(
    id: 47,
    exam: 'Oktober 2022',
    q: 'Welche Aussage zu den diagnostischen Kriterien der schizoiden Persönlichkeitsstörung (nach ICD-10) trifft zu?',
    options: [
      'Eigene Bedürfnisse werden den Bedürfnissen anderer untergeordnet',
      'Es besteht eine emotionale Kühle, Distanziertheit oder flache Affektivität',
      'Es besteht eine niedrige Frustrationstoleranz',
      'Es zeigt sich ein übertriebener Ausdruck an Gefühlen',
      'Soziale Konventionen werden übermäßig stark befolgt',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Die schizoide Persönlichkeitsstörung ist durch emotionale Kühle, Distanziertheit und flache Affektivität gekennzeichnet. A beschreibt die dependente PS. C beschreibt die dissoziale PS. D beschreibt die histrionische PS. E passt zu keiner spezifischen PS und widerspricht dem individualistischen Charakter der schizoiden PS.',
  ),
  Question(
    id: 48,
    exam: 'Oktober 2022',
    q: 'Eine 65-jährige Patientin mit somatoformer Funktionsstörung des unteren Verdauungssystems (Colon irritabile). Welche Beschwerden sind ein Hinweis auf ein Dickdarmkarzinom? (Wählen Sie zwei Antworten)',
    options: ['Völlegefühl', 'Hörbare Darmgeräusche', 'Blähungen', 'Blutbeimischung zum Stuhl', 'Gewichtsverlust'],
    correct: [3, 4],
    explanation:
        'D und E sind richtig. Blut im Stuhl und ungewollter Gewichtsverlust sind Alarmsymptome (Red Flags), die auf ein Dickdarmkarzinom hinweisen und eine sofortige somatische Abklärung erfordern. Völlegefühl (A), hörbare Darmgeräusche (B) und Blähungen (C) sind unspezifische Symptome, die auch beim Reizdarmsyndrom vorkommen.',
  ),
  Question(
    id: 49,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zur Anpassungsstörung (nach ICD-10) treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Es treten häufig Zwangssymptome auf',
      'Die Symptome halten meist nicht länger als 6 Monate an',
      'Bei Jugendlichen kann dissoziales oder aggressives Verhalten auftreten',
      'Insbesondere bei älteren Patienten kann eine Wahnsymptomatik auftreten',
      'Es besteht immer eine psychosoziale Belastung von katastrophalem Ausmaß',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Die Anpassungsstörung dauert nach ICD-10 in der Regel nicht länger als 6 Monate (außer bei der längeren depressiven Reaktion). Bei Jugendlichen kann sie sich durch dissoziales oder aggressives Verhalten manifestieren. A ist falsch: Zwangssymptome sind nicht typisch. D ist falsch: Wahnsymptomatik gehört nicht zur Anpassungsstörung. E ist falsch: Die Belastung muss nicht katastrophal sein – das wäre eher bei PTBS der Fall.',
  ),
  Question(
    id: 50,
    exam: 'Oktober 2022',
    q: 'Welche Aussage zu Abhängigkeitserkrankungen trifft zu?',
    options: [
      'Abhängigkeiten sind nur bei Substanzen möglich',
      'Hauptkriterium der Alkoholabhängigkeit ist eine Trinkmenge von mindestens 24g täglich (Männer) bzw. 12g (Frauen)',
      'Polytoxikomanie bezeichnet den Missbrauch einer Substanz über viele Monate',
      'Kontrollverlust bedeutet, über sein Leben die Kontrolle zu verlieren',
      'Die Diagnose eines schädlichen Gebrauchs erfordert eine Schädigung der psychischen oder physischen Gesundheit des Betroffenen',
    ],
    correct: 4,
    explanation:
        'E ist richtig: Nach ICD-10 ist ein schädlicher Gebrauch (F1x.1) definiert durch ein Konsummuster, das zu einer Schädigung der psychischen oder physischen Gesundheit führt. A ist falsch: Auch Verhaltensabhängigkeiten (z.B. pathologisches Spielen) existieren. B ist falsch: Die Diagnose richtet sich nach ICD-Kriterien, nicht nach Trinkmengen. C ist falsch: Polytoxikomanie bezeichnet den gleichzeitigen Missbrauch mehrerer Substanzen. D ist falsch: Kontrollverlust bezieht sich auf die Unfähigkeit, den Konsum zu steuern.',
  ),
  Question(
    id: 51,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zur Bulimia nervosa (nach ICD-10) treffen am ehesten zu? (Wählen Sie zwei Antworten)',
    options: [
      'Es ist mit der Diagnose vereinbar, wenn jemand seinen Essanfall plant und gezielt Nahrungsmittel einkauft',
      'Charakteristisch ist das wiederholte Hochwürgen der Nahrung mit nochmaligem Kauen und Schlucken',
      'Bei Jugendlichen mit Bulimia nervosa treten keine Elektrolytstörungen auf',
      'Kognitive Verhaltenstherapie (KVT) ist die Therapie der ersten Wahl',
      'Gegen die bulimische Störung spricht ein normales Körpergewicht',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Essanfälle bei Bulimie können auch geplant sein – das schließt die Diagnose nicht aus. KVT ist die evidenzbasierte Erstlinientherapie bei Bulimia nervosa. B ist falsch: Das beschreibt die Ruminationsstörung (Wiederkäuen). C ist falsch: Elektrolytstörungen (v.a. Hypokaliämie) sind gerade eine gefährliche Folge des Erbrechens. E ist falsch: Normalgewicht ist bei Bulimie typisch und spricht nicht dagegen.',
  ),
  Question(
    id: 52,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zum pathologischen Spielen (nach ICD-10) treffen am ehesten zu? (Wählen Sie zwei Antworten)',
    options: [
      'Jede Art von Glücksspiel hat das gleiche Gefährdungspotenzial',
      'Als Begleiterkrankung tritt häufig Substanzmissbrauch auf',
      'Pathologisches Spielen ist definiert als exzessives Spielen manischer Patienten',
      'Die Wirksamkeit von Psychotherapie ist bisher noch unzureichend belegt',
      'Wichtig für die Diagnosestellung ist das Vorliegen eines Kontrollverlustes über das Spielverhalten',
    ],
    correct: [1, 4],
    explanation:
        'B und E sind richtig. Substanzmissbrauch ist eine häufige Komorbidität beim pathologischen Spielen. Kontrollverlust über das Spielverhalten ist ein zentrales diagnostisches Kriterium. A ist falsch: Verschiedene Glücksspielformen haben unterschiedliches Gefährdungspotenzial (z.B. Automatenspiel höher). C ist falsch: Pathologisches Spielen ist eine eigenständige Störung, nicht nur ein Symptom der Manie. D ist falsch: Die Wirksamkeit von Psychotherapie (insbes. KVT) ist belegt.',
  ),
  Question(
    id: 53,
    exam: 'Oktober 2022',
    q: 'In der Verhaltenstherapie wird die Technik der Löschung (Extinktion) eingesetzt. Welche Aussage trifft am ehesten zu?',
    options: [
      'Verhaltenslöschung gelingt am schnellsten und dauerhaftesten, wenn die bisherige Verstärkung unregelmäßig und selten erfolgte',
      'Verstärker, die ein Verhalten aufrechterhalten, werden bei der Löschung identifiziert und dann entfernt',
      'Verhalten, das unter gleichmäßigen Bedingungen kontinuierlich verstärkt wurde, kann nicht gelöscht werden',
      'Löschung ist dann indiziert, wenn die Häufigkeit eines Verhaltens gesteigert werden soll',
      'Die Technik der Löschung führt in der Regel zu einem sehr schnellen Abbau des Verhaltens',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Bei der Löschung (Extinktion) werden die Verstärker, die das unerwünschte Verhalten aufrechterhalten, identifiziert und dann entfernt bzw. nicht mehr dargeboten. A ist falsch: Intermittierend verstärktes Verhalten ist besonders löschungsresistent. C ist falsch: Auch kontinuierlich verstärktes Verhalten kann gelöscht werden (sogar leichter als intermittierend verstärktes). D ist falsch: Löschung dient dem Abbau, nicht der Steigerung von Verhalten. E ist falsch: Löschung verläuft oft langsam und kann zunächst zu einem Löschungstrotz führen.',
  ),
  Question(
    id: 54,
    exam: 'Oktober 2022',
    q: 'Symptome der Katatonie sind:\n1. Spastik der Extremitäten\n2. Sprachstereotypien\n3. Mutismus\n4. Psychomotorische Erregung\n5. Negativismus',
    options: [
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. Katatone Symptome umfassen: Sprachstereotypien (stereotyp wiederholte Äußerungen), Mutismus (Schweigen), psychomotorische Erregung und Negativismus (aktive oder passive Verweigerung von Aufforderungen). Aussage 1 ist falsch: Spastik ist ein neurologisches Symptom (z.B. bei ZNS-Schädigung), kein katatones Symptom. Katatonie zeigt eher wächserne Biegsamkeit (Flexibilitas cerea) oder Katalepsie.',
  ),
  Question(
    id: 55,
    exam: 'Oktober 2022',
    q: 'Eine Patientin nimmt wegen Depression einen SSRI ein. Bei welcher zusätzlichen Selbstmedikation muss vor allem mit erhöhtem Auftreten von Nebenwirkungen gerechnet werden?',
    options: ['Baldrian', 'Hopfen', 'Jod (Strumaprophylaxe)', 'Johanniskraut', 'Lavendel'],
    correct: 3,
    explanation:
        'D ist richtig: Johanniskraut induziert CYP-Enzyme und hemmt die Serotonin-Wiederaufnahme. In Kombination mit einem SSRI besteht die Gefahr eines Serotonin-Syndroms (lebensbedrohliche Überaktivierung des serotonergen Systems). Symptome sind u.a. Unruhe, Tremor, Hyperthermie und Krampfanfälle. Baldrian (A), Hopfen (B), Jod (C) und Lavendel (E) zeigen keine vergleichbar relevanten Wechselwirkungen mit SSRI.',
  ),
  Question(
    id: 56,
    exam: 'Oktober 2022',
    q: 'Welche Aussagen zur Demenz bei Alzheimer-Krankheit treffen zu?\n1. Die Erkrankung entwickelt sich als unmittelbare Folge von Gefäßveränderungen\n2. Die Alzheimer-Demenz ist nach der alkoholbedingten Demenz die zweithäufigste\n3. Die Ersterkrankung entwickelt sich meist schleichend mit sich kontinuierlich verschlechternder Symptomatik\n4. Wahnideen und Halluzinationen treten nicht auf\n5. Bei prämorbid hohem intellektuellen Leistungsniveau treten nur leichtere Demenzsymptome auf',
    options: [
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur Aussage 3 ist richtig: Die Alzheimer-Demenz beginnt schleichend und verschlechtert sich kontinuierlich über Jahre. Aussage 1 ist falsch: Gefäßveränderungen sind Ursache der vaskulären Demenz, nicht der Alzheimer-Demenz. Aussage 2 ist falsch: Alzheimer ist die häufigste Demenzform überhaupt (ca. 60-70%), nicht die zweithäufigste. Aussage 4 ist falsch: Wahnideen und Halluzinationen können im Verlauf auftreten. Aussage 5 ist falsch: Auch bei hohem prämorbiden Niveau kann eine schwere Demenz entstehen (die kognitive Reserve kann den Beginn verzögern, aber die Schwere nicht verhindern).',
  ),
];
