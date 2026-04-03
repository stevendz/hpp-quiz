import '../models/question.dart';

const List<Question> questions2025 = [
  Question(
    id: 1,
    exam: 'März 2025',
    q: 'Welche Aussagen zum Thema Alkoholkonsum und dessen Missbrauch treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Zu den Symptomen einer Alkoholintoxikation gehören unter anderem Atemdepression und Unterkühlung.',
      'Die Diagnose einer Alkoholintoxikation ist auch bei einem Blutalkoholspiegel von unter 1,0 Promille möglich.',
      'Der Konsum von 3 oder mehreren Gläsern eines alkoholischen Getränks definiert das sogenannte Binge-Drinking bzw. Rauschtrinken.',
      'Ein riskanter Gebrauch ist nicht definiert über die Menge des konsumierten Alkohols.',
      'Ein Standardglas in Deutschland entspricht 500 ml Bier bzw. 40 g reinem Alkohol.',
    ],
    correct: [0, 1],
    explanation:
        'A ist richtig: Atemdepression und Unterkühlung (Hypothermie) sind typische Symptome einer schweren Alkoholintoxikation. B ist richtig: Eine Alkoholintoxikation kann auch unter 1,0 Promille diagnostiziert werden, da die individuelle Toleranz variiert. C ist falsch: Binge-Drinking ist definiert als Konsum von 5+ Standardgläsern (Männer) bzw. 4+ (Frauen) bei einer Gelegenheit. D ist falsch: Riskanter Gebrauch ist sehr wohl über die Menge definiert (>24g/Tag Männer, >12g/Tag Frauen). E ist falsch: Ein Standardglas entspricht ca. 200 ml Bier bzw. ca. 10-12 g reinem Alkohol.',
  ),
  Question(
    id: 2,
    exam: 'März 2025',
    q: 'Welche der folgenden Arten von Bewusstseinsstörungen gehören zu den quantitativen Bewusstseinsstörungen?\n1. Sopor\n2. Koma\n3. Illusionäre Verkennung\n4. Bewusstseinseinengung\n5. Bewusstseinsverschiebung',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        'Quantitative Bewusstseinsstörungen betreffen die Wachheit (Vigilanz) und umfassen: Benommenheit, Somnolenz, Sopor und Koma. Illusionäre Verkennung ist eine Wahrnehmungsstörung. Bewusstseinseinengung und Bewusstseinsverschiebung gehören zu den qualitativen Bewusstseinsstörungen.',
  ),
  Question(
    id: 3,
    exam: 'März 2025',
    q: 'Eine verzweifelte Mutter bittet Sie um die Behandlung ihres 9-jährigen Sohnes mit Trennungsängsten und depressiven Symptomen seit der elterlichen Scheidung. Ein gemeinsames Sorgerecht beider Elternteile besteht fort. Welche Aussage trifft zu?',
    options: [
      'Aufgrund des hohen Leidendrucks der Mutter stimmen Sie der Behandlung zu. Die Einwilligung der Mutter als anwesende Sorgeberechtigte ist ausreichend.',
      'Aufgrund des hohen Leidensdrucks des Sohnes stimmen Sie der Behandlung zu. Die Einwilligung der Mutter als anwesende Sorgeberechtigte ist ausreichend.',
      'Sie lehnen die Behandlung ab, da der Kindsvater nicht der Behandlung zugestimmt hat und beide sorgeberechtigte Elternteile einer Behandlung zustimmen müssen.',
      'Sie sprechen mit dem Jungen alleine und attestieren die Einsicht- und Geschäftsfähigkeit des Jungen, daher darf er eigenständig einen Behandlungsvertrag abschließen.',
      'Mit einer Bescheinigung der Schule über das neu aufgetretene Schulvermeidungsverhalten stimmen Sie einer Behandlung zu.',
    ],
    correct: 2,
    explanation:
        'Bei gemeinsamem Sorgerecht müssen beide Elternteile einer Behandlung des Kindes zustimmen. Ein 9-jähriges Kind ist nicht geschäftsfähig und kann keinen eigenen Behandlungsvertrag abschließen. Eine Schulbescheinigung ersetzt nicht die Einwilligung beider Sorgeberechtigten.',
  ),
  Question(
    id: 4,
    exam: 'März 2025',
    q: 'Welche der folgenden Substanzen verursachen keine körperliche Abhängigkeit? (Wählen Sie zwei Antworten)',
    options: ['Opiate', 'Benzodiazepine', 'LSD (Lysergsäurediethylamid)', 'Nikotin', 'Ecstasy'],
    correct: [2, 4],
    explanation:
        'LSD und Ecstasy (MDMA) verursachen keine körperliche Abhängigkeit, sondern allenfalls eine psychische. Opiate, Benzodiazepine und Nikotin hingegen führen zu einer ausgeprägten körperlichen Abhängigkeit mit Entzugssymptomatik.',
  ),
  Question(
    id: 5,
    exam: 'März 2025',
    q: 'Welche der folgenden medizinischen Begrifflichkeiten sind korrekt zugeordnet?\n1. Akinese – Bewegungsarmut\n2. Mikrografie – Störung der aufrechten Körperhaltung\n3. Anosmie – Störung des Gedächtnisses bis hin zum Gedächtnisverlust\n4. Rigor – Lähmung der Muskulatur\n5. Ruhetremor – Zittern in Ruhe',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '1. Richtig: Akinese bedeutet Bewegungsarmut/-losigkeit. 2. Falsch: Mikrografie bezeichnet ein verkleinertes Schriftbild (typisch bei Parkinson). 3. Falsch: Anosmie ist der Verlust des Geruchssinns; Gedächtnisverlust wäre Amnesie. 4. Falsch: Rigor ist eine Muskelsteifigkeit (erhöhter Muskeltonus), keine Lähmung. 5. Richtig: Ruhetremor ist Zittern in Ruhe.',
  ),
  Question(
    id: 6,
    exam: 'März 2025',
    q: 'Welche der folgenden Aussagen treffen zu? In der Verhaltenstherapie …\n1. sind experimentelle Befunde zur klassischen und operanten Konditionierung eine wichtige Grundlage.\n2. Gilt das Prinzip der Konditionierung als veraltet.\n3. Bezeichnet operante Konditionierung einen Lernprozess, bei dem die Auftretenswahrscheinlichkeit durch Konsequenzen erhöht oder erniedrigt wird.\n4. Ist Bestrafung mit negativer Verstärkung gleichzusetzen.\n5. Kommen Verstärkerpläne zum Aufbau neuen Verhaltens zum Einsatz.',
    options: [
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 3 und 5 sind richtig. Aussage 2 ist falsch: Konditionierung ist keineswegs veraltet, sondern weiterhin zentral. Aussage 4 ist falsch: Bestrafung und negative Verstärkung sind unterschiedliche Konzepte – negative Verstärkung erhöht Verhalten durch Wegnahme eines aversiven Reizes, Bestrafung reduziert Verhalten.',
  ),
  Question(
    id: 7,
    exam: 'März 2025',
    q: 'Ein 16-jähriger berichtet von wiederkehrenden Gedanken über den Tod, z.B. an einer tödlichen Krankheit leiden zu wollen oder morgens nicht mehr aufzuwachen. Was tun Sie?',
    options: [
      'Sie vermeiden, weiter über die Gedanken zu sprechen, um den jungen Mann nicht in den Suizid zu treiben.',
      'Sie rufen das Gesundheitsamt oder die Polizei an, um eine sofortige Unterbringung zu bewirken.',
      'Sie beenden die Therapie unverzüglich, da Sie keine suizidalen Personen behandeln dürfen.',
      'Sie besprechen mit dem Patienten das Vorgehen im Falle des Auftretens suizidaler Impulse.',
      'Sie erklären der Mutter, dass sie sich keine Sorgen machen muss, da nur eine passive Suizidalität vorliegt.',
    ],
    correct: 3,
    explanation:
        'Das offene Ansprechen von Suizidalität und die Erarbeitung eines Notfallplans ist das richtige Vorgehen. Das Ansprechen von Suizidgedanken erhöht nicht das Suizidrisiko (A falsch). Eine sofortige Unterbringung ist bei passiver Suizidalität nicht angemessen (B falsch). Man darf suizidale Personen behandeln (C falsch). Passive Suizidalität darf nicht bagatellisiert werden (E falsch).',
  ),
  Question(
    id: 8,
    exam: 'März 2025',
    q: 'Welche Aussagen sind richtig?\n1. Multiple Sklerose ist die häufigste chronisch-entzündliche Autoimmunerkrankung des ZNS.\n2. Langfristige Folge eines SHT kann eine Demenz sein.\n3. Bei M. Parkinson kann es schon anfangs zu Angst, Depression und Affektlabilität kommen.\n4. Behandlungsbedürftige Migräne tritt am häufigsten bei Frauen nach der Menopause auf.\n5. Epilepsiepatienten sollten auf ausgeglichene Lebensweise hingewiesen werden.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        'Aussagen 1, 2, 3 und 5 sind richtig. Aussage 4 ist falsch: Migräne tritt am häufigsten bei Frauen im gebärfähigen Alter auf und bessert sich häufig nach der Menopause durch den Östrogenabfall.',
  ),
  Question(
    id: 9,
    exam: 'März 2025',
    q: 'Welche der folgenden Kriterien sprechen für eine Binge-Eating-Störung?\n1. Neigung zu Übergewicht\n2. Kontrollverlust über die Nahrungsmenge während eines Essanfalls\n3. Essen mit Genuss\n4. Typischerweise Einsatz von gewichtsregulierenden Maßnahmen\n5. Schuldgefühle nach dem übermäßigen Essen',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 5 sind richtig. Bei der Binge-Eating-Störung besteht Kontrollverlust mit nachfolgenden Schuldgefühlen und häufig Übergewicht. Aussage 3 ist falsch: Essen erfolgt nicht mit Genuss, sondern hastig und oft allein aus Scham. Aussage 4 ist falsch: Im Gegensatz zur Bulimie werden typischerweise keine gewichtsregulierenden Gegenmaßnahmen (Erbrechen, Laxantien etc.) eingesetzt.',
  ),
  Question(
    id: 10,
    exam: 'März 2025',
    q: 'Welche der folgenden Merkmale müssen zur Diagnosestellung des Asperger-Autismus erfüllt sein? (Wählen Sie zwei Antworten)',
    options: [
      'Geistige Behinderung',
      'Manifestation vor Vollendung des dritten Lebensjahres',
      'Sprachentwicklungsrückstand',
      'Stereotype, repetitive Verhaltensweisen oder Interessen',
      'Störung der sozialen Interaktion',
    ],
    correct: [3, 4],
    explanation:
        'Beim Asperger-Syndrom müssen eine qualitative Beeinträchtigung der sozialen Interaktion und stereotype/repetitive Verhaltensweisen vorliegen. Im Unterschied zum frühkindlichen Autismus liegt keine geistige Behinderung (A), keine signifikante Sprachentwicklungsverzögerung (C) vor, und eine Manifestation vor dem 3. Lebensjahr (B) ist kein Kriterium.',
  ),
  Question(
    id: 11,
    exam: 'März 2025',
    q: 'Was beschreibt der Begriff \'Depersonalisation\'?',
    options: [
      'Der Abwehrmechanismus der wiederkehrenden Orientierung im Außen, z.B. um eigene unangenehme Empfindungen zu überspielen.',
      'Die wahnhafte Fehlinterpretation einer realen Sinneswahrnehmung im Rahmen eines Rauschzustandes.',
      'Die abnorme oder verfremdete Wahrnehmung von anderen Personen und deren Persönlichkeit.',
      'Das Gefühl, vom eigenen Körper oder von eigenen Gedanken losgelöst zu sein.',
      'Die Reduzierung der Gedanken auf wenige Themen aufgrund mangelnder Repräsentation.',
    ],
    correct: 3,
    explanation:
        'Depersonalisation bezeichnet das Gefühl der Entfremdung vom eigenen Ich – man fühlt sich losgelöst vom eigenen Körper, den eigenen Gedanken oder Gefühlen. Die Wahrnehmung anderer Personen als fremd/unwirklich wäre Derealisation (C beschreibt eher Derealisation).',
  ),
  Question(
    id: 12,
    exam: 'März 2025',
    q: 'Welche Aussagen treffen in Bezug auf ADHS NICHT zu? (Wählen Sie zwei Antworten)',
    options: [
      'Etwa 2 bis 6 Prozent aller Kinder und Jugendlichen in Deutschland leiden an ADHS.',
      'Zu den Hauptsymptomen gehören Ich-Störungen.',
      'Die Leitlinien erlauben die Stellung der Diagnose nur vor dem 18. Lebensjahr.',
      'Betroffene haben ein erhöhtes Unfallrisiko.',
      'Die Symptomatik muss in verschiedenen Lebensbereichen auftreten und beeinträchtigen.',
    ],
    correct: [1, 2],
    explanation:
        'B ist falsch: Ich-Störungen gehören nicht zu den ADHS-Symptomen; Hauptsymptome sind Unaufmerksamkeit, Hyperaktivität und Impulsivität. C ist falsch: ADHS kann auch im Erwachsenenalter diagnostiziert werden (Adulte ADHS). A, D und E sind korrekte Aussagen zu ADHS.',
  ),
  Question(
    id: 13,
    exam: 'März 2025',
    q: 'Bei welchen Krankheiten spielt der Einsatz von Entspannungsverfahren im Rahmen eines multimodalen Behandlungsansatzes am ehesten eine entscheidende Rolle? (Wählen Sie zwei Antworten)',
    options: [
      'Schilddrüsenunterfunktion',
      'Essentielle Hypertonie',
      'Asthma bronchiale',
      'Normaldruckhydrozephalus',
      'Akute Psychose',
    ],
    correct: [1, 2],
    explanation:
        'Essentielle Hypertonie und Asthma bronchiale sind klassische psychosomatische Erkrankungen, bei denen Entspannungsverfahren (z.B. PMR, Autogenes Training) eine wichtige Rolle spielen. Bei Schilddrüsenunterfunktion und Normaldruckhydrozephalus sind Entspannungsverfahren nicht zielführend. Bei akuter Psychose sind Entspannungsverfahren kontraindiziert.',
  ),
  Question(
    id: 14,
    exam: 'März 2025',
    q: 'Welche der folgenden Störungen bzw. Symptome werden als ich-synton beschrieben?\n1. Anankastische Persönlichkeitsstörung\n2. Maniforme Episode bei bipolarer Störung\n3. Akustische Halluzinationen bei paranoider Schizophrenie\n4. Zwangshandlungen bei Zwangsstörung\n5. Wahnvorstellungen bei affektiver Störung',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        'Ich-synton bedeutet, dass Symptome als zum Selbst gehörig empfunden werden. 1. Richtig: Persönlichkeitsstörungen sind definitionsgemäß ich-synton. 2. Richtig: In der Manie fühlt sich der Patient großartig. 3. Richtig: Bei Schizophrenie werden Halluzinationen als real empfunden. 4. Falsch: Zwangshandlungen bei Zwangsstörung sind typischerweise ich-dyston. 5. Richtig: Wahn wird als real erlebt.',
  ),
  Question(
    id: 15,
    exam: 'März 2025',
    q: 'Ein Klient mit Neurodermitis kratzt sich wegen Juckreiz, wodurch der Juckreiz kurzzeitig nachlässt, was zu vermehrtem Kratzen führt. Mit welcher lerntheoretischen Begrifflichkeit wird dieser Mechanismus bezeichnet?',
    options: [
      'Stimuluskontrolle',
      'Negative Bestrafung (Entzugsbestrafung)',
      'Negative Verstärkung',
      'Generalisierter Strafreiz',
      'Positive Vermeidung',
    ],
    correct: 2,
    explanation:
        'Negative Verstärkung liegt vor, wenn ein Verhalten (Kratzen) durch die Entfernung eines aversiven Reizes (Juckreiz) verstärkt wird. Das Verhalten nimmt zu, weil es den unangenehmen Zustand reduziert. Dies ist ein klassisches Beispiel für negative Verstärkung in der Lerntheorie.',
  ),
  Question(
    id: 16,
    exam: 'März 2025',
    q: 'Welche Aussagen zum Neurotransmitter Serotonin sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Serotonin kommt im zentralen und peripheren Nervensystem vor.',
      'Mit der Nahrung aufgenommenes Serotonin gelangt innerhalb von 10 Minuten über die Blut-Hirn-Schranke ins ZNS.',
      'Serotonin beeinflusst die Stimmung, die Körpertemperatur, die Schmerzbewertung und den Schlaf-Wach-Rhythmus.',
      'SSRI wirken ausschließlich im ZNS, unerwünschte Wirkungen in der Peripherie treten nicht auf.',
      'L-Serotonin kann als Nahrungsergänzungsmittel zur Behandlung von Schlafstörungen eingesetzt werden.',
    ],
    correct: [0, 2],
    explanation:
        'A ist richtig: Serotonin kommt sowohl im ZNS als auch im peripheren Nervensystem vor (ca. 90% im Darm). C ist richtig: Serotonin beeinflusst Stimmung, Temperatur, Schmerz und Schlaf-Wach-Rhythmus. B ist falsch: Serotonin kann die Blut-Hirn-Schranke nicht passieren. D ist falsch: SSRI wirken auch peripher und verursachen häufig gastrointestinale Nebenwirkungen. E ist falsch: Es gibt kein \'L-Serotonin\' als Nahrungsergänzungsmittel; gemeint wäre L-Tryptophan.',
  ),
  Question(
    id: 17,
    exam: 'März 2025',
    q: 'Welche der nachfolgenden Aussagen sind richtig?\n1. Die Berufsbezeichnung \'Psychotherapeut\' wird durch das PsychThG geregelt; HP-Erlaubnis berechtigt nicht dazu.\n2. Es besteht eine wirtschaftliche Aufklärungspflicht.\n3. Die GebüH regelt verbindlich die Vergütung für Psychotherapie.\n4. Privaten Versicherungen ist die Kostenübernahme untersagt.\n5. HP haben Verschwiegenheitspflicht und Zeugnisverweigerungsrecht in Zivil- und Strafverfahren.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        '1 ist richtig: Nur approbierte Psychotherapeuten dürfen die Berufsbezeichnung führen. 2 ist richtig: Heilpraktiker müssen über die zu erwartenden Kosten aufklären. 3 ist falsch: Die GebüH ist nur eine Orientierungshilfe, nicht verbindlich. 4 ist falsch: Private Versicherungen können HP-Leistungen erstatten. 5 ist falsch: Heilpraktiker haben kein Zeugnisverweigerungsrecht in Strafverfahren (nur Ärzte, Psychotherapeuten u.a. nach §53 StPO).',
  ),
  Question(
    id: 18,
    exam: 'März 2025',
    q: 'Welche der folgenden Begriffe bezeichnen KEINE Störung der Sexualpräferenz? (Wählen Sie zwei Antworten)',
    options: ['Geschlechtsinkongruenz', 'Fetischismus', 'Sadismus', 'Pädophilie', 'Anorgasmie'],
    correct: [0, 4],
    explanation:
        'Geschlechtsinkongruenz (A) ist eine Störung der Geschlechtsidentität, keine Störung der Sexualpräferenz. Anorgasmie (E) ist eine sexuelle Funktionsstörung. Fetischismus (B), Sadismus (C) und Pädophilie (D) sind Störungen der Sexualpräferenz (Paraphilien).',
  ),
  Question(
    id: 19,
    exam: 'März 2025',
    q: 'Wie bezeichnet man in der Psychoanalyse die Fähigkeit des Klienten, einerseits regressive Prozesse in der Beziehung zum Therapeuten zu erleben und sich andererseits davon zu distanzieren?',
    options: [
      '(Therapeutische) Ich-Spaltung',
      'Selbsterfahrung',
      'Transaktionalismus',
      'Gegenübertragung',
      'Empathiefähigkeit',
    ],
    correct: 0,
    explanation:
        'Die therapeutische Ich-Spaltung beschreibt die Fähigkeit des Patienten, sich gleichzeitig auf regressive Prozesse einzulassen (erlebendes Ich) und diese zu reflektieren (beobachtendes Ich). Dies ist eine wichtige Voraussetzung für die psychoanalytische Arbeit.',
  ),
  Question(
    id: 20,
    exam: 'März 2025',
    q: 'Welche Auffälligkeiten sprechen für die Diagnose FASD (Fetale Alkoholspektrum-Störung)? (Wählen Sie zwei Antworten)',
    options: [
      'Hochwuchs',
      'Leichtere Gesichtsanomalien wie z.B. eine schmale Oberlippe und ein glattes Philtrum',
      'Vorzeitige Pubertät (Pubertas praecox)',
      'Übergewicht im Kindesalter',
      'Störung der Exekutivfunktionen',
    ],
    correct: [1, 4],
    explanation:
        'B ist richtig: Typische Gesichtsmerkmale bei FASD sind schmale Oberlippe, glattes Philtrum und kurze Lidspalten. E ist richtig: Störungen der Exekutivfunktionen sind häufige neuropsychologische Folgen. A ist falsch: FASD führt eher zu Minderwuchs. C und D sind keine typischen FASD-Merkmale.',
  ),
  Question(
    id: 21,
    exam: 'März 2025',
    q: 'Welche Aussagen zum Fibromyalgiesyndrom treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Beweisend ist der Nachweis von Rheumafaktoren.',
      'Die Krankheit gehört zu den seltenen Erkrankungen (Orphan Diseases).',
      'Kernsymptome sind chronische Schmerzen, Schlafstörungen bzw. nicht erholsamer Schlaf und Müdigkeit.',
      'Die Krankheit ist einer anhaltenden somatoformen Schmerzstörung gleichzusetzen.',
      'Die Durchführung einer kognitiven Verhaltenstherapie ist sinnvoll.',
    ],
    correct: [2, 4],
    explanation:
        'C ist richtig: Chronische Schmerzen in mehreren Körperregionen, Schlafstörungen und Müdigkeit sind Kernsymptome. E ist richtig: KVT ist ein wirksamer Behandlungsansatz bei Fibromyalgie. A ist falsch: Rheumafaktoren sind nicht typisch. B ist falsch: Fibromyalgie betrifft ca. 2-4% der Bevölkerung. D ist falsch: Fibromyalgie ist nicht mit somatoformer Schmerzstörung gleichzusetzen.',
  ),
  Question(
    id: 22,
    exam: 'März 2025',
    q: 'Welche Aussagen zu familientherapeutischen Maßnahmen sind richtig?\n1. Besserung der Beziehung durch Symptomverminderung des Erkrankten.\n2. Vertikale Perspektive über mehrere Generationen.\n3. Reframing als Methode zur Umdeutung.\n4. Zirkuläre Befragung: Klienten stellen sich gegenseitig Fragen.\n5. Systemische Therapie beinhaltet familientherapeutische Ansätze.',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 3 und 5 sind richtig. Aussage 1 ist falsch: Familientherapie betrachtet das System, nicht nur den Indexpatienten; es geht um die Veränderung der Interaktionsmuster. Aussage 4 ist falsch: Bei der zirkulären Befragung fragt der Therapeut ein Familienmitglied über die Beziehung/das Verhalten anderer – die Klienten befragen sich nicht gegenseitig.',
  ),
  Question(
    id: 23,
    exam: 'März 2025',
    q: 'Welche Aussagen zur bipolaren affektiven Störung sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Bei beiden Polen der Erkrankung können psychotische Symptome auftreten.',
      'Im Zusammenhang mit dieser Störung treten keine psychosomatischen Beschwerden auf.',
      'Die Diagnose einer Persönlichkeitsstörung schließt die Diagnose einer bipolaren Störung aus.',
      'Eine medikamentöse Phasenprophylaxe sollte erwogen werden.',
      'Eine hypomanische Phase ist von Traurigkeit geprägt.',
    ],
    correct: [0, 3],
    explanation:
        'A ist richtig: Sowohl in manischen als auch in depressiven Phasen können psychotische Symptome auftreten. D ist richtig: Phasenprophylaxe (z.B. Lithium, Valproat) ist ein zentraler Bestandteil der Behandlung. B ist falsch: Psychosomatische Beschwerden können auftreten. C ist falsch: Beide Diagnosen können komorbid vorliegen. E ist falsch: Hypomanie ist durch gehobene Stimmung gekennzeichnet.',
  ),
  Question(
    id: 24,
    exam: 'März 2025',
    q: 'Welche Aussage zu formalen Denkstörungen trifft zu?',
    options: [
      'Formale Denkstörungen sind ein typisches Symptom bei Angsterkrankungen.',
      'Ideenflucht findet man häufig bei Erkrankten in einer depressiven Episode.',
      'Verfolgungswahn zählt zu den formalen Denkstörungen.',
      'Formale Denkstörungen treten häufig in manischen Phasen auf.',
      'Formale Denkstörungen können in der Regel nur durch konkrete Nachfrage exploriert werden.',
    ],
    correct: 3,
    explanation:
        'D ist richtig: In manischen Phasen treten häufig formale Denkstörungen wie Ideenflucht, Gedankenrasen und Zerfahrenheit auf. A ist falsch: Angststörungen zeigen eher Grübeln. B ist falsch: Ideenflucht ist typisch für Manie, bei Depression eher Denkhemmung. C ist falsch: Verfolgungswahn ist eine inhaltliche Denkstörung. E ist falsch: Formale Denkstörungen sind oft im Gespräch direkt beobachtbar.',
  ),
  Question(
    id: 25,
    exam: 'März 2025',
    q: 'Bei Hypochondrie findet sich \'Checking-Verhalten\'. Welche Beispiele fallen am ehesten darunter? (Wählen Sie zwei Antworten)',
    options: [
      'Ein Klient mit Angst vor Hautkrebs tastet gerötete Hautstellen wiederholt ab.',
      'Ein Klient mit Angst vor Hodenkrebs vermeidet sexuelle Kontakte.',
      'Ein Klient mit Angst vor Magenkrebs sucht im Internet nach Nahrungsmittelzusammensetzung.',
      'Eine Klientin mit Angst vor Brustkrebs fragt ihre Mitbewohnerin wiederholt nach Rückversicherung.',
      'Eine Klientin mit Angst vor Kehlkopfkrebs schluckt morgens mehrfach zur Überprüfung.',
    ],
    correct: [0, 4],
    explanation:
        'A und E sind Checking-Verhalten: Das wiederholte körperliche Überprüfen (Abtasten, Schlucken zur Funktionsüberprüfung) ist typisches Checking-Verhalten bei Hypochondrie. B ist Vermeidungsverhalten. C ist Informationssuche (Reassurance-Seeking). D ist Rückversicherungsverhalten (Reassurance-Seeking).',
  ),
  Question(
    id: 26,
    exam: 'März 2025',
    q: 'Welche Aussagen zur Behandlungsmethode EMDR treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die Wirkung basiert auf der tiefen Absenkung des Bewusstseins.',
      'Ziel ist die fokussierte Bearbeitung von negativen, dysfunktionalen Kognitionen.',
      'Es wird zur Verarbeitung von traumatischen Erlebnissen eingesetzt.',
      'Die Wirkung wird auf die Stimulation von Hirnstamm und Kleinhirn zurückgeführt.',
      'Es ist eine hochwirksame Therapiemethode ohne Risiken und Nebenwirkungen.',
    ],
    correct: [1, 2],
    explanation:
        'B ist richtig: EMDR zielt auf die Verarbeitung und Umstrukturierung dysfunktionaler Kognitionen ab. C ist richtig: EMDR ist eine evidenzbasierte Methode zur Traumaverarbeitung. A ist falsch: Der Patient bleibt wach und bewusst. D ist falsch: Die Wirkung wird auf bilaterale Stimulation und adaptive Informationsverarbeitung zurückgeführt. E ist falsch: Auch EMDR kann Nebenwirkungen haben (z.B. emotionale Belastung).',
  ),
  Question(
    id: 27,
    exam: 'März 2025',
    q: 'Welche Aussagen sind FALSCH? (Wählen Sie zwei Antworten)',
    options: [
      'Die Hypophyse ist Teil der Stressachse.',
      'Im Rahmen einer Kleinhirnschädigung kann eine Ataxie auftreten.',
      'Im Stammhirn liegt das Regulationszentrum für Atmung und Kreislauf.',
      'Das Gehirn besitzt Schmerzrezeptoren.',
      'Im limbischen System, speziell im Hippocampus, wird die Feinmotorik gesteuert.',
    ],
    correct: [3, 4],
    explanation:
        'D ist falsch: Das Gehirngewebe selbst besitzt keine Schmerzrezeptoren (Nozizeptoren). E ist falsch: Der Hippocampus ist für Gedächtnisbildung zuständig, nicht für Feinmotorik; Feinmotorik wird vom Kleinhirn gesteuert. A, B und C sind korrekte Aussagen.',
  ),
  Question(
    id: 28,
    exam: 'März 2025',
    q: 'Welche Verhaltensweisen können Sie einer Frau mit Einschlafstörungen zur Schlafhygiene empfehlen?\n1. Eine Stunde vorher intensiv Sport treiben.\n2. Eine Uhr im Schlafzimmer aufstellen.\n3. Keinen Mittagsschlaf halten.\n4. Immer zur gleichen Zeit aufstehen.\n5. Nachts im Schlafzimmer bleiben, auch wenn nicht müde.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        '3 und 4 sind richtig. Kein Mittagsschlaf erhöht den Schlafdruck, und ein regelmäßiger Aufstehzeitpunkt stabilisiert den zirkadianen Rhythmus. 1 ist falsch: Intensiver Sport kurz vor dem Schlafen ist kontraproduktiv. 2 ist falsch: Eine sichtbare Uhr fördert das Grübeln über die Schlafdauer. 5 ist falsch: Bei Schlaflosigkeit soll man aufstehen und erst bei Müdigkeit zurückkehren (Stimuluskontrolle).',
  ),
  Question(
    id: 29,
    exam: 'Oktober 2025',
    q: 'Patientin mit rezidivierenden Depressionen hat seit Wochen Herzrasen und Schweißausbrüche. Welche Aussagen treffen zu?\n1. Somatische Abklärung ist bei klarer psychischer Zuordnung entbehrlich.\n2. Differentialdiagnosen sind u.a. Phäochromozytom und Hyperthyreose.\n3. Schweißausbrüche, Herzrasen, Verspannungen können bei GAS auftreten.\n4. Ziel sollte das Erkennen und Vermeiden angstauslösender Situationen sein.\n5. Exposition in sensu eignet sich für die GAS-Therapie.',
    options: [
      'Nur die Aussage 5 ist richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3 und 5 sind richtig. Aussage 1 ist falsch: Eine somatische Abklärung ist immer notwendig, auch bei bekannter psychischer Erkrankung. Aussage 4 ist falsch: Vermeidung ist kein Therapieziel – im Gegenteil soll der Umgang mit Angst erlernt werden. Exposition in sensu (Sorgenexposition) ist bei GAS ein etabliertes Verfahren.',
  ),
  Question(
    id: 30,
    exam: 'Oktober 2025',
    q: 'Welche Bereiche sollten in einem Selbstbeurteilungsbogen zur Einschätzung des Verlaufs und Schweregrads einer Depression abgebildet werden?\n1. Kognitive Symptome (z.B. Konzentrationsschwierigkeiten)\n2. Emotionale Symptome (z.B. Hoffnungslosigkeit)\n3. Physische Symptome (z.B. Schlafveränderungen)\n4. Selbstwertgefühl (z.B. Selbstablehnung)\n5. Wahnerleben (z.B. Schuldwahn)',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 4 sind richtig und werden in gängigen Selbstbeurteilungsbögen wie dem BDI-II abgebildet. Aussage 5 ist falsch: Wahnerleben kann nicht zuverlässig durch Selbstbeurteilung erfasst werden, da Betroffene ihren Wahn nicht als solchen erkennen. Wahn erfordert eine Fremdbeurteilung.',
  ),
  Question(
    id: 31,
    exam: 'Oktober 2025',
    q: 'Welche Aussagen treffen auf die bipolare Störung zu? (Wählen Sie zwei Antworten)',
    options: [
      'Personen mit bipolarer Störung sind insgesamt längere Zeit manisch.',
      'Bei manischen Episoden können Beeinträchtigungsideen auftreten.',
      'Bei jeder Depression sollte nach einer vorherigen (hypo-)manischen Episode gefragt werden.',
      'Bipolare Störungen beginnen in der Regel früher als unipolare Depressionen.',
      'Frauen erkranken öfter an einer bipolaren Störung als Männer.',
    ],
    correct: [2, 3],
    explanation:
        'C ist richtig: Bei jeder depressiven Episode sollte nach (hypo-)manischen Phasen gefragt werden, um eine bipolare Störung nicht zu übersehen. D ist richtig: Bipolare Störungen manifestieren sich im Schnitt früher (oft vor dem 25. Lebensjahr). A ist falsch: Depressive Phasen überwiegen zeitlich. B ist falsch: Beeinträchtigungsideen gehören zur Depression, in der Manie eher Größenideen. E ist falsch: Beide Geschlechter sind etwa gleich betroffen.',
  ),
  Question(
    id: 32,
    exam: 'Oktober 2025',
    q: 'Ein 42-jähriger Mann wird in einer fremden Stadt aufgegriffen, kann sich weder an Namen noch Wohnort erinnern, wirkt äußerlich ruhig. Keine organische Ursache. Er war seit Tagen vermisst und hatte ohne erkennbare Absicht seinen Wohnort verlassen. Welche Diagnose trifft am wahrscheinlichsten zu?',
    options: [
      'Multiple Identitätsstörung',
      'Dissoziativer Stupor',
      'Dissoziative Fugue',
      'Trance- und Besessenheitszustand',
      'Dissoziative Amnesie ohne Ortswechsel',
    ],
    correct: 2,
    explanation:
        'Die dissoziative Fugue ist gekennzeichnet durch plötzliches, unerwartetes Wegreisen von zu Hause mit Unfähigkeit, sich an die eigene Vergangenheit zu erinnern, bei äußerlich geordnetem Verhalten. Die Kombination aus Amnesie und Ortswechsel ohne organische Ursache ist typisch für die dissoziative Fugue.',
  ),
  Question(
    id: 33,
    exam: 'Oktober 2025',
    q: 'Ein 35-jähriger Mann schläft tagsüber plötzlich ein, fühlt sich nach kurzem Schlaf erfrischt, erlebt plötzliche Muskelschwäche mit Stürzen, begleitet von lebhaften angstbesetzten Träumen. Sein Vater hat ähnliche Symptome. Um welche Erkrankung handelt es sich?',
    options: ['Absencen', 'Narkolepsie', 'Primäre (nicht-organische) Hypermnesie', 'Schizophrenie', 'Schlafapnoe'],
    correct: 1,
    explanation:
        'Narkolepsie ist gekennzeichnet durch imperative Einschlafattacken, Kataplexie (plötzliche Muskelschwäche), hypnagoge Halluzinationen und Schlafparalyse. Die familiäre Häufung und die Erfrischung nach kurzem Schlaf sind typisch. Absencen sind kurze Bewusstseinsaussetzer bei Epilepsie. Schlafapnoe führt nicht zu Kataplexie.',
  ),
  Question(
    id: 34,
    exam: 'Oktober 2025',
    q: 'Eine Patientin in Behandlung kommt mehrfach zu spät, vergisst Termine und schweigt lange, spricht dann kurz vor Ende wichtige Themen an. Welcher Begriff fasst dieses Verhalten zusammen?',
    options: ['Widerstand', 'Kompartimentalisierung', 'Gegenübertragung', 'Regression', 'Konversion'],
    correct: 0,
    explanation:
        'Widerstand bezeichnet in der Psychoanalyse alle bewussten und unbewussten Verhaltensweisen des Patienten, die den therapeutischen Prozess behindern: Zuspätkommen, Vergessen von Terminen, Schweigen und das Ansprechen wichtiger Themen erst am Ende der Stunde sind klassische Widerstandsphänomene.',
  ),
  Question(
    id: 35,
    exam: 'Oktober 2025',
    q: 'Welche Eigenschaft gehört NICHT zu den Diagnosekriterien der schizoiden Persönlichkeitsstörung?',
    options: [
      'Übermäßige Vorliebe für einzelgängerische Tätigkeiten',
      'Emotionale Kühle, Distanziertheit oder flache Affektivität',
      'Wenig Interesse an sexuellen Erfahrungen mit anderen Menschen',
      'Geringe Frustrationstoleranz mit niedriger Schwelle für aggressives oder gewalttätiges Verhalten',
      'Gleichgültigkeit gegenüber Lob oder Kritik',
    ],
    correct: 3,
    explanation:
        'Geringe Frustrationstoleranz mit aggressivem Verhalten gehört zur dissozial (antisozialen) Persönlichkeitsstörung oder zur emotional instabilen PS, nicht zur schizoiden PS. Die schizoide PS ist durch emotionale Distanz, Einzelgängertum, wenig Interesse an sozialen und sexuellen Kontakten und Gleichgültigkeit gegenüber Lob/Kritik gekennzeichnet.',
  ),
  Question(
    id: 36,
    exam: 'Oktober 2025',
    q: 'Was trifft bei der Enuresis zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die Enuresis nocturna tritt häufiger auf als die Enuresis diurna.',
      'Man unterscheidet zwischen willkürlicher und unwillkürlicher Enuresis.',
      'Enuresis tritt nicht über das 18. Lebensjahr hinaus auf.',
      'Verhaltenstherapeutische Interventionen sollen möglichst vor dem 3. Lebensjahr eingesetzt werden.',
      'Kinderpsychiatrische komorbide Störungen liegen bei der sekundären Enuresis häufiger vor als bei der primären Enuresis.',
    ],
    correct: [0, 4],
    explanation:
        'A ist richtig: Nächtliches Einnässen ist deutlich häufiger als Einnässen am Tag. E ist richtig: Die sekundäre Enuresis (nach mind. 6 Monaten Trockenheit) ist häufiger mit psychischen Komorbiditäten assoziiert. B ist falsch: Man unterscheidet primäre und sekundäre Enuresis. C ist falsch: Enuresis kann auch im Erwachsenenalter auftreten. D ist falsch: Vor dem 5. Lebensjahr ist Einnässen entwicklungsbedingt normal.',
  ),
  Question(
    id: 37,
    exam: 'Oktober 2025',
    q: '15-jährige Patientin mit depressiver Symptomatik, gestörtem Essverhalten und BMI unter 3. Perzentil, keine Gewichtszunahme seit Behandlungsbeginn. Welche Aussagen treffen zu?\n1. Erbrechen/Diuretika können zu metabolischer Alkalose mit Hypokaliämie führen.\n2. Anorexie hat die höchste Letalität unter psychischen Erkrankungen.\n3. Labordiagnostik ist bei begleitender Psychotherapie nicht nötig.\n4. Refeeding-Syndrom ist potenziell lebensbedrohlich.\n5. Antipsychotika zeigen keine Wirkung.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 4 sind richtig. Erbrechen und Diuretika führen zu Elektrolytstörungen (Hypokaliämie). Anorexia nervosa hat mit ca. 5-10% die höchste Mortalitätsrate psychischer Erkrankungen. Das Refeeding-Syndrom ist eine gefährliche Komplikation bei Wiederernährung. 3 ist falsch: Labordiagnostik ist essenziell. 5 ist falsch: Antipsychotika können u.a. bei komorbiden Symptomen eingesetzt werden.',
  ),
  Question(
    id: 38,
    exam: 'Oktober 2025',
    q: 'In welchen Situationen darf oder muss ein HP Psychotherapie seine Schweigepflicht brechen?\n1. Schriftliche Schweigepflichtentbindung durch Patienten für Facharzt.\n2. Patient hat Maserninfektión.\n3. Gericht fordert Zeugenaussage im Strafverfahren.\n4. Klient plant Geiselnahme.\n5. Patient ist akut suizidgefährdet mit konkreter Absicht.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. 1: Schriftliche Entbindung erlaubt Weitergabe. 2: Masern unterliegen der Meldepflicht nach IfSG. 3: HP haben kein Zeugnisverweigerungsrecht im Strafverfahren und müssen aussagen. 4: Geplante schwere Straftaten rechtfertigen die Durchbrechung der Schweigepflicht (§34 StGB, rechtfertigender Notstand). 5: Bei akuter Suizidalität besteht eine Handlungspflicht zum Schutz des Patienten.',
  ),
  Question(
    id: 39,
    exam: 'Oktober 2025',
    q: 'Welche Aussagen zum Nervensystem sind richtig?\n1. Vegetatives und autonomes Nervensystem sind getrennte Systeme.\n2. Sympathikus und Parasympathikus sind Bestandteile des vegetativen NS.\n3. Parasympathikus: Miosis, Verdauung, langsamere Herzfrequenz.\n4. Vegetative Störungen: Schwindel, Herzrasen, Mundtrockenheit, Erbrechen.\n5. Das autonome NS wird ohne Beteiligung des ZNS gesteuert.',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        '2, 3 und 4 sind richtig. Aussage 1 ist falsch: Vegetatives und autonomes Nervensystem sind dasselbe System (Synonyme). Aussage 5 ist falsch: Das autonome NS wird auch vom ZNS (z.B. Hypothalamus) beeinflusst und gesteuert.',
  ),
  Question(
    id: 40,
    exam: 'Oktober 2025',
    q: 'Welche Symptome sind typisch für das idiopathische Parkinson-Syndrom? (Wählen Sie zwei Antworten)',
    options: [
      'Intentionstremor',
      'Rigor',
      'Essenzieller Tremor im Rahmen der Kleinhirndegeneration',
      'Plexusparese',
      'Hypokinese',
    ],
    correct: [1, 4],
    explanation:
        'B (Rigor) und E (Hypokinese) sind richtig. Die Kardinalsymptome des Parkinson-Syndroms sind: Ruhetremor (nicht Intentionstremor!), Rigor (Muskelsteifheit), Hypo-/Akinese (Bewegungsarmut/-losigkeit) und posturale Instabilität. Intentionstremor (A) ist typisch für Kleinhirnläsionen. Essenzieller Tremor (C) ist eine eigenständige Erkrankung. Plexusparese (D) gehört nicht zu Parkinson.',
  ),
  Question(
    id: 41,
    exam: 'Oktober 2025',
    q: 'Ein 6-jähriger Junge hielt in der Dämmerung einen Sitzsack für einen Einbrecher. Wie bezeichnet man diese Sinnestäuschung?',
    options: ['Derealisation', 'Paranoia', 'Wahn', 'Halluzination', 'Illusionäre Verkennung'],
    correct: 4,
    explanation:
        'Eine illusionäre Verkennung ist die Fehldeutung eines real vorhandenen Sinnesreizes – hier wird ein tatsächlich vorhandener Gegenstand (Sitzsack) fälschlich als etwas anderes (Einbrecher) wahrgenommen. Im Gegensatz dazu ist eine Halluzination eine Wahrnehmung ohne realen Reiz. Illusionäre Verkennungen können auch bei gesunden Menschen auftreten, besonders bei schlechten Sichtverhältnissen.',
  ),
  Question(
    id: 42,
    exam: 'Oktober 2025',
    q: 'Welche Begriffe gehören NICHT zu den Stadien der suizidalen Entwicklung nach Pöldinger? (Wählen Sie zwei Antworten)',
    options: [
      'Aggressionsumkehr – Aggressive Tendenzen richten sich zunehmend auf den Betroffenen selbst.',
      'Entschlussphase – Betroffener wirkt ruhig und entspannt (\'Ruhe vor dem Sturm\'), Tunnelblick.',
      'Suizidfantasien – Gedankenwelt rund um den Tod, Suizid als scheinbare Erleichterung.',
      'Ambivalenz – Hin- und Hergerissensein zwischen Leben und Sterben, direkte Suizidankündigungen.',
      'Erwägungsphase – Gedankliche Beschäftigung mit dem Suizid durch belastende Lebensumstände.',
    ],
    correct: [0, 2],
    explanation:
        'Die drei Stadien nach Pöldinger sind: 1. Erwägungsphase (E), 2. Ambivalenzphase (D), 3. Entschlussphase (B). Aggressionsumkehr (A) und Suizidfantasien (C) als eigenständige Stadien gehören nicht zum Pöldinger-Modell, auch wenn sie als Phänomene innerhalb der Stadien auftreten können.',
  ),
  Question(
    id: 43,
    exam: 'Oktober 2025',
    q: 'Welche Aussagen zu Psychotherapieverfahren treffen zu?\n1. Bei CBASP wird positive Verstärkung als Motivierungsstrategie eingesetzt.\n2. CBASP ist auf chronisch depressive Patienten zugeschnitten.\n3. Sorgenkontrollbasierte KVT ist bei GAS wirksam.\n4. KVT mit Exposition und Reaktionsmanagement ist Methode der\n1. Wahl bei Zwangsstörungen.\n5. Bei PTBS-Behandlungsbeginn ist Retraumatisierung durch Exposition notwendig.',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        '2, 3 und 4 sind richtig. CBASP wurde speziell für chronische Depression entwickelt. KVT mit Sorgenkontrolle ist evidenzbasiert für GAS. Exposition mit Reaktionsmanagement ist Goldstandard bei Zwangsstörungen. 1 ist falsch: CBASP nutzt v.a. diszipliniert-persönliches Einlassen und Situationsanalysen. 5 ist falsch: Eine Retraumatisierung ist niemals ein therapeutisches Ziel – zunächst erfolgt Stabilisierung.',
  ),
  Question(
    id: 44,
    exam: 'Oktober 2025',
    q: 'Sie möchten als HP Psychotherapie eine Raucherentwöhnung anbieten. Welche Therapien dürfen Sie (nach Ausbildung) anbieten?\n1. Einzelhypnose\n2. Gruppenhypnose\n3. Medikation (Bupropion, Vareniclin, Cytisin)\n4. Akupunktur\n5. Kognitive Verhaltenstherapie',
    options: [
      'Nur die Aussage 5 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 5 sind richtig. HP Psychotherapie dürfen psychotherapeutische Methoden anwenden: Einzelhypnose, Gruppenhypnose und KVT. Aussage 3 ist falsch: Medikamente verordnen darf nur der HP (Vollzulassung) oder Arzt, nicht der HP Psychotherapie. Aussage 4 ist falsch: Akupunktur ist eine invasive Methode und gehört nicht zum Tätigkeitsbereich des HP Psychotherapie.',
  ),
  Question(
    id: 45,
    exam: 'Oktober 2025',
    q: 'Welche Merkmale sprechen für sich allein bereits für das Vorliegen einer paranoiden Schizophrenie? (Wählen Sie zwei Antworten)',
    options: [
      'Orientierungsstörungen in allen Modalitäten',
      'Ich-Störungen',
      'Störungen der Affektivität',
      'Störung der Impulskontrolle',
      'Inhaltliche und formale Denkstörungen',
    ],
    correct: [1, 4],
    explanation:
        'B (Ich-Störungen) und E (inhaltliche und formale Denkstörungen) sind Erstrangsymptome bzw. charakteristische Merkmale der paranoiden Schizophrenie. Ich-Störungen (Gedankeneingebung, -entzug, -ausbreitung) und Denkstörungen (Wahn, Zerfahrenheit) sind pathognomonisch. Orientierungsstörungen (A) sprechen eher für organische Ursachen. Affektivitätsstörungen (C) und Impulskontrollstörungen (D) sind unspezifisch.',
  ),
  Question(
    id: 46,
    exam: 'Oktober 2025',
    q: 'Welche Substanz verursacht im Rahmen des Konsums eine Miosis?',
    options: ['Amphetamine', 'Opioide/Opiate', 'Kokain', 'Psilocybin', 'Cannabis'],
    correct: 1,
    explanation:
        'Opioide/Opiate verursachen eine Miosis (Pupillenverengung) – sogenannte Stecknadelpupillen sind ein Leitsymptom der Opiatintoxikation. Amphetamine (A), Kokain (C), Psilocybin (D) und Cannabis (E) verursachen hingegen eine Mydriasis (Pupillenerweiterung).',
  ),
  Question(
    id: 47,
    exam: 'Oktober 2025',
    q: 'Die Therapie von Alkohol- und Drogenabhängigkeit lässt sich in vier Phasen einteilen. Welche Phase gehört NICHT dazu?',
    options: [
      'Kontakt- und Motivationsphase',
      'Entgiftungsphase',
      'Entwöhnungsphase',
      'Remissionsphase',
      'Nachsorgephase',
    ],
    correct: 3,
    explanation:
        'Die vier Phasen der Suchttherapie sind: 1. Kontakt- und Motivationsphase, 2. Entgiftungsphase, 3. Entwöhnungsphase, 4. Nachsorgephase. Die Remissionsphase ist kein eigenständiger Therapieabschnitt, sondern beschreibt den Zustand nach erfolgreicher Behandlung.',
  ),
  Question(
    id: 48,
    exam: 'Oktober 2025',
    q: 'Eine übergewichtige Mutter bewundert ihre anorektische Tochter, da sie selbst gerne schlank wäre. Die Hypothese ist, dass die Tochter einen ungelebten Wunsch der Mutter unbewusst erfüllt. Wie nennt man dieses psychoanalytische/systemische Konzept?',
    options: ['Delegation', 'Parentifizierung', 'Elektrakomplex', 'Doppelbindungstheorie', 'Reaktionsbildung'],
    correct: 0,
    explanation:
        'Delegation (nach Stierlin) beschreibt das Phänomen, dass Eltern unbewusst Aufträge, Wünsche oder Vermächtnisse an ihre Kinder weitergeben, die diese dann stellvertretend erfüllen. Parentifizierung (B) ist die Rollenumkehr Kind-Elternteil. Der Elektrakomplex (C) bezieht sich auf die ödipale Phase. Die Doppelbindung (D) beschreibt widersprüchliche Kommunikation.',
  ),
  Question(
    id: 49,
    exam: 'Oktober 2025',
    q: 'Wie kann man Minderjährige geschützt psychiatrisch unterbringen, die nicht freiwillig aufgenommen werden wollen?\n1. Nur bei akuter Eigengefährdung.\n2. Familiengericht muss zustimmen.\n3. Erziehungsberechtigte können nach §1631b BGB beantragen.\n4. Nur mit Einverständnis der Erziehungsberechtigten.\n5. Man kann Minderjährige nicht gegen ihren Willen unterbringen.',
    options: [
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        '2 und 3 sind richtig. Nach §1631b BGB bedarf die Unterbringung eines Minderjährigen der Genehmigung des Familiengerichts, und die Erziehungsberechtigten können den Antrag stellen. 1 ist falsch: Auch Fremdgefährdung kann ein Grund sein. 4 ist falsch: Bei Kindeswohlgefährdung kann auch ohne Einverständnis der Eltern eine Unterbringung erfolgen. 5 ist falsch: Eine Unterbringung gegen den Willen ist möglich.',
  ),
  Question(
    id: 50,
    exam: 'Oktober 2025',
    q: 'Welche Aussagen zu Entspannungsverfahren sind NICHT richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Entspannungsverfahren führen zu verringertem Muskeltonus, Abnahme der Herzfrequenz und peripherer Gefäßerweiterung.',
      'Imaginative Entspannungsverfahren haben sich bei PTBS und Schizophrenie als wirksames Therapiewerkzeug etabliert.',
      'MBSR ist ein autosuggestives Verfahren für Akutsituationen mit standardisierten Schwere- und Wärmesuggestionen.',
      'Eine stark ausgeprägte Hypotonie gilt als Kontraindikation.',
      'Anwendungsbereiche sind u.a. Insomnien, Parasomnien, Ängste und Hypertonie.',
    ],
    correct: [1, 2],
    explanation:
        'B ist falsch: Bei Schizophrenie und akuter PTBS sind Entspannungsverfahren mit Vorsicht einzusetzen und nicht als etabliert zu betrachten. C ist falsch: Die Beschreibung vermischt MBSR (achtsamkeitsbasiert) mit Autogenem Training (Schwere-/Wärmesuggestionen). MBSR ist kein autosuggestives Akutverfahren. A, D und E sind korrekte Aussagen.',
  ),
  Question(
    id: 51,
    exam: 'Oktober 2025',
    q: 'Bei einem Patienten mit schwerem Waschzwang planen Sie Expositionstherapie mit Reaktionsmanagement. Welche Aussagen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die Exposition sollte gezielt oft wiederholt werden, um eine bestmögliche Habituation zu ermöglichen.',
      'Expositionen sind nur bei sichtbaren Zwangshandlungen wirksam und zeigen bei Zwangsgedanken keine signifikanten Effekte.',
      'Expositionen sollten hauptsächlich in-sensu durchgeführt werden, um Effektivität zu steigern.',
      'Bei Zwangsstörungen ist nur massierte Vorgehensweise angeraten, graduierter Ansatz ist nicht zielführend.',
      'Auch extrem aversive und ungewöhnliche Situationen können in die Expositionstherapie einbezogen werden.',
    ],
    correct: [0, 4],
    explanation:
        'A ist richtig: Wiederholte Exposition fördert die Habituation und den Lerneffekt. E ist richtig: Um eine umfassende Angstreduktion zu erreichen, können auch extreme Situationen einbezogen werden. B ist falsch: Exposition ist auch bei Zwangsgedanken wirksam (z.B. kognitive Exposition). C ist falsch: In-vivo-Exposition ist bei Zwangshandlungen besonders wirksam. D ist falsch: Sowohl massierte als auch graduierte Vorgehensweise können wirksam sein.',
  ),
  Question(
    id: 52,
    exam: 'Oktober 2025',
    q: 'Wie bezeichnet man es in der operanten Konditionierung, wenn ein angenehmer Reiz entzogen wird, nachdem ein unerwünschtes Verhalten gezeigt wurde?',
    options: ['Direkte Bestrafung', 'Negative Verstärkung', 'Indirekte Bestrafung', 'Positive Verstärkung', 'Löschung'],
    correct: 2,
    explanation:
        'Indirekte Bestrafung (auch: negative Bestrafung, Bestrafung Typ II, Entzugsbestrafung) bedeutet, dass ein angenehmer Reiz nach unerwünschtem Verhalten entzogen wird, was die Auftretenswahrscheinlichkeit des Verhaltens senkt. Beispiel: Taschengeld streichen nach Fehlverhalten. Direkte Bestrafung (A) wäre das Hinzufügen eines aversiven Reizes.',
  ),
  Question(
    id: 53,
    exam: 'Oktober 2025',
    q: 'Ein Klient zeigt trotz vieler Belastungen starke Selbstwirksamkeit und innere Stärke, betont Freiheit und Selbstbestimmtheit. Durch welche Begriffe werden diese Verhaltensweisen am besten charakterisiert? (Wählen Sie zwei Antworten)',
    options: ['Compliance', 'Kognitive Dissonanz', 'Reaktanz', 'Renitenz', 'Resilienz'],
    correct: [2, 4],
    explanation:
        'Resilienz (E) beschreibt die psychische Widerstandsfähigkeit trotz belastender Umstände und erklärt die innere Stärke des Klienten. Reaktanz (C) beschreibt den Widerstand gegen wahrgenommene Einschränkungen der Freiheit, was seine betonte Selbstbestimmtheit erklärt. Compliance (A) ist Therapietreue. Kognitive Dissonanz (B) beschreibt innere Widersprüche. Renitenz (D) ist allgemeiner Widerstand/Widerspenstigkeit.',
  ),
  Question(
    id: 54,
    exam: 'Oktober 2025',
    q: 'Welche Aussagen zum sekundären Krankheitsgewinn sind korrekt? (Wählen Sie zwei Antworten)',
    options: [
      'Der sekundäre Krankheitsgewinn beschreibt das bewusste Täuschen über Symptome für finanzielle Vorteile.',
      'Im Gegensatz zum primären Krankheitsgewinn bezieht sich der sekundäre auf externe Vorteile durch die Krankheit.',
      'Der sekundäre Krankheitsgewinn ist ein bewusst gesteuertes Verhalten, das vorrangig in der Simulation vorkommt.',
      'Der sekundäre Krankheitsgewinn ist nur bei psychosomatischen Erkrankungen relevant.',
      'Ein sekundärer Krankheitsgewinn liegt vor, wenn eine Person aus ihrer Erkrankung Vorteile zieht, z.B. vermehrte Zuwendung oder Entlastung.',
    ],
    correct: [1, 4],
    explanation:
        'B ist richtig: Der sekundäre Krankheitsgewinn bezieht sich auf äußere Vorteile (Zuwendung, Entlastung), während der primäre Krankheitsgewinn den innerpsychischen Gewinn (z.B. Angstreduktion) meint. E ist richtig: Vermehrte Zuwendung, Schonung oder Entlastung von Pflichten sind typische Beispiele. A ist falsch: Bewusstes Täuschen wäre Simulation. C ist falsch: Sekundärer Krankheitsgewinn ist oft unbewusst. D ist falsch: Er kann bei allen Erkrankungen auftreten.',
  ),
  Question(
    id: 55,
    exam: 'Oktober 2025',
    q: 'Welche Antworten zur PTBS sind richtig?\n1. Intrusionen gehören zu den Diagnosekriterien.\n2. Der Betroffene sucht die Nähe zu erinnernden Situationen.\n3. Es kann zu Depersonalisation oder Derealisation kommen.\n4. Die Diagnose ist erschwert bei Vorliegen einer Depression.\n5. Wichtig ist die frühe Konfrontation mit dem traumatisierenden Erlebnis.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 3 und 4 sind richtig. Intrusionen (Flashbacks, Albträume) sind ein Kernsymptom. Depersonalisation/Derealisation können begleitend auftreten. Komorbide Depression erschwert die Diagnostik. 2 ist falsch: Typisch ist die Vermeidung von Triggern, nicht deren Aufsuchen. 5 ist falsch: Frühe Konfrontation kann retraumatisierend wirken; zuerst ist Stabilisierung notwendig.',
  ),
  Question(
    id: 56,
    exam: 'Oktober 2025',
    q: 'Welche Symptome können im Rahmen extrapyramidaler Nebenwirkungen von Neuroleptika auftreten?\n1. Dyskinesien\n2. Miktionsstörungen\n3. Akathisie\n4. Glossopharyngospasmus\n5. Mydriasis',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3 und 4 sind richtig. Extrapyramidale Nebenwirkungen umfassen: Dyskinesien (unwillkürliche Bewegungen), Akathisie (quälende Bewegungsunruhe) und Glossopharyngospasmus (Krämpfe der Zungen-/Schlundmuskulatur, eine Form der Frühdyskinesie). 2 ist falsch: Miktionsstörungen sind anticholinerge, nicht extrapyramidale Nebenwirkungen. 5 ist falsch: Mydriasis ist ebenfalls eine anticholinerge Nebenwirkung.',
  ),
];
