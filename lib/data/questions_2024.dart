import '../models/question.dart';

const List<Question> questions2024 = [
  Question(
    id: 1,
    exam: 'März 2024',
    q: 'Was ist kein Kriterium für eine Abhängigkeit?',
    options: [
      'Starker Wunsch oder Zwang zum Konsum der Substanz',
      'Reduzierte Kontrollfähigkeit in Bezug auf Beginn, Beendigung und Menge des Konsums',
      'Konsum der Substanz an mindestens 75% aller Tage innerhalb eines Jahres',
      'Vernachlässigung von Interessen und anderen Vergnügungen aufgrund des Konsums',
      'Fortführung des Konsums trotz Nachweis eindeutig schädlicher Folgen (körperlicher, psychischer oder auch sozialer Art)',
    ],
    correct: 2,
    explanation:
        'Der Konsum an mindestens 75% aller Tage ist kein Abhängigkeitskriterium nach ICD-10. Die Abhängigkeitskriterien umfassen: starken Wunsch/Zwang, verminderte Kontrolle, Entzugssymptome, Toleranzentwicklung, Vernachlässigung von Interessen und Fortführung trotz schädlicher Folgen. Eine bestimmte Konsumhäufigkeit in Prozent gehört nicht dazu.',
  ),
  Question(
    id: 2,
    exam: 'März 2024',
    q: 'Welche Aussagen zur Aufmerksamkeitsdefizit-Hyperaktivitätsstörung (ADHS) sind richtig?\n1. Es sind mehr Jungen als Mädchen betroffen\n2. Medikamentöse Therapie der Wahl sind Beruhigungsmittel, um den gesteigerten Bewegungsdrang in einen normalen Bereich zu bringen.\n3. Im Kindesalter können Kinder durch vermehrte Unfälle auffallen\n4. Tiefenpsychologische Ansätze sind den verhaltenstherapeutischen Ansätzen vorzuziehen\n5. Die Störung darf definitionsmäßig bis ins Erwachsenenalter nicht länger fortbestehen.',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
      'Keine der Aussagen ist richtig',
    ],
    correct: 0,
    explanation:
        'Nur 1 und 3 sind richtig. Jungen sind häufiger betroffen als Mädchen (ca. 3:1). Kinder mit ADHS haben ein erhöhtes Unfallrisiko durch Impulsivität. Aussage 2 ist falsch: Therapie der Wahl sind Stimulanzien (z.B. Methylphenidat), keine Beruhigungsmittel. Aussage 4 ist falsch: Verhaltenstherapie ist der leitliniengemäße Ansatz. Aussage 5 ist falsch: ADHS kann bis ins Erwachsenenalter fortbestehen.',
  ),
  Question(
    id: 3,
    exam: 'März 2024',
    q: 'Welche Aussagen zu Suchterkrankungen sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Nach Jellinek werden 4 Alkoholtypen unterschieden',
      'Auch der Beta-Trinker ist abhängig.',
      'Ein Alkoholentzug kann jederzeit ambulant durchgeführt werden.',
      'Zu den Zeichen des Alkoholentzugs gehören Schwitzen, Zittern, erhöhte Pulsfrequenz und Hypertonie.',
      'Ein maßgeblicher Teil der Behandlung der Alkoholkrankheit besteht in einer Entwöhnungsbehandlung, die Wochen oder Monate meist stationär durchgeführt wird.',
    ],
    correct: [3, 4],
    explanation:
        'D und E sind richtig. Alkoholentzug zeigt sich durch vegetative Symptome wie Schwitzen, Tremor, Tachykardie und Hypertonie. Die Entwöhnung erfolgt meist stationär über Wochen/Monate. A ist falsch: Jellinek unterscheidet 5 Typen (Alpha bis Epsilon). B ist falsch: Der Beta-Trinker (Gelegenheitstrinker) ist nicht abhängig. C ist falsch: Alkoholentzug kann lebensbedrohlich sein und erfordert oft stationäre Überwachung.',
  ),
  Question(
    id: 4,
    exam: 'März 2024',
    q: 'Welche Aussagen zur typischen Anorexia nervosa sind richtig?\n1. Sport wird häufig intensiv betrieben\n2. Ein Teil der Erkrankten ist normalgewichtig\n3. Soziokulturelle Faktoren spielen keine Rolle in der Krankheitsentwicklung\n4. Die Therapie wird dadurch erschwert, dass oft wenig oder keine Krankheitseinsicht besteht.\n5. Eine mögliche Todesursache bei der typischen Anorexia nervosa sind Herzrhythmusstörungen',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 4 und 5 sind richtig. Exzessiver Sport ist ein häufiges Merkmal der Anorexie. Mangelnde Krankheitseinsicht erschwert die Therapie erheblich. Herzrhythmusstörungen (durch Elektrolytentgleisungen, v.a. Hypokaliämie) sind eine gefährliche Komplikation. Aussage 2 ist falsch: Bei typischer Anorexie liegt der BMI definitionsgemäß unter 17,5 kg/m². Aussage 3 ist falsch: Soziokulturelle Faktoren (Schlankheitsideal) spielen eine wichtige Rolle.',
  ),
  Question(
    id: 5,
    exam: 'März 2024',
    q: 'Welche Aussagen sind falsch? (Wählen Sie zwei Antworten)',
    options: [
      'Die häufigste altersunabhängige Ursache für ein Delir ist ein Flüssigkeitsmangel',
      'Eine psychotische Störung ist immer dauerhafter Natur',
      'Ein Delirium tremens kann lebensbedrohlich sein',
      'Eine Heilpraktikerin/ein Heilpraktiker kann bei einer ambulanten Psychotherapie gefährdet sein, etwa bei Impulskontrollverlust oder sonstigen Erregungszuständen einer Patientin/eines Patienten.',
      'Ein Delir oder Delirium ist ein Zustand von akuter Verwirrtheit.',
    ],
    correct: [0, 1],
    explanation:
        'A und B sind falsch. A: Flüssigkeitsmangel ist zwar eine häufige Ursache bei älteren Menschen, aber nicht die häufigste altersunabhängige Ursache – häufiger sind z.B. Medikamente, Infektionen und postoperative Zustände. B: Psychotische Störungen sind nicht immer dauerhaft; akute vorübergehende Psychosen, drogeninduzierte Psychosen und andere Formen können zeitlich begrenzt sein. C, D und E sind korrekte Aussagen.',
  ),
  Question(
    id: 6,
    exam: 'März 2024',
    q: 'Welche körperlichen Krankheiten beziehungsweise Zustände können depressive Symptome auslösen?\n1. Schilddrüsenunterfunktion (Hypothyreose)\n2. Vitamin-B12-Mangel\n3. Wechseljahre (Klimakterium)\n4. Gehirntumore\n5. Einnahme von Kortikosteroiden',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Hypothyreose führt häufig zu depressiver Symptomatik. Vitamin-B12-Mangel kann neuropsychiatrische Symptome einschließlich Depression verursachen. Das Klimakterium ist durch Hormonschwankungen mit Depressionsrisiko assoziiert. Gehirntumore können je nach Lokalisation depressive Symptome hervorrufen. Kortikosteroide können als Nebenwirkung Depressionen auslösen.',
  ),
  Question(
    id: 7,
    exam: 'März 2024',
    q: 'Welche Aussagen sind richtig?\n1. Das Führen der Berufsbezeichnung \'Heilpraktiker\' wird durch das Heilpraktikergesetz (HeilprG) geregelt\n2. Das Führen der Berufsbezeichnung \'Heilpraktiker/in\' beschränkt auf das Gebiet der Psychotherapie wird durch das Psychotherapeutengesetz (PsychThG) geregelt.\n3. Die Weiterbildungspflicht wird in der Berufsordnung für Heilpraktiker (BOH) erwähnt.\n4. Die Verabreichung von Betäubungsmitteln wie Fentanyl wird durch das Arzneimittelgesetz (AMG) geregelt.\n5. Die Meldung von ansteckenden Geschlechtskrankheiten wird durch das Infektionsschutzgesetz (IfSG) geregelt.',
    options: [
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        '1, 3 und 5 sind richtig. Das HeilprG regelt die Berufsbezeichnung Heilpraktiker. Die BOH enthält die Weiterbildungspflicht. Das IfSG regelt die Meldung von Infektionskrankheiten. Aussage 2 ist falsch: Der sektorale HP wird ebenfalls durch das HeilprG geregelt, nicht durch das PsychThG. Aussage 4 ist falsch: Betäubungsmittel wie Fentanyl werden durch das Betäubungsmittelgesetz (BtMG) geregelt, nicht durch das AMG.',
  ),
  Question(
    id: 8,
    exam: 'März 2024',
    q: 'Bei einer Hypothyreose handelt es sich um eine somatische Störung, bei der sich oft auch seelische Krankheitszeichen finden. Welche Krankheitszeichen lassen Sie an eine Hypothyreose denken?\n1. Obstipation\n2. Tachykardie\n3. Gewichtszunahme\n4. Verminderter Antrieb\n5. Erhöhte Ermüdbarkeit',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3, 4 und 5 sind richtig. Typische Symptome einer Hypothyreose sind: Obstipation, Gewichtszunahme, verminderter Antrieb und erhöhte Ermüdbarkeit – alles Zeichen eines verlangsamten Stoffwechsels. Aussage 2 ist falsch: Tachykardie ist typisch für eine Hyperthyreose (Schilddrüsenüberfunktion). Bei Hypothyreose findet sich eher eine Bradykardie.',
  ),
  Question(
    id: 9,
    exam: 'März 2024',
    q: 'Welche der nachgenannten Aussagen sind richtig?\n1. Bei einer Intelligenzminderung können komplexe kognitive Fähigkeiten nicht erworben werden\n2. Bei einer Demenz gehen bestehende geistige Fähigkeiten verloren.\n3. Beim frühkindlichen Autismus weisen die betroffenen Kinder auffälliges Sozialverhalten auf\n4. Man unterscheidet bei Kindern zwischen ADS und ADHS.\n5. Die Heilpraktikerin/der Heilpraktiker sektoral Psychotherapie hat für Kinder mit ADS oder ADHS ein Behandlungsverbot',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 4 sind richtig. Bei Intelligenzminderung ist der Erwerb komplexer kognitiver Fähigkeiten eingeschränkt. Demenz ist durch Verlust erworbener Fähigkeiten gekennzeichnet. Frühkindlicher Autismus zeigt auffälliges Sozialverhalten. ADS (ohne Hyperaktivität) und ADHS (mit Hyperaktivität) werden unterschieden. Aussage 5 ist falsch: Es besteht kein generelles Behandlungsverbot für HP Psychotherapie bei Kindern mit ADS/ADHS.',
  ),
  Question(
    id: 10,
    exam: 'März 2024',
    q: 'Was gehört zu den Diagnosekriterien für eine Borderline-Persönlichkeitsstörung nach ICD-10?',
    options: [
      'Andauernde Beschäftigung mit Regeln, Organisation, Ordnung, Plänen und Listen',
      'Verantwortungslosigkeit und Missachtung sozialer Regeln und Normen',
      'Unangenehmes Gefühl beim Alleinsein aus unverhältnismäßiger Angst, nicht für sich allein sorgen zu können',
      'Gefühl der inneren Leere',
      'Großartigkeit in Phantasie und Verhalten',
    ],
    correct: 3,
    explanation:
        'Das chronische Gefühl der inneren Leere ist ein Diagnosekriterium der Borderline-PS. A beschreibt die anankastische PS. B beschreibt die dissoziale PS. C beschreibt die abhängige (dependente) PS. E beschreibt die narzisstische PS.',
  ),
  Question(
    id: 11,
    exam: 'März 2024',
    q: 'Welche der Begriffe gehören nicht zu der Gesprächsführung nach Carl Rogers? (Wählen Sie zwei Antworten)',
    options: ['Empathie', 'Akzeptanz', 'Suggestivfragen', 'Rhetorische Fragen', 'Kongruenz'],
    correct: [2, 3],
    explanation:
        'Suggestivfragen und Rhetorische Fragen gehören NICHT zur klientenzentrierten Gesprächsführung nach Carl Rogers. Die drei Grundhaltungen nach Rogers sind: Empathie (einfühlendes Verstehen), Akzeptanz (unbedingte Wertschätzung) und Kongruenz (Echtheit). Suggestivfragen und rhetorische Fragen widersprechen dem nicht-direktiven Ansatz von Rogers.',
  ),
  Question(
    id: 12,
    exam: 'März 2024',
    q: 'Welche Aussagen zu organisch bedingten psychischen Störungen sind richtig? \n1. Bei den organisch bedingten psychischen Störungen unterscheiden wir akute von chronischen Erkrankungen \n2. Nur die chronisch organisch bedingten psychischen Störungen gehen mit einer Bewusstseinsstörung einher \n3. Akute organisch bedingte psychische Störungen können durch Drogen oder Arzneimittel ausgelöst werden \n4. Bei einer akuten organisch bedingten psychischen Störung handelt es sich immer um einen Notfall \n5. Krankheitszeichen einer auf Dauer bestehenden organisch bedingten psychischen Störung sind z.B. Gedächtnis- und Orientierungsstörungen',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '1, 3, 4 und 5 sind richtig. Man unterscheidet akute (z.B. Delir) und chronische (z.B. Demenz) organische psychische Störungen. Drogen und Arzneimittel können akute Formen auslösen. Akute organische Störungen sind immer als Notfall zu behandeln. Chronische Formen zeigen Gedächtnis- und Orientierungsstörungen. Aussage 2 ist falsch: Gerade die akuten organischen Störungen (Delir) gehen typischerweise mit Bewusstseinsstörungen einher, nicht die chronischen.',
  ),
  Question(
    id: 13,
    exam: 'März 2024',
    q: 'Welches Merkmal gehört typischerweise nicht zur paranoiden Persönlichkeitsstörung?',
    options: [
      'Abhängigkeit von der Meinung Anderer',
      'Empfindlichkeit',
      'Misstrauen',
      'Selbstbezogenheit',
      'Streitsucht',
    ],
    correct: 0,
    explanation:
        'Abhängigkeit von der Meinung Anderer gehört nicht zur paranoiden Persönlichkeitsstörung, sondern eher zur dependenten oder ängstlich-vermeidenden PS. Die paranoide PS ist gekennzeichnet durch übermäßiges Misstrauen, Empfindlichkeit gegenüber Zurückweisung, Selbstbezogenheit und Streitsucht. Paranoide Persönlichkeiten sind gerade nicht von anderen abhängig, sondern eher misstrauisch und eigenbrötlerisch.',
  ),
  Question(
    id: 14,
    exam: 'März 2024',
    q: 'Welche der nachfolgenden Aussagen sind richtig?\n1. Heilpraktiker haben eine wirtschaftliche Aufklärungspflicht\n2. Heilpraktiker dürfen die Patientendokumentation auch in elektronischer Form durchführen.\n3. Heilpraktiker müssen Arztbriefe in die Patientenakte aufnehmen.\n4. Heilpraktiker müssen die Patientenakte gemäß 630f BGB für 10 Jahre nach Beendigung der Behandlung aufbewahren.\n5. Heilpraktiker müssen die Patientenakte gemäß 630f BGB für 20 Jahre nach Beendigung der Behandlung aufbewahren.',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 4 sind richtig. Heilpraktiker haben eine wirtschaftliche Aufklärungspflicht (vor Behandlungsbeginn). Elektronische Dokumentation ist zulässig. Arztbriefe sind Teil der Patientenakte. Die Aufbewahrungsfrist beträgt nach §630f BGB 10 Jahre. Aussage 5 ist falsch: Es sind 10, nicht 20 Jahre.',
  ),
  Question(
    id: 15,
    exam: 'März 2024',
    q: 'Welche Aussage ist falsch?',
    options: [
      'Merkfähigkeitsstörungen findet man sehr häufig bei organischen Hirnerkrankungen und Demenz',
      'Bei einer Schizophrenie gehören Störungen des Affekts typischerweise nicht zum Krankheitsbild',
      'Bei formalen Denkstörungen handelt es sich unter anderem um Störungen des Denkablaufs',
      'Störungen des Affekts finden sich häufig bei bipolaren Störungen',
      'Der Mutismus gehört zu den Störungen des Antriebs und der Psychomotorik',
    ],
    correct: 1,
    explanation:
        'Aussage B ist falsch: Affektstörungen gehören sehr wohl zum typischen Krankheitsbild der Schizophrenie. Affektverflachung, Parathymie (inadäquater Affekt) und Ambivalenz sind charakteristische Negativsymptome bzw. Symptome der Schizophrenie. Alle anderen Aussagen sind korrekt.',
  ),
  Question(
    id: 16,
    exam: 'März 2024',
    q: 'Welche Aussagen sind richtig?\n1. Ein psychiatrischer Notfall ist ein Zustand, der einen unmittelbaren Handlungszwang zur Abwendung von Lebensgefahr mit sich bringt.\n2. Ein psychiatrischer Notfall erfordert eine sofortige, an der akuten Symptomatik orientierte, gezielte Therapie.\n3. Körperliche Erkrankungen können ein Grund für einen psychiatrischen Notfall sein\n4. Arzneimittel können einen psychiatrischen Notfall auslösen\n5. Bei einem psychiatrischen Notfall besteht ein Risiko für gewalttätiges Verhalten',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Ein psychiatrischer Notfall erfordert sofortiges Handeln zur Abwendung von Lebensgefahr. Die Therapie muss sofort und symptomorientiert erfolgen. Körperliche Erkrankungen (z.B. Delir bei Infektion) und Arzneimittel (z.B. Psychopharmakanebenwirkungen) können psychiatrische Notfälle auslösen. Es besteht ein Risiko für Selbst- und Fremdgefährdung einschließlich gewalttätigem Verhalten.',
  ),
  Question(
    id: 17,
    exam: 'März 2024',
    q: 'Welche der nachgenannten Aussagen über Inhalte des psychopathologischen Befundes sind richtig?\n1. Unter Perseveration versteht man pausenloses Reden mit plötzlichen Sprüngen von Thema zu Thema.\n2. Unter Inkohärenz versteht man das Haftenbleiben an zuvor verwendeten Denkinhalten, Worten und Sätzen\n3. Die Ideenflucht gehört zu den formalen Denkstörungen\n4. Inhaltliche Denkstörungen zeichnen sich durch irreale, pathologische Abweichungen des Denkens aus.\n5. Halluzinationen gehören zu den Wahrnehmungsstörungen',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '3, 4 und 5 sind richtig. Ideenflucht ist eine formale Denkstörung. Inhaltliche Denkstörungen (z.B. Wahn) sind pathologische Abweichungen des Denkinhalts. Halluzinationen sind Wahrnehmungsstörungen. Aussage 1 ist falsch: Perseveration ist das Haftenbleiben an Denkinhalten (die Beschreibung passt eher zur Ideenflucht). Aussage 2 ist falsch: Inkohärenz bedeutet zerfahrenes, zusammenhangloses Denken (die Beschreibung passt zur Perseveration). Die Definitionen in 1 und 2 sind vertauscht.',
  ),
  Question(
    id: 18,
    exam: 'März 2024',
    q: 'Welche der nachgenannten Aussagen sind richtig?\n1. Zu den qualitativen Bewusstseinsstörungen gehören die Bewusstseinstrübung, die Bewusstseinseinengung und die Bewusstseinsverschiebung.\n2. Die Fragen \'Welches Datum haben wir heute?\', \'In welcher Stadt sind wir?\', \'Wann wurden Sie geboren?\' und \'Wo wohnen Sie?\' dienen der Abklärung von Orientierungsstörungen.\n3. Deja-vu und Jamais-vu gehören zu den Paramnesien\n4. Die Unfähigkeit, Freude zu empfinden, bezeichnet man als Anhedonie\n5. Ein Patient sagt: \'Meine Gedanken werden angezapft und sind dann wie abgezogen.\' Sie erkennen darin einen Gedankenentzug, der auf eine Ich-Störung hinweist.',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. 1: Bewusstseinstrübung, -einengung und -verschiebung sind qualitative Bewusstseinsstörungen. 2: Diese Fragen prüfen zeitliche, örtliche, autobiographische und situative Orientierung. 3: Deja-vu und Jamais-vu sind Paramnesien (Erinnerungstäuschungen). 4: Anhedonie ist die Unfähigkeit, Freude zu empfinden. 5: Gedankenentzug ist eine Ich-Störung, typisch für Schizophrenie.',
  ),
  Question(
    id: 19,
    exam: 'März 2024',
    q: 'Welche Aussage trifft auf die Posttraumatische Belastungsstörung (PTBS) nicht zu?',
    options: [
      'Symptome können erst Wochen bis Monate nach dem Ereignis auftreten',
      'Oft werden Reize vermieden, die an das Ereignis erinnern',
      'Ohne Therapie zeigt sich eine hohe Chronifizierungsneigung von über 20% nach 10 Jahren',
      'Entspannungstechniken können ohne Bedenken angewendet werden',
      'Das auslösende Ereignis wird häufig, z.B. in Form von Flashbacks, wiedererlebt',
    ],
    correct: 3,
    explanation:
        'Aussage D ist falsch: Entspannungstechniken können bei PTBS NICHT ohne Bedenken angewendet werden. Tiefenentspannung kann bei PTBS-Patienten zu Kontrollverlust, Flashbacks und Retraumatisierung führen. Entspannungsverfahren erfordern besondere Vorsicht und Anpassung. A, B, C und E sind korrekte Aussagen über PTBS.',
  ),
  Question(
    id: 20,
    exam: 'März 2024',
    q: 'Welche der nachgenannten Aussagen sind richtig?\n1. Bei einer Dysthymie können sich depressive und manische Episoden abwechseln\n2. Man unterscheidet verschiedene Arten von Halluzinationen, z.B. die akustischen, die optischen und die körperbezogenen Halluzinationen\n3. Bei einem Wahn handelt es sich um eine nicht korrigierbare, fehlerhafte Beurteilung der Wirklichkeit\n4. Zu den formalen Denkstörungen zählen die Ideenflucht, die Inkohärenz und die Neologismen\n5. Die illusionäre Verkennung gehört nicht zu den inhaltlichen Denkstörungen',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. Es gibt verschiedene Halluzinationsarten (akustisch, optisch, zönästhetisch etc.). Wahn ist eine nicht korrigierbare Fehlbeurteilung der Realität. Ideenflucht, Inkohärenz und Neologismen sind formale Denkstörungen. Die illusionäre Verkennung ist eine Wahrnehmungsstörung, keine inhaltliche Denkstörung. Aussage 1 ist falsch: Bei Dysthymie wechseln sich keine manischen und depressiven Episoden ab – das wäre eine bipolare Störung. Dysthymie ist eine chronisch depressive Verstimmung.',
  ),
  Question(
    id: 21,
    exam: 'März 2024',
    q: 'Welche der nachgenannten Aussagen ist falsch?',
    options: [
      'Bei einer somatoformen Störung beklagen die Betroffenen körperliche Beschwerden, für die aber keine körperliche Ursache zu finden ist.',
      'Patienten mit einer somatoformen Störung suchen in der Regel immer wieder Ärzte auf, weil sie weiterhin unter ihren Beschwerden leiden.',
      'Die hypochondrische Störung gehört nicht zu den somatoformen Störungen',
      'Typisch für eine Somatisierungsstörung ist die Schilderung häufig wechselnder Krankheitszeichen',
      'Bei somatoformen Störungen ist eine psychotherapeutische Behandlung indiziert.',
    ],
    correct: 2,
    explanation:
        'Aussage C ist falsch: Die hypochondrische Störung gehört nach ICD-10 zu den somatoformen Störungen (F45.2). Sie ist dort unter F45 (Somatoforme Störungen) klassifiziert. Alle anderen Aussagen sind korrekte Beschreibungen somatoformer Störungen.',
  ),
  Question(
    id: 22,
    exam: 'März 2024',
    q: 'Welche Elemente gehören zum präsuizidalen Syndrom nach Ringel?\n1. Aggression gegen Fremde\n2. Einengung\n3. Suizidfantasien\n4. Verschenkung des Eigentums\n5. Aggressionsumkehr',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
    ],
    correct: 1,
    explanation:
        'Die drei Elemente des präsuizidalen Syndroms nach Ringel sind: 1. Einengung (situativ, dynamisch, der Wertewelt, der zwischenmenschlichen Beziehungen), 2. Aggressionsumkehr (Aggression richtet sich gegen die eigene Person statt nach außen), 3. Suizidfantasien. Aggression gegen Fremde (1) ist das Gegenteil der Aggressionsumkehr. Verschenkung des Eigentums (4) kann ein Warnsignal sein, gehört aber nicht zum präsuizidalen Syndrom nach Ringel.',
  ),
  Question(
    id: 23,
    exam: 'März 2024',
    q: 'Bei welchem Therapieverfahren spielt die Arbeit mit Übertragung und Gegenübertragung eine zentrale Rolle?',
    options: [
      'Hypnotherapie',
      'Tiefenpsychologisch fundierte Psychotherapie',
      'Gestalttherapie',
      'Systemische Therapie',
      'Reizüberflutungstherapie',
    ],
    correct: 1,
    explanation:
        'In der tiefenpsychologisch fundierten Psychotherapie (und der Psychoanalyse) spielt die Arbeit mit Übertragung und Gegenübertragung eine zentrale Rolle. Der Patient überträgt unbewusst Gefühle und Beziehungsmuster auf den Therapeuten (Übertragung), der Therapeut reflektiert seine emotionalen Reaktionen darauf (Gegenübertragung). Dies ist ein Kernkonzept der psychodynamischen Verfahren.',
  ),
  Question(
    id: 24,
    exam: 'März 2024',
    q: 'Welches Störungsbild versteckt sich hinter dem Begriff \'Dysthymia\'?',
    options: [
      'Rezidivierendes, jahreszeitlich gebundenes Auftreten einer depressiven Episode',
      'Mehrere Jahre anhaltende depressive Verstimmung',
      'Depression mit atypischer Symptomatik: gesteigerter Appetit und Schlafbedürfnis',
      'Schwerste depressive Episode, mit somatischem Syndrom',
      'Pseudodepression',
    ],
    correct: 1,
    explanation:
        'Dysthymia (F34.1) bezeichnet eine chronische, mindestens 2 Jahre anhaltende depressive Verstimmung, die nicht die Kriterien einer depressiven Episode erfüllt. Die Stimmung ist dauerhaft gedrückt, aber weniger schwer als bei einer Major Depression. A beschreibt eine saisonale Depression. C beschreibt eine atypische Depression. D beschreibt eine schwere depressive Episode. E ist kein eigenständiges Störungsbild.',
  ),
  Question(
    id: 25,
    exam: 'März 2024',
    q: 'Welche Aussagen zur Vergütung sind richtig?\n1. Die Gebührenordnung für Heilpraktiker (GebüH) gilt auch für Tätigkeiten auf dem Gebiet der Psychotherapie.\n2. Der Heilpraktiker darf die Höhe der Vergütung frei festlegen.\n3. Der Heilpraktiker benötigt eine Zulassungsnummer von der KBV zur Abrechnung mit gesetzlich Versicherten.\n4. Mit privatversicherten Patienten rechnet der HP ebenfalls über die KV ab.\n5. Abweichende Vereinbarungen (z.B. ein Ausfallhonorar) sind nicht zulässig.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        '1 und 2 sind richtig. Die GebüH gilt als Orientierung auch für psychotherapeutische Leistungen. Der HP darf die Vergütung grundsätzlich frei festlegen (die GebüH ist nicht verbindlich). Aussage 3 ist falsch: HP rechnen nicht mit der KV ab und benötigen keine KV-Zulassung. Aussage 4 ist falsch: Privatpatienten rechnen direkt mit dem HP ab, nicht über die KV. Aussage 5 ist falsch: Abweichende Vereinbarungen wie Ausfallhonorare sind grundsätzlich zulässig.',
  ),
  Question(
    id: 26,
    exam: 'März 2024',
    q: 'Welche Aussagen zur Verhaltenstherapie sind falsch? (Wählen Sie zwei Antworten)',
    options: [
      'Die Verhaltenstherapie basiert auf den Erkenntnissen der modernen Lerntheorie',
      'Der Begriff \'Verhalten\' umfasst dabei nur das von außen beobachtbare Verhalten und die körperlichen Reaktionen.',
      'Die kognitive Verhaltenstherapie umfasst auch Denkmuster und die gedankliche Bewertung des Erlebten',
      'Eine Verhaltenstherapie kann bei Suchtkranken indiziert sein.',
      'Die Verhaltenstherapie ist stets direktiv ausgerichtet, das zugrunde liegende Problem wird vom Behandler erarbeitet und von ihm gesteuert bearbeitet.',
    ],
    correct: [1, 4],
    explanation:
        'B und E sind falsch. B: Der Begriff \'Verhalten\' in der VT umfasst nicht nur beobachtbares Verhalten und körperliche Reaktionen, sondern auch Kognitionen (Gedanken) und Emotionen – das gesamte SORKC-Modell. E: Die VT ist nicht stets direktiv; insbesondere die kognitive VT arbeitet kooperativ und fördert Selbstmanagement. Das Problem wird gemeinsam mit dem Patienten erarbeitet, nicht einseitig vom Therapeuten. A, C und D sind korrekte Aussagen.',
  ),
  Question(
    id: 27,
    exam: 'März 2024',
    q: 'Was trifft auf den Begriff \'Wahn\' zu?\n1. Es handelt sich um eine formale Denkstörung\n2. Halluzinationen müssen begleitend auftreten\n3. Die Realität wird fehlerhaft beurteilt\n4. Wahn kommt bei Erkrankungen mit psychotischen Symptomen vor\n5. Bei einer manischen Episode muss Größenwahn auftreten',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        'Nur 3 und 4 sind richtig. Wahn ist eine fehlerhafte, nicht korrigierbare Beurteilung der Realität und kommt bei psychotischen Erkrankungen vor (Schizophrenie, schwere Depression, Manie). Aussage 1 ist falsch: Wahn ist eine inhaltliche Denkstörung, keine formale. Aussage 2 ist falsch: Halluzinationen können begleitend auftreten, müssen aber nicht. Aussage 5 ist falsch: Größenwahn kann in der Manie auftreten, muss aber nicht.',
  ),
  Question(
    id: 28,
    exam: 'März 2024',
    q: 'Welche Aussagen zu Zwangserkrankungen sind richtig?\n1. Typischerweise werden Zwangssymptome in der Anamnese spontan berichtet.\n2. Patienten mit Zwangsgedanken/-handlungen haben keine Bewusstseinsstörung.\n3. Viele Patienten schämen sich für ihr Verhalten, ihren Zwang\n4. Die Patienten erkennen die Sinnlosigkeit ihres Tuns nicht und können deshalb nur schwer davon ablassen.\n5. Inhaltlich umfassen Zwangsgedanken/-handlungen sowie die dazugehörigen Ängste verschiedene Aspekte wie Ansteckung, Vergiftung, Krankheit oder Ordnung.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 3 und 5 sind richtig. Zwangspatienten haben keine Bewusstseinsstörung. Schamgefühle sind typisch. Zwangsinhalte drehen sich oft um Kontamination, Vergiftung, Krankheit und Ordnung. Aussage 1 ist falsch: Zwangssymptome werden typischerweise NICHT spontan berichtet – viele Patienten verschweigen sie aus Scham. Aussage 4 ist falsch: Zwangspatienten erkennen in der Regel die Sinnlosigkeit ihres Tuns (Ich-Dystonie), können aber trotzdem nicht davon ablassen.',
  ),
  Question(
    id: 29,
    exam: 'Oktober 2024',
    q: 'Was sind die Hauptmerkmale einer Agoraphobie?\n1. Das Vorliegen einer depressiven Störung\n2. Stottern\n3. Angst im öffentlichen Raum\n4. Beschränkung der Angst auf Prüfungssituationen\n5. Vermeidungsverhalten bestimmter Situationen aktuell oder in der Vergangenheit',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        'Nur 3 und 5 sind richtig. Die Agoraphobie ist gekennzeichnet durch Angst vor/in öffentlichen Räumen, Menschenmengen, öffentlichen Verkehrsmitteln etc. und dem daraus resultierenden Vermeidungsverhalten. Aussage 1 ist falsch: Depression ist kein Hauptmerkmal der Agoraphobie. Aussage 2 ist falsch: Stottern gehört nicht zur Agoraphobie. Aussage 4 ist falsch: Prüfungsangst beschreibt eher eine soziale Phobie oder spezifische Phobie.',
  ),
  Question(
    id: 30,
    exam: 'Oktober 2024',
    q: 'Welche der folgenden Aussagen über \'Neue psychoaktive Stoffe\' (NPS) treffen zu?\n1. NPS sind in der Regel harmlos, weil es sich nicht um echte Drogen handelt.\n2. NPS werden häufiger als \'Kräutermischung\' oder \'Badesalze\' angeboten.\n3. Durch das Verbot ganzer Stoffgruppen wird die legale Einführung von NPS erschwert.\n4. NPS gelten als sichere Ergänzung einer Psychotherapie, da sie tranceähnliche Zustände auslösen können.\n5. Als NPS finden unter anderem synthetische Cannabinoide, Phenethylamine und Cathinone Anwendung.',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '2, 3 und 5 sind richtig. NPS werden als Kräutermischungen oder Badesalze getarnt verkauft. Das Neue-psychoaktive-Stoffe-Gesetz (NpSG) verbietet ganze Stoffgruppen. Synthetische Cannabinoide, Phenethylamine und Cathinone sind häufige NPS. Aussage 1 ist falsch: NPS sind keineswegs harmlos, sondern oft gefährlicher als klassische Drogen. Aussage 4 ist falsch: NPS sind keine sichere Ergänzung einer Psychotherapie.',
  ),
  Question(
    id: 31,
    exam: 'Oktober 2024',
    q: 'Welche Aussage ist falsch?',
    options: [
      'Die ICD-10 Klassifikation unterscheidet zwischen einer körperlichen und einer psychischen Abhängigkeit.',
      'Opioide verfügen über ein besonders hohes Abhängigkeitspotenzial.',
      'Ketamin kann bei therapieresistenten Depressionen eingesetzt werden.',
      'Die empathogene Partydroge \'XTC\' liegt meistens in Form des Wirkstoffs MDMA vor.',
      'Das Abhängigkeitspotenzial von Halluzinogenen ist geringer als das von Benzodiazepinen.',
    ],
    correct: 0,
    explanation:
        'Aussage A ist falsch: Die ICD-10 unterscheidet in den Diagnosekriterien des Abhängigkeitssyndroms (F1x.2) nicht explizit zwischen körperlicher und psychischer Abhängigkeit als getrennte diagnostische Kategorien. Die Kriterien umfassen beide Aspekte gemeinsam. B, C, D und E sind korrekte Aussagen.',
  ),
  Question(
    id: 32,
    exam: 'Oktober 2024',
    q: 'Welches Symptom lässt am ehesten an eine beginnende Demenz denken?',
    options: [
      'Gangstörung',
      'Affektive Veränderung',
      'Paranoider Wahn',
      'Bewusstseinsverschiebung',
      'Stuhl- und Harninkontinenz',
    ],
    correct: 1,
    explanation:
        'Affektive Veränderungen (z.B. Reizbarkeit, Stimmungsschwankungen, Apathie, depressive Verstimmung) gehören zu den frühesten Symptomen einer beginnenden Demenz, noch bevor ausgeprägte kognitive Defizite offensichtlich werden. Gangstörungen (A) und Inkontinenz (E) treten eher in fortgeschrittenen Stadien auf. Paranoider Wahn (C) kann auftreten, ist aber nicht das typische Frühsymptom. Bewusstseinsverschiebung (D) ist kein typisches Demenzsymptom.',
  ),
  Question(
    id: 33,
    exam: 'Oktober 2024',
    q: 'Eine Mutter kommt mit ihrer 7-jährigen Tochter und berichtet von Schlafauffälligkeiten, so dass Sie Pavor nocturnus vermuten. Welche Aussage ist richtig?',
    options: [
      'Die Ereignisse beginnen mit einem Panikschrei und werden oft von vegetativen Symptomen begleitet.',
      'Die Episoden treten meistens im letzten Drittel des Nachtschlafs auf.',
      'Das Kind erinnert sich lebhaft an den Traum und hat Angst wieder einzuschlafen.',
      'Die Störung gehört zu den Dyssomnien.',
      'Eine medikamentöse Behandlung mit Beruhigungsmitteln gehört zum therapeutischen Standard.',
    ],
    correct: 0,
    explanation:
        'A ist richtig: Pavor nocturnus (Nachtangst) beginnt typischerweise mit einem plötzlichen Panikschrei, begleitet von vegetativen Symptomen (Tachykardie, Schwitzen, schnelle Atmung). B ist falsch: Die Episoden treten im ersten Drittel des Nachtschlafs auf (im Tiefschlaf). C ist falsch: Das Kind hat typischerweise keine Erinnerung an die Episode (Amnesie). D ist falsch: Pavor nocturnus gehört zu den Parasomnien, nicht Dyssomnien. E ist falsch: Medikamentöse Therapie ist kein Standard; meist genügen Aufklärung und Beruhigung der Eltern.',
  ),
  Question(
    id: 34,
    exam: 'Oktober 2024',
    q: 'Welche der folgenden Aussagen zu §1831 BGB (freiheitsentziehende Unterbringung nach BGB) treffen zu?\n1. Eine Unterbringung des Betreuten auf Antrag des rechtlichen Betreuers ist zur Abwendung eines Suizides oder eines drohenden erheblichen gesundheitlichen Schadens zulässig.\n2. Die Unterbringung ist nur mit Genehmigung des Betreuungsgerichts zulässig. Ohne Genehmigung ist die Unterbringung zulässig, wenn mit dem Aufschub Gefahr verbunden ist.\n3. Eine Unterbringung ist nur in psychiatrischen Kliniken, nicht aber in Pflegeheimen möglich.\n4. Liegt eine Patientenverfügung vor, so ist eine Unterbringung nach BGB nicht möglich.\n5. Eine Unterbringung ist auch dann möglich, wenn beim Betreuten keine akute psychiatrische Erkrankung diagnostiziert wurde.',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 2 und 5 sind richtig. Die Unterbringung ist bei Suizidgefahr oder drohendem Gesundheitsschaden zulässig. Sie bedarf der Genehmigung des Betreuungsgerichts (eilfallregelung bei Gefahr im Verzug). Auch ohne akute psychiatrische Diagnose ist eine Unterbringung möglich (z.B. bei Demenz). Aussage 3 ist falsch: Die Unterbringung kann auch in Pflegeheimen erfolgen. Aussage 4 ist falsch: Eine Patientenverfügung schließt eine Unterbringung nicht automatisch aus.',
  ),
  Question(
    id: 35,
    exam: 'Oktober 2024',
    q: 'Welche Aussagen treffen auf den Begriff Intelligenzminderung zu? (Wählen Sie zwei Antworten)',
    options: [
      'Von einer Intelligenzminderung spricht man ab einem IQ < 100.',
      'Ein IQ-Bereich von 35-49 entspricht bei Erwachsenen einem Intelligenzalter von 6 bis unter 9 Jahren.',
      'Eine Intelligenzminderung stellt kein Ausschlusskriterium für eine Verhaltenstherapie oder medikamentöse Behandlung dar.',
      'Zu den Sonderformen einer Intelligenzminderung zählen die Dyskalkulie oder das Asperger-Syndrom.',
      'Menschen mit einer Intelligenzminderung können keine Demenz entwickeln.',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Ein IQ von 35-49 entspricht einer mittelgradigen Intelligenzminderung (Intelligenzalter 6-9 Jahre). Intelligenzminderung schließt VT oder medikamentöse Behandlung nicht aus. A ist falsch: Intelligenzminderung beginnt bei IQ < 70, nicht < 100. D ist falsch: Dyskalkulie und Asperger-Syndrom sind keine Sonderformen der Intelligenzminderung. E ist falsch: Menschen mit Intelligenzminderung können sehr wohl eine Demenz entwickeln.',
  ),
  Question(
    id: 36,
    exam: 'Oktober 2024',
    q: 'Welche der folgenden Symptome treten im Rahmen einer multiplen Sklerose auf?\n1. Euphorische Stimmung sowie verflachter Affekt\n2. Dementielle Symptome\n3. Flashbacks\n4. Sehstörungen\n5. Paranoide Symptome',
    options: [
      'Nur die Aussage 2 ist richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 4 und 5 sind richtig. Bei MS können auftreten: Euphorie und Affektverflachung (1), kognitive Beeinträchtigungen bis zur Demenz (2), Sehstörungen durch Optikusneuritis (4) und selten paranoide Symptome (5). Aussage 3 ist falsch: Flashbacks sind typisch für PTBS, nicht für MS.',
  ),
  Question(
    id: 37,
    exam: 'Oktober 2024',
    q: 'Welche Aussagen zu Psychopharmaka treffen zu?\n1. Neuroleptika wirken antipsychotisch, angstlösend und psychomotorisch dämpfend.\n2. Unter Quetiapin finden sich als Nebenwirkungen Schwindel, Mundtrockenheit, Gewichtszunahme und extrapyramidale Symptome.\n3. Echtes Johanniskraut darf bei depressiven Episoden angewendet werden.\n4. Echtes Johanniskraut kann unbedenklich mit allen anderen Arzneimitteln zusammen eingenommen werden.\n5. Angstlösende Arzneimittel wie Benzodiazepine führen oft zu Tagesmüdigkeit.',
    options: [
      'Nur die Aussage 2 ist richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 5 sind richtig. Neuroleptika haben antipsychotische, anxiolytische und sedierende Wirkung. Quetiapin zeigt die genannten Nebenwirkungen. Johanniskraut ist bei leichten bis mittelschweren Depressionen zugelassen. Benzodiazepine verursachen häufig Tagesmüdigkeit. Aussage 4 ist falsch: Johanniskraut hat erhebliche Wechselwirkungen (es induziert CYP-Enzyme und kann die Wirkung vieler Medikamente abschwächen, z.B. Kontrazeptiva, Antikoagulantien, Immunsuppressiva).',
  ),
  Question(
    id: 38,
    exam: 'Oktober 2024',
    q: 'Welche Aussage ist richtig?',
    options: [
      'Von der Hypophyse werden die motorischen Aktionen des Körpers koordiniert.',
      'Die beiden Hälften des Großhirns sind über den Balken verbunden.',
      'Der Parasympathikus ist für die Aktivierung von Körperzuständen zuständig (Flucht und Kampf)',
      'Im limbischen System liegt das Regulationszentrum von Atmung und Kreislauf.',
      'Bei Ausfällen im Hippocampus kommt es z.B. zu Gangunsicherheit oder verwaschener Sprache.',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Das Corpus callosum (Balken) verbindet die beiden Großhirnhemisphären. A ist falsch: Motorische Koordination erfolgt über das Kleinhirn und den motorischen Kortex, nicht die Hypophyse (die Hormone produziert). C ist falsch: Der Sympathikus (nicht Parasympathikus) ist für Fight-or-Flight zuständig. D ist falsch: Atmung und Kreislauf werden im Hirnstamm reguliert, nicht im limbischen System. E ist falsch: Gangunsicherheit und verwaschene Sprache sind eher Kleinhirnsymptome; der Hippocampus ist für Gedächtnis zuständig.',
  ),
  Question(
    id: 39,
    exam: 'Oktober 2024',
    q: 'Aus welchem Grund kann dem Patienten die Einsicht in seine Krankenunterlagen verweigert werden? (Wählen Sie zwei Antworten)',
    options: [
      'Einem Patienten darf aus keinem Grund die Einsicht verweigert werden.',
      'Einem Patienten darf auch ohne Nennung von Gründen die Einsicht verweigert werden.',
      'Einsicht darf verweigert werden, wenn die Rechte Dritter durch die Einsichtnahme verletzt werden.',
      'Einsicht darf verweigert werden, wenn dem erhebliche therapeutische Gründe entgegenstehen.',
      'Einsicht darf verweigert werden, wenn die Einsichtnahme nur mündlich beantragt wird.',
    ],
    correct: [2, 3],
    explanation:
        'C und D sind richtig. Nach §630g BGB kann die Einsicht verweigert werden, wenn erhebliche therapeutische Gründe entgegenstehen (z.B. Suizidgefahr durch Diagnosekenntnis) oder wenn Rechte Dritter verletzt würden (z.B. Informationen über dritte Personen in der Akte). A ist falsch: Es gibt begründete Ausnahmen. B ist falsch: Eine Verweigerung muss begründet sein. E ist falsch: Die Form des Antrags ist kein Verweigerungsgrund.',
  ),
  Question(
    id: 40,
    exam: 'Oktober 2024',
    q: 'Welches der nachgenannten Krankheitszeichen gehört nicht zu einer Panikstörung?',
    options: [
      'Starkes Herzklopfen und Herzrasen',
      'Zittern der Hände, Arme und Beine',
      'Gefühle von Schwindel, Schwäche, Unsicherheit, Benommenheit',
      'Entfremdungsgefühle (Depersonalisation oder Derealisation)',
      'Bewusstseins- und/oder Orientierungsstörungen',
    ],
    correct: 4,
    explanation:
        'Bewusstseins- und Orientierungsstörungen gehören nicht zur Panikstörung. Bei einer Panikattacke ist das Bewusstsein klar, auch wenn die Betroffenen sich benommen fühlen. Alle anderen Symptome (Herzklopfen, Zittern, Schwindel, Depersonalisation/Derealisation) sind typische Symptome einer Panikattacke nach ICD-10.',
  ),
  Question(
    id: 41,
    exam: 'Oktober 2024',
    q: 'Welche Aussage zum Tourette-Syndrom ist richtig?',
    options: [
      'Tourette-Syndrom ist ausschließlich durch vokale Tics gekennzeichnet',
      'Zur Diagnosestellung müssen die Symptome des Tourette-Syndroms mindestens seit einem Jahr vorhanden sein.',
      'Das Hauptmanifestationsalter ist im 3. Lebensjahr.',
      'Zum Tourette-Syndrom gehört die Koprolalie, nicht aber die Echolalie.',
      'Das Tourette-Syndrom zählt zu den Epilepsien.',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Für die Diagnose eines Tourette-Syndroms müssen multiple motorische und mindestens ein vokaler Tic über mindestens 12 Monate bestehen. A ist falsch: Sowohl motorische als auch vokale Tics müssen vorliegen. C ist falsch: Das Hauptmanifestationsalter liegt zwischen dem 6. und 8. Lebensjahr. D ist falsch: Sowohl Koprolalie als auch Echolalie können beim Tourette-Syndrom auftreten. E ist falsch: Das Tourette-Syndrom gehört zu den Ticstörungen, nicht zu den Epilepsien.',
  ),
  Question(
    id: 42,
    exam: 'Oktober 2024',
    q: 'Welche Aussage ist richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Zu den Hauptsymptomen einer depressiven Episode zählen die Schlaflosigkeit und der Appetitmangel.',
      'Bei einer depressiven Episode unterscheidet man leichte, mittelschwere und schwere Ausprägungen.',
      'Eine schwere depressive Episode geht in der Regel mit einer Psychose einher.',
      'Bei einer Dysthymia fühlen sich die Patienten vornehmlich erschöpft und depressiv, sind aber in der Regel fähig, mit den wesentlichen Anforderungen des täglichen Lebens zurechtzukommen.',
      'Bei einer depressiven Episode ist eine Lichttherapie notwendig.',
    ],
    correct: [1, 3],
    explanation:
        'B und D sind richtig. Die ICD-10 unterscheidet leichte, mittelgradige und schwere depressive Episoden. Bei Dysthymia bestehen chronische depressive Symptome, die Betroffenen können jedoch meist den Alltag bewältigen. A ist falsch: Schlaflosigkeit und Appetitmangel sind Zusatzsymptome (somatisches Syndrom), nicht Hauptsymptome. Hauptsymptome sind: depressive Stimmung, Interessenverlust und Antriebsminderung. C ist falsch: Eine schwere Depression kann, muss aber nicht mit psychotischen Symptomen einhergehen. E ist falsch: Lichttherapie ist besonders bei saisonaler Depression indiziert, aber nicht generell notwendig.',
  ),
  Question(
    id: 43,
    exam: 'Oktober 2024',
    q: 'Welche Aussagen im Umgang mit suizidalen Patienten sind richtig?\n1. Latente Suizidgedanken erfordern kein unmittelbares therapeutisches Vorgehen.\n2. Nur Menschen mit einer psychischen Erkrankung begehen einen Suizidversuch.\n3. Die Exploration der jetzigen und früheren Umstände, die zu Suizidalität geführt haben, ist unerlässlich in der Akutsituation.\n4. Die Vereinbarung eines Antisuizidvertrages ist sinnvoll bei nicht akuter Suizidalität.\n5. Die Äußerung von Suizidgedanken entbindet nicht zwangsläufig von der Schweigepflicht.',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '4 und 5 sind richtig. Ein Antisuizidvertrag (Non-Suizid-Vertrag) ist bei nicht akuter Suizidalität ein sinnvolles therapeutisches Instrument. Die bloße Äußerung von Suizidgedanken entbindet nicht automatisch von der Schweigepflicht – erst bei konkreter Gefahr besteht eine Handlungspflicht. Aussage 1 ist falsch: Auch latente Suizidgedanken erfordern therapeutische Aufmerksamkeit. Aussage 2 ist falsch: Auch psychisch Gesunde können Suizidversuche begehen (z.B. in Krisensituationen). Aussage 3: Die Exploration ist zwar wichtig, aber in der Akutsituation steht zunächst die Sicherung des Patienten im Vordergrund.',
  ),
  Question(
    id: 44,
    exam: 'Oktober 2024',
    q: 'Welche Aussagen zur Gesprächsführung mit Patienten treffen zu?\n1. Zu Beginn des Gesprächs sollten zunächst geschlossene Fragen gestellt werden.\n2. Offene Fragen sind im Anamnesegespräch nicht üblich.\n3. Suggestivfragen sind zu vermeiden.\n4. Abwertende Bemerkungen sollten vermieden werden.\n5. Allgemeine Aussagen wie \'ich habe überall Schmerzen\' müssen durch gezieltes Nachfragen eingegrenzt werden.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '3, 4 und 5 sind richtig. Suggestivfragen sind in der therapeutischen Gesprächsführung zu vermeiden, da sie die Antwort vorgeben. Abwertende Bemerkungen verletzen die therapeutische Beziehung. Vage Aussagen müssen durch Nachfragen konkretisiert werden. Aussage 1 ist falsch: Zu Beginn sollten offene Fragen gestellt werden, um dem Patienten Raum zu geben. Aussage 2 ist falsch: Offene Fragen sind im Anamnesegespräch sehr üblich und wichtig.',
  ),
  Question(
    id: 45,
    exam: 'Oktober 2024',
    q: 'Welche Aussagen zu \'Fatigue\' sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Die betroffenen Patienten leiden oft unter einem Gefühl der Erschöpfung und Verschlechterung schon nach leichter Anstrengung.',
      'Zu den häufigsten Beschwerden bei Fatigue zählen Einschlafattacken und Muskelkrämpfe.',
      'Die Erfassung der Belastung durch Fatigue ist im klinischen Alltag durch routinemäßige Nutzung validierter Fragebögen gesichert.',
      'Fatigue tritt bei rezidivierenden oder progredienten Krebserkrankungen auf.',
      'Fatigue ist synonym verwendbar mit der Diagnose der Neurasthenie.',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Fatigue ist gekennzeichnet durch ausgeprägte Erschöpfung, die schon nach geringer Belastung auftritt und durch Ruhe nicht ausreichend gebessert wird. Sie ist eine häufige Begleiterscheinung von Krebserkrankungen (tumorassoziierte Fatigue). B ist falsch: Einschlafattacken und Muskelkrämpfe sind nicht die Hauptsymptome. C ist falsch: Die routinemäßige Erfassung durch Fragebögen ist im klinischen Alltag leider nicht gesichert. E ist falsch: Fatigue und Neurasthenie sind nicht synonym.',
  ),
  Question(
    id: 46,
    exam: 'Oktober 2024',
    q: 'Ein 16-jähriger junger Mann steht seit 3 Monaten in Ihrer psychotherapeutischen Behandlung wegen Aggression. Er wurde nach PsychKG in eine psychiatrische Klinik überwiesen und bekommt Risperdon und Olanzapin. Welche der Aussagen ist richtig?\n1. Die Diagnose einer schizophrenen Erkrankung darf im Kindes- und Jugendalter nicht gestellt werden.\n2. Schizophrenie ist durch ein charakteristisches Muster von Störungen in Wahrnehmung, Denken, Ich-Funktionen, Affektivität, Antrieb und Psychomotorik gekennzeichnet.\n3. Bei etwa 10-30% der Betroffenen heilt die Erkrankung ohne Rückfall aus.\n4. Neben der medikamentösen Behandlung ist eine psychotherapeutische und psychosoziale Begleitung sinnvoll.\n5. Zu wichtigen Nebenwirkungen gehören Dyskinesien sowie Gewichtszunahme.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '2, 3, 4 und 5 sind richtig. Schizophrenie zeigt das beschriebene Störungsmuster. Bei 10-30% heilt die Erkrankung aus. Psychotherapie und psychosoziale Begleitung ergänzen die Medikation. Dyskinesien und Gewichtszunahme sind typische Neuroleptika-Nebenwirkungen (besonders bei Risperdon und Olanzapin). Aussage 1 ist falsch: Schizophrenie kann auch im Kindes- und Jugendalter diagnostiziert werden, auch wenn es seltener vorkommt.',
  ),
  Question(
    id: 47,
    exam: 'Oktober 2024',
    q: 'Welche der folgenden Aussagen zu einer Behandlung mit Lithium sind korrekt?\n1. Lithium kann zu einem Tremor führen.\n2. Lithium hat eine hohe therapeutische Breite\n3. Lithium wirkt antimanisch, antidepressiv und antisuizidal\n4. Unter Lithium kann es zu einer Gewichtszunahme kommen.\n5. Lithium kann zu gesteigertem Durstempfinden (Polydipsie) führen',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 3, 4 und 5 sind richtig. Lithium verursacht häufig feinschlägigen Tremor, wirkt antimanisch, antidepressiv und nachweislich antisuizidal, kann zu Gewichtszunahme führen und Polydipsie (durch Wirkung auf die Nieren/ADH-Achse) verursachen. Aussage 2 ist falsch: Lithium hat eine GERINGE therapeutische Breite (enge Spanne zwischen wirksamer und toxischer Dosis), weshalb regelmäßige Spiegelkontrollen unerlässlich sind.',
  ),
  Question(
    id: 48,
    exam: 'Oktober 2024',
    q: 'Welche Merkmale gehören zu der dissozialen Persönlichkeitsstörung? (Wählen Sie zwei Antworten)',
    options: [
      'Sehr niedrige Frustrationstoleranz',
      'Sozial überangepasstes Verhalten',
      'Mangel an Schuldbewusstsein',
      'Vermeidung unbekannter Aktivitäten oder Situationen',
      'Extreme Angst Beziehungen zu knüpfen',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Die dissoziale (antisoziale) Persönlichkeitsstörung ist gekennzeichnet durch sehr niedrige Frustrationstoleranz mit Neigung zu aggressivem Verhalten und durch einen Mangel an Schuldbewusstsein und Empathie. B ist falsch: Dissoziale Persönlichkeiten sind gerade nicht überangepasst, sondern missachten soziale Normen. D ist falsch: Vermeidung unbekannter Situationen ist typisch für die ängstlich-vermeidende PS. E ist falsch: Extreme Beziehungsangst gehört nicht zur dissozialen PS.',
  ),
  Question(
    id: 49,
    exam: 'Oktober 2024',
    q: 'Welche der folgenden Aussagen zu Zwangshandlungen sind richtig?\n1. Zu den häufigsten Zwangshandlungen zählen Kontrollrituale, Waschrituale und Zählzwänge.\n2. In der Differenzialdiagnostik muss entschieden werden, ob die Symptome im Rahmen einer Zwangsstörung oder einer anderen Störung einzuordnen sind.\n3. Die Patienten leiden unter den Zwangsgedanken und werden in ihrer Leistungsfähigkeit behindert.\n4. Obwohl die Patienten einsehen, dass ihr Zwang unsinnig ist, können sie nicht oder nur schwer davon ablassen.\n5. Werden Zwangshandlungen unterdrückt, verstärkt sich die Anspannung deutlich.',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Kontroll-, Wasch- und Zählzwänge sind die häufigsten Zwangshandlungen. Differenzialdiagnostisch müssen Zwangssymptome von anderen Störungen abgegrenzt werden. Zwangspatienten leiden unter ihren Symptomen und sind funktionell beeinträchtigt. Sie erkennen die Unsinnigkeit (Ich-Dystonie), können aber nicht aufhören. Bei Unterdrückung der Zwangshandlungen steigt die Anspannung massiv an.',
  ),
  Question(
    id: 50,
    exam: 'Oktober 2024',
    q: 'Welche Symptome können bei einem Delir auftreten?\n1. Störungen der Psychomotorik\n2. Störungen des Schlaf-Wach-Rhythmus\n3. Störungen des Bewusstseins und der Aufmerksamkeit\n4. Störungen des Affekts\n5. Störung der Kognition und Wahrnehmung',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Ein Delir kann folgende Symptome zeigen: psychomotorische Störungen (Hyper- oder Hypoaktivität), Schlaf-Wach-Rhythmusstörungen, Bewusstseins- und Aufmerksamkeitsstörungen (Kernsymptom), Affektstörungen (Angst, Reizbarkeit, Depression, Euphorie) und kognitive Störungen sowie Wahrnehmungsstörungen (Halluzinationen, illusionäre Verkennungen).',
  ),
  Question(
    id: 51,
    exam: 'Oktober 2024',
    q: 'Welche der folgenden Aussagen in Bezug auf die somatoformen Störungen sind zutreffend? (Wählen Sie zwei Antworten)',
    options: [
      'Das Da-Costa-Syndrom (Herzneurose) gehört zu den somatoformen autonomen Funktionsstörungen.',
      'Entspannungsverfahren sind kontraindiziert, da sie eine Fokussierung und damit Verstärkung der Schmerzwahrnehmung bewirken.',
      'Die Hypochondrie gehört nicht zu den somatoformen Störungen.',
      'Die dysmorphophobische Störung wird zu den Essstörungen gezählt.',
      'Der Einsatz von Psychopharmaka kommt bei somatoformen Störungen in Betracht.',
    ],
    correct: [0, 4],
    explanation:
        'A und E sind richtig. Das Da-Costa-Syndrom (Herzneurose/Herzangstneurose) ist eine somatoforme autonome Funktionsstörung des kardiovaskulären Systems (F45.30). Psychopharmaka (insbesondere Antidepressiva) können bei somatoformen Störungen therapeutisch eingesetzt werden. B ist falsch: Entspannungsverfahren sind nicht kontraindiziert, sondern oft hilfreich. C ist falsch: Die Hypochondrie gehört nach ICD-10 zu den somatoformen Störungen (F45.2). D ist falsch: Die körperdysmorphe Störung gehört zu den somatoformen Störungen, nicht zu den Essstörungen.',
  ),
  Question(
    id: 52,
    exam: 'Oktober 2024',
    q: 'Im Heilpraktikergesetz ist geregelt:\n1. Das Verbot, Geburtshilfe außer im Notfall zu leisten\n2. Die Verpflichtung zur Hilfe im Notfall\n3. Das Verbot der Untersuchung und Behandlung von Mund-, Zahn- und Kiefererkrankungen\n4. Das Verbot Heilversprechen zu geben\n5. Das Verbot der Heilkunde im Umherziehen',
    options: [
      'Nur die Aussage 5 ist richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 3 und 5 sind richtig und im HeilprG geregelt: Das Verbot der Geburtshilfe (außer Notfall), das Verbot der Behandlung von Mund-/Zahn-/Kiefererkrankungen und das Verbot der Heilkunde im Umherziehen. Aussage 2 ist falsch: Die Hilfeleistungspflicht im Notfall ergibt sich aus dem StGB (§323c unterlassene Hilfeleistung), nicht aus dem HeilprG. Aussage 4 ist falsch: Das Verbot von Heilversprechen steht im HWG (Heilmittelwerbegesetz), nicht im HeilprG.',
  ),
  Question(
    id: 53,
    exam: 'Oktober 2024',
    q: 'Eine 23-jährige Frau äußert Ihnen gegenüber Gedanken wie: \'Hoffentlich blamiere ich mich nicht.\', \'Was denken die anderen über mich?\', \'Gleich lachen die mich aus.\', \'Was sage ich bloß, wenn ich meine Kollegen treffe?\', \'Ich werde dastehen wie ein Trottel.\', \'Das halte ich nicht aus. Ich muss hier raus.\' Welche psychische Störung liegt am ehesten vor?',
    options: [
      'Hebephrene Schizophrenie',
      'Soziale Phobie',
      'Agoraphobie',
      'Zwangsstörung',
      'Posttraumatische Belastungsstörung',
    ],
    correct: 1,
    explanation:
        'Die beschriebenen Gedanken sind typisch für eine soziale Phobie (soziale Angststörung). Die zentrale Angst dreht sich um negative Bewertung durch andere, Blamage und Peinlichkeit in sozialen Situationen. Die Gedanken zeigen übertriebene Sorge vor Bewertung, Angst vor Kritik und Vermeidungstendenz. Agoraphobie betrifft eher Angst vor Orten, von denen Flucht schwierig wäre. Die anderen Störungen passen nicht zum Gedankenmuster.',
  ),
  Question(
    id: 54,
    exam: 'Oktober 2024',
    q: 'Was trifft auf das demenzielle Syndrom zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei der Pseudodemenz handelt es sich um ein demenzielles Syndrom.',
      'Alogie und Apraxie gehören zum klinischen Bild.',
      'Zum Syndrom gehören Störungen des Affektes, des Antriebs oder des Sozialverhaltens.',
      'Die Diagnose kann laut ICD-10 erst mit Erreichen des 65. Lebensjahres gestellt werden.',
      'Zur Diagnosestellung müssen die Symptome mindestens über 3 Monate vorliegen.',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Apraxie (Störung der Handlungsplanung) gehört neben Aphasie und Agnosie zum klinischen Bild der Demenz; Alogie (Sprachverarmung) kann ebenfalls auftreten. Störungen des Affekts, Antriebs und Sozialverhaltens sind typische Begleitsymptome. A ist falsch: Pseudodemenz ist keine echte Demenz, sondern ein depressives Syndrom mit demenziellen Symptomen. D ist falsch: Demenz kann in jedem Alter diagnostiziert werden. E ist falsch: Die Symptome müssen nach ICD-10 mindestens 6 Monate vorliegen.',
  ),
  Question(
    id: 55,
    exam: 'Oktober 2024',
    q: 'Welche Aussagen zur Praxisgründung sind richtig?\n1. Sie müssen die Praxisgründung bei der unteren Gesundheitsbehörde anmelden.\n2. Eine Anmeldung beim Finanzamt ist erst nach einem Jahr erforderlich.\n3. Angestellte können Sie freiwillig bei der Berufsgenossenschaft anmelden.\n4. Für Ihren Praxissitz müssen Sie eine feste Adresse haben.\n5. Angestellte müssen mindestens einmal jährlich über Gefahren am Arbeitsplatz aufgeklärt werden.',
    options: [
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 4 und 5 sind richtig. Die Praxisgründung muss beim Gesundheitsamt angemeldet werden. Eine feste Praxisadresse ist erforderlich. Angestellte müssen jährlich über Arbeitsschutz unterwiesen werden. Aussage 2 ist falsch: Die Finanzamt-Anmeldung muss sofort bei Aufnahme der Tätigkeit erfolgen. Aussage 3 ist falsch: Die Anmeldung bei der Berufsgenossenschaft ist für Arbeitgeber Pflicht, nicht freiwillig.',
  ),
  Question(
    id: 56,
    exam: 'Oktober 2024',
    q: 'Welche Aussagen sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'In der systemischen Therapie werden die dysfunktionalen innerfamiliären Beziehungen des Patienten geklärt.',
      'Die kognitive Therapie fußt auf Erfahrungen aus dem Flooding.',
      'Bei einer Verhaltensanalyse stehen die frühkindlichen Entwicklungsschritte im Vordergrund.',
      'Vor Beginn einer Psychotherapie sollte eine somatische Abklärung der Symptomatik erfolgen.',
      'Verhaltens- und Gedankenprotokolle gehören zum Methodenspektrum der tiefenpsychologisch fundierten Therapie.',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Die systemische Therapie befasst sich mit den Beziehungsmustern und der Klärung dysfunktionaler familiärer Interaktionen. Vor jeder Psychotherapie ist eine somatische Abklärung notwendig, um organische Ursachen auszuschließen. B ist falsch: Die kognitive Therapie basiert auf der Arbeit mit dysfunktionalen Kognitionen (Beck, Ellis), nicht auf Flooding. C ist falsch: Die Verhaltensanalyse (z.B. SORKC-Modell) fokussiert auf aktuelles Verhalten, nicht auf frühkindliche Entwicklung. E ist falsch: Verhaltens- und Gedankenprotokolle gehören zur Verhaltenstherapie, nicht zur tiefenpsychologisch fundierten Therapie.',
  ),
];
