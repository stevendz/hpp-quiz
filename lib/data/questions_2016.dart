import '../models/question.dart';

const List<Question> questions2016 = [
  Question(
    id: 1,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zu psychiatrischen Notfallsituationen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Durch den Konsum sogenannter synthetischer Kräutermischungen können akute psychotische Zustände mit akuter Selbstgefährdung auftreten',
      'Nur im Falle einer akuten Fremdgefährdung kann der Patient gegen seinen Willen zwangsweise untergebracht werden',
      'Akute Erregungszustände treten unter anderem bei hirnorganischen Erkrankungen auf',
      'Ein Stupor tritt typischerweise bei der emotional-instabilen Persönlichkeitsstörung auf',
      'Im Falle eines akuten Alkoholentzugs ist die vorübergehende Gabe von Alkohol als therapeutische Maßnahme ausreichend',
    ],
    correct: [0, 2],
    explanation:
        'A ist richtig: Synthetische Cannabinoide ("Kräutermischungen", "Spice") können schwere psychotische Zustände mit Selbst- und Fremdgefährdung auslösen. C ist richtig: Akute Erregungszustände sind ein Leitsymptom hirnorganischer Erkrankungen (z.B. Delir, Demenz, Schädel-Hirn-Trauma). B ist falsch: Auch akute Selbstgefährdung rechtfertigt eine Unterbringung nach PsychKG/UBG. D ist falsch: Stupor tritt typischerweise bei katatoner Schizophrenie, schwerer Depression und dissoziativen Störungen auf. E ist falsch: Der Alkoholentzug wird medikamentös behandelt (z.B. Clomethiazol, Benzodiazepine); die Gabe von Alkohol ist keine Therapie.',
  ),
  Question(
    id: 2,
    exam: 'März 2016',
    q: 'Welche Aussage zum operanten Konditionieren trifft zu?\nBei der positiven Verstärkung',
    options: [
      'wird ein angenehmer Reiz nach unerwünschtem Verhalten entfernt',
      'soll die Auftretenswahrscheinlichkeit des unerwünschten Verhaltens verringert werden',
      'wird ein angenehmer Reiz nach erwünschtem Verhalten entfernt',
      'folgt ein angenehmer Reiz auf ein erwünschtes Verhalten',
      'soll die Auftretenswahrscheinlichkeit des erwünschten Verhaltens verringert werden',
    ],
    correct: 3,
    explanation:
        'Positive Verstärkung bedeutet: Auf ein erwünschtes Verhalten folgt ein angenehmer Reiz (Hinzufügen = "positiv"), wodurch die Auftretenswahrscheinlichkeit dieses Verhaltens steigt. Abzugrenzen sind: negative Verstärkung (unangenehmer Reiz wird entfernt, Verhalten nimmt zu), direkte Bestrafung (unangenehmer Reiz folgt) und indirekte Bestrafung bzw. Löschung (angenehmer Reiz wird entzogen).',
  ),
  Question(
    id: 3,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zu Suizidalität trifft (treffen) zu?\n1. Heilpraktikern ist die Behandlung von Patienten mit Suizidgedanken grundsätzlich nicht gestattet\n2. In den Monaten nach der Klinikentlassung ist das Risiko für eine Wiederholung des Suizidversuchs üblicherweise als sehr gering einzustufen\n3. Direkte Fragen nach Suizidalität sollten bei Patienten mit schweren Depressionen vermieden werden\n4. Bei Schizophrenie ist die Suizidmortalität deutlich höher als bei der Allgemeinbevölkerung\n5. Bei älteren Menschen sind Suizide nur selten durch eine psychische Erkrankung bedingt',
    options: [
      'Nur die Aussage 4 ist richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur Aussage 4 ist richtig: Etwa 5-10% der an Schizophrenie Erkrankten versterben durch Suizid – deutlich mehr als in der Allgemeinbevölkerung. 1 ist falsch: Suizidgedanken allein sind kein Behandlungsverbot; bei akuter Suizidalität besteht allerdings Handlungspflicht. 2 ist falsch: Die Zeit direkt nach Klinikentlassung ist eine Hochrisikophase. 3 ist falsch: Direktes, offenes Ansprechen von Suizidalität ist geboten und löst keinen Suizid aus. 5 ist falsch: Suizide älterer Menschen sind sehr häufig durch Depressionen bedingt.',
  ),
  Question(
    id: 4,
    exam: 'März 2016',
    q: 'Welche Aussage zu verhaltenstherapeutischen Verfahren trifft zu?',
    options: [
      'Bei der rational-emotiven Therapie (RET) von Verhaltensstörungen (nach Ellis) lassen sich die irrationalen Grundannahmen durch einmaliges Aufdecken beheben',
      'Bei dem von Beck für die Behandlung von depressiven Störungen entwickelten Konzept der "kognitiven Triade" handelt es sich um Reizüberflutung',
      'Bei Biofeedback werden Erlebnisinhalte der Patienten verbalisiert',
      'Eine Konfrontationsbehandlung mittels Flooding muss von Therapeuten angeleitet und begleitet werden',
      'Eine systematische Desensibilisierung ist in erster Linie bei Schizophrenie indiziert',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Flooding (Reizüberflutung) konfrontiert den Patienten unmittelbar mit dem stärksten Angstreiz und muss zwingend therapeutisch angeleitet und begleitet werden. A ist falsch: Irrationale Grundannahmen erfordern wiederholtes Bearbeiten, nicht einmaliges Aufdecken. B ist falsch: Die kognitive Triade nach Beck beschreibt die negative Sicht auf sich selbst, die Welt und die Zukunft. C ist falsch: Beim Biofeedback werden körperliche Vorgänge (z.B. Muskelspannung, Hautleitwert) rückgemeldet. E ist falsch: Systematische Desensibilisierung ist ein Verfahren zur Behandlung von Phobien, nicht der Schizophrenie.',
  ),
  Question(
    id: 5,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu?\nTypische körperliche Symptome einer depressiven Episode sind:\n1. Libidoverlust\n2. Schlafstörungen\n3. Suizidgedanken\n4. Appetitlosigkeit\n5. Fieber',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        'Libidoverlust, Schlafstörungen (typisch: Früherwachen) und Appetitlosigkeit mit Gewichtsverlust gehören zum somatischen Syndrom der Depression. Suizidgedanken sind ein psychisches, kein körperliches Symptom. Fieber gehört nicht zum Bild einer depressiven Episode und muss somatisch abgeklärt werden.',
  ),
  Question(
    id: 6,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zur bipolaren Störung nach ICD-10 treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Es gibt Verlaufsformen mit psychotischen Symptomen',
      'Frauen sind weitaus häufiger betroffen als Männer',
      'Depressive Episoden dauern in der Regel länger als die manischen Episoden',
      'Manische Episoden beginnen in der Regel schleichend',
      'Die Erkrankung tritt fast ausschließlich innerhalb der ersten zwei Lebensdekaden auf',
    ],
    correct: [0, 2],
    explanation:
        'A ist richtig: Sowohl manische (F31.2) als auch depressive Episoden (F31.5) können mit psychotischen Symptomen einhergehen. C ist richtig: Depressive Episoden dauern typischerweise etwa 4-6 Monate, manische Episoden nur etwa 4 Monate. B ist falsch: Die bipolare Störung betrifft Frauen und Männer etwa gleich häufig (anders als die unipolare Depression). D ist falsch: Manische Episoden beginnen meist abrupt innerhalb weniger Tage. E ist falsch: Der Erkrankungsgipfel liegt um das 18. Lebensjahr, ein Beginn ist aber in jedem Lebensalter möglich.',
  ),
  Question(
    id: 7,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nDie häufigsten komorbiden Störungen bei Menschen mit Zwangsstörungen sind:',
    options: [
      'schizoide Persönlichkeitsstörung',
      'dissoziative Persönlichkeitsstörung',
      'depressive Störung',
      'Borderline-Persönlichkeitsstörung',
      'Angststörung',
    ],
    correct: [2, 4],
    explanation:
        'Depressive Störungen (bis zu 80% im Verlauf) und Angststörungen sind die mit Abstand häufigsten Komorbiditäten bei Zwangsstörungen. Schizoide und Borderline-Persönlichkeitsstörung sind keine typischen Begleitstörungen; eine "dissoziative Persönlichkeitsstörung" existiert in der ICD-10 nicht (gemeint wäre die dissoziative Identitätsstörung F44.81).',
  ),
  Question(
    id: 8,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen für eine Lese- und Rechtschreibstörung nach ICD-10 zu? (Wählen Sie zwei Antworten)',
    options: [
      'Soziale und emotionale Anpassungsprobleme stehen mit einer Lese- und Rechtschreibstörung nicht im Zusammenhang',
      'Die Leseleistung muss unter dem Niveau liegen, das aufgrund des Alters, der allgemeinen Intelligenz und Beschulung zu erwarten wäre',
      'Eine umschriebene Entwicklungsstörung des Sprechens und der Sprache geht der Lese- und Rechtschreibstörung häufig voraus',
      'Ein Defizit des Leseverständnisses ist typischerweise nicht vorhanden',
      'Die Störung tritt im Rahmen einer allgemeinen Intelligenzminderung auf',
    ],
    correct: [1, 2],
    explanation:
        'B ist richtig: Kernkriterium ist die Diskrepanz zwischen erwarteter (nach Alter, Intelligenz, Beschulung) und tatsächlicher Leseleistung. C ist richtig: Umschriebene Sprachentwicklungsstörungen gehen der LRS häufig voraus. A ist falsch: Sekundäre emotionale Probleme und Verhaltensauffälligkeiten sind sehr häufig. D ist falsch: Das Leseverständnis ist typischerweise mitbetroffen. E ist falsch: Eine Intelligenzminderung ist ein Ausschlusskriterium – die LRS ist eine umschriebene Entwicklungsstörung (F81.0) bei normaler Intelligenz.',
  ),
  Question(
    id: 9,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nZu den formalen Denkstörungen gehören:',
    options: [
      'Gedankenübertragung',
      'Perseveration',
      'Zwangsgedanken',
      'Misstrauen gegenüber anderen Menschen',
      'Denkhemmung',
    ],
    correct: [1, 4],
    explanation:
        'Formale Denkstörungen betreffen den Ablauf des Denkens: Perseveration (Haftenbleiben an Vorstellungen) und Denkhemmung (subjektiv als gebremst erlebtes Denken) gehören dazu. Gedankenübertragung ist eine Ich-Störung, Zwangsgedanken sind eine inhaltliche Denkstörung, Misstrauen ist ein Affekt- bzw. Persönlichkeitsmerkmal.',
  ),
  Question(
    id: 10,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nTypische Wahninhalte bei einer schweren depressiven Episode mit psychotischen Symptomen sind am ehesten:',
    options: ['Verarmungswahn', 'Größenwahn', 'Abstammungswahn', 'Versündigungswahn', 'Dermatozoenwahn'],
    correct: [0, 3],
    explanation:
        'Bei der schweren depressiven Episode mit psychotischen Symptomen sind die Wahninhalte synthym (stimmungskongruent): Verarmungswahn, Versündigungswahn, Schuldwahn, hypochondrischer Wahn und nihilistischer Wahn. Größenwahn und Abstammungswahn passen zur Manie bzw. Schizophrenie, der Dermatozoenwahn tritt vor allem bei organischen Psychosen und Kokainkonsum auf.',
  ),
  Question(
    id: 11,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nAls Risikofaktor für eine Demenz bei Alzheimer-Krankheit gelten:',
    options: [
      'hohes Bildungsniveau',
      'hohes Lebensalter',
      'Alter der Mutter über 35 bei der Entbindung',
      'Demenz bei Verwandtschaft ersten Grades',
      'vegane Ernährung',
    ],
    correct: [1, 3],
    explanation:
        'Das Lebensalter ist der wichtigste Risikofaktor (Verdopplung der Prävalenz etwa alle 5 Jahre ab dem 65. Lebensjahr). Eine familiäre Belastung ersten Grades erhöht das Risiko ebenfalls deutlich. Ein hohes Bildungsniveau gilt umgekehrt als protektiv (kognitive Reserve). Mütterliches Alter und vegane Ernährung sind keine anerkannten Risikofaktoren.',
  ),
  Question(
    id: 12,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nTypische Begleitsymptome bei Morbus Parkinson sind:',
    options: [
      'Enthemmung',
      'Affektlabilität',
      'Verlangsamung der geistigen Funktionen und Denkabläufe (Bradyphrenie)',
      'inadäquate euphorische Stimmung',
      'Antriebssteigerung',
    ],
    correct: [1, 2],
    explanation:
        'Beim Morbus Parkinson finden sich neben der motorischen Trias (Rigor, Tremor, Akinese) typischerweise Affektlabilität und Bradyphrenie (Verlangsamung des Denkens). Depression tritt bei bis zu 40% der Betroffenen auf. Enthemmung, Euphorie und Antriebssteigerung sind gerade nicht typisch – im Gegenteil, Antriebsminderung dominiert.',
  ),
  Question(
    id: 13,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen eines Patienten entspricht einem Wahn?',
    options: [
      'Ich kann nicht gerade über die Straße gehen, sondern nur schräg, obwohl ich weiß, dass das unsinnig ist',
      'Seit meinem Unfall sehe ich nachts im Traum immer wieder die Unfallstelle und wache dann auf',
      'Mein Nachbar kontrolliert mich über Mikrophone, die in Elektrogeräten installiert sind',
      'Ich höre Stimmen der Engel, die über mich reden',
      'Der Anblick einer Spinne ruft in mir große Angst hervor',
    ],
    correct: 2,
    explanation:
        'C beschreibt einen Verfolgungswahn: eine unkorrigierbare, an der Realität nicht überprüfte Überzeugung, die mit subjektiver Gewissheit vertreten wird. A ist ein Zwang (mit erhaltener Einsicht in die Unsinnigkeit), B eine Intrusion bzw. ein Albtraum im Rahmen einer PTBS, D eine akustische Halluzination (Wahrnehmungsstörung, kein Wahn) und E eine spezifische Phobie.',
  ),
  Question(
    id: 14,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zur sozialen Angststörung (sozialen Phobie) treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die intensiven physiologischen Symptome werden meist als vitale Bedrohung erlebt',
      'Die Ängste treten in Situationen auf, in denen eigenes Verhalten einer Bewertung durch andere ausgesetzt ist',
      'Erhöhte Selbstaufmerksamkeit und Sicherheitsverhalten tragen zur Aufrechterhaltung der sozialen Angststörung bei',
      'Die meisten Betroffenen erkranken erst nach dem 30. Lebensjahr',
      'Das Risiko Substanzmissbrauch oder eine Abhängigkeit zu entwickeln, ist bei Menschen mit ausgeprägten sozialen Ängsten im Vergleich zur Normalbevölkerung vermindert',
    ],
    correct: [1, 2],
    explanation:
        'B ist richtig: Kern der sozialen Phobie ist die Angst vor negativer Bewertung durch andere. C ist richtig: Selbstfokussierte Aufmerksamkeit und Sicherheitsverhalten sind die zentralen aufrechterhaltenden Faktoren (Modell nach Clark & Wells). A ist falsch: Das Erleben vitaler Bedrohung ist typisch für die Panikstörung. D ist falsch: Der Beginn liegt meist in der Adoleszenz (etwa 13.-20. Lebensjahr). E ist falsch: Das Risiko für Substanzmissbrauch – vor allem Alkohol zur Angstdämpfung – ist deutlich erhöht.',
  ),
  Question(
    id: 15,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen trifft (treffen) zu?\nDie zwangsweise Unterbringung selbstgefährdeter psychisch kranker Personen nach dem Unterbringungsrecht (z.B. Unterbringungsgesetz, Psychisch-Kranken-Gesetz) erfolgt in der Regel\n1. in einer Einrichtung zur Sicherungsverwahrung\n2. im psychiatrischen Maßregelvollzug (forensische Klinik)\n3. auf einer neurologischen Intensivstation\n4. in einem psychiatrischen Krankenhaus\n5. in einer psychosomatischen Fachklinik',
    options: [
      'Nur die Aussage 1 ist richtig',
      'Nur die Aussage 4 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        'Die zivilrechtliche Unterbringung nach PsychKG/UBG erfolgt in einem psychiatrischen Krankenhaus bzw. einer psychiatrischen Fachabteilung. Sicherungsverwahrung und Maßregelvollzug sind strafrechtliche Institute (§§ 63, 64 StGB) und setzen eine Straftat voraus. Neurologische Intensivstation und psychosomatische Fachklinik sind keine Unterbringungsorte nach Unterbringungsrecht.',
  ),
  Question(
    id: 16,
    exam: 'März 2016',
    q: 'Welche Aussage trifft zu?\nEine abnorme Trauerreaktion (pathologische Trauer) wird nach ICD-10 folgendem Störungsbild zugeordnet:',
    options: ['Dysthymia', 'akute Belastungsreaktion', 'Neurasthenie', 'Anpassungsstörungen', 'Depressive Episode'],
    correct: 3,
    explanation:
        'Die abnorme bzw. verlängerte Trauerreaktion wird in der ICD-10 den Anpassungsstörungen (F43.2) zugeordnet, konkret F43.21 (längere depressive Reaktion). Die akute Belastungsreaktion (F43.0) klingt innerhalb von Stunden bis wenigen Tagen ab, die Dysthymia (F34.1) ist eine chronische leichte Verstimmung ohne auslösendes Ereignis.',
  ),
  Question(
    id: 17,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zum Beschwerdebild einer Schizophrenie treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Wahnideen zählen zu den formalen Denkstörungen',
      'Am häufigsten wird die paranoid-halluzinatorische Form beobachtet',
      'Starke motorische Unruhe kennzeichnet die Parathymie',
      'Das Phänomen des Gedankenentzugs gehört zu den sogenannten Ich-Störungen',
      'Stupor ist ein affektives Symptom der Schizophrenie',
    ],
    correct: [1, 3],
    explanation:
        'B ist richtig: Die paranoide Schizophrenie (F20.0) ist mit Abstand die häufigste Unterform. D ist richtig: Gedankenentzug gehört neben Gedankeneingebung, Gedankenausbreitung und Willensbeeinflussung zu den Ich-Störungen. A ist falsch: Wahn ist eine inhaltliche Denkstörung. C ist falsch: Parathymie bezeichnet die Inkongruenz von Affekt und Gedankeninhalt, nicht motorische Unruhe. E ist falsch: Stupor ist eine psychomotorische (katatone) Störung.',
  ),
  Question(
    id: 18,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zum sogenannten "Messie-Syndrom" (pathologisches Horten) treffen am ehesten zu?\n1. Charakteristisch ist das Anhäufen und Sammeln von wertlosen oder verbrauchten Dingen in der eigenen Wohnung\n2. Das Messie-Syndrom geht häufig mit Symptomen einer Zwangsstörung einher\n3. Die Betroffenen reagieren meist mit sozialem Rückzug\n4. Pathologisches Horten findet meist außerhalb der eigenen Wohnung statt\n5. Überwiegend sind Kinder und Jugendliche betroffen',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        'Die Aussagen 1, 2 und 3 treffen zu: Gehortet werden wertlose Gegenstände in der eigenen Wohnung, es besteht eine hohe Überschneidung mit der Zwangsstörung, und Scham führt typischerweise zu sozialem Rückzug und Vermeidung von Besuch. 4 ist falsch: Das Horten betrifft gerade den eigenen Wohnraum. 5 ist falsch: Betroffen sind überwiegend Erwachsene, die Symptomatik nimmt mit dem Alter zu.',
  ),
  Question(
    id: 19,
    exam: 'März 2016',
    q: 'Welche Aussage trifft zu?\nEine Symptomatik mit Euphorie, erhöhter Vigilanz, Tachykardie, Hypertonie und Pupillenerweiterung ist am ehesten typisch für eine',
    options: [
      'Lithiumintoxikation',
      'Alkoholintoxikation',
      'Opiatintoxikation',
      'Benzodiazepinintoxikation',
      'Kokainintoxikation',
    ],
    correct: 4,
    explanation:
        'Die Kombination aus Euphorie, gesteigerter Wachheit, Tachykardie, Hypertonie und Mydriasis (Pupillenerweiterung) ist typisch für eine Intoxikation mit Stimulanzien, insbesondere Kokain. Opiate führen umgekehrt zu Miosis (Stecknadelpupillen), Atemdepression und Sedierung. Alkohol, Benzodiazepine und Lithium wirken sedierend bzw. verursachen bei Intoxikation Ataxie, Tremor und Vigilanzminderung.',
  ),
  Question(
    id: 20,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zu Essstörungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei Anorexia nervosa ist das Suizidrisiko erhöht',
      'Die Binge-Eating-Störung (BES) ist bei Männern häufiger als bei Frauen',
      'Der Übergang von Anorexia nervosa in eine Bulimia nervosa oder eine Binge-Eating-Störung ist nicht möglich',
      'Ein relevantes Untergewicht wird angenommen bei einem Body-Mass-Index (BMI) von 20 kg/m²',
      'Bei Beginn einer Anorexia nervosa vor der Pubertät kann eine primäre Amenorrhö auftreten',
    ],
    correct: [0, 4],
    explanation:
        'A ist richtig: Die Anorexia nervosa hat die höchste Mortalität aller psychischen Erkrankungen, ein erheblicher Teil davon durch Suizid. E ist richtig: Bei präpubertärem Beginn bleibt die Menarche aus (primäre Amenorrhö). B ist falsch: Auch die Binge-Eating-Störung betrifft mehr Frauen als Männer, das Geschlechterverhältnis ist aber ausgeglichener als bei Anorexie und Bulimie. C ist falsch: Übergänge zwischen den Essstörungen sind häufig. D ist falsch: Die Diagnoseschwelle liegt bei einem BMI von 17,5 kg/m² oder darunter.',
  ),
  Question(
    id: 21,
    exam: 'März 2016',
    q: 'Welche Aussage trifft zu?\nEin 60-jähriger Patient berichtet Ihnen von einer quälenden inneren Unruhe, verstärkt im Sitzen und Liegen, mit ausgeprägtem Bewegungsdrang, der den ganzen Körper betrifft. Während des Gesprächs ist er unfähig still zu sitzen, tritt von einem Bein auf das andere oder wippt hin und her.\nDie Symptome sprechen am ehesten für',
    options: ['Akathisie', 'Adynamie', 'dissoziative Bewegungsstörung', 'Hypothyreose', 'Tourette-Syndrom'],
    correct: 0,
    explanation:
        'Die Akathisie (Sitzunruhe) ist durch quälende innere Unruhe mit unwiderstehlichem Bewegungsdrang gekennzeichnet und tritt typischerweise als extrapyramidal-motorische Nebenwirkung von Neuroleptika auf. Adynamie bedeutet Antriebs- und Kraftlosigkeit, die Hypothyreose führt zu Verlangsamung und Antriebsminderung, und das Tourette-Syndrom ist durch motorische und vokale Tics charakterisiert.',
  ),
  Question(
    id: 22,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zu den organischen psychischen Störungen nach ICD-10 treffen zu?\n1. Verfolgungswahn kann ein Symptom einer organischen psychischen Störung sein\n2. Die Alkoholabhängigkeit zählt zu den organischen psychischen Störungen\n3. Die Demenz bei HIV-Krankheit zählt zu den organischen psychischen Störungen\n4. Eine internistische Abklärung ist erforderlich\n5. Unterschiedliche körperliche Erkrankungen können die gleichen psychischen Symptome hervorrufen, d.h. die Symptome sind nicht spezifisch für die Ursache der Erkrankung',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        'Richtig sind 1, 3 und 5: Ein Verfolgungswahn kann organisch bedingt sein (z.B. bei Delir oder Demenz), die HIV-Demenz wird unter F02.4 kodiert, und die psychischen Symptome sind unspezifisch für die zugrunde liegende körperliche Ursache. 2 ist falsch: Die Alkoholabhängigkeit wird unter F10.2 kodiert, also unter den Störungen durch psychotrope Substanzen (F1), nicht unter F0. Aussage 4 ist inhaltlich zwar sinnvoll, gehört aber nicht zur vom Lösungsschlüssel vorgesehenen Kombination.',
  ),
  Question(
    id: 23,
    exam: 'März 2016',
    q: 'Die Behandlung von Alkoholikern läuft in verschiedenen Phasen ab.\nWelche Aussage trifft zu?',
    options: [
      'In der Motivationsphase werden nach erfolgter Entwöhnung die Grundlagen für eine dauerhafte Abstinenz erarbeitet',
      'Die Entwöhnungsphase wird auch als Entgiftungsphase bezeichnet',
      'Die Reihenfolge der Behandlungsphasen ist: Motivation – Entwöhnung – Entgiftung – Rehabilitation',
      'In der Rehabilitationsphase ist die Gabe von Medikamenten entscheidend für die Langzeitstabilität',
      'In der Entgiftungsphase können lebensbedrohliche Symptome auftreten',
    ],
    correct: 4,
    explanation:
        'E ist richtig: In der Entgiftungsphase drohen Alkoholentzugsdelir und Entzugskrampfanfälle – beides potenziell lebensbedrohlich. Die korrekte Reihenfolge lautet: Kontakt-/Motivationsphase – Entgiftung – Entwöhnung – Rehabilitation/Nachsorge. Die Motivationsphase steht also am Anfang (A und C falsch), Entgiftung und Entwöhnung sind verschiedene Phasen (B falsch), und in der Rehabilitation stehen psychosoziale Maßnahmen im Vordergrund (D falsch).',
  ),
  Question(
    id: 24,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu?\nZu den spezifischen (isolierten) Phobien nach ICD-10 gehören:\n1. Klaustrophobie\n2. Höhenangst\n3. generalisierte Angststörung\n4. Hysterie\n5. Examensangst',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        'Spezifische (isolierte) Phobien (F40.2) sind auf eng umschriebene Situationen oder Objekte beschränkt: Klaustrophobie, Höhenangst und Prüfungs-/Examensangst gehören dazu. Die generalisierte Angststörung (F41.1) ist gerade nicht situationsgebunden, sondern frei flottierend. "Hysterie" ist ein historischer Begriff, der heute den dissoziativen Störungen (F44) zugeordnet wird.',
  ),
  Question(
    id: 25,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zur dissoziativen Amnesie treffen zu?\n1. Charakteristisch ist eine partielle oder vollständige Amnesie für kürzlich traumatisierende oder belastende Ereignisse\n2. Charakteristisch ist das Fehlen von hirnorganischen Störungen, Intoxikationen oder extremer Erschöpfung\n3. Die dissoziative Amnesie ist ein typisches Symptom einer Alzheimer-Krankheit\n4. Schwierig ist es, eine bewusste Simulation der Amnesie auszuschließen\n5. Eine dissoziative Amnesie ist grundsätzlich nicht reversibel',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        'Richtig sind 1, 2 und 4: Die dissoziative Amnesie (F44.0) betrifft belastende oder traumatische Ereignisse, setzt den Ausschluss organischer Ursachen voraus und lässt sich nur schwer von einer bewussten Simulation abgrenzen. 3 ist falsch: Bei Alzheimer liegt eine organisch bedingte Gedächtnisstörung vor. 5 ist falsch: Die dissoziative Amnesie ist meist reversibel und bildet sich häufig spontan zurück.',
  ),
  Question(
    id: 26,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu Cannabiskonsum zu? (Wählen Sie zwei Antworten)',
    options: [
      'Regelmäßiger Cannabiskonsum führt zu ausgeprägter körperlicher Abhängigkeit',
      'Cannabiskonsum verursacht eine Pupillenverengung (Miosis)',
      'Durch regelmäßigen Cannabiskonsum können Psychosen ausgelöst werden',
      'Länger dauernder Cannabiskonsum kann zu psychischer Abhängigkeit führen',
      'Bei chronischem Cannabiskonsum kommt es häufig zu einer starken Antriebssteigerung',
    ],
    correct: [2, 3],
    explanation:
        'C ist richtig: Cannabis kann Psychosen auslösen, besonders bei entsprechender Vulnerabilität und frühem Konsumbeginn. D ist richtig: Im Vordergrund steht die psychische Abhängigkeit. A ist falsch: Eine ausgeprägte körperliche Abhängigkeit entwickelt sich nicht, allenfalls milde Entzugssymptome. B ist falsch: Typisch sind gerötete Konjunktiven, nicht Miosis (diese ist für Opiate charakteristisch). E ist falsch: Chronischer Konsum führt zum amotivationalen Syndrom mit Antriebsminderung.',
  ),
  Question(
    id: 27,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen zur paranoiden Persönlichkeitsstörung nach ICD-10 treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Tendenz, neutralen oder freundlichen Handlungen zu misstrauen und als feindselig oder kränkend anzusehen',
      'Übertriebene Empfindlichkeit bei Rückschlägen und Zurücksetzung',
      'Übermäßige Pedanterie und Befolgung von Konventionen',
      'Rigidität und Eigensinn',
      'Eingeschränkte Fähigkeit, Alltagsentscheidungen zu treffen, ohne ein hohes Maß an Ratschlägen und Bestätigung von anderen',
    ],
    correct: [0, 1],
    explanation:
        'A und B sind Kernkriterien der paranoiden Persönlichkeitsstörung (F60.0): durchgängiges Misstrauen mit Fehldeutung neutraler Handlungen als feindselig sowie übertriebene Empfindlichkeit bei Rückschlägen. C beschreibt die anankastische (zwanghafte) Persönlichkeitsstörung (F60.5), E die abhängige Persönlichkeitsstörung (F60.7). Rigidität und Eigensinn (D) sind unspezifisch und kein eigenständiges ICD-Kriterium der paranoiden PS.',
  ),
  Question(
    id: 28,
    exam: 'März 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nZu den neurotischen, Belastungs- und somatoformen Störungen zählen:',
    options: [
      'hebephrene Schizophrenie',
      'situationsbezogene Angststörungen',
      'dissoziative Störungen',
      'anhaltende affektive Störungen',
      'organisch amnestisches Syndrom',
    ],
    correct: [1, 2],
    explanation:
        'Die neurotischen, Belastungs- und somatoformen Störungen umfassen F40-F48, darunter die phobischen bzw. situationsbezogenen Angststörungen (F40) und die dissoziativen Störungen (F44). Die hebephrene Schizophrenie gehört zu F20, anhaltende affektive Störungen zu F34 und das organisch amnestische Syndrom zu F04.',
  ),
  Question(
    id: 29,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur Binge-Eating-Störung (BES) treffen zu?\n1. Die Ersterkrankung tritt überwiegend in Verbindung mit einer psychotischen Erkrankung auf\n2. Charakteristisch sind wiederkehrende Essanfälle über einen Zeitraum von mehreren Monaten\n3. Die Erkrankung wird typischerweise von Scham und Schuldgefühlen begleitet\n4. Psychische Faktoren spielen bei der Entstehung der Erkrankung eine wichtige Rolle\n5. Durch gegensteuerndes Verhalten (Erbrechen, Hungerperioden) besteht meist ein deutliches Untergewicht',
    options: [
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        'Richtig sind 2, 3 und 4: Wiederkehrende Essanfälle über mehrere Monate, begleitet von Scham und Schuldgefühlen, wobei psychische Faktoren (Affektregulation, Stress) zentral für die Entstehung sind. 1 ist falsch: Ein Zusammenhang mit psychotischen Erkrankungen besteht nicht. 5 ist falsch: Gerade das gegensteuernde Verhalten fehlt bei der Binge-Eating-Störung – die Betroffenen sind typischerweise übergewichtig oder adipös, nicht untergewichtig.',
  ),
  Question(
    id: 30,
    exam: 'Oktober 2016',
    q: 'Ein 76-jähriger Patient klagt beim Hausarzt wiederholt über Symptome wie Erschöpfung, Kopfschmerzen, Rückenschmerzen und Verstopfung. Körperliche Erkrankungen konnten ausgeschlossen werden.\nWelche psychische Störung kommt am ehesten in Frage?',
    options: [
      'sog. depressive Pseudodemenz',
      'Dysthymia',
      'bipolare affektive Störung',
      'larvierte (maskierte) Depression',
      'histrionische Persönlichkeitsstörung',
    ],
    correct: 3,
    explanation:
        'Bei der larvierten (maskierten) Depression stehen körperliche Beschwerden – Erschöpfung, Kopf- und Rückenschmerzen, Obstipation – so im Vordergrund, dass die depressive Kernsymptomatik verdeckt wird. Sie ist besonders bei älteren Patienten häufig. Die depressive Pseudodemenz zeigt sich dagegen mit kognitiven Defiziten, die Dysthymia ist eine chronische leichte Verstimmung ohne führende Somatisierung.',
  ),
  Question(
    id: 31,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zu Persönlichkeitsstörungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Andauernde und umfassende Gefühle von Anspannung und Besorgtheit sind Kennzeichen der ängstlichen Persönlichkeitsstörung',
      'Dramatisierung bezüglich der eigenen Person und theatralisches Verhalten ist charakteristisch für die paranoide Persönlichkeitsstörung',
      'Übermäßiger Zweifel und Vorsicht kennzeichnet die zwanghafte Persönlichkeitsstörung',
      'Übermäßige Beschäftigung damit, äußerlich attraktiv zu erscheinen, ist typisch für die schizoide Persönlichkeitsstörung',
      'Ein Beginn im mittleren bis höheren Erwachsenenalter ist typisch für die narzisstische Persönlichkeitsstörung',
    ],
    correct: [0, 2],
    explanation:
        'A ist richtig: Andauernde Anspannung und Besorgtheit kennzeichnen die ängstlich-vermeidende Persönlichkeitsstörung (F60.6). C ist richtig: Übermäßiger Zweifel und Vorsicht sind Kernkriterien der anankastischen (zwanghaften) Persönlichkeitsstörung (F60.5). B und D beschreiben die histrionische Persönlichkeitsstörung (F60.4), nicht die paranoide bzw. schizoide. E ist falsch: Persönlichkeitsstörungen beginnen definitionsgemäß in der Kindheit oder Adoleszenz und manifestieren sich im frühen Erwachsenenalter.',
  ),
  Question(
    id: 32,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen treffen zu?\nAbwehrstrategien eines Menschen werden als Abwehrmechanismen bezeichnet. Abwehrmechanismen sind:\n1. Projektion\n2. Regression\n3. Amnesie\n4. Identifikation\n5. Perseveration',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        'Projektion (eigene Impulse werden anderen zugeschrieben), Regression (Rückfall auf frühere Entwicklungsstufen) und Identifikation (Übernahme von Eigenschaften eines anderen) sind klassische Abwehrmechanismen der Psychoanalyse. Amnesie ist eine Gedächtnisstörung und Perseveration eine formale Denkstörung – beides psychopathologische Symptome, keine Abwehrmechanismen. Zu unterscheiden ist die Amnesie von der Verdrängung, die sehr wohl ein Abwehrmechanismus ist.',
  ),
  Question(
    id: 33,
    exam: 'Oktober 2016',
    q: 'Welche Aussage zum frühkindlichen Autismus trifft zu?',
    options: [
      'Bei autistischen Kindern beeindruckt zunächst die ausgeprägte Emotionalität',
      'Autistische Kinder schließen in Intelligenztests besonders gut in den Sub-Tests für sprachliche Fähigkeiten ab',
      'Häufig wird die Störung beim Besuch der Schule aufgedeckt und äußert sich schon in den ersten Unterrichtswochen durch fehlenden emotionalen Kontakt',
      'Zum Aufbau von positiven oder normalen Fertigkeiten wie Blickkontakt und Sprachbenutzung werden besonders häufig operante Methoden eingesetzt',
      'Repetitives und autoaggressives Verhalten kommt selten vor',
    ],
    correct: 3,
    explanation:
        'D ist richtig: In der Autismustherapie werden vorrangig operante (verhaltenstherapeutische) Methoden eingesetzt, um Blickkontakt, Sprache und soziale Fertigkeiten aufzubauen. A ist falsch: Charakteristisch ist gerade die eingeschränkte emotionale Resonanz. B ist falsch: Sprachliche Subtests fallen typischerweise schwächer aus als visuell-räumliche. C ist falsch: Der frühkindliche Autismus (F84.0) manifestiert sich definitionsgemäß vor dem 3. Lebensjahr. E ist falsch: Repetitive Verhaltensweisen und Autoaggression sind häufig.',
  ),
  Question(
    id: 34,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur Schizophrenie treffen zu?\n1. Bei der medikamentösen Therapie mit Neuroleptika können im Sinne unerwünschter Arzneimittelreaktionen Parkinson-ähnliche Symptome auftreten\n2. Die kognitive Verhaltenstherapie hat sich als unterstützende Behandlungsmöglichkeit bewährt\n3. Arbeits- und Beschäftigungstherapie sind Bestandteile im Rahmen der stationären Therapie\n4. Im Gegensatz zu Suchterkrankungen hat sich die Soziotherapie bei der Schizophrenie nicht bewährt\n5. Differenzialdiagnostisch sind unter anderem organisch bedingte Psychosen zu beachten',
    options: [
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        'Richtig sind 1, 2, 3 und 5: Neuroleptika verursachen extrapyramidal-motorische Nebenwirkungen mit Parkinsonoid, kognitive Verhaltenstherapie ist als ergänzendes Verfahren etabliert, Arbeits- und Beschäftigungstherapie gehören zum stationären Standard, und organische Psychosen müssen differenzialdiagnostisch ausgeschlossen werden. 4 ist falsch: Soziotherapie ist bei der Schizophrenie gerade ein wichtiger und wirksamer Behandlungsbaustein.',
  ),
  Question(
    id: 35,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen trifft (treffen) zu?\nInhaber einer auf das Gebiet der Psychotherapie beschränkten Heilpraktikererlaubnis sind grundsätzlich befugt zur\n1. Feststellung einer psychischen Erkrankung\n2. begleitenden Verordnung von beruhigend wirkenden Betäubungsmitteln\n3. Anwendung von kognitiver Verhaltenstherapie\n4. Anwendung von Gesprächspsychotherapie\n5. Stellung einer Diagnose im Sinne des ICD-10',
    options: [
      'Nur die Aussage 4 ist richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
    ],
    correct: 3,
    explanation:
        'Der Heilpraktiker für Psychotherapie darf psychische Erkrankungen feststellen, ICD-10-Diagnosen stellen und psychotherapeutische Verfahren wie kognitive Verhaltenstherapie und Gesprächspsychotherapie anwenden. Nicht erlaubt ist die Verordnung von Arzneimitteln – erst recht nicht von Betäubungsmitteln; das ist Ärzten vorbehalten (Aussage 2 falsch).',
  ),
  Question(
    id: 36,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zu psychotherapeutischen Verfahren treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Eye-Movement-Desensitization and Reprocessing (EMDR) ist bei der posttraumatischen Belastungsstörung (PTBS) grundsätzlich kontraindiziert',
      'Flooding wird bei der Behandlung isolierter Phobien angewandt',
      'Zur besseren Wirkung von Expositionsverfahren sollte der Patient die Angst durch bewusste Ablenkung vermeiden',
      'Die graduierte Exposition mit Reaktionsmanagement wird zur Behandlung von Angst- und Zwangsstörungen eingesetzt',
      'Der sokratische Dialog führt bei Patienten mit Demenz zu einer anhaltenden Befundbesserung',
    ],
    correct: [1, 3],
    explanation:
        'B ist richtig: Flooding (Reizüberflutung) ist ein etabliertes Verfahren bei isolierten Phobien. D ist richtig: Die graduierte Exposition mit Reaktionsmanagement bzw. Reaktionsverhinderung ist Standard bei Angst- und Zwangsstörungen. A ist falsch: EMDR ist ein leitliniengestütztes Verfahren gerade zur Behandlung der PTBS. C ist falsch: Ablenkung untergräbt die Exposition – der Patient soll die Angst zulassen, bis sie von selbst abfällt (Habituation). E ist falsch: Der sokratische Dialog setzt kognitive Leistungsfähigkeit voraus.',
  ),
  Question(
    id: 37,
    exam: 'Oktober 2016',
    q: 'Welche der genannten Formen bzw. Ursachen einer Demenz kommen in Deutschland am häufigsten vor? (Wählen Sie zwei Antworten)',
    options: [
      'Vaskuläre Demenz',
      'Demenz bei Creutzfeldt-Jakob-Krankheit',
      'Demenz bei Chorea Huntington',
      'Demenz bei HIV-Krankheit',
      'Demenz bei Alzheimer-Krankheit',
    ],
    correct: [0, 4],
    explanation:
        'Die Alzheimer-Demenz ist mit etwa 60-70% die häufigste Demenzform, gefolgt von der vaskulären Demenz mit etwa 15-20%; Mischformen sind zusätzlich häufig. Demenzen bei Creutzfeldt-Jakob-Krankheit, Chorea Huntington und HIV sind demgegenüber ausgesprochen selten.',
  ),
  Question(
    id: 38,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zu alkoholbedingten Störungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Ein Delirium tremens bessert sich in der Regel rasch durch hochdosierte Vitamin-C- (Ascorbinsäure-) Gabe',
      'Die Wernicke-Enzephalopathie beruht auf einem Vitamin-B1- (Thiamin) Mangel',
      'Spider naevi (Spinnennävi, Gefäßsternchen) auf der Haut sind ein möglicher Hinweis auf eine Leberzirrhose',
      'Die Alkoholhalluzinose ist gekennzeichnet durch ausgeprägte vegetative Symptome und Orientierungsstörungen',
      'Die Suizidrate ist bei Alkoholabhängigen eher geringer als bei der Allgemeinbevölkerung',
    ],
    correct: [1, 2],
    explanation:
        'B ist richtig: Die Wernicke-Enzephalopathie (Trias aus Bewusstseinsstörung, Ataxie, Augenmuskelstörungen) beruht auf Thiaminmangel und wird mit Vitamin B1 behandelt. C ist richtig: Spider naevi sind ein Leberhautzeichen. A ist falsch: Das Delirium tremens ist lebensbedrohlich und erfordert intensivmedizinische Behandlung, nicht Vitamin C. D ist falsch: Die Alkoholhalluzinose verläuft bei klarem Bewusstsein und ohne ausgeprägte vegetative Symptomatik – das unterscheidet sie vom Delir. E ist falsch: Die Suizidrate ist bei Alkoholabhängigen deutlich erhöht.',
  ),
  Question(
    id: 39,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur Aufmerksamkeitsdefizit-/Hyperaktivitätsstörung (ADHS) treffen zu?\n1. Mädchen sind von der Erkrankung deutlich häufiger betroffen\n2. Missbrauch und Abhängigkeit von psychotropen Substanzen treten im Verlauf gehäuft auf\n3. Zusätzlich bestehende affektive Störungen sind die Ausnahme\n4. Hyperaktivität ist im Vorschulalter das Hauptmerkmal der ADHS\n5. Verzögerungen der motorischen und sprachlichen Entwicklung treten nicht auf',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        'Richtig sind 2 und 4: Substanzmissbrauch ist eine häufige Folgekomplikation der ADHS, und im Vorschulalter dominiert die motorische Hyperaktivität. 1 ist falsch: Jungen sind etwa 3-4-mal häufiger betroffen. 3 ist falsch: Komorbide affektive Störungen sind häufig, nicht die Ausnahme. 5 ist falsch: Motorische und sprachliche Entwicklungsverzögerungen treten begleitend durchaus auf.',
  ),
  Question(
    id: 40,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur kognitiven Umstrukturierung trifft (treffen) zu?\n1. Die kognitive Umstrukturierung stellt ein Basisverfahren kognitiver Therapien dar\n2. Negative Kognitionen sollten durch rationalere, positive Gedanken ersetzt werden\n3. Bei depressiven Patienten ist das Verfahren grundsätzlich kontraindiziert\n4. Eine typische Methode der kognitiven Umstrukturierung ist die Hypnotherapie\n5. Die kognitive Umstrukturierung versucht eine Neubewertung der Gedanken, Gefühle und Körperreaktionen zu erzielen',
    options: [
      'Nur die Aussage 5 ist richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        'Richtig sind 1, 2 und 5: Die kognitive Umstrukturierung ist das Basisverfahren kognitiver Therapien, ersetzt dysfunktionale durch realitätsgerechtere Kognitionen und zielt auf eine Neubewertung von Gedanken, Gefühlen und Körperreaktionen. 3 ist falsch: Gerade bei Depressionen ist sie ein Verfahren der ersten Wahl. 4 ist falsch: Die Hypnotherapie ist ein eigenständiges Verfahren und keine Methode der kognitiven Umstrukturierung – typisch sind stattdessen der sokratische Dialog und das Spaltentechnik-Protokoll.',
  ),
  Question(
    id: 41,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur sozialen Phobie treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die psychischen, Verhaltens- oder vegetativen Symptome sind primäre Manifestationen der Angst',
      'Beschrieben wird damit die Angst, sich auf weiten offenen Flächen zu bewegen',
      'Auch ohne Behandlung sind chronische Verläufe selten',
      'Das wesentliche Symptom ist eine allgemeine und anhaltende Angst, die aber nicht auf bestimmte Situationen in der Umgebung beschränkt ist',
      'Die Angst muss auf bestimmte soziale Situationen beschränkt sein oder darin überwiegen',
    ],
    correct: [0, 4],
    explanation:
        'A und E entsprechen den ICD-10-Kriterien der sozialen Phobie (F40.1): Die Symptome müssen primäre Manifestationen der Angst sein (nicht sekundär zu Wahn oder Zwang), und die Angst muss auf bestimmte soziale Situationen beschränkt sein oder darin überwiegen. B beschreibt die Agoraphobie, D die generalisierte Angststörung. C ist falsch: Unbehandelt verläuft die soziale Phobie überwiegend chronisch.',
  ),
  Question(
    id: 42,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen treffen zu?\nVerschiedene körperliche Erkrankungen können mit Symptomen einer Panikattacke einhergehen. Hierzu zählen:\n1. Hyperthyreose\n2. Hypoglykämie\n3. koronare Herzkrankheit\n4. zerebrales Anfallsleiden\n5. Asthma bronchiale',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle genannten Erkrankungen können Panikattacken imitieren: Die Hyperthyreose verursacht Tachykardie, Unruhe und Schwitzen, die Hypoglykämie Zittern, Angst und Herzrasen, die KHK Brustschmerz und Todesangst, ein Anfallsleiden (besonders Temporallappenepilepsie) anfallsartige Angst, und Asthma bronchiale Atemnot mit Erstickungsangst. Deshalb ist vor der Diagnose einer Panikstörung immer eine somatische Abklärung erforderlich.',
  ),
  Question(
    id: 43,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen treffen zu?\nAntriebssteigerung ist ein typisches Symptom bei\n1. agitierter Depression\n2. hebephrener Schizophrenie\n3. Stimulanzieneinnahme\n4. manischer Episode\n5. Hypothyreose',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        'Richtig sind 1, 3 und 4: Die agitierte Depression geht mit innerer Unruhe und gesteigerter Psychomotorik einher, Stimulanzien (Kokain, Amphetamine) steigern den Antrieb unmittelbar, und die Antriebssteigerung ist ein Kernsymptom der Manie. 2 ist falsch: Die hebephrene Schizophrenie ist durch Affektverflachung, Antriebsverlust und Denkzerfahrenheit gekennzeichnet. 5 ist falsch: Die Hypothyreose führt zu Antriebsminderung und Verlangsamung.',
  ),
  Question(
    id: 44,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zu Essstörungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Der Erkrankungsbeginn einer Anorexia nervosa liegt im Durchschnitt bei 10 Jahren',
      'Die Prognose einer Anorexia nervosa ist günstiger als bei Bulimia nervosa einzuschätzen',
      'Der Erkrankungsgipfel bei Bulimia nervosa liegt zwischen 15 und 35 Jahren',
      'Die Langzeitletalität bei der Anorexia nervosa liegt bei etwa 5 bis 20%',
      'Anorexia nervosa tritt nach dem 40. Lebensjahr nicht mehr auf',
    ],
    correct: [2, 3],
    explanation:
        'C ist richtig: Der Erkrankungsgipfel der Bulimia nervosa liegt etwa zwischen dem 15. und 35. Lebensjahr, also später als bei der Anorexie. D ist richtig: Die Langzeitletalität der Anorexia nervosa liegt bei etwa 5-20% – die höchste Mortalität aller psychischen Erkrankungen. A ist falsch: Der Beginn liegt typischerweise zwischen dem 14. und 18. Lebensjahr. B ist falsch: Die Prognose der Bulimie ist günstiger als die der Anorexie. E ist falsch: Auch ein späterer Beginn ist möglich, wenn auch selten.',
  ),
  Question(
    id: 45,
    exam: 'Oktober 2016',
    q: 'Das Verhalten eines Patienten erscheint Ihnen sonderbar, bizarr, gekünstelt, unnatürlich.\nWelcher psychopathologische Begriff trifft hierfür am ehesten zu?',
    options: ['Parathymie', 'Affektlabilität', 'Logorrhoe', 'Manierismen', 'Mutismus'],
    correct: 3,
    explanation:
        'Manierismen bezeichnen sonderbar verschrobene, gekünstelt und bizarr wirkende Bewegungen und Verhaltensweisen; sie sind typisch für die katatone Schizophrenie. Parathymie ist die Inkongruenz von Affekt und Gedankeninhalt, Affektlabilität der rasche Stimmungswechsel, Logorrhoe der Rededrang und Mutismus das Nichtsprechen bei intakten Sprechorganen.',
  ),
  Question(
    id: 46,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zu Gedächtnisstörungen trifft (treffen) zu?\n1. Störungen des Kurzzeitgedächtnisses sprechen gegen eine alkoholbedingte Korsakow-Psychose\n2. Störungen der Merkfähigkeit treten bei affektiven Störungen nicht auf\n3. Eine retrograde Amnesie ist der Verlust der Erinnerung an den Zeitraum, der nach dem Ereignis (z.B. Unfall) lag\n4. Bei Konfabulationen füllt ein Patient Erinnerungslücken mit Einfällen, die er selbst für Erinnerungen hält\n5. Paramnesien (Wahn- oder Trugerinnerungen) beinhalten das falsche Wiedererkennen von Situationen',
    options: [
      'Nur die Aussage 4 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        'Richtig sind 4 und 5: Konfabulationen sind unbewusste Ausfüllungen von Gedächtnislücken, Paramnesien umfassen Trugerinnerungen wie das Déjà-vu-Erleben. 1 ist falsch: Die Korsakow-Psychose ist gerade durch eine schwere Merkfähigkeits- und Kurzzeitgedächtnisstörung gekennzeichnet. 2 ist falsch: Bei Depressionen sind Merkfähigkeitsstörungen häufig (vgl. depressive Pseudodemenz). 3 ist falsch: Retrograd bedeutet Erinnerungsverlust für die Zeit VOR dem Ereignis; für die Zeit danach spricht man von anterograder Amnesie.',
  ),
  Question(
    id: 47,
    exam: 'Oktober 2016',
    q: 'Welche Aussage trifft zu?\nBeim Autogenen Training',
    options: [
      'wird der Patient vom Therapeuten hypnotisiert',
      'werden demenzbedingte Gedächtnisstörungen deutlich gebessert',
      'können unwillkürliche Körperfunktionen beeinflusst werden',
      'soll die Herzfrequenz deutlich ansteigen',
      'werden die Muskeln zunächst für einige Sekunden maximal angespannt und anschließend schrittweise entspannt',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Das Autogene Training (nach J.H. Schultz) ist eine Form der konzentrativen Selbstentspannung, mit der über Formeln (Schwere, Wärme, Ruhe) unwillkürliche vegetative Funktionen beeinflusst werden. A ist falsch: Es handelt sich um Autosuggestion, nicht um Fremdhypnose. D ist falsch: Ziel ist eine Beruhigung, also eine Senkung der Herzfrequenz. E beschreibt die progressive Muskelrelaxation nach Jacobson.',
  ),
  Question(
    id: 48,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Zuordnungen zwischen psychischer Erkrankung und klinischen Symptomen treffen zu?\n1. Konversionsstörung – pseudoneurologische Symptome\n2. Somatisierungsstörung – multiple, organisch nicht begründbare Symptome\n3. anhaltende Schmerzstörung – Schmerzen und Behinderungsgrad unverhältnismäßig zu objektivierbarer organischer Läsion\n4. Neurasthenie – überwertige Krankheitsfurcht\n5. körperdysmorphe Störung – überwertiges Gefühl der Hässlichkeit',
    options: [
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        'Richtig sind 1, 2, 3 und 5: Die Konversionsstörung äußert sich in pseudoneurologischen Symptomen (z.B. Lähmungen, Anfälle), die Somatisierungsstörung in multiplen organisch nicht erklärbaren Beschwerden, die anhaltende somatoforme Schmerzstörung in unverhältnismäßigem Schmerzerleben, und die körperdysmorphe Störung im überwertigen Gefühl der Entstellung. 4 ist falsch: Die Neurasthenie (F48.0) ist durch Ermüdbarkeit und Erschöpfung gekennzeichnet; die überwertige Krankheitsfurcht beschreibt die hypochondrische Störung (F45.2).',
  ),
  Question(
    id: 49,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur Suizidalität trifft (treffen) zu?\n1. Suizidversuche bei Patienten sind für Heilpraktiker meldepflichtig\n2. Bei der überwiegenden Zahl der Suizide besteht keine psychische Erkrankung\n3. Ältere, alleinstehende Männer haben eine erhöhte Suizidrate\n4. Die Wiederholung eines Suizidversuches im weiteren Lebenslauf ist äußerst selten\n5. Bei Angststörungen ist die Suizidalität höher als bei der Allgemeinbevölkerung',
    options: [
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        'Richtig sind 3 und 5: Ältere, alleinstehende Männer bilden die Hochrisikogruppe mit der höchsten Suizidrate, und auch bei Angststörungen ist die Suizidalität gegenüber der Allgemeinbevölkerung erhöht. 1 ist falsch: Eine gesetzliche Meldepflicht für Suizidversuche besteht nicht (wohl aber eine Handlungs- und Sorgfaltspflicht). 2 ist falsch: Bei etwa 90% der Suizide liegt eine psychische Erkrankung vor. 4 ist falsch: Ein früherer Suizidversuch ist der stärkste Einzelprädiktor für einen erneuten Versuch.',
  ),
  Question(
    id: 50,
    exam: 'Oktober 2016',
    q: 'Welche der genannten Aussagen zu Zwangsstörungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Für die eindeutige Diagnose sollen die Symptome mindestens 2 Monate vorliegen',
      'Zwangsgedanken treten weit überwiegend bei Frauen auf',
      'Die Zwangsgedanken werden vom Betroffenen als unangenehm erlebt',
      'Die Zwangsgedanken werden als von außen eingegeben empfunden',
      'Der Krankheitsbeginn liegt meist in der Kindheit oder im frühen Erwachsenenalter',
    ],
    correct: [2, 4],
    explanation:
        'C ist richtig: Zwangsgedanken werden als quälend, unsinnig und ich-dyston erlebt. E ist richtig: Der Beginn liegt meist in der Kindheit oder im frühen Erwachsenenalter (Durchschnitt etwa 20 Jahre). A ist falsch: Die ICD-10 fordert mindestens 2 Wochen, nicht 2 Monate. B ist falsch: Männer und Frauen sind etwa gleich häufig betroffen. D ist falsch: Zwangsgedanken werden als eigene Gedanken erkannt – werden sie als von außen eingegeben erlebt, handelt es sich um eine Ich-Störung im Sinne einer Schizophrenie.',
  ),
  Question(
    id: 51,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur akuten Belastungsreaktion (nach ICD-10) treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Es handelt sich um eine vorübergehende Störung von beträchtlichem Schweregrad',
      'Es muss kein Zusammenhang zwischen einer ungewöhnlichen Belastung und dem Beginn der Symptome vorliegen',
      'Die Symptome klingen im Allgemeinen erst nach mehreren Monaten wieder ab',
      'Die Symptomatik zeigt ein gemischtes und wechselndes Bild und beginnt typischerweise mit einem anfänglichen Zustand von "Betäubung"',
      'Die Störung beginnt schleichend über einen Zeitraum von mehreren Monaten',
    ],
    correct: [0, 3],
    explanation:
        'A und D entsprechen der ICD-10-Definition der akuten Belastungsreaktion (F43.0): eine vorübergehende Störung von beträchtlichem Schweregrad mit gemischtem, wechselndem Bild, die typischerweise mit einer "Betäubung" beginnt. B ist falsch: Der zeitliche und inhaltliche Zusammenhang mit einer außergewöhnlichen Belastung ist konstitutiv. C und E sind falsch: Die Symptome beginnen innerhalb von Minuten und klingen in der Regel innerhalb von Stunden bis wenigen Tagen ab.',
  ),
  Question(
    id: 52,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nZu den Positivsymptomen (Plussymptomen) der Schizophrenie zählen:',
    options: ['Sprachverarmung', 'Aufmerksamkeitsstörungen', 'Halluzinationen', 'sozialer Rückzug', 'Wahn'],
    correct: [2, 4],
    explanation:
        'Positivsymptome sind Phänomene, die zum normalen Erleben hinzukommen: Wahn, Halluzinationen, Ich-Störungen, formale Denkstörungen und katatone Symptome. Sprachverarmung (Alogie) und sozialer Rückzug gehören zur Negativsymptomatik, Aufmerksamkeitsstörungen zu den kognitiven Störungen.',
  ),
  Question(
    id: 53,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zum schizophrenen Residuum nach ICD-10 treffen zu?\n1. Beim schizophrenen Residuum handelt es sich um eine depressive Phase nach Abklingen der akuten Episode der Schizophrenie\n2. Vorherrschend sind paranoid-halluzinatorische Symptome\n3. Charakteristisch sind eine psychomotorische Verlangsamung sowie die Vernachlässigung der eigenen Körperpflege\n4. Mehrere "negative" Symptome waren während der vorangegangenen 12 Monate vorhanden\n5. Im Rahmen der Differenzialdiagnose sollten eine Demenz oder eine chronische Depression ausgeschlossen werden',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        'Richtig sind 3, 4 und 5: Das schizophrene Residuum (F20.5) ist durch Negativsymptomatik mit psychomotorischer Verlangsamung und Vernachlässigung der Körperpflege gekennzeichnet, die ICD-10 fordert das Vorliegen negativer Symptome über mindestens 12 Monate, und differenzialdiagnostisch sind Demenz und chronische Depression abzugrenzen. 1 ist falsch: Es handelt sich nicht um eine depressive Phase (das wäre die postschizophrene Depression F20.4). 2 ist falsch: Produktive Symptome treten gerade in den Hintergrund.',
  ),
  Question(
    id: 54,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zur Intelligenzminderung treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei einem Intelligenzquotienten (IQ) von etwa 55 liegt eine schwere Intelligenzminderung vor',
      'Bei der leichten Intelligenzminderung ist der Spracherwerb fast nie verzögert',
      'Der Schweregrad wird unter anderem anhand des IQ festgelegt',
      'Unabhängig von der Ursache kommt es nur selten zu Verzögerung der motorischen Fähigkeiten',
      'Zur Ermittlung des IQ sind ausreichend standardisierte Intelligenztests anzuwenden',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig: Die Schweregradeinteilung erfolgt anhand des IQ, ermittelt mit standardisierten Intelligenztests. A ist falsch: Ein IQ von 55 entspricht einer leichten Intelligenzminderung (F70: IQ 50-69); schwer ist F72 mit einem IQ von 20-34. B ist falsch: Auch bei leichter Intelligenzminderung ist der Spracherwerb häufig verzögert. D ist falsch: Motorische Entwicklungsverzögerungen sind gerade häufig.',
  ),
  Question(
    id: 55,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen zu Rauschdrogen und psychotropen Substanzen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Cannabis kann psychotische Symptome, einschließlich Horrortrips auslösen',
      'Cannabis führt zu einer Steigerung der Aktivität und längerfristigen Leistungsverbesserungen',
      'Keine bekannte Droge wirkt direkt oder indirekt auf das vegetative Nervensystem',
      'Alkohol kann beruhigend, spannungslösend und angstabbauend wirken',
      'Zur Diagnose eines schädlichen Gebrauchs muss nach ICD-10 eine Toleranzentwicklung vorliegen',
    ],
    correct: [0, 3],
    explanation:
        'A ist richtig: Cannabis kann akute psychotische Zustände und Horrortrips auslösen. D ist richtig: Alkohol wirkt in niedriger Dosis anxiolytisch und spannungslösend – ein zentraler Mechanismus der Suchtentwicklung. B ist falsch: Chronischer Konsum führt zum amotivationalen Syndrom mit Leistungsminderung. C ist falsch: Praktisch alle psychotropen Substanzen wirken auf das vegetative Nervensystem. E ist falsch: Die Toleranzentwicklung ist ein Kriterium des Abhängigkeitssyndroms (F1x.2); der schädliche Gebrauch (F1x.1) setzt lediglich eine tatsächliche körperliche oder psychische Schädigung voraus.',
  ),
  Question(
    id: 56,
    exam: 'Oktober 2016',
    q: 'Welche der folgenden Aussagen treffen zu? (Wählen Sie zwei Antworten)\nAls Voraussetzung für die zwangsweise Unterbringung einer psychisch kranken Person nach dem Unterbringungsrecht der Länder (z.B. Psychisch-Kranken-Gesetz, Unterbringungsgesetz) gelten üblicherweise:',
    options: [
      'tödlich verlaufende körperliche Erkrankung',
      'erhebliche akute Selbstgefährdung',
      'erhebliche akute Fremdgefährdung',
      'Konsum illegaler Drogen',
      'Geschäftsunfähigkeit',
    ],
    correct: [1, 2],
    explanation:
        'Voraussetzung der Unterbringung nach PsychKG/UBG sind eine psychische Erkrankung UND eine daraus resultierende erhebliche akute Selbst- oder Fremdgefährdung. Eine körperliche Erkrankung, Drogenkonsum für sich genommen oder Geschäftsunfähigkeit rechtfertigen keine Unterbringung. Die Geschäftsunfähigkeit ist eine zivilrechtliche Kategorie und für das Unterbringungsrecht nicht maßgeblich.',
  ),
];
