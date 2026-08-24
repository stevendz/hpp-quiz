import '../models/question.dart';

const List<Question> questions2026 = [
  Question(
    id: 1,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen treffen auf die paranoide Persönlichkeitsstörung zu?\n1. Die Störung ist durch ein tiefgreifendes, überdauerndes Misstrauen gegenüber anderen Menschen gekennzeichnet\n2. Betroffene zeigen häufig eine emotionale Kälte und Neigung zu sozialen Rückzügen\n3. Die Störung gehört zum schizophrenen Formenkreis\n4. Typisch ist ein stabiles, seit dem frühen Erwachsenenalter bestehendes Verhaltensmuster\n5. Die Behandlung erfolgt primär medikamentös mit Antipsychotika',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        'Richtig sind 1 und 4: Kernmerkmal der paranoiden Persönlichkeitsstörung (F60.0) ist ein tiefgreifendes Misstrauen; wie alle Persönlichkeitsstörungen zeigt sie ein stabiles, seit dem frühen Erwachsenenalter bestehendes Muster. 2 ist falsch: Emotionale Kälte und sozialer Rückzug kennzeichnen die schizoide Persönlichkeitsstörung (F60.1). 3 ist falsch: Zum schizophrenen Formenkreis gehört die schizotype Störung (F21), nicht die paranoide PS. 5 ist falsch: Persönlichkeitsstörungen werden primär psychotherapeutisch behandelt.',
  ),
  Question(
    id: 2,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zur International Classification of Diseases (ICD) sind richtig?\n1. In Deutschland werden Erkrankungen, Verletzungen und andere gesundheitliche Umstände gemäß der ICD-10 kodiert\n2. Neben der ICD-10 gibt es andere Klassifikationssysteme, z.B. DSM-5\n3. Im Kapitel G00 bis G99 sind psychische und Verhaltensstörungen kodiert\n4. In der ICD-10 sind die Kriterien definiert, nach denen die einzelnen Diagnosen vergeben werden können\n5. Wenn ein Patient die Kriterien für zwei psychische Erkrankungen erfüllt, muss die Diagnose gewählt werden, bei der die höhere Anzahl von Kriterien erfüllt wird',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
    ],
    correct: 4,
    explanation:
        'Richtig sind 1, 2 und 4: In Deutschland gilt die ICD-10-GM, daneben existiert insbesondere das DSM-5 der amerikanischen psychiatrischen Vereinigung, und die ICD-10 definiert die diagnostischen Kriterien. 3 ist falsch: Psychische und Verhaltensstörungen stehen in Kapitel V unter F00-F99; G00-G99 umfasst Krankheiten des Nervensystems. 5 ist falsch: Es gibt keine Regel, wonach die "kriterienreichere" Diagnose zu wählen wäre – Mehrfachdiagnosen (Komorbidität) sind ausdrücklich möglich.',
  ),
  Question(
    id: 3,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zum Vulnerabilitäts-Stress-Modell sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Genetische Faktoren spielen im Vulnerabilitäts-Stress-Modell keine Rolle',
      'Empathie ist ein Hauptbestandteil der individuellen Vulnerabilität',
      'Bei den meisten psychischen Erkrankungen geht man von einer multifaktoriellen Genese aus',
      'Bei schweren Belastungen und/oder Substanzmissbrauch können auch Menschen mit einer geringen Vulnerabilität erkranken',
      'Natürliche Veränderungen (z.B. Adoleszenz oder Menopause) sind keine Stressoren im Sinne des Vulnerabilitäts-Stress-Modells',
    ],
    correct: [2, 3],
    explanation:
        'C ist richtig: Das Modell geht von einem Zusammenspiel biologischer, psychischer und sozialer Faktoren aus. D ist richtig: Bei ausreichend starken Stressoren kann auch eine geringe Vulnerabilität überschritten werden. A ist falsch: Genetische Disposition ist ein zentraler Bestandteil der Vulnerabilität. B ist falsch: Empathie ist eine soziale Fähigkeit, kein Vulnerabilitätsfaktor. E ist falsch: Auch normative Übergänge wie Pubertät, Menopause oder Berentung wirken als Stressoren.',
  ),
  Question(
    id: 4,
    exam: 'März 2026',
    q: 'Das AMDP-System ist ein anerkannter Standard zur methodischen Dokumentation psychiatrischer Befunde.\nWelche der folgenden Aussagen zum psychopathologischen Befund sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Unter Merkfähigkeitsstörungen versteht man eine Herabsetzung oder Aufhebung der Fähigkeit, Informationen länger als ca. 10 Minuten zu speichern',
      'Eine Auffassungsstörung bezeichnet eine Störung der Fähigkeit, Äußerungen und Texte in ihrer Bedeutung zu verstehen',
      'Grübeln gehört zu den inhaltlichen Denkstörungen',
      'Ratlosigkeit ist eine formale Denkstörung',
      'Beim systematisierten Wahn können die Verknüpfungen zwischen den einzelnen Inhalten logisch oder auch paralogisch sein',
    ],
    correct: [1, 4],
    explanation:
        'B ist richtig: Die Auffassungsstörung betrifft das Verstehen und Verknüpfen von Wahrgenommenem in seiner Bedeutung. E ist richtig: Beim systematisierten Wahn werden Wahninhalte zu einem Gebäude verknüpft, die Verbindungen können dabei logisch oder paralogisch sein. A ist falsch: Die Merkfähigkeit umfasst das Behalten über etwa 10 Minuten – gemeint ist die Aufhebung der Fähigkeit, neue Inhalte überhaupt für diesen Zeitraum zu speichern; die Formulierung "länger als 10 Minuten" beschreibt das Kurzzeit-/Neugedächtnis unzutreffend. C ist falsch: Grübeln zählt im AMDP-System zu den formalen Denkstörungen. D ist falsch: Ratlosigkeit gehört zu den Störungen der Affektivität.',
  ),
  Question(
    id: 5,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu depressiven Störungen sind richtig?\n1. Zur Diagnose einer depressiven Störung gemäß ICD-10 müssen mindestens zwei Hauptsymptome vorliegen\n2. Suizidgedanken oder -handlungen gehören zu den Hauptsymptomen der Depression\n3. Interessenverlust oder Freudlosigkeit gehören zu den Hauptsymptomen der Depression\n4. Neben einem verminderten Appetit kann bei der Depression auch ein gesteigerter Appetit auftreten\n5. Der Schweregrad einer Depression wird anhand der Anzahl der Haupt- und Zusatzsymptome bestimmt',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: 3,
    explanation:
        'Richtig sind 1, 3, 4 und 5: Die ICD-10 fordert mindestens zwei der drei Hauptsymptome (gedrückte Stimmung, Interessen-/Freudverlust, Antriebsminderung), der Appetit kann vermindert oder gesteigert sein, und der Schweregrad (leicht/mittelgradig/schwer) ergibt sich aus der Anzahl von Haupt- und Zusatzsymptomen. 2 ist falsch: Suizidgedanken zählen zu den Zusatzsymptomen, nicht zu den Hauptsymptomen.',
  ),
  Question(
    id: 6,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu Suchterkrankungen ist richtig?',
    options: [
      'In der Kategoriegruppe F1 in der ICD-10 werden neben den substanzbezogenen auch die verhaltensbezogenen Suchterkrankungen erfasst',
      'Infolge der (Teil-)Legalisierung von Cannabis kann die Diagnose einer Cannabisabhängigkeit nicht mehr vergeben werden',
      'Eine Suchterkrankung im engeren Sinn liegt vor, wenn bei Abstinenz körperliche Entzugserscheinungen auftreten',
      'Eine wichtige Rolle bei der Entstehung von Abhängigkeitserkrankungen spielt das limbische System',
      'Das Suchtpotential von Cannabis ist deutlich höher als das von Alkohol oder Nikotin',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Das limbische System mit dem dopaminergen Belohnungssystem (Nucleus accumbens, ventrales Tegmentum) ist zentral für die Suchtentstehung. A ist falsch: F1 erfasst nur substanzbezogene Störungen; pathologisches Spielen steht unter F63.0. B ist falsch: Die rechtliche Bewertung einer Substanz ist für die Diagnosestellung unerheblich. C ist falsch: Für das Abhängigkeitssyndrom (F1x.2) müssen mindestens 3 von 6 Kriterien erfüllt sein – körperliche Entzugserscheinungen sind nur eines davon. E ist falsch: Nikotin und Alkohol haben ein höheres Suchtpotential als Cannabis.',
  ),
  Question(
    id: 7,
    exam: 'März 2026',
    q: 'Herr L., 24 Jahre, wird von seiner Schwester vorgestellt. Seit ca. 3 Monaten wirke er zunehmend zurückgezogen, spreche wenig und reagiere oft verspätet auf Fragen. Die Schwester gibt ergänzend an, ihr Bruder wirke manchmal "verängstigt" und sei misstrauisch gegenüber Fremden. Der Patient selbst berichtet, Stimmen zu hören, die ihm sagen würden, er sei "schlecht", und dass er überzeugt sei, dass andere ihn beobachten würden. In der Arbeit falle es ihm schwer, Aufgaben zu planen oder zu Ende zu bringen.\nWelche der folgenden Diagnosen kommen am ehesten in Betracht?\n1. Paranoide Schizophrenie\n2. Schwere depressive Episode mit psychotischen Symptomen\n3. Schizoaffektive Störung\n4. Bipolare affektive Störung, manische Episode\n5. Angststörung',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        'In Betracht kommen 1, 2 und 3: Akustische Halluzinationen (kommentierende Stimmen), Beobachtungswahn und Negativsymptomatik über drei Monate sprechen für eine paranoide Schizophrenie; der abwertende Inhalt der Stimmen und der Rückzug lassen auch eine schwere depressive Episode mit psychotischen Symptomen möglich erscheinen, und bei gleichzeitigem Auftreten beider Symptomgruppen ist die schizoaffektive Störung differenzialdiagnostisch zu erwägen. 4 ist falsch: Für eine manische Episode fehlt jede Antriebssteigerung. 5 ist falsch: Eine Angststörung erklärt weder Halluzinationen noch Wahn.',
  ),
  Question(
    id: 8,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zur bipolaren Störung sind richtig?\n1. Die Diagnose einer bipolaren Störung kann nach Feststellung je einer depressiven und einer manischen oder hypomanischen Phase gestellt werden\n2. Das Rezidivrisiko ist bei der bipolaren Störung generell als hoch bis sehr hoch einzustufen\n3. Eine Behandlung in der akuten Phase der Erkrankung ist ausreichend\n4. "Rapid Cycling" bezeichnet schnell aufeinanderfolgende depressive Episoden\n5. Der Einsatz einer sogenannten "Phasenprophylaxe" sollte erwogen werden',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
    ],
    correct: 1,
    explanation:
        'Richtig sind 1, 2 und 5: Für die Diagnose genügen zwei Episoden, von denen eine manisch oder hypomanisch sein muss; das Rezidivrisiko ist sehr hoch (über 90% im Verlauf), weshalb eine Phasenprophylaxe (z.B. mit Lithium) erwogen werden sollte. 3 ist falsch: Gerade die Langzeitbehandlung ist entscheidend. 4 ist falsch: Rapid Cycling bezeichnet mindestens vier affektive Episoden pro Jahr – unabhängig von deren Polarität, nicht nur depressive.',
  ),
  Question(
    id: 9,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu Orientierung/Orientierungsstörungen ist FALSCH?',
    options: [
      'Ein vollständiger psychopathologischer Befund muss auch Aussagen zur Orientierung enthalten',
      'Es gibt 3 (drei) Dimensionen der Orientierung',
      'Orientierungsstörungen können stabil oder fluktuierend auftreten',
      'Bei der Beschreibung von Orientierungsstörungen sollte der Schweregrad mit angegeben werden',
      'Eine schwergradige Desorientierung kann freiheitsentziehende Maßnahmen begründen',
    ],
    correct: 1,
    explanation:
        'B ist die falsche Aussage und damit die richtige Antwort: Es werden vier Dimensionen der Orientierung unterschieden – zeitlich, örtlich, situativ und zur eigenen Person. Merkhilfe: Bei fortschreitender Störung gehen sie meist in genau dieser Reihenfolge verloren, die Orientierung zur Person bleibt am längsten erhalten. Die übrigen Aussagen treffen zu.',
  ),
  Question(
    id: 10,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu Zwangsstörungen ist richtig?',
    options: [
      'Zwangsstörungen werden in aller Regel als Ich-synton erlebt',
      'Die Enuresis nocturna des Kindesalters gehört zu den Zwangsstörungen',
      'Menschen mit einer Zwangsstörung können die Sinnlosigkeit oder Ineffizienz ihrer Zwangshandlungen krankheitsbedingt nicht erkennen',
      'Stereotype Zwangshandlungen werden oft als Vorbeugung gegen ein objektiv unwahrscheinliches Schadensereignis erlebt',
      'Zwangsgedanken werden von den Betroffenen nicht als quälend erlebt',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Zwangshandlungen (Rituale) dienen typischerweise der Abwendung eines objektiv unwahrscheinlichen Unheils, etwa wiederholtes Kontrollieren gegen einen befürchteten Brand. A ist falsch: Zwänge werden ich-dyston erlebt, also als fremd und nicht zur eigenen Person gehörig. B ist falsch: Die Enuresis nocturna (F98.0) ist eine Ausscheidungsstörung. C und E sind falsch: Betroffene erkennen die Sinnlosigkeit sehr wohl und erleben die Symptome als äußerst quälend – genau daraus entsteht der hohe Leidensdruck.',
  ),
  Question(
    id: 11,
    exam: 'März 2026',
    q: 'Welche der folgenden Störungen gehören (gemäß ICD-10) zu den anhaltenden affektiven Störungen? (Wählen Sie zwei Antworten)',
    options: ['Depressive Episode', 'Dysthymie', 'Bipolare Störung', 'Manie', 'Zyklothymie'],
    correct: [1, 4],
    explanation:
        'Die anhaltenden affektiven Störungen (F34) umfassen die Zyklothymie (F34.0) und die Dysthymie (F34.1). Beide sind chronisch verlaufende, in der Ausprägung leichtere Störungen, die die Kriterien einer depressiven oder manischen Episode nicht erfüllen. Depressive Episode (F32), Manie (F30) und bipolare Störung (F31) sind demgegenüber episodische affektive Störungen.',
  ),
  Question(
    id: 12,
    exam: 'März 2026',
    q: 'Im Jahr 2023 beendeten ca. 10.300 Menschen ihr Leben durch Suizid. Schätzungen zufolge lag die Anzahl der Suizidversuche rund zehnmal so hoch.\nWelche der folgenden Aussagen zu Suizidalität sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Die Mehrzahl der vollendeten Suizide wurde von Männern im Alter von 50 Jahren und darüber durchgeführt',
      'Frühere Suizidversuche sind kein Risikofaktor für einen vollendeten Suizid im Verlauf',
      'Suizide und Suizidversuche stehen zwangsläufig im Zusammenhang mit psychischen Erkrankungen',
      'Einem Suizid geht stets ein präsuizidales Syndrom voraus',
      'Maßnahmen zur Suizidprävention wie z.B. das Sichern von hohen Gebäuden durch Absperrgitter oder Fangnetze sind Teil der sogenannten Verhältnisprävention',
    ],
    correct: [0, 4],
    explanation:
        'A ist richtig: Etwa drei Viertel der vollendeten Suizide entfallen auf Männer, mit deutlichem Schwerpunkt ab dem 50. Lebensjahr. E ist richtig: Bauliche Sicherungen verändern die Verhältnisse statt das Verhalten und sind damit Verhältnisprävention. B ist falsch: Ein früherer Suizidversuch ist der stärkste Einzelprädiktor. C ist falsch: "Zwangsläufig" ist zu absolut – bei etwa 90% liegt eine psychische Erkrankung vor, aber nicht bei allen. D ist falsch: Das präsuizidale Syndrom nach Ringel (Einengung, gehemmte Aggression, Suizidfantasien) ist häufig, aber nicht obligat – insbesondere Kurzschlusshandlungen verlaufen anders.',
  ),
  Question(
    id: 13,
    exam: 'März 2026',
    q: 'Es existiert keine einheitliche Definition der Intelligenz. Dennoch sind Aussagen über die menschliche Intelligenz möglich.\nWelche der folgenden Aussagen zu Intelligenz ist richtig?',
    options: [
      'Je nach Testverfahren haben IQ-Werte meist einen Mittelwert von 100 und eine Standardabweichung von 15. Etwa ein Drittel der Bevölkerung hat einen IQ-Wert zwischen 85 und 115',
      'Menschen mit einem IQ von >120 werden auch als "intellektuell hochbegabt" bezeichnet',
      'Ein Erwachsener mit einem IQ von 35-49 hat ungefähr ein Intelligenzalter von 3-6 Jahren',
      'Ab einem IQ von unter 70 spricht man von einer Intelligenzminderung, was einer geistigen Behinderung entspricht',
      'Eine Intelligenzminderung geht immer mit einer deutlichen Verhaltensstörung einher',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Ein IQ unter 70 definiert die Intelligenzminderung (F70-F79), gleichbedeutend mit geistiger Behinderung. A ist falsch: Zwischen 85 und 115 liegt eine Standardabweichung nach oben und unten, das sind etwa 68% der Bevölkerung, nicht ein Drittel. B ist falsch: Hochbegabung wird ab einem IQ von 130 angenommen (zwei Standardabweichungen). C ist falsch: Ein IQ von 35-49 (mittelgradige Intelligenzminderung, F71) entspricht einem Intelligenzalter von etwa 6-9 Jahren; 3-6 Jahre entsprechen der schweren Intelligenzminderung (F72). E ist falsch: Verhaltensstörungen können, müssen aber nicht auftreten – die ICD-10 kodiert dies gesondert.',
  ),
  Question(
    id: 14,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zur Einwilligungsfähigkeit sind richtig?\n1. Vor dem Beginn einer Behandlung muss der Heilpraktiker die Einwilligungsfähigkeit des Patienten feststellen\n2. Besteht keine Geschäftsfähigkeit, liegt auch keine Einwilligungsfähigkeit vor\n3. Besteht keine Einwilligungsfähigkeit, liegt auch keine Geschäftsfähigkeit vor\n4. Bei Jugendlichen hängt die Einwilligungsfähigkeit nicht nur vom Alter, sondern auch von der individuellen geistigen und sittlichen Reife ab\n5. Bei Jugendlichen ist Einwilligungsfähigkeit ab dem vollendeten 16. Lebensjahr anzunehmen',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: 1,
    explanation:
        'Richtig sind 1, 4 und 5: Die Einwilligungsfähigkeit ist vor Behandlungsbeginn zu prüfen, sie richtet sich bei Jugendlichen nach der individuellen Einsichts- und Urteilsfähigkeit, und ab dem vollendeten 16. Lebensjahr wird sie in der Regel angenommen. 2 und 3 sind falsch: Einwilligungsfähigkeit und Geschäftsfähigkeit sind voneinander unabhängig – ein 16-Jähriger ist nur beschränkt geschäftsfähig, kann aber einwilligungsfähig sein, und umgekehrt schließt eine Betreuung die Einwilligungsfähigkeit nicht automatisch aus.',
  ),
  Question(
    id: 15,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu somatoformen Störungen sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Die anhaltende somatoforme Schmerzstörung beruht auf physiologischen Prozessen im peripheren vegetativen Nervensystem',
      'Somatoforme Störungen können auch ohne somatische Abklärung diagnostiziert werden',
      'Bei der klassischen Somatisierungsstörung sind multiple, wiederholt auftretende und häufig wechselnde körperliche Symptome charakteristisch',
      'Daumenlutschen und Nägelkauen gehören zu den somatoformen Störungen',
      'Pathognomonisch für die somatoforme autonome Funktionsstörung sind subjektive Symptome, die so geschildert werden, als beruhten sie auf einem System oder Organ, das weitgehend oder vollständig vegetativ innerviert ist',
    ],
    correct: [2, 4],
    explanation:
        'C ist richtig: Die Somatisierungsstörung (F45.0) ist durch multiple, wiederholt auftretende und wechselnde körperliche Symptome über mindestens zwei Jahre gekennzeichnet. E ist richtig: Bei der somatoformen autonomen Funktionsstörung (F45.3) werden die Beschwerden auf vegetativ innervierte Organsysteme bezogen (z.B. Herz, Magen-Darm, Atmung). A ist falsch: Der anhaltenden somatoformen Schmerzstörung liegt gerade keine ausreichende körperliche Erklärung zugrunde. B ist falsch: Der Ausschluss organischer Ursachen ist zwingende Voraussetzung. D ist falsch: Daumenlutschen und Nägelkauen zählen zu den sonstigen Verhaltensauffälligkeiten des Kindesalters (F98.8).',
  ),
  Question(
    id: 16,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zur Dopaminhypothese sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Dopamin ist ausschließlich ein zentralnervöser Botenstoff',
      'Laut der Dopaminhypothese ist eine Überaktivität des dopaminergen Systems der Auslöser des Parkinsonsyndroms',
      'Dopamin ist die alleinige Ursache für Suchterkrankungen',
      'Laut der Dopaminhypothese ist eine Überaktivität des dopaminergen Systems der Auslöser schizophrener Symptome',
      'Haloperidol ist eines der (historisch) ersten antipsychotisch wirksamen Medikamente',
    ],
    correct: [3, 4],
    explanation:
        'D ist richtig: Die Dopaminhypothese führt die Positivsymptomatik der Schizophrenie auf eine dopaminerge Überaktivität im mesolimbischen System zurück – entsprechend wirken Antipsychotika als Dopamin-Antagonisten. E ist richtig: Haloperidol (1958) gehört zu den ersten hochpotenten Antipsychotika. A ist falsch: Dopamin wirkt auch peripher (z.B. auf Niere und Kreislauf). B ist falsch: Dem Parkinsonsyndrom liegt ein Dopamin-MANGEL in der Substantia nigra zugrunde. C ist falsch: Sucht ist multifaktoriell bedingt, Dopamin ist nur ein Baustein.',
  ),
  Question(
    id: 17,
    exam: 'März 2026',
    q: 'Herr M., 21 Jahre, Ausbildung zum Bürokaufmann, berichtet von Antriebslosigkeit, Interessenverlust und Schuldgefühlen seit ca. 6 Monaten. Er schlafe viel, fühle sich morgens besonders schlecht und habe manchmal passive Todeswünsche. Auf Nachfrage berichtet der Patient: Vor zwei Jahren habe er eine etwa einwöchige Phase mit deutlich erhöhter Energie, vermindertem Schlafbedürfnis und übertriebenen Online-Käufen erlebt.\nWelche der folgenden Diagnosen ist die wahrscheinlichste?',
    options: [
      'Unipolare depressive Episode',
      'Anpassungsstörung mit depressiver Reaktion',
      'Bipolare affektive Störung, gegenwärtig depressive Episode',
      'Zyklothyme Störung',
      'Schizoaffektive Störung',
    ],
    correct: 2,
    explanation:
        'Entscheidend ist die vor zwei Jahren durchgemachte einwöchige Phase mit gesteigerter Energie, vermindertem Schlafbedürfnis und Kaufexzessen – das erfüllt die Kriterien einer hypomanen bzw. manischen Episode. Zusammen mit der aktuellen depressiven Episode ergibt sich die Diagnose einer bipolaren affektiven Störung (F31.3/F31.4). Die anamnestische Frage nach früheren "Hochphasen" ist deshalb bei jeder Depression obligat: Sie entscheidet über unipolar oder bipolar und damit über die gesamte Therapieplanung.',
  ),
  Question(
    id: 18,
    exam: 'März 2026',
    q: 'Zur Abklärung einer psychischen Erkrankung muss eine ausführliche Anamnese erhoben werden.\nWelche der folgenden Aussagen zur Erhebung der Anamnese ist richtig?',
    options: [
      'Die Anamnese sollte möglichst mit dichotomen (geschlossenen) Fragen erhoben werden',
      'Frühere Erkrankungen sind nicht Teil der Anamnese',
      'Aktuelle Lebensumstände und die Biografie spielen keine Rolle',
      'Allergien sollten nur aufgenommen werden, wenn entsprechende Testergebnisse vorliegen',
      'Ziel der Anamnese sind Diagnosefindung, Therapieplanung und Risikobewertung',
    ],
    correct: 4,
    explanation:
        'E ist richtig: Die Anamnese dient der Diagnosefindung, der Therapieplanung und der Einschätzung von Risiken (insbesondere Suizidalität und Eigen-/Fremdgefährdung). A ist falsch: Offene Fragen sind zu bevorzugen, geschlossene nur zur gezielten Ergänzung. B, C und D sind falsch: Eigen- und Familienanamnese, Biografie, aktuelle Lebensumstände sowie anamnestisch berichtete Allergien gehören zwingend dazu – Letztere auch ohne Testbefund.',
  ),
  Question(
    id: 19,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu psychiatrischen Notfällen sind richtig?\nEin psychiatrischer Notfall\n1. ist ein Zustand, der einen unmittelbaren Handlungszwang zur Abwendung von Lebensgefahr oder von anderen schwerwiegenden Folgen mit sich bringt\n2. erfordert eine sofortige, an der akuten Symptomatik orientierte, gezielte Therapie\n3. entsteht immer auf der Grundlage einer vorbestehenden psychiatrischen Erkrankung\n4. muss auf einer psychiatrischen Station behandelt werden\n5. erfordert eine Einweisung nach dem jeweils gültigen Landesgesetz über Hilfen und Schutzmaßnahmen bei psychischen Erkrankungen',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
    ],
    correct: 0,
    explanation:
        'Richtig sind 1 und 2: Der psychiatrische Notfall ist über den unmittelbaren Handlungszwang definiert und erfordert eine sofortige, symptomorientierte Behandlung. 3 ist falsch: Auch ohne psychiatrische Vorerkrankung können Notfälle auftreten, etwa bei Intoxikation, akuter Belastungsreaktion oder organischer Ursache. 4 und 5 sind falsch: Die Behandlung kann auch somatisch (z.B. bei Intoxikation) erfolgen, und eine Zwangseinweisung nach PsychKG ist nur bei erheblicher Selbst- oder Fremdgefährdung erforderlich – der freiwilligen Behandlung ist immer der Vorrang zu geben.',
  ),
  Question(
    id: 20,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zum Parkinsonoid sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Zur klassischen Symptomatik gehören Rigor, Tremor und Akinese',
      'Ein Parkinsonoid kann mit Antipsychotika behandelt werden',
      'Ein Parkinsonoid kann durch Antipsychotika verursacht werden',
      'Ein hoher Lithiumspiegel spricht gegen ein Parkinsonoid',
      'Ein Parkinsonoid ist ein Synonym für die Parkinson-Erkrankung',
    ],
    correct: [0, 2],
    explanation:
        'A ist richtig: Das Parkinsonoid zeigt die klassische Trias Rigor, Tremor und Akinese. C ist richtig: Es ist eine typische extrapyramidal-motorische Nebenwirkung von Antipsychotika, besonders der hochpotenten klassischen Substanzen. B ist falsch: Antipsychotika sind die Ursache, nicht die Therapie – behandelt wird durch Dosisreduktion, Präparatewechsel oder Anticholinergika (z.B. Biperiden). D ist falsch: Auch eine Lithiumintoxikation kann parkinsonoide Symptome auslösen. E ist falsch: Das Parkinsonoid ist medikamentös induziert und grundsätzlich reversibel, die Parkinson-Krankheit dagegen neurodegenerativ.',
  ),
  Question(
    id: 21,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu Persönlichkeitsstörungen ist FALSCH?',
    options: [
      'Die schizoide Persönlichkeitsstörung ist u.a. gekennzeichnet durch ein einzelgängerisches Verhalten und ein nur begrenztes Vermögen, Gefühle auszudrücken',
      'Patienten mit einer abhängigen (asthenischen) Persönlichkeitsstörung verlassen sich bei Entscheidungen häufig passiv auf andere',
      'Die dissoziale Persönlichkeitsstörung inkludiert auch die sogenannte "soziopathische" und "psychopathische" Persönlichkeitsstörung',
      'Patienten mit einer histrionischen Persönlichkeitsstörung versuchen Aufmerksamkeit zu vermeiden und neigen zu sozialem Rückzug',
      '"Borderline" ist ein Sub-Typ der emotional-instabilen Persönlichkeitsstörung',
    ],
    correct: 3,
    explanation:
        'D ist die falsche Aussage und damit die richtige Antwort: Die histrionische Persönlichkeitsstörung (F60.4) ist durch das genaue Gegenteil gekennzeichnet – theatralisches Verhalten, Dramatisierung und ein andauerndes Verlangen nach Aufmerksamkeit und Anerkennung. Die übrigen Aussagen sind korrekt: Die emotional-instabile Persönlichkeitsstörung (F60.3) unterteilt sich in den impulsiven Typ (F60.30) und den Borderline-Typ (F60.31).',
  ),
  Question(
    id: 22,
    exam: 'März 2026',
    q: 'Herr B., 86 Jahre, wird von seiner Ehefrau in Ihre Praxis gebracht. Seit dem Vortag wirke er zunehmend verwirrt, könne sich schlecht konzentrieren und finde sich außerhalb der Wohnung nicht mehr zurecht. Nachts sei er unruhig, tagsüber schläfrig. Außerdem sei er in den letzten Monaten häufiger vergesslich gewesen, habe Wortfindungsstörungen gezeigt, öfter seine Schlüssel verlegt und sich z.B. beim Online-Banking schwergetan. Seit zwei Tagen klage er zudem über Brennen beim Wasserlassen.\nWelche der folgenden Verdachtsdiagnosen sind die wahrscheinlichsten? (Wählen Sie zwei Antworten)',
    options: [
      'Schlaf-Apnoe-Syndrom',
      'Alzheimer Demenz',
      'Delir bei Infektion',
      'Leichte depressive Episode',
      'Schizoaffektive Störung',
    ],
    correct: [1, 2],
    explanation:
        'Die Fallvignette beschreibt zwei übereinanderliegende Bilder: Der schleichende Verlauf über Monate mit Vergesslichkeit, Wortfindungsstörungen und nachlassender Alltagskompetenz spricht für eine Alzheimer-Demenz (B). Der akute Beginn binnen eines Tages mit fluktuierender Bewusstseinslage, Desorientierung und Umkehr des Schlaf-Wach-Rhythmus bei gleichzeitigen Harnwegsinfektzeichen spricht für ein Delir (C) – ein Harnwegsinfekt ist beim alten Menschen ein klassischer Auslöser. Eine vorbestehende Demenz ist dabei der wichtigste Risikofaktor für ein Delir.',
  ),
  Question(
    id: 23,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu Bewusstseinsstörungen sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Ein komatöser Patient kann durch das Setzen starker Schmerzreize erweckt werden',
      'Man unterscheidet quantitative und qualitative Bewusstseinsstörungen',
      'Bewusstseinseintrübung gehört zu den quantitativen Bewusstseinsstörungen',
      'Benommenheit gehört zu den quantitativen Bewusstseinsstörungen',
      'Qualitative Bewusstseinsstörungen beeinträchtigen nicht die Kontaktierbarkeit des Betroffenen',
    ],
    correct: [1, 3],
    explanation:
        'B ist richtig: Unterschieden werden quantitative Störungen der Wachheit und qualitative Störungen der Bewusstseinsinhalte. D ist richtig: Die Benommenheit ist die leichteste Stufe der quantitativen Bewusstseinsstörung, gefolgt von Somnolenz, Sopor und Koma. A ist falsch: Der komatöse Patient ist auch durch stärkste Schmerzreize nicht erweckbar – das unterscheidet ihn vom Sopor. C ist falsch: Die Bewusstseinstrübung gehört zu den qualitativen Störungen. E ist falsch: Auch qualitative Störungen (z.B. Bewusstseinseinengung im Delir) beeinträchtigen die Kontaktfähigkeit erheblich.',
  ),
  Question(
    id: 24,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zur emotional-instabilen Persönlichkeitsstörung vom Borderline-Typ sind richtig?\n1. Selbstverletzendes Verhalten ist ein obligates Symptom zur Diagnosestellung\n2. Impulsives Verhalten ist auch ein Diagnosekriterium des Borderline-Typs\n3. Die Mehrzahl der von einer Borderline-Persönlichkeitsstörung Betroffenen berichtet von traumatischen Ereignissen in der Vorgeschichte\n4. Insbesondere impulsive Verhaltensweisen sind einer geeigneten psychotherapeutischen Behandlung gut zugänglich und können gebessert werden\n5. Die medikamentöse Behandlung spielt eine entscheidende Rolle in der Therapie der Borderline-Persönlichkeitsstörung',
    options: [
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: 3,
    explanation:
        'Richtig sind 2, 3 und 4: Impulsivität ist Kernkriterium beider Subtypen der emotional-instabilen Persönlichkeitsstörung, ein Großteil der Betroffenen berichtet über Traumatisierungen (insbesondere sexuellen Missbrauch und Vernachlässigung), und impulsives Verhalten spricht auf störungsspezifische Psychotherapie (z.B. DBT nach Linehan) gut an. 1 ist falsch: Selbstverletzung ist häufig, aber nicht obligat. 5 ist falsch: Die Behandlung ist primär psychotherapeutisch, Medikamente spielen nur eine ergänzende Rolle bei Krisen und Komorbiditäten.',
  ),
  Question(
    id: 25,
    exam: 'März 2026',
    q: 'Welches der folgenden Symptome gehört zu den Ich-Störungen?',
    options: ['Sprachverarmung', 'Apathie', 'Gedankenabriss', 'Gedankenentzug', 'Negativismus'],
    correct: 3,
    explanation:
        'Der Gedankenentzug gehört zu den Ich-Störungen: Der Betroffene erlebt, dass ihm Gedanken von außen weggenommen werden. Weitere Ich-Störungen sind Gedankeneingebung, Gedankenausbreitung, Willensbeeinflussung, Depersonalisation und Derealisation. Gedankenabriss ist demgegenüber eine formale Denkstörung (der Gedankengang bricht ohne Fremdeinwirkung ab), Sprachverarmung und Apathie sind Negativsymptome, Negativismus ist ein katatones Symptom.',
  ),
  Question(
    id: 26,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zur Schizophrenie sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Eine psychopharmakologische Behandlung mit Antipsychotika ist zentraler Bestandteil der Akut-Therapie',
      'Eine Demenzerkrankung kann eine Schizophrenie auslösen',
      'Die Konkordanzrate bei Schizophrenie liegt bei eineiigen Zwillingen nahe bei 50%',
      'Cannabiskonsum kann das Erkrankungsrisiko vermindern',
      'Die Mehrzahl der Neuerkrankungen geht auf Hirnerkrankungen oder Drogenkonsum zurück',
    ],
    correct: [0, 2],
    explanation:
        'A ist richtig: Antipsychotika sind in der Akutbehandlung der Schizophrenie unverzichtbar. C ist richtig: Die Konkordanzrate eineiiger Zwillinge liegt bei etwa 50% – das belegt sowohl eine starke genetische Komponente als auch die Bedeutung von Umweltfaktoren. B ist falsch: Eine Demenz kann psychotische Symptome verursachen, dann handelt es sich aber definitionsgemäß um eine organische Störung (F0), nicht um eine Schizophrenie. D ist falsch: Cannabis erhöht das Erkrankungsrisiko. E ist falsch: Die Schizophrenie ist multifaktoriell bedingt; organische Ursachen und Drogenkonsum erklären nur einen kleinen Teil der Fälle.',
  ),
  Question(
    id: 27,
    exam: 'März 2026',
    q: 'Welche der folgenden Aussagen zu Dokumentations- und Schweigepflichten von Heilpraktikern sind richtig? (Wählen Sie zwei Antworten)',
    options: [
      'Heilpraktiker haben ein Zeugnisverweigerungsrecht gemäß §53 StPO',
      'Heilpraktiker unterliegen der zivilrechtlichen Schweigepflicht',
      'Heilpraktiker stehen unter der Disziplinaraufsicht ihrer Berufsverbände',
      'Heilpraktiker haben hinsichtlich ihrer Dokumentation nur eine allgemeine Sorgfaltspflicht',
      'Vor Gericht müssen Heilpraktiker auf jeden Fall aussagen',
    ],
    correct: [1, 2],
    explanation:
        'B ist richtig: Die Schweigepflicht ergibt sich aus dem Behandlungsvertrag (§§ 630a ff. BGB) und wird strafrechtlich durch § 203 StGB flankiert. C gilt laut Lösungsschlüssel als richtig: Für Heilpraktiker existiert keine staatliche Kammer; soweit sie einem Berufsverband angehören, gelten dessen Berufs- und Disziplinarordnung. A ist falsch: Das Zeugnisverweigerungsrecht nach § 53 StPO gilt für Ärzte und Psychotherapeuten, nicht für Heilpraktiker – ein prüfungsrelevanter Klassiker. E ist falsch: Auch ohne Zeugnisverweigerungsrecht kann im Einzelfall eine Entbindung von der Schweigepflicht erforderlich sein. D ist falsch: Die Dokumentationspflicht ist in § 630f BGB konkret geregelt.',
  ),
  Question(
    id: 28,
    exam: 'März 2026',
    q: 'Bei einer Depression können auch wahnhafte oder psychotische Symptome auftreten.\nWelche der folgenden Aussagen zur wahnhaften Depression ist richtig?',
    options: [
      'Wenn bei einer Depression wahnhafte oder psychotische Symptome auftreten, ist diese stets als schwergradig einzustufen',
      'Psychotische Symptome im Rahmen einer Depression treten ausschließlich in Form von akustischen Halluzinationen auf',
      'Die große Mehrheit der schwergradigen Depressionen geht mit psychotischen Symptomen einher',
      'Ein typisches Wahnthema bei der wahnhaften Depression ist der Größenwahn',
      'Eine medikamentöse Behandlung ist bei einer wahnhaften Depression nicht indiziert',
    ],
    correct: 0,
    explanation:
        'A ist richtig: Psychotische Symptome sind in der ICD-10 nur bei der schweren depressiven Episode vorgesehen (F32.3) – ihr Auftreten definiert den Schweregrad zwingend als schwer. B ist falsch: Neben akustischen Halluzinationen treten vor allem Wahnphänomene auf. C ist falsch: Nur eine Minderheit der schweren Depressionen verläuft psychotisch. D ist falsch: Typisch sind synthyme (stimmungskongruente) Wahnthemen wie Verarmungs-, Versündigungs- und nihilistischer Wahn; Größenwahn passt zur Manie. E ist falsch: Gerade hier ist eine medikamentöse Behandlung (Antidepressivum plus Antipsychotikum) indiziert.',
  ),
];
