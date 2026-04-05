import '../models/question.dart';

const List<Question> questions2023 = [
  Question(
    id: 1,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zur Elektrokrampftherapie (EKT) treffen zu?\n1. Durch elektrische Reizung des Gehirns wird ein epileptischer Anfall ausgelöst\n2. Die EKT kann bei Depressionen eingesetzt werden.\n3. Die EKT ist eine wirksame Behandlungsmethode.\n4. Die EKT ist eine Sonderform der Elektroenzephalografie (EEG).\n5. Die EKT wird aufgrund der hohen Risiken nicht mehr angewendet.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2 und 3 sind richtig. Bei der EKT wird durch elektrische Stimulation ein kontrollierter epileptischer Anfall ausgelöst. Sie wird v.a. bei therapieresistenten Depressionen und bei schweren depressiven Episoden mit akuter Suizidalität eingesetzt. Die EKT ist eine nachweislich wirksame Behandlungsmethode. Aussage 4 ist falsch: EKT ist keine Sonderform des EEG – das EEG ist ein diagnostisches Verfahren, die EKT ein therapeutisches. Aussage 5 ist falsch: Die EKT wird nach wie vor angewendet und gilt als sicher unter Narkose.',
  ),
  Question(
    id: 2,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zu psychischen Störungen im Wochenbett treffen zu?\n1. Eine postpartale Depression tritt in der Regel auf, wenn das Kind unerwünscht ist\n2. Bei einer schweren postpartalen Depression empfiehlt sich eine Behandlung mit einem Antidepressivum.\n3. Eine postpartale Depression der Mutter kann dem Säugling schaden, deswegen sollte die Mutter bei ersten Anzeichen vom Kind getrennt werden.\n4. Im Wochenbett treten psychische Erkrankungen gehäuft auf.\n5. Eine postpartale Depression kann sich innerhalb von Stunden nach der Entbindung entwickeln.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 4 und 5 sind richtig. Bei schwerer postpartaler Depression sind Antidepressiva indiziert. Im Wochenbett treten psychische Erkrankungen gehäuft auf (Babyblues, postpartale Depression, postpartale Psychose). Postpartale psychische Störungen können sich rasch nach der Entbindung entwickeln. Aussage 1 ist falsch: Eine postpartale Depression kann jede Mutter treffen, unabhängig davon, ob das Kind erwünscht war. Aussage 3 ist falsch: Eine Trennung von Mutter und Kind ist kontraproduktiv; stattdessen sollte die Mutter-Kind-Bindung unterstützt werden.',
  ),
  Question(
    id: 3,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zu somatoformen Störungen (nach ICD-10) sind richtig?\n1. Eine Somatisierungsstörung bedarf eines Auslösers.\n2. In den meisten Fällen liegt einer somatoformen Schmerzstörung eine somatische Ursache zugrunde.\n3. Die Prognose einer somatoformen Schmerzstörung ohne organisches Korrelat ist günstig.\n4. Beim Vorliegen einer somatoformen Schmerzstörung ist ein niederpotentes Neuroleptikum Mittel der Wahl.\n5. Patienten mit einer somatoformen Störung suchen häufig primär einen Allgemeinmediziner oder Internisten auf.',
    options: [
      'Nur die Aussage 2 ist richtig',
      'Nur die Aussage 4 ist richtig',
      'Nur die Aussage 5 ist richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        'Nur Aussage 5 ist richtig. Patienten mit somatoformen Störungen suchen typischerweise zuerst Allgemeinmediziner oder Internisten auf, da sie ihre Beschwerden als körperlich erleben. Aussage 1 ist falsch: Eine Somatisierungsstörung bedarf nicht zwingend eines konkreten Auslösers. Aussage 2 ist falsch: Per Definition liegt bei somatoformen Schmerzstörungen keine ausreichende somatische Ursache vor. Aussage 3 ist falsch: Die Prognose ist oft ungünstig mit Chronifizierungsneigung. Aussage 4 ist falsch: Neuroleptika sind nicht Mittel der Wahl; ggf. werden Antidepressiva und Psychotherapie eingesetzt.',
  ),
  Question(
    id: 4,
    exam: 'März 2023',
    q: 'Welche Aussage zur Schizophrenie trifft zu?',
    options: [
      'Ein akuter Krankheitsbeginn ist prognostisch eher günstig.',
      'Symptome nach Drogenkonsum haben keine Ähnlichkeit mit Symptomen einer Schizophrenie',
      'Mit geduldiger Erklärung kann sich der Patient vom Wahninhalt lösen.',
      'Es treten keine kognitiven Defizite auf.',
      'Frauen erkranken in der Regel deutlich früher als Männer an einer Schizophrenie.',
    ],
    correct: 0,
    explanation:
        'A ist richtig: Ein akuter Beginn der Schizophrenie ist prognostisch günstiger als ein schleichender Beginn. B ist falsch: Drogeninduzierte Psychosen können Schizophrenie-ähnliche Symptome zeigen. C ist falsch: Wahninhalte sind definitionsgemäß nicht korrigierbar. D ist falsch: Kognitive Defizite sind häufig bei Schizophrenie. E ist falsch: Männer erkranken im Durchschnitt früher als Frauen (Männer ca. 20-25 J., Frauen ca. 25-30 J.).',
  ),
  Question(
    id: 5,
    exam: 'März 2023',
    q: 'Welche Aussage zur Demenzerkrankung trifft zu?',
    options: [
      'Die Lewy-Körperchen-Demenz ist eine häufige Form der Demenzerkrankungen.',
      'Alzheimer-Demenz ist durch einen akuten Beginn und den plötzlichen Verfall der kognitiven Fähigkeiten gekennzeichnet.',
      'Die Creutzfeldt-Jakob-Erkrankung tritt als langsam fortschreitende Demenz in Erscheinung',
      'Zu Beginn der Demenz bei Morbus Pick (frontotemporale Demenz) stehen Charakterveränderungen und der Verlust sozialer Fähigkeiten im Vordergrund',
      'Die Blutwerte zeigen bei einer Demenz pathognomonische Veränderungen.',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Bei der frontotemporalen Demenz (Morbus Pick) stehen initial Persönlichkeitsveränderungen, Enthemmung und Verlust sozialer Kompetenzen im Vordergrund – die Gedächtnisleistung ist anfangs oft noch erhalten. A ist falsch: Die Lewy-Körperchen-Demenz ist die dritthäufigste Form, aber nicht als \'häufig\' im Sinne der häufigsten zu bezeichnen (Alzheimer dominiert). B ist falsch: Alzheimer beginnt schleichend, nicht akut. C ist falsch: CJK verläuft rasch progredient. E ist falsch: Es gibt keine pathognomonischen Blutwerte für Demenz.',
  ),
  Question(
    id: 6,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zur rechtlichen Betreuung treffen zu?\n1. Der Aufgabenkreis eines Betreuers kann sich auf eine Gesundheitsfürsorge beschränken.\n2. Die Behandlung von Patienten mit gesetzlicher Betreuung ist nur mit evidenzbasierten Methoden erlaubt.\n3. Der Betreuer kann die dauerhafte Unterbringung des Betreuten im Pflegeheim anordnen.\n4. Im Rahmen des Betreuungsrechts kann ggf. auch eine zwangsweise Behandlung erfolgen\n5. Die Bestellung eines Betreuers kommt grundsätzlich nur für Volljährige in Betracht, Kinder und Jugendliche können unter Vormundschaft gestellt werden.',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 4 und 5 sind richtig. Der Aufgabenkreis des Betreuers kann auf bestimmte Bereiche wie Gesundheitsfürsorge beschränkt werden. Eine Zwangsbehandlung ist unter strengen Voraussetzungen im Rahmen des Betreuungsrechts möglich. Betreuung gilt für Volljährige; für Minderjährige gibt es die Vormundschaft. Aussage 2 ist falsch: Es gibt keine gesetzliche Beschränkung auf evidenzbasierte Methoden. Aussage 3 ist falsch: Der Betreuer kann die Unterbringung nicht eigenständig anordnen – dies bedarf der Genehmigung des Betreuungsgerichts.',
  ),
  Question(
    id: 7,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zur Psychotherapie treffen zu?\n1. \'Erlernte Hilflosigkeit\' ist ein in der Psychoanalyse verwendeter Begriff für einen Abwehrmechanismus.\n2. Bei einer akuten schweren depressiven Episode ist eine ambulante psychodynamisch orientierte Psychotherapie indiziert.\n3. Ziel der kognitiven Therapie nach Beck ist die sogenannte kognitive Umstrukturierung.\n4. Beim SORKC-Modell handelt es sich um ein in der verhaltenstherapeutischen Diagnostik anwendbares Modell zur Problem-, Situations- und Verhaltensanalyse.\n5. Psychodynamisch orientierte Methoden spielen in der Kinder- und Jugendpsychiatrie keine wesentliche Rolle.',
    options: [
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur 3 und 4 sind richtig. Die kognitive Therapie nach Beck zielt auf die kognitive Umstrukturierung dysfunktionaler Denkmuster ab. Das SORKC-Modell ist ein zentrales verhaltenstherapeutisches Analysemodell. Aussage 1 ist falsch: \'Erlernte Hilflosigkeit\' (Seligman) ist ein lerntheoretisches Konzept, kein psychoanalytischer Abwehrmechanismus. Aussage 2 ist falsch: Bei akuter schwerer Depression ist zunächst stationäre Behandlung und Pharmakotherapie indiziert. Aussage 5 ist falsch: Psychodynamische Methoden spielen eine wichtige Rolle in der Kinder- und Jugendpsychotherapie.',
  ),
  Question(
    id: 8,
    exam: 'März 2023',
    q: 'Welche der folgenden Merkmale lassen am ehesten an eine abhängige (asthenische) Persönlichkeitsstörung (nach ICD-10) denken?\n1. Streitsüchtiges und beharrliches Bestehen auf eigene Rechte\n2. Ausgeprägte Ängste vor dem Alleinsein bzw. dem Verlassenwerden\n3. Eingeschränkte Fähigkeiten beim Treffen von Entscheidungen ohne Ratschläge und Bestätigung von Anderen\n4. Übermäßige Gewissenhaftigkeit bis hin zum Perfektionismus\n5. Unterordnung der eigenen Bedürfnisse unter die anderer Personen',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3 und 5 sind richtig. Die abhängige (dependente) PS ist gekennzeichnet durch Angst vor Alleinsein/Verlassenwerden, Entscheidungsunfähigkeit ohne Bestätigung anderer und Unterordnung eigener Bedürfnisse. Aussage 1 ist falsch: Streitsucht und Bestehen auf eigene Rechte passen zur paranoiden PS. Aussage 4 ist falsch: Übermäßige Gewissenhaftigkeit und Perfektionismus sind Merkmale der anankastischen (zwanghaften) PS.',
  ),
  Question(
    id: 9,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Relevante Therapieprinzipien für eine wirksame Behandlung einer spezifischen Phobie in der Verhaltenstherapie im Sinne einer Expositionstherapie sind:\n1. Konfrontation durch Flooding oder systematische Desensibilisierung\n2. Habituation\n3. Vollständiges Durchlaufen der Angstkurve\n4. Reaktionsverhinderung\n5. Verzicht auf Selbstmedikation mit Tranquilizern',
    options: [
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '1, 2, 3 und 5 sind richtig. Flooding und systematische Desensibilisierung sind Expositionsverfahren. Habituation (Gewöhnung) ist das Wirkmechanismus. Das vollständige Durchlaufen der Angstkurve ist wichtig, damit der Patient erlebt, dass die Angst von allein nachlässt. Tranquilizer würden die Exposition unwirksam machen. Aussage 4 ist in diesem Kontext weniger zutreffend: Reaktionsverhinderung ist primär ein Prinzip bei Zwangsstörungen, nicht bei spezifischen Phobien.',
  ),
  Question(
    id: 10,
    exam: 'März 2023',
    q: 'Das Rollenspiel im Rahmen der Verhaltenstherapie beruht insbesondere auf den Lernmechanismen: (Wählen Sie zwei Antworten)',
    options: [
      'Positive Verstärkung',
      'Indirekte Verstärkung',
      'Negative Verstärkung',
      'Lernen am Modell',
      'Habituation',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Das verhaltenstherapeutische Rollenspiel basiert auf dem Lernen am Modell (der Therapeut oder andere Gruppenmitglieder zeigen alternatives Verhalten) und auf positiver Verstärkung (erwünschtes Verhalten wird gelobt und bestärkt). Die anderen Mechanismen spielen beim Rollenspiel keine zentrale Rolle.',
  ),
  Question(
    id: 11,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Für Zwangsstörungen gilt typischerweise:\n1. Ein Hauptkriterium ist das Auftreten von Zwangsgedanken\n2. Ein Hauptkriterium ist das Auftreten von Zwangshandlungen\n3. Die verhaltenstherapeutische Intervention besteht wesentlich aus der Exposition, der Reaktionsverhinderung und dem Aushalten der nachfolgend auftretenden Spannungszustände\n4. Dem unmittelbaren familiären Umfeld bleibt die Erkrankung meist verborgen\n5. Zwangsgedanken oder -handlungen werden vom Betroffenen als ich-synton erlebt',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 2 und 3 sind richtig. Zwangsgedanken und Zwangshandlungen sind die Hauptkriterien der Zwangsstörung. Die VT-Behandlung besteht aus Exposition mit Reaktionsverhinderung und dem Aushalten der dabei entstehenden Anspannung. Aussage 4 ist falsch: Die Erkrankung bleibt dem familiären Umfeld meist nicht verborgen, da Zwangsrituale oft den Alltag dominieren. Aussage 5 ist falsch: Zwänge werden typischerweise als ich-dyston (als fremd, unsinnig) erlebt, nicht als ich-synton.',
  ),
  Question(
    id: 12,
    exam: 'März 2023',
    q: 'Typische Methoden/Techniken der Verhaltenstherapie sind: (Wählen Sie zwei Antworten)',
    options: [
      'Deutung des Widerstandes',
      'Bearbeitung der Übertragung',
      'Biofeedback',
      'Freie Assoziation',
      'Flooding',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Biofeedback und Flooding (Reizüberflutung) sind verhaltenstherapeutische Methoden. Deutung des Widerstandes (A), Bearbeitung der Übertragung (B) und Freie Assoziation (D) sind psychoanalytische bzw. tiefenpsychologische Techniken.',
  ),
  Question(
    id: 13,
    exam: 'März 2023',
    q: 'Im Rahmen einer rechtlichen Betreuung kann ein Einwilligungsvorbehalt angeordnet werden. Welche Aussage zum Einwilligungsvorbehalt trifft zu?',
    options: [
      'Voraussetzung ist das Vorliegen einer schweren körperlichen Erkrankung oder Behinderung.',
      'Es handelt sich um eine spezielle Form der Betreuung für höchstpersönliche Rechtsgeschäfte wie Eheschließung oder Testament.',
      'Bestimmte Rechtsgeschäfte werden ohne Einwilligung eines vom Gericht bestimmten Betreuers nicht rechtswirksam.',
      'Primärer Zweck ist es, andere von den Rechtsgeschäften des Betreuten zu schützen.',
      'Ein Einwilligungsvorbehalt bleibt grundsätzlich lebenslang bestehen.',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Beim Einwilligungsvorbehalt werden bestimmte Rechtsgeschäfte des Betreuten ohne Zustimmung des Betreuers nicht wirksam. A ist falsch: Voraussetzung ist eine psychische Erkrankung oder geistige Behinderung, nicht zwingend eine körperliche. B ist falsch: Höchstpersönliche Rechtsgeschäfte wie Eheschließung oder Testament sind vom Einwilligungsvorbehalt ausgenommen. D ist falsch: Primärer Zweck ist der Schutz des Betreuten selbst, nicht Dritter. E ist falsch: Der Einwilligungsvorbehalt wird regelmäßig überprüft und kann aufgehoben werden.',
  ),
  Question(
    id: 14,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Störungen der Psychomotorik bei Schizophrenie sind:\n1. Sprachstereotypien\n2. Ambivalenz\n3. Katatone Erregung\n4. Parathymie\n5. Stupor',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 3 und 5 sind richtig. Sprachstereotypien (stereotyp wiederholte Äußerungen), katatone Erregung und Stupor sind Störungen der Psychomotorik. Aussage 2 ist falsch: Ambivalenz ist eine Störung des Affekts/der Willensbildung, keine Psychomotorikstörung. Aussage 4 ist falsch: Parathymie (inadäquater Affekt) ist eine Affektstörung, keine Psychomotorikstörung.',
  ),
  Question(
    id: 15,
    exam: 'März 2023',
    q: 'Das Verhalten eines Patienten erscheint Ihnen sonderbar, bizarr, gekünstelt, unnatürlich. Welcher Fachbegriff trifft hierfür am ehesten zu?',
    options: ['Parathymie', 'Affektlabilität', 'Logorrhoe', 'Manierismus', 'Mutismus'],
    correct: 3,
    explanation:
        'Manierismus bezeichnet sonderbare, bizarre, gekünstelte und unnatürlich wirkende Verhaltensweisen, Bewegungen oder Sprechweisen. Es gehört zu den Störungen der Psychomotorik. Parathymie (A) ist ein inadäquater Affekt. Affektlabilität (B) bezeichnet rasche Stimmungswechsel. Logorrhoe (C) ist übermäßiger Redefluss. Mutismus (E) ist das Schweigen bei vorhandener Sprachfähigkeit.',
  ),
  Question(
    id: 16,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zur ADHS treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'ADHS ist gekennzeichnet durch motorische Hyperaktivität, Impulsivität und Störung der Aufmerksamkeit',
      'ADHS tritt im Erwachsenenalter nicht auf',
      'Vor Diagnosestellung einer ADHS muss eine organische Ursache ausgeschlossen werden',
      'Genetische Faktoren spielen bei ADHS keine Rolle',
      'Alleinige Verhaltenstherapie ist medikamentöser Therapie bei ADHS überlegen',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. ADHS ist durch die Trias Hyperaktivität, Impulsivität und Aufmerksamkeitsstörung gekennzeichnet. Vor der Diagnosestellung müssen organische Ursachen (z.B. Schilddrüsenstörungen, Epilepsie) ausgeschlossen werden. B ist falsch: ADHS kann bis ins Erwachsenenalter persistieren. D ist falsch: Genetische Faktoren spielen eine wesentliche Rolle (Heritabilität ca. 70-80%). E ist falsch: Besonders bei mittelschwerem bis schwerem ADHS ist die Kombination aus VT und Medikation am wirksamsten.',
  ),
  Question(
    id: 17,
    exam: 'März 2023',
    q: 'Grübeln gehört im psychopathologischen Befund zur Gruppe der:',
    options: [
      'Aufmerksamkeits- und Gedächtnisstörungen',
      'Formalen Denkstörungen',
      'Befürchtungen und Zwänge',
      'Ich-Störungen',
      'Inhaltlichen Denkstörungen',
    ],
    correct: 1,
    explanation:
        'Grübeln wird im psychopathologischen Befund den formalen Denkstörungen zugeordnet. Es handelt sich um ein ständiges Beschäftigtsein mit (oft unangenehmen) Gedanken, die nicht produktiv weiterführen – eine Störung des Denkablaufs. Es ist kein inhaltlicher Wahn, keine Ich-Störung und keine reine Aufmerksamkeitsstörung.',
  ),
  Question(
    id: 18,
    exam: 'März 2023',
    q: 'Welche der genannten Aussagen zu Zwangsstörungen treffen zu?\n1. Bei Zwangshandlungen beobachtet man häufig Spontanremissionen\n2. Eine Zwangsstörung beginnt in der Regel vor dem 6. Lebensjahr\n3. Aufgrund des hohen Leidensdruckes kommt es meist zu einer raschen Diagnosestellung\n4. Eine Kombination aus Psychotherapie und Medikation hat sich bewährt.\n5. Zwangssymptome können im Rahmen einer Demenz auftreten.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '4 und 5 sind richtig. Die Kombination aus kognitiver VT mit Exposition/Reaktionsverhinderung und SSRI-Medikation hat sich bei Zwangsstörungen bewährt. Zwangssymptome können bei Demenz auftreten. Aussage 1 ist falsch: Spontanremissionen sind bei Zwangsstörungen selten; die Erkrankung neigt zur Chronifizierung. Aussage 2 ist falsch: Der typische Beginn liegt im Jugend- oder frühen Erwachsenenalter, nicht vor dem 6. Lebensjahr. Aussage 3 ist falsch: Trotz hohen Leidensdrucks vergehen oft viele Jahre bis zur Diagnose, da Betroffene sich schämen.',
  ),
  Question(
    id: 19,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zu Neuroleptika treffen zu?\n1. Neuroleptika sind zur Behandlung schizophrener Störungen geeignet.\n2. Neuroleptika haben eine antagonistische Wirkung an Dopaminrezeptoren.\n3. Man unterscheidet typische und atypische Neuroleptika.\n4. Bei Gabe von Neuroleptika sollten regelmäßig Elektrokardiogramme abgeleitet werden.\n5. Als Nebenwirkung kann es zum Auftreten extrapyramidaler Bewegungsstörungen kommen.',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Neuroleptika sind die Hauptmedikation bei Schizophrenie. Sie wirken als Dopaminrezeptor-Antagonisten. Man unterscheidet typische (z.B. Haloperidol) und atypische (z.B. Risperidon, Olanzapin) Neuroleptika. Regelmäßige EKG-Kontrollen sind wichtig wegen möglicher QT-Zeit-Verlängerung. Extrapyramidalmotorische Störungen (EPMS) wie Frühdyskinesien, Parkinsonoid und Spätdyskinesien sind typische Nebenwirkungen.',
  ),
  Question(
    id: 20,
    exam: 'März 2023',
    q: 'Verantwortlich für die öffentlich-rechtliche Unterbringung eines psychisch Kranken im psychiatrischen Krankenhaus gemäß Unterbringungsrecht der Länder (PsychKG) ist:',
    options: [
      'Die Kriminalpolizei',
      'Das Gesundheitsamt',
      'Die zuständige Ärztekammer',
      'Das Amtsgericht',
      'Das Ordnungsamt',
    ],
    correct: 3,
    explanation:
        'Das Amtsgericht ist für die Anordnung der öffentlich-rechtlichen Unterbringung nach PsychKG zuständig. Das Gericht entscheidet auf Antrag (z.B. der Ordnungsbehörde oder des Gesundheitsamtes) über die Unterbringung. Das Gesundheitsamt kann zwar die Unterbringung beantragen, aber nicht anordnen. Die Kriminalpolizei, Ärztekammer und das Ordnungsamt haben hier keine Anordnungskompetenz.',
  ),
  Question(
    id: 21,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Typische Symptome einer depressiven Episode (nach ICD-10) sind:\n1. Ideenflucht\n2. Interessenverlust\n3. Vermindertes Selbstbewusstsein\n4. Suizidgedanken\n5. Verminderter Antrieb',
    options: [
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. Interessenverlust und verminderter Antrieb gehören zu den Hauptsymptomen der Depression. Vermindertes Selbstbewusstsein/Selbstwertgefühl und Suizidgedanken sind Zusatzsymptome. Aussage 1 ist falsch: Ideenflucht gehört zum manischen Syndrom, nicht zur Depression. Bei Depression findet sich eher Denkhemmung oder Grübeln.',
  ),
  Question(
    id: 22,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Ein Abhängigkeitssyndrom (nach ICD-10) ist gekennzeichnet durch:\n1. Toleranzentwicklung\n2. Entzugssymptome\n3. Beendigung des Konsums bei schädlichen Folgen\n4. Fähigkeit, den Konsum zu kontrollieren\n5. Einengung auf den Substanzkonsum',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2 und 5 sind richtig. Toleranzentwicklung, Entzugssymptome und Einengung des Verhaltens auf den Substanzkonsum (Vernachlässigung anderer Interessen) sind Kriterien des Abhängigkeitssyndroms nach ICD-10. Aussage 3 ist falsch: Gerade die Fortsetzung des Konsums trotz schädlicher Folgen ist ein Abhängigkeitskriterium. Aussage 4 ist falsch: Der Verlust der Kontrolle über den Konsum ist ein Kennzeichen der Abhängigkeit.',
  ),
  Question(
    id: 23,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Ursachen eines Delirs können sein:\n1. Stoffwechselstörungen\n2. Elektrolytstörungen\n3. Medikamente\n4. Operationen\n5. Hohes Fieber',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Ein Delir kann durch vielfältige Ursachen ausgelöst werden: Stoffwechselstörungen (z.B. Leberversagen, Niereninsuffizienz), Elektrolytstörungen (z.B. Hyponatriämie), Medikamente (z.B. Anticholinergika, Benzodiazepine), postoperative Zustände (postoperatives Delir) und hohes Fieber (Fieberdelir). Das Delir ist ein ätiologisch unspezifisches Syndrom.',
  ),
  Question(
    id: 24,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Zu den Ich-Störungen gehören:\n1. Derealisation\n2. Gedankenabreißen\n3. Gedankenausbreitung\n4. Gedankendrängen\n5. Gedankeneingebung',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3 und 5 sind richtig. Zu den Ich-Störungen gehören: Derealisation (Umgebung erscheint unwirklich), Gedankenausbreitung (eigene Gedanken werden von anderen gelesen/gehört) und Gedankeneingebung (Gedanken werden von außen eingegeben). Aussage 2 ist falsch: Gedankenabreißen ist eine formale Denkstörung. Aussage 4 ist falsch: Gedankendrängen ist ebenfalls eine formale Denkstörung.',
  ),
  Question(
    id: 25,
    exam: 'März 2023',
    q: 'Welche der folgenden Befunde sprechen für eine organische Ursache der psychischen Symptome und erfordern eine möglichst schnelle somatische Abklärung?\n1. Bewusstseinsstörung\n2. Orientierungsstörung\n3. Fieber\n4. Optische Halluzinationen\n5. Vegetative Auffälligkeiten',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Bewusstseinsstörungen, Orientierungsstörungen, Fieber, optische Halluzinationen und vegetative Auffälligkeiten sind Red Flags für eine organische Ursache psychischer Symptome. Besonders optische Halluzinationen (im Gegensatz zu akustischen bei Schizophrenie) weisen auf organische Ursachen hin (z.B. Delir, Intoxikation). All diese Befunde erfordern eine rasche somatische Abklärung.',
  ),
  Question(
    id: 26,
    exam: 'März 2023',
    q: 'In der kognitiven Therapie werden typische \'Denkfehler\' unterschieden. Die Aussage Ihrer Patientin: \'Ich habe ein seltsames Gefühl, daher werde ich das Haus heute nicht mehr verlassen\' entspricht am ehesten:',
    options: [
      'Gedankenlesen',
      'Unangemessener Imperativ',
      'Übertriebene Verallgemeinerung',
      'Katastrophisieren',
      'Emotionale Beweisführung',
    ],
    correct: 4,
    explanation:
        'Emotionale Beweisführung (Emotional Reasoning) liegt vor, wenn Gefühle als Beweis für die Richtigkeit von Gedanken herangezogen werden. Die Patientin schließt aus ihrem seltsamen Gefühl, dass es tatsächlich gefährlich wäre, das Haus zu verlassen – sie nutzt ihr Gefühl als \'Beweis\'. Gedankenlesen (A) wäre das Annehmen, die Gedanken anderer zu kennen. Katastrophisieren (D) wäre das Erwarten des Schlimmsten. Übertriebene Verallgemeinerung (C) wäre das Schließen von einem Ereignis auf alle.',
  ),
  Question(
    id: 27,
    exam: 'März 2023',
    q: 'Welche der folgenden Aussagen zu Psychotherapieverfahren treffen zu?\n1. Hauptindikation der dialektisch-behavioralen Therapie sind schizophrene Störungen\n2. In der Psychoanalyse wird der Patient zum freien Assoziieren angehalten\n3. Eine speziell auf Sorgenkontrolle ausgerichtete kognitive Verhaltenstherapie hat sich bei der generalisierten Angststörung bewährt\n4. Verfahren der ersten Wahl bei Zwangsstörungen ist die kognitive Verhaltenstherapie mit Exposition und Reaktionsmanagement\n5. Eine Retraumatisierung ist bei der Traumatherapie erwünscht',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 3 und 4 sind richtig. In der Psychoanalyse ist freies Assoziieren eine zentrale Technik. KVT mit Sorgenkontrolltraining ist wirksam bei GAS. KVT mit Exposition und Reaktionsmanagement ist Erstlinientherapie bei Zwangsstörungen. Aussage 1 ist falsch: Die DBT wurde primär für die Borderline-PS entwickelt, nicht für Schizophrenie. Aussage 5 ist falsch: Eine Retraumatisierung ist in der Traumatherapie ausdrücklich nicht erwünscht und soll vermieden werden.',
  ),
  Question(
    id: 28,
    exam: 'März 2023',
    q: 'Eine Dysthymia (nach ICD-10) ist:',
    options: [
      'Eine larvierte Depression',
      'Eine affektive Störung mit häufigen Stimmungswechseln zwischen leichter Depression und Hypomanie',
      'Eine affektive Störung mit mehr als 4 Episoden pro Jahr',
      'Eine chronische depressive Verstimmung eher leichter Ausprägung',
      'Eine Störung mit erhöhter Ermüdbarkeit bei geringster Anstrengung',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Dysthymia (F34.1) ist eine chronische depressive Verstimmung von leichterer Ausprägung, die mindestens 2 Jahre anhält und nicht die Kriterien einer depressiven Episode erfüllt. A ist falsch: Eine larvierte Depression ist eine Depression mit vorwiegend körperlichen Symptomen. B beschreibt eine Zyklothymia. C beschreibt ein Rapid Cycling bei bipolarer Störung. E beschreibt eher eine Neurasthenie.',
  ),
  Question(
    id: 29,
    exam: 'Oktober 2023',
    q: 'Welche der Aussagen zur Psychotherapie treffen zu?\n1. \'Erlernte Hilflosigkeit\' ist ein in der psychoanalytischen Therapie verwendeter Begriff für einen Abwehrmechanismus\n2. Bei einer akuten schweren depressiven Episode ist eine ambulante psychodynamisch orientierte Psychotherapie die erste Wahl\n3. Ziel bei der kognitiven Therapie nach Beck ist die sogenannte kognitive Umstrukturierung\n4. Beim SORKC-Modell handelt es sich um ein in der verhaltenstherapeutischen Diagnostik anwendbares Analysemodell\n5. Psychodynamisch orientierte Psychotherapiemethoden spielen in der Kindertherapie keine wesentliche Rolle',
    options: [
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur 3 und 4 sind richtig. Die kognitive Umstrukturierung ist das Kernziel der kognitiven Therapie nach Beck. Das SORKC-Modell ist ein verhaltenstherapeutisches Analysemodell. Aussage 1 ist falsch: \'Erlernte Hilflosigkeit\' (Seligman) ist ein lernpsychologisches Konzept. Aussage 2 ist falsch: Bei akuter schwerer Depression ist zunächst Pharmakotherapie und ggf. stationäre Behandlung indiziert. Aussage 5 ist falsch: Psychodynamische Verfahren sind in der Kindertherapie sehr bedeutsam.',
  ),
  Question(
    id: 30,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Zu den Symptomen bzw. Folgen eines häufigeren und chronischen Cannabiskonsums zählen:\n1. Miosis\n2. Amotivationales Syndrom\n3. Echopsychosen\n4. Misstrauisch-dysphorische Verstimmungszustände\n5. Schizophrenieartige paranoid-halluzinatorische Psychosen',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. Chronischer Cannabiskonsum kann zu amotivationalem Syndrom, Echopsychosen (Flashbacks), dysphorischen Verstimmungen und schizophrenieartigen Psychosen führen. Aussage 1 ist falsch: Cannabis verursacht typischerweise eine Mydriasis (Pupillenerweiterung), keine Miosis (Pupillenverengung). Miosis ist typisch für Opioide.',
  ),
  Question(
    id: 31,
    exam: 'Oktober 2023',
    q: 'Welche Aussage zu alkoholbezogenen Störungen trifft zu?',
    options: [
      'Zur Diagnose der Alkoholabhängigkeit müssen die Merkmale in der Regel über einen Zeitraum von mindestens 18 Monaten erfüllt sein.',
      'Rauschtrinken bezeichnet den Konsum von mindestens 5 Standarddrinks pro Trinkgelegenheit',
      'Unter einer akuten Alkoholintoxikation versteht man ein Zustandsbild mit Störungen des Bewusstseins, der kognitiven Funktionen, der Wahrnehmung, des Affekts und des Verhaltens.',
      'Die Diagnose eines Abhängigkeitssyndroms wird bei Männern gestellt, die mehr als 40 g Alkohol pro Woche konsumieren',
      'Die Diagnose eines Abhängigkeitssyndroms wird bei Frauen gestellt, die mehr als 40 g Alkohol pro Woche konsumieren',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Eine akute Alkoholintoxikation ist ein Zustandsbild mit Störungen verschiedener psychischer Funktionen einschließlich Bewusstsein, Kognition, Wahrnehmung, Affekt und Verhalten. A ist falsch: Die Kriterien müssen innerhalb eines Zeitraums von 12 Monaten (nicht 18) vorliegen. B ist falsch: Rauschtrinken (Binge Drinking) wird unterschiedlich definiert, bezieht sich aber nicht auf die Diagnose Abhängigkeit. D und E sind falsch: Die Diagnose eines Abhängigkeitssyndroms richtet sich nach den ICD-10-Kriterien, nicht nach einer bestimmten Alkoholmenge.',
  ),
  Question(
    id: 32,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Leistungsträger von Maßnahmen zur beruflichen Rehabilitation von Menschen mit psychischen Erkrankungen sind:\n1. Jobcenter\n2. Deutsche Rentenversicherung\n3. Krankenkassen\n4. Sozialämter\n5. Integrationsämter',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Verschiedene Leistungsträger sind an der beruflichen Rehabilitation psychisch Erkrankter beteiligt: Jobcenter (SGB II), Deutsche Rentenversicherung (SGB VI), Krankenkassen (SGB V), Sozialämter (SGB XII) und Integrationsämter (SGB IX). Die Zuständigkeit hängt von der individuellen Situation und den Versicherungsverhältnissen ab.',
  ),
  Question(
    id: 33,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Zu den Ich-Störungen gehören:\n1. Derealisation\n2. Gedankenabreißen\n3. Gedankenausbreitung\n4. Gedankendrängen\n5. Gedankeneingebung',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3 und 5 sind richtig. Derealisation (Umgebung wirkt unwirklich), Gedankenausbreitung (eigene Gedanken werden von anderen wahrgenommen) und Gedankeneingebung (Gedanken werden von außen eingegeben) sind Ich-Störungen. Aussage 2 ist falsch: Gedankenabreißen ist eine formale Denkstörung. Aussage 4 ist falsch: Gedankendrängen ist eine formale Denkstörung.',
  ),
  Question(
    id: 34,
    exam: 'Oktober 2023',
    q: 'Welche Aussagen zu substanzinduzierten psychotischen Störungen und Schizophrenien (nach ICD-10) treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Unter THC-Konsum kann kein erhöhtes Risiko für Psychosen gefunden werden',
      'Wenn die psychotischen Symptome länger als 4 Wochen anhalten, muss die Diagnose in eine Schizophrenie umgewandelt werden',
      'Wenn eine akute Intoxikation mit einer halluzinogenen Substanz zu Wahrnehmungsstörungen führt, ist dies nicht als substanzinduzierte psychotische Störung zu werten',
      'Solange ein Beikonsum mit THC besteht, kann die Diagnose einer Schizophrenie nicht gestellt werden',
      'Optische Halluzinationen bei einem Entzugsdelir dürfen nicht als substanzinduzierte psychotische Störung verschlüsselt werden',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Wahrnehmungsstörungen im Rahmen einer akuten Intoxikation mit Halluzinogenen werden nicht als eigenständige substanzinduzierte psychotische Störung gewertet, sondern als Intoxikationseffekt. Optische Halluzinationen bei einem Entzugsdelir werden als Delir kodiert, nicht als substanzinduzierte psychotische Störung. A ist falsch: THC erhöht das Psychoserisiko nachweislich. B ist falsch: Es gibt keine starre 4-Wochen-Regel. D ist falsch: Eine Schizophrenie kann auch bei begleitendem THC-Konsum diagnostiziert werden.',
  ),
  Question(
    id: 35,
    exam: 'Oktober 2023',
    q: 'Welche Aussagen zu Störungen durch Opioide treffen zu?\n1. Ängste, Anspannungen, depressive Gefühle, Selbstwertprobleme werden durch den Konsum von Opioiden unterdrückt.\n2. HP beschränkt auf Psychotherapie dürfen keine Suchtberatung durchführen.\n3. Depressive Verstimmung, Antriebs- und Konzentrationsstörungen, Schlafstörungen und Persönlichkeitsveränderungen können als psychische Folgeschäden auftreten.\n4. Ein Opioidentzug ist deutlich weniger gefährlich als ein Alkoholentzug, sollte aber therapeutisch begleitet werden.\n5. Die psychische Abhängigkeit kann nach dem körperlichen Entzug noch über Wochen weiterbestehen.',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3, 4 und 5 sind richtig. Opioide unterdrücken negative Gefühle und Anspannung. Psychische Folgeschäden umfassen Depression, Antriebsstörungen und Persönlichkeitsveränderungen. Ein Opioidentzug ist unangenehm, aber im Gegensatz zum Alkoholentzug selten lebensbedrohlich. Die psychische Abhängigkeit persistiert oft weit über den körperlichen Entzug hinaus. Aussage 2 ist falsch: HP Psychotherapie dürfen Suchtberatung durchführen, allerdings keine Substitutionsbehandlung.',
  ),
  Question(
    id: 36,
    exam: 'Oktober 2023',
    q: 'Im Rahmen einer rechtlichen Betreuung kann ein Einwilligungsvorbehalt angeordnet werden. Welche Aussage zum Einwilligungsvorbehalt trifft zu?',
    options: [
      'Voraussetzung ist das Vorliegen einer schweren körperlichen Erkrankung',
      'Es handelt sich um eine spezielle Form der Betreuung für Rechtsgeschäfte wie Testament und Patientenverfügung',
      'Bestimmte Rechtsgeschäfte werden ohne Einwilligung eines vom Gericht bestellten Betreuers nicht rechtswirksam',
      'Primärer Zweck ist es, andere vor den Rechtsgeschäften des Betreuers zu schützen',
      'Ein Einwilligungsvorbehalt bleibt lebenslang bestehen',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Beim Einwilligungsvorbehalt werden bestimmte Rechtsgeschäfte des Betreuten ohne Zustimmung des Betreuers nicht rechtswirksam. Dies dient dem Schutz des Betreuten vor nachteiligen Rechtsgeschäften. A ist falsch: Voraussetzung sind psychische Erkrankungen oder geistige Behinderungen. B ist falsch: Höchstpersönliche Rechtsgeschäfte sind ausgenommen. D ist falsch: Der Schutz gilt dem Betreuten, nicht Dritten. E ist falsch: Der Einwilligungsvorbehalt wird befristet und regelmäßig überprüft.',
  ),
  Question(
    id: 37,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zu Therapiemöglichkeiten bei nichtorganischen Insomnien treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei der paradoxen Intervention soll der Patient entspannt im Bett liegen, die Augen offenhalten und versuchen wach zu bleiben',
      'Unmittelbar vor dem Schlafen sollte noch intensiv Sport gemacht werden, um müde zu werden',
      'Die Zeit, die jemand im Bett verbringt, sollte möglichst begrenzt und dann schrittweise verlängert werden',
      'Die Einnahme von Hypnotika sollte begleitend über einen längeren Zeitraum erfolgen',
      'Bei anhaltenden Schlafstörungen sollte der Patient trotz starker Unruhe im Bett bleiben',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Die paradoxe Intention bei Schlafstörungen besteht darin, wach bleiben zu wollen – dies nimmt den Leistungsdruck und erleichtert paradoxerweise das Einschlafen. Die Schlafrestriktion (Bettzeiten begrenzen und schrittweise verlängern) ist eine evidenzbasierte Methode. B ist falsch: Intensiver Sport direkt vor dem Schlafen ist kontraproduktiv. D ist falsch: Hypnotika sollten nur kurzfristig eingesetzt werden. E ist falsch: Bei anhaltender Unruhe sollte der Patient aufstehen (Stimuluskontrolle).',
  ),
  Question(
    id: 38,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Für eine schizoide Persönlichkeitsstörung (nach ICD-10) sprechen am ehesten:\n1. Einige oder überhaupt keine Tätigkeiten bereiten Freude\n2. Starke Neigung zu theatralischem Verhalten\n3. Übersteigertes Interesse an sexuellen Erfahrungen mit anderen Menschen\n4. Mangel an engen Freunden oder vertrauensvollen Beziehungen\n5. Übermäßiges Bedürfnis nach Anerkennung und Bewunderung',
    options: [
      'Nur die Aussage 4 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1 und 4 sind richtig. Die schizoide PS ist gekennzeichnet durch Anhedonie (wenig oder keine Freude an Aktivitäten) und Mangel an engen Beziehungen. Schizoide Persönlichkeiten sind emotional distanziert und bevorzugen Einzelgänger-Aktivitäten. Aussage 2 ist falsch: Theatralik gehört zur histrionischen PS. Aussage 3 ist falsch: Schizoide zeigen wenig Interesse an sexuellen Erfahrungen. Aussage 5 ist falsch: Bedürfnis nach Bewunderung gehört zur narzisstischen PS.',
  ),
  Question(
    id: 39,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zur psychiatrisch-psychotherapeutischen Diagnostik treffen zu?\n1. In der Anamnese sollte auch immer nach körperlichen Vorerkrankungen gefragt werden\n2. Zu einer vollständigen Anamnese gehört auch die Sexualanamnese\n3. Nach Suizidalität sollte nicht im Erstgespräch gefragt werden, da noch keine Vertrauensbasis besteht\n4. Die Beurteilung der Affektivität und des Antriebs sind wichtige Inhalte des psychopathologischen Befundes\n5. Anamnese, eigene Beobachtung sowie ggf. fremdanamnestische Daten sind Grundlage der Befunderhebung',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 4 und 5 sind richtig. Körperliche Vorerkrankungen müssen erfragt werden (somatische Ursachen ausschließen). Die Sexualanamnese gehört zur vollständigen Anamnese. Affektivität und Antrieb sind zentrale Bereiche des psychopathologischen Befundes. Eigenanamnese, Beobachtung und Fremdanamnese bilden die Grundlage. Aussage 3 ist falsch: Nach Suizidalität muss bereits im Erstgespräch gefragt werden – das Thema darf nicht aufgeschoben werden, auch wenn noch keine Vertrauensbasis besteht.',
  ),
  Question(
    id: 40,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zu Johanniskraut treffen zu?\n1. Es handelt sich um ein Biologikum\n2. Bei dem pflanzlichen Arzneimittel sind keine Wechselwirkungen mit anderen Medikamenten bekannt\n3. Johanniskraut hat eine antidepressive Wirkung\n4. Johanniskraut ist ein hochpotentes Neuroleptikum\n5. Johanniskraut ist bei älteren Menschen kontraindiziert',
    options: [
      'Nur die Aussage 2 ist richtig',
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        'Nur Aussage 3 ist richtig: Johanniskraut (Hypericum perforatum) hat eine nachgewiesene antidepressive Wirkung bei leichten bis mittelschweren Depressionen. Aussage 1 ist falsch: Johanniskraut ist kein Biologikum, sondern ein Phytopharmakon. Aussage 2 ist falsch: Johanniskraut hat erhebliche Wechselwirkungen (CYP-Enzym-Induktion). Aussage 4 ist falsch: Johanniskraut ist kein Neuroleptikum. Aussage 5 ist falsch: Johanniskraut ist bei älteren Menschen nicht generell kontraindiziert.',
  ),
  Question(
    id: 41,
    exam: 'Oktober 2023',
    q: 'Eine Patientin mit Suchterkrankung ist schwanger. Welche Aussagen treffen zu?\n1. Das Risiko für Fehl- und Totgeburten sowie Schädigungen des Kindes ist bei Straßenheroinkonsum in der Schwangerschaft erhöht.\n2. Substitutionsbehandlung gilt in der Schwangerschaft als Behandlung der ersten Wahl.\n3. Mischkonsum mit Benzodiazepinen birgt die Gefahr eines Atemstillstandes.\n4. Der schädigende Effekt von Alkohol auf das Ungeborene wird potenziert durch Amphetamine oder multiplen Drogenabusus.\n5. Frauen, die im ersten und zweiten Trimenon Alkohol trinken, haben kein Risiko für ein Kind mit FAS.',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 4 sind richtig. Straßenheroin in der Schwangerschaft erhöht das Risiko für Fehlgeburten und kindliche Schädigungen. Substitution (z.B. Methadon) ist in der Schwangerschaft Erstlinientherapie, da ein unkontrollierter Entzug das Kind gefährden würde. Mischkonsum mit Benzodiazepinen kann zu Atemdepression führen. Polyvalenter Drogenkonsum potenziert die Alkoholschädigung. Aussage 5 ist falsch: Alkoholkonsum in jedem Trimenon kann zu FAS führen – es gibt keine sichere Trinkmenge in der Schwangerschaft.',
  ),
  Question(
    id: 42,
    exam: 'Oktober 2023',
    q: 'Welche der Aussagen zur Differenzialdiagnose der Anorexia nervosa treffen zu? Auszuschließende andere Ursachen des Untergewichts sind:\n1. Leukämie\n2. Hyperthyreose\n3. Körperdysmorphe Störung\n4. Zwangserkrankungen mit ernährungsbedingten Zwängen\n5. Diabetes mellitus',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Bei Untergewicht müssen verschiedene Differenzialdiagnosen ausgeschlossen werden: Leukämie und andere konsumierende Erkrankungen, Hyperthyreose (erhöhter Stoffwechsel), körperdysmorphe Störung (verzerrte Körperwahrnehmung), Zwangserkrankungen mit Nahrungsritualen und Diabetes mellitus (besonders Typ 1 kann zu Gewichtsverlust führen). All diese Erkrankungen können Untergewicht verursachen.',
  ),
  Question(
    id: 43,
    exam: 'Oktober 2023',
    q: 'Welche Aussagen bezogen auf eine Zwangserkrankung treffen zu?\n1. Männer sind häufiger als Frauen betroffen\n2. Bei einer Demenz können Zwangssymptome auftreten\n3. Die Diagnosestellung erfolgt überwiegend schon kurze Zeit nach Auftreten der ersten Symptome\n4. Wasch- und Kontrollzwang treten am häufigsten auf\n5. Die Erkrankung beginnt zumeist schleichend',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 4 und 5 sind richtig. Zwangssymptome können bei Demenz auftreten. Wasch- und Kontrollzwänge sind die häufigsten Formen. Zwangsstörungen beginnen meist schleichend. Aussage 1 ist falsch: Zwangsstörungen betreffen Männer und Frauen etwa gleich häufig. Aussage 3 ist falsch: Die Diagnosestellung erfolgt oft erst Jahre nach Symptombeginn, da Betroffene sich schämen und die Symptome verbergen.',
  ),
  Question(
    id: 44,
    exam: 'Oktober 2023',
    q: 'Typische Symptome des Morbus Parkinson sind:\n1. Schleichender Beginn\n2. Auftreten von Krampfanfällen\n3. Affektlabilität\n4. Bewegungsarmut\n5. Bewusstseinstrübung',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3 und 4 sind richtig. Morbus Parkinson beginnt schleichend und zeigt Bewegungsarmut (Akinese/Hypokinese) als Kardinalsymptom. Affektlabilität (z.B. pathologisches Weinen) kann begleitend auftreten. Aussage 2 ist falsch: Krampfanfälle gehören nicht zum typischen Parkinson-Bild. Aussage 5 ist falsch: Bewusstseinstrübung ist kein Parkinson-Symptom.',
  ),
  Question(
    id: 45,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zum pathologischen Spielen (nach ICD-10) treffen zu?\n1. Pathologisches Spielen beginnt meistens im höheren Erwachsenenalter\n2. Die Handlungen können kontrolliert werden\n3. Charakteristisch ist häufiges, wiederholtes, episodenhaftes Glücksspielen\n4. Das Risiko für Suizide oder Suizidversuche ist erhöht\n5. Als Begleiterkrankung liegt unter anderem die hyperkinetische Störung gehäuft vor',
    options: [
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '3, 4 und 5 sind richtig. Pathologisches Spielen ist durch häufiges, wiederholtes Glücksspielen gekennzeichnet. Das Suizidrisiko ist erhöht durch finanzielle Probleme und Verzweiflung. ADHS (hyperkinetische Störung) ist eine häufige Komorbidität. Aussage 1 ist falsch: Pathologisches Spielen beginnt meist im jüngeren Erwachsenenalter, nicht im höheren. Aussage 2 ist falsch: Die Handlungen können definitionsgemäß nicht kontrolliert werden – Kontrollverlust ist ein Kernmerkmal.',
  ),
  Question(
    id: 46,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zu Sexualstörungen nach ICD-10 treffen zu?\n1. Der dauerhafte Wunsch, dem anderen Geschlecht anzugehören, wird als Transsexualismus bezeichnet\n2. Alexithymie bezeichnet psychogen bedingte Schmerzen während des Geschlechtsverkehrs\n3. Bei sexuellen Funktionsstörungen muss an eine mögliche organische Ursache gedacht werden\n4. Homo- und Bisexualität werden zu den Störungen der Sexualpräferenz gerechnet\n5. Exhibitionismus wird zu den sexuellen Funktionsstörungen gerechnet',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        '1 und 3 sind richtig. Transsexualismus nach ICD-10 beschreibt den dauerhaften Wunsch, dem anderen Geschlecht anzugehören. Bei sexuellen Funktionsstörungen müssen organische Ursachen ausgeschlossen werden. Aussage 2 ist falsch: Alexithymie ist die Unfähigkeit, Gefühle wahrzunehmen und auszudrücken – Schmerzen beim Geschlechtsverkehr werden als Dyspareunie bezeichnet. Aussage 4 ist falsch: Homo- und Bisexualität sind keine Störungen der Sexualpräferenz. Aussage 5 ist falsch: Exhibitionismus gehört zu den Störungen der Sexualpräferenz (Paraphilien), nicht zu den sexuellen Funktionsstörungen.',
  ),
  Question(
    id: 47,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zu Entwicklungsstörungen treffen zu?\n1. Bei der expressiven Sprachstörung ist die Intelligenzentwicklung in der Regel nicht gestört\n2. Bei einer isolierten Artikulationsstörung ist nur das Sprachverständnis außerhalb der Norm reduziert\n3. Bei der rezeptiven Sprachstörung ist das Sprachverständnis nicht gestört\n4. Ein Beispiel für eine Artikulationsstörung ist das Lispeln (Sigmatismus)\n5. Der frühkindliche Autismus tritt vorwiegend bei Mädchen auf',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: 0,
    explanation:
        '1 und 4 sind richtig. Bei der expressiven Sprachstörung ist die Intelligenz meist normal – nur die Sprachproduktion ist beeinträchtigt. Lispeln (Sigmatismus) ist ein typisches Beispiel für eine Artikulationsstörung. Aussage 2 ist falsch: Bei einer isolierten Artikulationsstörung ist das Sprachverständnis normal, nur die Artikulation ist betroffen. Aussage 3 ist falsch: Bei der rezeptiven Sprachstörung ist gerade das Sprachverständnis gestört. Aussage 5 ist falsch: Frühkindlicher Autismus betrifft vorwiegend Jungen (Verhältnis ca. 4:1).',
  ),
  Question(
    id: 48,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen treffen zu? Zur Negativsymptomatik (Minussymptomatik) einer Schizophrenie gehören:\n1. Psychomotorische Hyperkinesien\n2. Sozialer Rückzug\n3. Aufmerksamkeitsstörung\n4. Anhedonie\n5. Promiskuitives Verhalten',
    options: [
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 3 und 4 sind richtig. Sozialer Rückzug, Aufmerksamkeitsstörung und Anhedonie (Unfähigkeit, Freude zu empfinden) gehören zur Negativsymptomatik der Schizophrenie. Aussage 1 ist falsch: Psychomotorische Hyperkinesien (übermäßige Bewegung) gehören nicht zur Negativsymptomatik – eher Hypokinese/Antriebsarmut. Aussage 5 ist falsch: Promiskuitives Verhalten ist kein Negativsymptom der Schizophrenie.',
  ),
  Question(
    id: 49,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zu Bindungsstörungen nach ICD-10 treffen zu?\n1. Die reaktive Bindungsstörung wird von anhaltenden und ausgeprägten kognitiven Defiziten, die denen des Autismus vergleichbar sind, begleitet\n2. Zur klinischen Leitsymptomatik der reaktiven Bindungsstörung gehören repetitive und stereotype Verhaltensmuster\n3. Wichtig ist die diagnostische Abgrenzung von tiefgreifenden Entwicklungsstörungen (nach ICD-10)\n4. Die reaktive Bindungsstörung tritt meistens im Kontext von Vernachlässigung oder Misshandlung auf\n5. Beginnt im Alter von 5 Jahren',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        'Aussagen 2, 3 und 4 sind richtig. Repetitive Verhaltensmuster können bei reaktiver Bindungsstörung auftreten. Die diagnostische Abgrenzung von Autismus-Spektrum-Störungen ist klinisch sehr wichtig. Die Störung tritt typischerweise im Kontext von Vernachlässigung, Misshandlung oder inadäquater Betreuung auf. Aussage 1 ist falsch: Bei der reaktiven Bindungsstörung bestehen keine autismusvergleichbaren kognitiven Defizite. Aussage 5 ist falsch: Die reaktive Bindungsstörung beginnt in den ersten 5 Lebensjahren, nicht erst mit 5 Jahren.',
  ),
  Question(
    id: 50,
    exam: 'Oktober 2023',
    q: 'Auf welchen Rechtsgrundlagen kann ein volljähriger Patient mit Schizophrenie auf einer geschlossenen Station aufgenommen werden?\n1. Nach Beschluss einer Kommission der zuständigen Ärztekammer\n2. Nach StGB\n3. Nach dem Unterbringungsrecht des jeweiligen Landes (PsychKG)\n4. Nach bürgerlichem Recht (BGB)\n5. Nach eigener Freiwilligkeitserklärung',
    options: [
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. Rechtsgrundlagen für eine geschlossene Unterbringung sind: StGB (Maßregelvollzug bei Straftaten, §63), PsychKG (öffentlich-rechtliche Unterbringung bei Fremd-/Selbstgefährdung), BGB (zivilrechtliche Unterbringung durch Betreuer mit Gerichtsgenehmigung) und freiwillige Aufnahme. Aussage 1 ist falsch: Die Ärztekammer hat keine Kompetenz zur Anordnung einer Unterbringung.',
  ),
  Question(
    id: 51,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Begriffe gehören zu den formalen Denkstörungen bei der Schizophrenie? (Wählen Sie zwei Antworten)',
    options: ['Beziehungswahn', 'Kommentierende Stimmen', 'Gedankenabreißen', 'Affektverflachung', 'Konkretismus'],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Gedankenabreißen (plötzlicher Abbruch des Gedankengangs) und Konkretismus (Unfähigkeit zum abstrakten Denken, alles wird wörtlich genommen) sind formale Denkstörungen. Beziehungswahn (A) ist eine inhaltliche Denkstörung. Kommentierende Stimmen (B) sind akustische Halluzinationen (Wahrnehmungsstörung). Affektverflachung (D) gehört zu den Affektstörungen.',
  ),
  Question(
    id: 52,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zur Unterscheidung zwischen Demenz/Morbus Alzheimer und Depression treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei der Depression besteht mindestens eine deutliche Störung des Orientierungsvermögens und der Gedächtnisfunktion',
      'Ein korrekt ausgeführter Uhren-Zeichen-Test spricht gegen eine schwere Demenz',
      'Ein Mini-Mental-Status-Test wird bei der Diagnose und zur Verlaufskontrolle der Demenz verwendet',
      'Der depressive Patient überspielt seine Unsicherheiten um kompetent zu wirken',
      'Der demente Patient bleibt gedanklich an seinen Problemen haften',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Ein korrekt ausgeführter Uhren-Zeichen-Test spricht gegen eine schwere Demenz (visuo-konstruktive Fähigkeiten erhalten). Der MMST ist ein Standardinstrument für Demenz-Screening und Verlaufskontrolle. A ist falsch: Orientierungs- und Gedächtnisstörungen sind für Demenz typisch, nicht für Depression. D ist falsch: Eher der demente Patient überspielt Defizite (Fassadenverhalten); depressive Patienten betonen ihre Unfähigkeit. E ist falsch: Perseveration/Haften ist eher bei Demenz zu finden.',
  ),
  Question(
    id: 53,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zur Somatisierungsstörung (nach ICD-10) treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die Störung beginnt meist im frühen Erwachsenenalter',
      'Die Diagnose kann nach 3 Monaten bei entsprechender Symptomatik gestellt werden',
      'Die Störung tritt bei Männern und Frauen gleich häufig auf',
      'Die Betroffenen sind aufgrund ihres hohen Leidensdruckes meist rasch zu einer Psychotherapie motivierbar',
      'Im Störungsverlauf kann es zu einer Abhängigkeit oder einem Missbrauch von Medikamenten kommen',
    ],
    correct: [0, 4],
    explanation:
        'A und E sind richtig. Die Somatisierungsstörung beginnt typischerweise im frühen Erwachsenenalter (vor dem 30. Lebensjahr). Im Verlauf kann es durch häufige Arztbesuche und Medikamenteneinnahme zu Medikamentenmissbrauch oder -abhängigkeit kommen. B ist falsch: Die Symptome müssen mindestens 2 Jahre bestehen. C ist falsch: Frauen sind häufiger betroffen als Männer. D ist falsch: Betroffene sind oft schwer für Psychotherapie zu motivieren, da sie an eine körperliche Ursache glauben.',
  ),
  Question(
    id: 54,
    exam: 'Oktober 2023',
    q: 'Welche der folgenden Aussagen zum Delir treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Bei alkoholabhängigen Patienten kann ein Delir in der Regel ambulant behandelt werden',
      'Ein Delir ist ein ätiologisch unspezifisches Syndrom mit Störungen des Bewusstseins, der Kognition und der Psychomotorik',
      'Ein Delir verläuft in der Regel asymptomatisch',
      'Ein Delir ist eine organisch bedingte psychische Störung',
      'Akustische Halluzinationen treten beim Delir nicht auf',
    ],
    correct: [1, 3],
    explanation:
        'B und D sind richtig. Ein Delir ist ein ätiologisch unspezifisches Syndrom (kann verschiedene Ursachen haben) mit Störungen von Bewusstsein, Kognition und Psychomotorik. Es handelt sich um eine organisch bedingte psychische Störung (F05 in ICD-10). A ist falsch: Ein Alkoholdelir ist ein medizinischer Notfall und erfordert stationäre Behandlung. C ist falsch: Ein Delir ist gerade nicht asymptomatisch, sondern zeigt ausgeprägte Symptome. E ist falsch: Beim Delir können auch akustische Halluzinationen auftreten.',
  ),
  Question(
    id: 55,
    exam: 'Oktober 2023',
    q: 'Ein Patient stellt sich erstmals vor mit Herzbeschwerden, Schwindel, häufigen Bauchschmerzen, Durchfall und Hautjucken. Er war bei vielen Ärzten, aber die Symptome treten immer wieder auf. Welche Gesundheitsstörung passt am ehesten?',
    options: [
      'Paranoid-halluzinatorische Schizophrenie',
      'Somatoforme Störung',
      'Multiple Sklerose',
      'Colitis ulcerosa',
      'Bipolare Störung',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Die Kombination aus wechselnden körperlichen Beschwerden (Herz, Schwindel, Magen-Darm, Haut) ohne organischen Befund trotz vieler Arztbesuche ist typisch für eine somatoforme Störung (Somatisierungsstörung). Das \'Doctor-Shopping\' (viele Ärzte aufsuchen) ist ein klassisches Merkmal. Die anderen Diagnosen passen nicht zum Gesamtbild der wechselnden, organisch nicht erklärbaren Beschwerden.',
  ),
  Question(
    id: 56,
    exam: 'Oktober 2023',
    q: 'Welche Aussage zur leichten Intelligenzminderung nach ICD-10 trifft zu?',
    options: [
      'Der IQ liegt unter 20',
      'Der IQ liegt im Bereich von 85 und 115',
      'Der IQ liegt im Bereich von 70 und 84',
      'Der IQ liegt im Bereich von 50 und 69',
      'Der IQ liegt im Bereich von 20 und 24',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Eine leichte Intelligenzminderung nach ICD-10 (F70) liegt bei einem IQ von 50-69 vor. A (IQ < 20) entspricht einer schwersten Intelligenzminderung. B (85-115) ist der Normalbereich. C (70-84) beschreibt die Lernbehinderung (unterdurchschnittliche Intelligenz, aber noch keine Intelligenzminderung). E (20-24) liegt im Bereich der schweren Intelligenzminderung.',
  ),
];
