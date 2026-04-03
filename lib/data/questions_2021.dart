import '../models/question.dart';

const List<Question> questions2021 = [
  Question(
    id: 1,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zum Delir treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Im Gegensatz zur Demenz fehlt bei einem Delir die Bewusstseinsstörung',
      'Akustische Halluzinationen treten beim Alkoholentzugsdelir nicht auf',
      'Das Delir ist gekennzeichnet durch Störungen der Orientierung, der Psychomotorik und der Wahrnehmung',
      'Ein Alkoholentzugsdelir kann häufig bis zu einem Jahr dauern',
      'Für ein Alkoholentzugsdelir ist ein typisches Symptom die erhöhte Suggestibilität',
    ],
    correct: [2, 4],
    explanation:
        'C und E sind richtig. Das Delir zeigt Störungen der Orientierung, Psychomotorik und Wahrnehmung (z.B. optische Halluzinationen, Unruhe). Die erhöhte Suggestibilität ist ein typisches Symptom des Alkoholentzugsdelirs (z.B. Ablesen von einem leeren Blatt Papier). A ist falsch: Beim Delir liegt gerade eine Bewusstseinsstörung vor. B ist falsch: Auch akustische Halluzinationen können auftreten. D ist falsch: Ein Delir dauert Tage bis wenige Wochen.',
  ),
  Question(
    id: 2,
    exam: 'März 2021',
    q: 'Merkmale des präsuizidalen Syndroms sind:\n1. Realitätsverkennung\n2. Aggressionsumkehr\n3. Einengung\n4. Gedankenentzug\n5. Suizidphantasien',
    options: [
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 3 und 5 sind richtig. Das präsuizidale Syndrom nach Ringel umfasst drei Merkmale: Einengung (situativ, dynamisch, zwischenmenschlich, der Wertewelt), Aggressionsumkehr (gegen die eigene Person gerichtete Aggression) und Suizidphantasien. Realitätsverkennung (1) und Gedankenentzug (4) gehören nicht zum präsuizidalen Syndrom.',
  ),
  Question(
    id: 3,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zu Aufmerksamkeits- und Gedächtnisfunktionen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Konfabulationen sind für das Korsakow-Syndrom typische Erinnerungslücken, die mit Einfällen gefüllt werden, die vom Betroffenen für Erinnerungen gehalten werden',
      'Eine Merkfähigkeitsstörung wird durch Fragen zu biografischen und historischen Ereignissen überprüft',
      'Mit der Aufgabe \'von 100 immer 7 abziehen\' (100-7-Test) wird die Funktion des Langzeitgedächtnisses geprüft',
      'Bei einem organisch-amnesischen Syndrom besteht eine Beeinträchtigung des Kurz- und Langzeitgedächtnisses bei erhaltenem Immediatgedächtnis',
      'Bei der Amnesie ist die Erinnerungsfähigkeit gesteigert',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Konfabulationen (Füllen von Erinnerungslücken mit frei erfundenen Inhalten) sind typisch für das Korsakow-Syndrom. Beim organisch-amnesischen Syndrom sind Kurz- und Langzeitgedächtnis beeinträchtigt, das Immediatgedächtnis (Sofortgedächtnis) bleibt erhalten. B ist falsch: Biografische/historische Fragen prüfen das Altgedächtnis. C ist falsch: Der 100-7-Test prüft Konzentration und Aufmerksamkeit. E ist falsch: Bei Amnesie ist die Erinnerung gestört, nicht gesteigert.',
  ),
  Question(
    id: 4,
    exam: 'März 2021',
    q: 'Welche der folgenden Symptome und Verhaltensweisen können zur Prodromalphase einer Schizophrenie gehören?\n1. Interessenverlust an der Arbeit\n2. Sozialer Rückzug\n3. Vernachlässigung der Körperhygiene\n4. Ausgestaltetes Wahnsystem\n5. Depressivität',
    options: [
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 5 sind richtig. In der Prodromalphase der Schizophrenie treten unspezifische Symptome auf: Interessenverlust, sozialer Rückzug, Vernachlässigung der Hygiene und depressive Verstimmung. Aussage 4 ist falsch: Ein ausgestaltetes Wahnsystem gehört zur aktiven Krankheitsphase (Positivsymptomatik), nicht zur Prodromalphase.',
  ),
  Question(
    id: 5,
    exam: 'März 2021',
    q: 'Welche Aussage zur Unterbringung psychisch Kranker in einem psychiatrischen Krankenhaus trifft zu?',
    options: [
      'Die Einweisung nach dem Unterbringungsrecht der Länder (PsychKG) ist nur bei akuter Eigengefährdung möglich',
      'Die Unterbringung nach dem Betreuungsrecht erfolgt ohne zeitliche Befristung',
      'Eine Unterbringung nach dem Betreuungsrecht kann auch zum Zwecke einer notwendigen ärztlichen Untersuchung erfolgen',
      'Eine Unterbringung nach dem Betreuungsgesetz kann bei Fremdgefährdung auch vom behandelnden Psychiater angeordnet werden',
      'Die Unterbringung nach dem Unterbringungsrecht der Länder darf höchstens 4 Wochen andauern',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Nach Betreuungsrecht kann eine Unterbringung auch zum Zwecke einer notwendigen ärztlichen Untersuchung erfolgen (§1906 BGB). A ist falsch: Das PsychKG ermöglicht die Unterbringung auch bei Fremdgefährdung. B ist falsch: Die Unterbringung nach Betreuungsrecht ist zeitlich befristet und muss regelmäßig überprüft werden. D ist falsch: Die Anordnung erfolgt durch das Betreuungsgericht. E ist falsch: Es gibt keine starre 4-Wochen-Grenze.',
  ),
  Question(
    id: 6,
    exam: 'März 2021',
    q: 'Im Rahmen der depressiven Episode kann es zum Auftreten folgender Symptome kommen:\n1. Agitiertheit\n2. Halluzinationen\n3. Wahnvorstellungen\n4. Autoaggressive Handlungen\n5. Hypochondrische Grübeleien',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Bei schweren depressiven Episoden können auftreten: Agitiertheit (agitierte Depression), Halluzinationen (psychotische Depression), Wahnvorstellungen (Schuld-, Verarmungs-, nihilistischer Wahn), autoaggressive Handlungen (Selbstverletzung, Suizidversuche) und hypochondrische Grübeleien (übermäßige Sorge um die Gesundheit).',
  ),
  Question(
    id: 7,
    exam: 'März 2021',
    q: 'Welche Aussage zu grundlegenden Annahmen der Verhaltenstherapie trifft am ehesten zu?',
    options: [
      'Die Behandlung ist vor allem auf vergangene Erfahrungen und Erlebnisse ausgerichtet',
      'Abweichendes Verhalten wird im Zuge von Lernprozessen erworben',
      'Problematisches Verhalten wird durch unbewusste Konflikte und Widerstand aufrechterhalten',
      'Der Entwicklung von funktionalen und dysfunktionalen Verhalten liegen unterschiedliche Lerngesetze zugrunde',
      'Aus der Analyse von verdrängten Konflikten werden therapeutische Interventionen abgeleitet',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Ein Grundprinzip der Verhaltenstherapie ist, dass abweichendes (maladaptives) Verhalten durch Lernprozesse erworben wird – und durch Lernprozesse auch wieder verändert werden kann. A, C und E beschreiben psychoanalytische Konzepte. D ist falsch: Funktionales und dysfunktionales Verhalten folgen denselben Lerngesetzen (Konditionierung, Modelllernen etc.).',
  ),
  Question(
    id: 8,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zu Angststörungen treffen zu?\n1. Die körperlichen Reaktionen der pathologischen Angst unterscheiden sich qualitativ erheblich von denen der normalen Angst\n2. Die soziale Phobie gehört zu den häufigsten Angststörungen\n3. Bei der Agoraphobie besteht Angst, sich in Menschenmengen oder auf öffentliche Plätze zu begeben\n4. Eine Panikattacke ist eine abrupt beginnende Episode intensiver Angst mit vegetativen Symptomen\n5. Eine primäre Angststörung liegt vor, wenn das Angstsyndrom auf eine körperliche oder psychische Grunderkrankung zurückzuführen ist',
    options: [
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 3 und 4 sind richtig. Die soziale Phobie ist eine der häufigsten Angststörungen. Agoraphobie umfasst Angst vor Menschenmengen, öffentlichen Plätzen und Situationen ohne Fluchtmöglichkeit. Eine Panikattacke ist definitionsgemäß abrupt beginnend und von vegetativen Symptomen begleitet. Aussage 1 ist falsch: Die körperlichen Reaktionen sind qualitativ gleich – nur quantitativ und kontextuell unterschiedlich. Aussage 5 ist falsch: Eine primäre Angststörung liegt gerade dann vor, wenn sie NICHT auf eine andere Erkrankung zurückzuführen ist.',
  ),
  Question(
    id: 9,
    exam: 'März 2021',
    q: 'Diagnostische Leitlinien für den schädlichen Gebrauch von Substanzen (nach ICD-10) sind:\n1. Fortschreitende Vernachlässigung anderer Interessen zugunsten des Substanzkonsums\n2. Körperliche Störung aufgrund des Substanzkonsums\n3. Psychische Störung aufgrund des Substanzkonsums\n4. Starker Wunsch oder Art Zwang die Substanz zu konsumieren\n5. Sozial üblicher Konsum der entsprechenden Substanz',
    options: [
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur 2 und 3 sind richtig. Der schädliche Gebrauch (F1x.1) nach ICD-10 ist definiert durch eine tatsächliche Schädigung der psychischen oder physischen Gesundheit des Betroffenen. Aussage 1 ist falsch: Vernachlässigung anderer Interessen ist ein Kriterium der Abhängigkeit, nicht des schädlichen Gebrauchs. Aussage 4 ist falsch: Craving (starker Wunsch) ist ebenfalls ein Abhängigkeitskriterium. Aussage 5 ist falsch: Sozial üblicher Konsum ist kein diagnostisches Kriterium.',
  ),
  Question(
    id: 10,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zu Essstörungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Anorexia nervosa tritt bei Frauen und Männern gleich häufig auf',
      'Bei der Bulimia nervosa hat sich die kognitive Verhaltenstherapie (KVT) als wirksam erwiesen',
      'Beim Pica-Syndrom werden ungenießbare oder nicht essbare Substanzen verzehrt',
      'Für die Binge-Eating Störung ist der häufige Verzehr sehr kleiner Mahlzeiten typisch',
      'Von Adipositas spricht man bei Männern bei einem BMI von 24 kg/m²',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. KVT ist die evidenzbasierte Erstlinientherapie bei Bulimia nervosa. Beim Pica-Syndrom werden nicht-essbare Substanzen (Erde, Kreide, Haare etc.) verzehrt. A ist falsch: Anorexie betrifft überwiegend Frauen (ca. 10:1). D ist falsch: Bei Binge-Eating kommt es zu unkontrollierten Essanfällen mit großen Mengen. E ist falsch: Adipositas beginnt ab einem BMI von 30 kg/m².',
  ),
  Question(
    id: 11,
    exam: 'März 2021',
    q: 'Welches psychopathologische Symptom spricht im Rahmen der Differentialdiagnose am ehesten für eine organische psychische Störung aufgrund einer nachweisbaren Hirnerkrankung?',
    options: [
      'Gedankenlautwerden',
      'Gedankenentzug',
      'Dialog mit innerer Stimme',
      'Desorientiertheit',
      'Stimmen mit Befehlscharakter',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Desorientiertheit (zu Zeit, Ort, Person, Situation) ist ein Leitsymptom organischer psychischer Störungen und spricht stark für eine Hirnerkrankung. Gedankenlautwerden (A), Gedankenentzug (B), Dialog mit innerer Stimme (C) und imperative Stimmen (E) sind typische Symptome der Schizophrenie (Erstrangsymptome nach Kurt Schneider), nicht primär organischer Störungen.',
  ),
  Question(
    id: 12,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zu Entwicklungsstörungen treffen zu?\n1. Bei der expressiven Sprachstörung ist die Intelligenzentwicklung in der Regel nicht gestört\n2. Bei einer isolierten Artikulationsstörung ist nur das Sprachverständnis außerhalb der Norm reduziert\n3. Bei einer rezeptiven Sprachstörung ist das Sprachverständnis nicht gestört\n4. Ein Beispiel für eine Artikulationsstörung ist das Lispeln (Sigmatismus)\n5. Der frühkindliche Autismus tritt vorwiegend bei Mädchen auf',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: 0,
    explanation:
        '1 und 4 sind richtig. Bei der expressiven Sprachstörung ist die Intelligenz typischerweise normal. Lispeln (Sigmatismus) ist ein klassisches Beispiel für eine Artikulationsstörung. Aussage 2 ist falsch: Bei isolierter Artikulationsstörung ist das Sprachverständnis normal. Aussage 3 ist falsch: Bei rezeptiver Sprachstörung ist gerade das Sprachverständnis gestört. Aussage 5 ist falsch: Frühkindlicher Autismus betrifft vorwiegend Jungen (ca. 4:1).',
  ),
  Question(
    id: 13,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zum psychopathologischen Befund treffen zu?\n1. Illusion ist vermeintliche Wahrnehmung ohne Sinneseindrücke\n2. Halluzination ist eine Missdeutung von Sinneseindrücken\n3. Es kann auf mehreren Sinnesgebieten gleichzeitig halluziniert werden\n4. Orientierungsstörung ist mangelhafte Orientierung in Bezug auf Ort, Zeit, Situation und eigene Person\n5. \'Doppelte Buchführung\' bezeichnet die gleichzeitige Orientierung an der realen und der wahnhaften Welt',
    options: [
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '3, 4 und 5 sind richtig. Halluzinationen können mehrere Sinnesgebiete gleichzeitig betreffen. Orientierungsstörungen betreffen Zeit, Ort, Situation und Person. \'Doppelte Buchführung\' ist ein Begriff für die gleichzeitige Orientierung an Realität und Wahn. Aussage 1 ist falsch: Wahrnehmung ohne Sinneseindrücke ist eine Halluzination, nicht eine Illusion. Aussage 2 ist falsch: Missdeutung von Sinneseindrücken ist eine Illusion, nicht eine Halluzination.',
  ),
  Question(
    id: 14,
    exam: 'März 2021',
    q: 'Welche Aussagen zur Differentialdiagnose psychotischer Störungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Kernsymptom der wahnhaften Störung sind Negativsymptome und Halluzinationen',
      'Bei der hebephrenen Schizophrenie stehen die affektiven Veränderungen im Vordergrund',
      'Anhaltende Positivsymptome kennzeichnen das schizophrene Residuum',
      'Bei der Schizophrenie ist die Bewusstseinsklarheit in der Regel nicht beeinträchtigt',
      'Die induzierte wahnhafte Störung (Folie à deux) wird durch Drogeneinnahme verursacht',
    ],
    correct: [1, 3],
    explanation:
        'B und D sind richtig. Bei der hebephrenen Schizophrenie stehen affektive Veränderungen (Verflachung, Inadäquatheit) im Vordergrund. Bei der Schizophrenie ist die Bewusstseinsklarheit in der Regel erhalten – Bewusstseinstrübung spricht eher für organische Ursachen. A ist falsch: Kernsymptom der wahnhaften Störung ist der Wahn, nicht Negativsymptome. C ist falsch: Das schizophrene Residuum ist durch Negativsymptome gekennzeichnet. E ist falsch: Folie à deux entsteht durch die Übernahme von Wahnideen eines Erkrankten.',
  ),
  Question(
    id: 15,
    exam: 'März 2021',
    q: 'Bei welchen Erkrankungen/Folgezuständen kann als zugehöriges Symptom eine Gangstörung vorkommen?\n1. Innenohrerkrankung\n2. Dissoziative Störungen\n3. Schädigung peripherer Nerven\n4. Erkrankung von Muskeln und Gelenken\n5. Nach Schädel-Hirn-Verletzungen',
    options: [
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Gangstörungen können auftreten bei: Innenohrerkrankungen (vestibulärer Schwindel), dissoziativen Störungen (psychogene Gangstörung), Schädigung peripherer Nerven (Polyneuropathie), Muskel-/Gelenkerkrankungen (Arthrose, Myopathie) und nach Schädel-Hirn-Verletzungen (zentrale Schädigung).',
  ),
  Question(
    id: 16,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zur Abstinenzregel der klassischen Psychoanalyse treffen zu?\n1. Private Dienstleistungen durch den Klienten für den Therapeuten sind vereinbar\n2. Rein freundschaftliche Beziehung zum Klienten verstößt nicht dagegen\n3. Veranschaulichung eigener Konflikte des Therapeuten verstößt nicht dagegen\n4. Einvernehmliche sexuelle Beziehungen sind vereinbar\n5. Die Abstinenzregel erstreckt sich auch auf Personen, die dem Klienten nahestehen',
    options: [
      'Nur die Aussage 5 ist richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur Aussage 5 ist richtig: Die Abstinenzregel erstreckt sich auch auf nahestehende Personen des Klienten. Aussage 1 ist falsch: Private Dienstleistungen verstoßen gegen die Abstinenzregel. Aussage 2 ist falsch: Freundschaftliche Beziehungen sind nicht vereinbar. Aussage 3 ist falsch: Der Therapeut soll eigene Konflikte nicht einbringen. Aussage 4 ist falsch: Sexuelle Beziehungen sind ein schwerer Verstoß gegen die Abstinenzregel.',
  ),
  Question(
    id: 17,
    exam: 'März 2021',
    q: 'Ein 25-jähriger Mann wird durch Überaktivität, sorglose Heiterkeit, Distanzlosigkeit und Unkonzentriertheit auffällig; kein Krankheitsgefühl. Differentialdiagnostisch in Betracht ziehen:\n1. Manische Episode\n2. Hirntumor (Stirnhirn)\n3. Neurologische System- oder Stoffwechselerkrankung\n4. Stimulanzienmissbrauch (Kokain/Amphetamin)\n5. Alkoholdelir',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
    ],
    correct: 4,
    explanation:
        '1, 2, 3 und 4 sind richtig. Diese Symptome können durch eine manische Episode, einen Stirnhirntumor (Enthemmung, Persönlichkeitsänderung), neurologische/metabolische Erkrankungen oder Stimulanzienmissbrauch verursacht werden. Aussage 5 ist falsch: Das Alkoholdelir zeigt typischerweise Bewusstseinstrübung, Orientierungsstörungen und vegetative Entgleisung – nicht sorglose Heiterkeit.',
  ),
  Question(
    id: 18,
    exam: 'März 2021',
    q: 'Die Erfordernis zur Errichtung einer rechtlichen Betreuung ist aus medizinischer Sicht gegeben bei:\n1. Betroffener überblickt aufgrund psychischer Erkrankung nicht die Tragweite eines OP-Risikos\n2. Haushaltsführung gelingt nur mit Hilfe einer Putzfrau\n3. Drogenmissbrauch mit Beschaffungskriminalität\n4. Aufgrund psychischer Erkrankung Unfähigkeit eigene Angelegenheiten zu besorgen\n5. Nicht altersentsprechende emotionale Abhängigkeit von Bezugspersonen',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '1 und 4 sind richtig. Eine rechtliche Betreuung setzt voraus, dass der Betroffene aufgrund einer psychischen Erkrankung oder geistigen/seelischen Behinderung seine Angelegenheiten nicht selbst besorgen kann. Aussage 2 ist falsch: Hilfe im Haushalt allein begründet keine Betreuung. Aussage 3 ist falsch: Drogenmissbrauch mit Kriminalität allein ist kein hinreichender Grund. Aussage 5 ist falsch: Emotionale Abhängigkeit begründet keine Betreuung.',
  ),
  Question(
    id: 19,
    exam: 'März 2021',
    q: 'Eine negative Verstärkung im Sinne der operanten Konditionierung ist:',
    options: [
      'Eine Mutter belohnt ihr Kind dafür, dass es andere schlägt',
      'Eine Mutter schlägt ihr Kind, weil es andere schlägt',
      'Eine Mutter beendet den Hausarrest, nachdem das Kind seine Hausaufgaben gemacht hat',
      'Eine Mutter erteilt Hausarrest, weil das Kind seine Hausaufgaben nicht gemacht hat',
      'Eine Mutter schränkt das Fußballspielen ein, weil das Kind seine Hausaufgaben nicht gemacht hat',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Negative Verstärkung bedeutet, dass ein unangenehmer Reiz (Hausarrest) entfernt wird, nachdem ein erwünschtes Verhalten (Hausaufgaben machen) gezeigt wurde. Dies erhöht die Wahrscheinlichkeit des Verhaltens. A ist positive Verstärkung. B ist positive Bestrafung. D und E sind Bestrafungen (Hinzufügen eines aversiven Reizes bzw. Entfernen eines angenehmen Reizes).',
  ),
  Question(
    id: 20,
    exam: 'März 2021',
    q: 'Welche Aussagen zur Behandlung von Patienten mit narzisstischer Persönlichkeitsstörung treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Ein Therapieziel ist die Verbesserung der Beziehungsfähigkeit',
      'Für eine gute Prognose spricht die Verdrängung von Abhängigkeitsbedürfnissen',
      'Bei narzisstischer PS besteht ein erhöhtes Suizidrisiko',
      'Die therapeutische Beziehung ist für eine erfolgreiche Therapie weniger bedeutsam als bei anderen Störungen',
      'Der narzisstische Patient sucht in der Regel frühzeitig psychotherapeutische Hilfe auf',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Die Verbesserung der Beziehungsfähigkeit ist ein zentrales Therapieziel bei narzisstischer PS. Das Suizidrisiko ist erhöht, besonders bei narzisstischen Krisen (Kränkungen, Verluste). B ist falsch: Verdrängung von Abhängigkeitsbedürfnissen ist prognostisch ungünstig. D ist falsch: Die therapeutische Beziehung ist gerade besonders bedeutsam. E ist falsch: Narzisstische Patienten suchen oft erst spät Hilfe, da sie ihre Probleme externalisieren.',
  ),
  Question(
    id: 21,
    exam: 'März 2021',
    q: 'Welche Aussagen zu Zwangsstörungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Zwangssymptome haben eine Tendenz zur Generalisierung',
      'Zwangsstörungen treten nahezu immer isoliert auf',
      'Zwangsstörungen treten bei Männern deutlich häufiger als bei Frauen auf',
      'Zwangsstörungen beeinträchtigen den Alltag des Patienten kaum',
      'Die Zwangsgedanken werden vom Betroffenen fast immer als quälend oder sinnlos erlebt',
    ],
    correct: [0, 4],
    explanation:
        'A und E sind richtig. Zwangssymptome tendieren zur Generalisierung – sie breiten sich auf immer mehr Lebensbereiche aus. Zwangsgedanken werden typischerweise als ich-dyston (quälend, unsinnig) erlebt. B ist falsch: Zwangsstörungen treten häufig mit Komorbiditäten auf (Depression, Angststörungen). C ist falsch: Männer und Frauen sind etwa gleich häufig betroffen. D ist falsch: Zwangsstörungen beeinträchtigen den Alltag meist erheblich.',
  ),
  Question(
    id: 22,
    exam: 'März 2021',
    q: 'Welche Aussagen zu dissoziativen Störungen treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Frauen sind häufiger betroffen als Männer',
      'Dissoziative Krampfanfälle gehen mit Bewusstseinsverlust einher',
      'Chronische Zustände treten nicht auf',
      'Es besteht kein Zusammenhang zwischen den dissoziativen Symptomen und belastenden Ereignissen',
      'Eine körperliche Erkrankung, welche die Symptome erklären könnte, ist nicht nachweisbar',
    ],
    correct: [0, 4],
    explanation:
        'A und E sind richtig. Dissoziative Störungen betreffen häufiger Frauen. Per Definition liegt keine nachweisbare körperliche Erkrankung vor, die die Symptome erklären könnte. B ist falsch: Dissoziative Krampfanfälle gehen typischerweise nicht mit echtem Bewusstseinsverlust einher (es fehlen Zungenbiss, Urinabgang, postiktale Verwirrtheit). C ist falsch: Chronische Verläufe sind möglich. D ist falsch: Es besteht typischerweise ein zeitlicher Zusammenhang mit belastenden Ereignissen.',
  ),
  Question(
    id: 23,
    exam: 'März 2021',
    q: 'Welche Aussagen zur Substitutionsbehandlung von Opioidabhängigen treffen zu?\n1. Eine Schwangerschaft schließt Substitution aus\n2. Substitution darf in Ausnahmefällen vom Heilpraktiker durchgeführt werden\n3. Substitution ist generelles Ausschlusskriterium für das Führen eines Kraftfahrzeuges\n4. Methadon ist auch suchterzeugend\n5. Das HIV-Risiko wird durch kontrollierte Methadonabgabe verringert',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '4 und 5 sind richtig. Methadon ist ein Opioid und hat selbst Suchtpotenzial. Durch die kontrollierte Abgabe wird das HIV-Risiko reduziert (weniger i.v.-Konsum, saubere Nadeln). Aussage 1 ist falsch: Schwangerschaft ist gerade eine Indikation für Substitution. Aussage 2 ist falsch: Substitution ist ausschließlich Ärzten vorbehalten. Aussage 3 ist falsch: Stabil substituierte Patienten können unter bestimmten Voraussetzungen fahrgeeignet sein.',
  ),
  Question(
    id: 24,
    exam: 'März 2021',
    q: 'Welche Aussage zur kognitiven Umstrukturierung trifft zu?',
    options: [
      'Der Therapeut nimmt an, dass sich Kognitionen nur indirekt über Verhaltensänderung beeinflussen lassen',
      'Im sokratischen Dialog versucht der Therapeut den Patienten von der objektiven Wahrheit zu überzeugen',
      'Im sokratischen Dialog stellt der Therapeut seine Fragen zurückhaltend und geduldig und erfragt Widersprüche',
      'Beim Entkatastrophisieren soll sich der Patient in die Perspektive eines anderen versetzen',
      'Der Therapeut verzichtet auf Verhaltensexperimente, um den Patienten auf automatische Gedanken zu fokussieren',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Im sokratischen Dialog stellt der Therapeut geleitete, zurückhaltende Fragen, die den Patienten dazu bringen, eigene Widersprüche und dysfunktionale Überzeugungen selbst zu erkennen. A ist falsch: Kognitionen können direkt beeinflusst werden. B ist falsch: Der Therapeut überzeugt nicht, sondern leitet zum Selbsterkennen an. D ist falsch: Das beschreibt eher den Perspektivenwechsel; Entkatastrophisieren fragt \'Was wäre das Schlimmste?\'. E ist falsch: Verhaltensexperimente sind ein wichtiger Bestandteil.',
  ),
  Question(
    id: 25,
    exam: 'März 2021',
    q: 'Zu den unerwünschten Wirkungen bzw. Risiken einer psychotherapeutischen Behandlung zählen:\n1. Auftreten von psychotischen Symptomen\n2. Destabilisierung von Beziehungen\n3. Suizid des Patienten\n4. Verminderung eines begleitenden Substanzkonsums\n5. Übertragung im Rahmen der psychoanalytischen Therapie',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 2 und 3 sind richtig. Psychotherapie kann als unerwünschte Wirkungen psychotische Symptome auslösen, Beziehungen destabilisieren und im schlimmsten Fall zum Suizid führen. Aussage 4 ist falsch: Verminderung von Substanzkonsum ist ein erwünschter Effekt, keine unerwünschte Wirkung. Aussage 5 ist falsch: Übertragung ist ein erwarteter und therapeutisch genutzter Prozess in der Psychoanalyse, keine unerwünschte Nebenwirkung.',
  ),
  Question(
    id: 26,
    exam: 'März 2021',
    q: 'Zum Wahn gehören:\n1. Überzeugungen, die im Widerspruch zu Einschätzungen gesunder Menschen oder Naturgesetzen stehen\n2. Intakte Realitätskontrolle\n3. Subjektive Gewissheit\n4. Unkorrigierbarkeit\n5. Somnolenz',
    options: [
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 3 und 4 sind richtig. Wahn ist definiert durch: Widerspruch zur Realität bzw. den Überzeugungen Gesunder, subjektive Gewissheit (der Patient ist absolut überzeugt) und Unkorrigierbarkeit (Gegenargumente können den Wahn nicht erschüttern). Aussage 2 ist falsch: Beim Wahn ist die Realitätskontrolle gerade nicht intakt. Aussage 5 ist falsch: Somnolenz ist eine Bewusstseinsstörung und hat nichts mit Wahn zu tun.',
  ),
  Question(
    id: 27,
    exam: 'März 2021',
    q: 'Welche Aussage zum Heilpraktikergesetz trifft zu?',
    options: [
      'Das Heilpraktikergesetz wurde bereits 1949 verabschiedet',
      'Ärzte benötigen für die Ausübung der Psychotherapie eine Heilpraktikererlaubnis',
      'Die Ausübung der Zahnheilkunde fällt nicht unter die Bestimmungen dieses Gesetzes',
      'Heilpraktiker dürfen die Ausübung der Heilkunde auch im Umherziehen anbieten',
      'Eine abgeschlossene Berufsausbildung ist Voraussetzung für die beschränkte Heilpraktikererlaubnis',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Die Ausübung der Zahnheilkunde fällt nicht unter das Heilpraktikergesetz – sie ist durch ein eigenes Gesetz (Zahnheilkundegesetz) geregelt. A ist falsch: Das Heilpraktikergesetz stammt von 1939. B ist falsch: Ärzte benötigen keine Heilpraktikererlaubnis. D ist falsch: Die Ausübung im Umherziehen ist verboten (§3 HPG). E ist falsch: Eine abgeschlossene Berufsausbildung ist keine formale Voraussetzung.',
  ),
  Question(
    id: 28,
    exam: 'März 2021',
    q: 'Welche der folgenden Aussagen zur Demenz treffen zu?\n1. Die häufigste Form ist die vaskuläre Demenz\n2. Differentialdiagnostisch ist an eine Depression zu denken\n3. Bei Alzheimer-Demenz finden sich pathologische Ablagerungen von Proteinen\n4. Verhaltensstörungen wie Aggressivität passen nicht zur Diagnose einer Demenz\n5. Bei vaskulärer Demenz ist die Behandlung von Risikofaktoren wie Hypertonie, Rauchen und Diabetes wichtig',
    options: [
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '2, 3 und 5 sind richtig. Die Depression ist eine wichtige Differentialdiagnose der Demenz (Pseudodemenz). Bei Alzheimer finden sich Amyloid-Plaques und Tau-Fibrillen. Bei vaskulärer Demenz ist die Behandlung kardiovaskulärer Risikofaktoren zentral. Aussage 1 ist falsch: Die häufigste Demenzform ist die Alzheimer-Demenz (ca. 60-70%). Aussage 4 ist falsch: Verhaltensstörungen wie Aggressivität sind häufig bei Demenz.',
  ),
  Question(
    id: 29,
    exam: 'Oktober 2021',
    q: 'Welche der folgenden Symptome werden bei einer Demenz bei Alzheimer-Krankheit beobachtet?\n1. Orientierungsstörungen\n2. Apraxie\n3. Gedächtnisstörungen\n4. Wortfindungsstörungen\n5. Alexie',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Bei der Alzheimer-Demenz können auftreten: Orientierungsstörungen (zunächst zeitlich, dann örtlich), Apraxie (Unfähigkeit zu zweckgerichteten Handlungen), Gedächtnisstörungen (Leitsymptom), Wortfindungsstörungen (aphasische Störungen) und Alexie (Leseunfähigkeit). Diese Symptome spiegeln den fortschreitenden Untergang von Hirngewebe wider.',
  ),
  Question(
    id: 30,
    exam: 'Oktober 2021',
    q: 'In der DBT zur Behandlung der emotional instabilen PS vom Borderline-Typ:\n1. Ist die dauerhafte Gabe von Psychopharmaka ein elementarer Therapiebestandteil\n2. Stehen zu Beginn selbstgefährdende Verhaltensweisen im Mittelpunkt\n3. Werden nach Stabilisierung Traumata bearbeitet\n4. Werden Problemlösefertigkeiten und soziale Kompetenzen trainiert\n5. Wird an Achtsamkeit, Akzeptanz, Umgang mit Gefühlen und Stresstoleranz gearbeitet',
    options: [
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3, 4 und 5 sind richtig. Die DBT folgt einer hierarchischen Behandlungsstruktur: zunächst Reduktion selbstgefährdenden Verhaltens, dann Traumabearbeitung. Skills-Training umfasst Problemlösung und soziale Kompetenz. Die vier Module sind Achtsamkeit, Stresstoleranz, Emotionsregulation und zwischenmenschliche Fertigkeiten. Aussage 1 ist falsch: Psychopharmaka sind kein elementarer Bestandteil der DBT.',
  ),
  Question(
    id: 31,
    exam: 'Oktober 2021',
    q: 'Welche Aussage zu Nebenwirkungen der Psychotherapie trifft am ehesten zu?',
    options: [
      'Nebenwirkungen sind mit therapeutischen Kunstfehlern gleichzusetzen',
      'Es findet sich bisher kein spezifisches Instrument zur Erfassung von Nebenwirkungen',
      'Besonders erfolgreiche Therapien haben ein besonders hohes Nebenwirkungsprofil',
      'Bei Gruppentherapien sind negative Effekte deutlich seltener als bei Einzeltherapien',
      'Zu den Nebenwirkungen zählt auch die kurzfristige Verschlechterung der Symptome durch eine regelgerecht durchgeführte Therapie',
    ],
    correct: 4,
    explanation:
        'E ist richtig: Eine vorübergehende Symptomverschlechterung (z.B. kurzfristige Angstausweitung bei Expositionstherapie) kann eine Nebenwirkung einer regelgerecht durchgeführten Therapie sein. A ist falsch: Nebenwirkungen können auch bei korrekter Therapie auftreten. B ist falsch: Es gibt Instrumente wie den INEP (Inventar zur Erfassung negativer Effekte von Psychotherapie). C ist falsch: Es gibt keinen solchen Zusammenhang. D ist falsch: Gruppentherapien können eigene negative Effekte haben.',
  ),
  Question(
    id: 32,
    exam: 'Oktober 2021',
    q: 'Depressive Episoden des höheren Lebensalters (\'Altersdepression\'): (Wählen Sie zwei Antworten)',
    options: [
      'Sind teilweise schwer von Demenzen abzugrenzen',
      'Sind einer psychotherapeutischen Behandlung nicht zugänglich',
      'Gehen häufig mit somatischen Symptomen einher',
      'Führen so gut wie nie zu einer Suizidgefährdung',
      'Sind normale Alterserscheinungen',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Die Abgrenzung von Altersdepression und Demenz ist klinisch oft schwierig (Pseudodemenz). Somatische Symptome (Schmerzen, Schlafstörungen, Appetitmangel) stehen bei Altersdepressionen häufig im Vordergrund. B ist falsch: Psychotherapie ist auch im Alter wirksam. D ist falsch: Ältere Menschen haben ein besonders hohes Suizidrisiko. E ist falsch: Depression ist keine normale Alterserscheinung.',
  ),
  Question(
    id: 33,
    exam: 'Oktober 2021',
    q: 'Bei folgenden Krankheiten können Symptome einer Panikstörung auftreten:\n1. Herzrhythmusstörung\n2. Hyperthyreose\n3. Asthma bronchiale\n4. Agoraphobie\n5. Posttraumatische Belastungsstörung',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Panikattacken-ähnliche Symptome können bei vielen Erkrankungen auftreten: Herzrhythmusstörungen (Herzklopfen, Schwindel), Hyperthyreose (Tachykardie, Schwitzen, Unruhe), Asthma (Atemnot, Angst), Agoraphobie (häufig mit Panikattacken assoziiert) und PTBS (Flashbacks mit Angst und vegetativen Symptomen).',
  ),
  Question(
    id: 34,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zur Differentialdiagnose der Anorexia nervosa treffen zu? Auszuschließende Ursachen des Untergewichts:\n1. Leukämie\n2. Hyperthyreose\n3. Kokainmissbrauch\n4. Zwangserkrankung mit ernährungsbedingten Zwängen\n5. Diabetes mellitus',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Bei Untergewicht müssen ausgeschlossen werden: Leukämie (konsumierende Erkrankung), Hyperthyreose (erhöhter Stoffwechsel), Kokainmissbrauch (Appetithemmung), Zwangserkrankung mit Nahrungsritualen und Diabetes mellitus (besonders Typ 1 mit Gewichtsverlust).',
  ),
  Question(
    id: 35,
    exam: 'Oktober 2021',
    q: 'Eine 45-jährige Frau berichtet von Erschöpfbarkeit, Konzentrationsschwierigkeiten, Durchschlafstörungen, Angst vor der Zukunft und sozialem Rückzug. Welche Diagnosen können zugrunde liegen?\n1. Anpassungsstörung\n2. Depressive Episode\n3. Generalisierte Angststörung\n4. Organische affektive Störung\n5. Schizophrenie',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 4,
    explanation:
        'Alle Aussagen sind richtig. Die beschriebenen Symptome sind unspezifisch und könnten verschiedenen Diagnosen zugrunde liegen: Anpassungsstörung (belastungsbedingt), depressive Episode (Erschöpfung, Rückzug), GAS (Zukunftsangst, Anspannung), organische affektive Störung (muss somatisch ausgeschlossen werden) und Schizophrenie (in der Prodromalphase mit Rückzug und Konzentrationsstörungen).',
  ),
  Question(
    id: 36,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zu Benzodiazepinen treffen zu?\n1. Wirksame Metaboliten können bei Dauertherapie zu Kumulationsgefahr führen\n2. Häufige Nebenwirkungen sind Schläfrigkeit und Benommenheit\n3. Sie werden bei akuten Angstzuständen eingesetzt\n4. Bei Hochdosisabhängigkeit ist sofortiges Absetzen angezeigt\n5. Entzugssymptome können sich über Wochen hinziehen',
    options: [
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: 4,
    explanation:
        '1, 2, 3 und 5 sind richtig. Langwirksame Benzodiazepine haben aktive Metaboliten mit Kumulationsgefahr. Sedierung und Benommenheit sind häufige Nebenwirkungen. Benzodiazepine sind Mittel der Wahl bei akuten Angstzuständen. Entzugssymptome können protrahiert über Wochen anhalten. Aussage 4 ist falsch: Bei Hochdosisabhängigkeit muss langsam ausschleichend abgesetzt werden – abruptes Absetzen kann lebensbedrohliche Entzugskrampfanfälle auslösen.',
  ),
  Question(
    id: 37,
    exam: 'Oktober 2021',
    q: 'Stationäre Einweisung bei suizidalem depressivem Patienten sollte unbedingt erwogen werden: (Wählen Sie zwei Antworten)',
    options: [
      'Wenn die depressive Störung einer intensiven psychiatrischen und psychotherapeutischen Behandlung bedarf',
      'Bei Patienten mit chronischer, latenter Suizidalität, von der sie sich glaubhaft distanzieren können',
      'Bei mangelnder Absprachefähigkeit',
      'Bei tragfähiger therapeutischer Beziehung',
      'Bei vorhandener Bündnis- und Beziehungsfähigkeit',
    ],
    correct: [0, 2],
    explanation:
        'A und C sind richtig. Eine stationäre Einweisung sollte erwogen werden, wenn die Erkrankung intensive Behandlung erfordert und wenn keine Absprachefähigkeit besteht (der Patient kann nicht glaubhaft versichern, sich nicht zu suizidieren). B, D und E sprechen eher gegen die Notwendigkeit einer stationären Aufnahme: glaubhafte Distanzierung, tragfähige Beziehung und Bündnisfähigkeit sind protektive Faktoren.',
  ),
  Question(
    id: 38,
    exam: 'Oktober 2021',
    q: 'Welche der folgenden Symptome sind typisch beim Vorliegen einer Manie?\n1. Psychomotorische Unruhe\n2. Tag-Nacht-Umkehr mit gesteigertem Schlafbedürfnis am Tag\n3. Stimmungsschwankungen\n4. Panikattacken\n5. Distanzloses Verhalten',
    options: [
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur 1 und 5 sind richtig. Psychomotorische Unruhe (gesteigerte Aktivität) und distanzloses Verhalten sind typische Symptome der Manie. Aussage 2 ist falsch: Bei Manie besteht ein vermindertes Schlafbedürfnis, keine Tag-Nacht-Umkehr mit gesteigertem Schlafbedürfnis. Aussage 3 ist falsch: Bei Manie dominiert eine gehobene/gereizte Stimmung, nicht ausgeprägte Stimmungsschwankungen. Aussage 4 ist falsch: Panikattacken gehören nicht zum typischen Bild der Manie.',
  ),
  Question(
    id: 39,
    exam: 'Oktober 2021',
    q: 'Akoasmen (elementare, unausgeformte, nicht verbale akustische Sinnestäuschungen) werden beobachtet bei:\n1. Alkoholdelir\n2. Epileptischer Aura\n3. Schizophrenie\n4. Zwangsstörung\n5. Abhängige Persönlichkeitsstörung',
    options: [
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 3 sind richtig. Akoasmen (elementare akustische Halluzinationen wie Klopfen, Rauschen, Knallen) können beim Alkoholdelir, bei epileptischer Aura und bei Schizophrenie auftreten. Aussage 4 ist falsch: Zwangsstörungen gehen nicht mit Halluzinationen einher. Aussage 5 ist falsch: Bei der dependenten PS treten keine Halluzinationen auf.',
  ),
  Question(
    id: 40,
    exam: 'Oktober 2021',
    q: 'Bei einem bewusstlosen, spontan-atmenden Patienten sind folgende Notfallmaßnahmen indiziert: (Wählen Sie zwei Antworten)',
    options: [
      'Keine weiteren Maßnahmen',
      'Notruf wählen',
      'Stabile Seitenlage',
      'Bis zum Eintreffen des Notarztes kardiale Druckmassage und Beatmung im Wechsel 30:2',
      'Bis zum Eintreffen des Notarztes kardiale Druckmassage und Beatmung im Wechsel 20:4',
    ],
    correct: [1, 2],
    explanation:
        'B und C sind richtig. Bei einem bewusstlosen, aber spontan atmenden Patienten sind Notruf und stabile Seitenlage die korrekten Maßnahmen. Die stabile Seitenlage schützt vor Aspiration. A ist falsch: Ohne Maßnahmen besteht Erstickungsgefahr. D und E sind falsch: Herz-Druck-Massage und Beatmung sind nur bei fehlender Atmung/Kreislaufstillstand indiziert.',
  ),
  Question(
    id: 41,
    exam: 'Oktober 2021',
    q: 'Welche Aussage zur motivierenden Gesprächsführung (Motivational Interviewing) trifft am ehesten zu?',
    options: [
      'Der Therapeut weist den Patienten möglichst oft direkt auf dessen Fehler hin',
      'Der Therapeut versucht möglichst viele Argumente für eine Verhaltensänderung vorzuschlagen',
      'Der Therapeut stellt möglichst geschlossene Fragen oder immer wieder die gleichen Fragen',
      'Der Therapeut vermeidet Diskussionen und direkt konfrontatives Vorgehen',
      'Bei jedem Klienten geht der Therapeut gleich vor und nimmt eine gewisse Motivation an',
    ],
    correct: 3,
    explanation:
        'D ist richtig: Im Motivational Interviewing nach Miller und Rollnick wird direkte Konfrontation vermieden. Der Therapeut arbeitet mit den Widerständen des Patienten, statt dagegen. A ist falsch: Direktes Hinweisen auf Fehler erzeugt Widerstand. B ist falsch: Der Patient soll selbst Argumente finden (Change Talk). C ist falsch: Offene Fragen sind bevorzugt. E ist falsch: Der Ansatz ist individuell und klientenzentriert.',
  ),
  Question(
    id: 42,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zur Sozio- und Psychotherapie schizophrener Kranker treffen zu?\n1. Aufdeckende Interventionen sind supportiven vorzuziehen\n2. Residualsymptome sind durch Verhaltenstraining nicht verbesserungsfähig\n3. Patienten mit Plussymptomen sind besser zu rehabilitieren als mit Minussymptomen\n4. Sozio-/Psychotherapie ersetzt Rezidivprophylaxe mit Antipsychotika\n5. Psychoedukation in Gruppen ist bei Schizophrenie kontraindiziert',
    options: [
      'Nur die Aussage 1 ist richtig',
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        'Nur Aussage 3 ist richtig: Patienten mit Positivsymptomen (Wahn, Halluzinationen) sprechen besser auf Behandlung an und sind leichter zu rehabilitieren als Patienten mit vorherrschenden Negativsymptomen (Antriebsarmut, Affektverflachung). Aussage 1 ist falsch: Supportive Interventionen sind aufdeckenden vorzuziehen. Aussage 2 ist falsch: Verhaltenstraining kann Residualsymptome verbessern. Aussage 4 ist falsch: Psycho-/Soziotherapie ergänzt, ersetzt nicht die Medikation. Aussage 5 ist falsch: Psychoedukation ist empfohlen.',
  ),
  Question(
    id: 43,
    exam: 'Oktober 2021',
    q: 'Welche Aussage zum Einwilligungsvorbehalt im Rahmen einer rechtlichen Betreuung trifft zu?',
    options: [
      'Voraussetzung ist das Vorliegen einer schweren körperlichen Erkrankung',
      'Es handelt sich um eine Betreuung für höchstpersönliche Rechtsgeschäfte wie Eheschließung oder Testament',
      'Bestimmte Rechtsgeschäfte werden ohne Einwilligung eines vom Gericht bestellten Betreuers nicht rechtswirksam',
      'Primärer Zweck ist es, andere vor den Rechtsgeschäften des Betreuten zu schützen',
      'Ein Einwilligungsvorbehalt bleibt grundsätzlich lebenslang bestehen',
    ],
    correct: 2,
    explanation:
        'C ist richtig: Beim Einwilligungsvorbehalt werden bestimmte Rechtsgeschäfte ohne Zustimmung des Betreuers nicht wirksam. A ist falsch: Voraussetzung sind psychische Erkrankungen/geistige Behinderung. B ist falsch: Höchstpersönliche Rechtsgeschäfte sind ausgenommen. D ist falsch: Der Schutz gilt dem Betreuten. E ist falsch: Der Vorbehalt wird befristet und regelmäßig überprüft.',
  ),
  Question(
    id: 44,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zur Intelligenzminderung treffen zu?\n1. Es zeigt sich klinisch eine gleichförmige einheitliche Symptomatik\n2. Sie kann sich nach dem\n50. Lebensjahr zurückbilden\n3. Sie ist gehäuft mit psychischen Erkrankungen verbunden\n4. Sie besteht nur in einem speziellen Kontext\n5. Für die Einteilung des Schweregrads werden IQ-Werte zugrunde gelegt',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '3 und 5 sind richtig. Intelligenzminderung ist gehäuft mit psychischen Störungen assoziiert (erhöhte Vulnerabilität). Die ICD-10-Einteilung basiert auf IQ-Werten (leicht: 50-69, mittelgradig: 35-49, schwer: 20-34, schwerst: unter 20). Aussage 1 ist falsch: Die Symptomatik ist sehr heterogen. Aussage 2 ist falsch: Intelligenzminderung bildet sich nicht zurück. Aussage 4 ist falsch: Sie besteht kontextübergreifend.',
  ),
  Question(
    id: 45,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zur depressiven Episode (nach ICD-10) treffen zu?\n1. Dauer von mindestens drei Monaten wird verlangt\n2. Breites Bild unterschiedlicher Symptome und Ausprägung\n3. Agitiertheit spricht gegen eine schwere depressive Episode\n4. In ihrer Auswirkung vom sozialen Umfeld abhängig\n5. Beeinträchtigt die selbständige Lebensführung nicht',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '2 und 4 sind richtig. Die depressive Episode zeigt ein breites Spektrum an Symptomen und Schweregraden. Ihre Auswirkung wird auch vom sozialen Umfeld beeinflusst (stützend oder belastend). Aussage 1 ist falsch: Die Mindestdauer beträgt 2 Wochen, nicht 3 Monate. Aussage 3 ist falsch: Agitiertheit kann bei schwerer Depression auftreten (agitierte Depression). Aussage 5 ist falsch: Besonders schwere Episoden beeinträchtigen die Lebensführung erheblich.',
  ),
  Question(
    id: 46,
    exam: 'Oktober 2021',
    q: 'Sinnvolle therapeutische Möglichkeiten bei der hypochondrischen Störung sind:\n1. Motivation zur besseren Bewältigung der Krankheitsangst\n2. Wiederholte apparative Diagnostik der Beschwerden\n3. Psychoedukation zur Auswirkung von Stress und Angst\n4. Training der Reduktion sicherheitssuchenden Verhaltens\n5. Bearbeitung früherer und aktueller Belastungen',
    options: [
      'Nur die Aussagen 1 und 4 sind richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 3, 4 und 5 sind richtig. Bei Hypochondrie sind sinnvoll: Motivationsarbeit zur Bewältigung der Krankheitsangst, Psychoedukation über Stress-Angst-Zusammenhänge, Reduktion von sicherheitssuchendem Verhalten (Rückversicherung, Checking) und Bearbeitung von Belastungen. Aussage 2 ist falsch: Wiederholte apparative Diagnostik verstärkt die Hypochondrie und das Checking-Verhalten – sie ist kontraproduktiv.',
  ),
  Question(
    id: 47,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zu Persönlichkeitsstörungen treffen zu?\n1. Narzisstische PS: oft sehr einfühlsam\n2. Schizoide PS: oft großer Freundeskreis\n3. Emotional instabile PS: oft geringe Fähigkeit, Ziele langfristig zu verfolgen\n4. Dissoziale PS: oft langfristige Beziehungen\n5. Paranoide PS: oft übertriebene Empfindlichkeit bei Rückschlägen',
    options: [
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 3 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 4 und 5 sind richtig',
    ],
    correct: 1,
    explanation:
        '3 und 5 sind richtig. Menschen mit emotional instabiler PS haben Schwierigkeiten bei der langfristigen Zielverfolgung (Impulsivität, Instabilität). Paranoide PS zeigt übertriebene Empfindlichkeit bei Rückschlägen und Kränkungen. Aussage 1 ist falsch: Narzisstische Personen zeigen typischerweise Empathiemangel. Aussage 2 ist falsch: Schizoide Personen bevorzugen Einzelgänger-Aktivitäten. Aussage 4 ist falsch: Dissoziale PS zeigt Beziehungsinstabilität.',
  ),
  Question(
    id: 48,
    exam: 'Oktober 2021',
    q: 'Zu den abnormen Gewohnheiten und Störungen der Impulskontrolle (nach ICD-10) gehören: (Wählen Sie zwei Antworten)',
    options: [
      'Pathologisches Stehlen (Kleptomanie)',
      'Pathologischer Narzissmus',
      'Pathologisches Lügen (Pseudologia phantastica)',
      'Pathologischer Rausch',
      'Pathologische Brandstiftung (Pyromanie)',
    ],
    correct: [0, 4],
    explanation:
        'A und E sind richtig. Kleptomanie (pathologisches Stehlen) und Pyromanie (pathologische Brandstiftung) gehören zu den Störungen der Impulskontrolle (F63) nach ICD-10. Auch pathologisches Spielen und Trichotillomanie gehören in diese Kategorie. B (Narzissmus) ist eine Persönlichkeitsstörung. C (Pseudologia phantastica) ist keine eigenständige ICD-10-Diagnose in dieser Kategorie. D (Pathologischer Rausch) gehört zu den substanzbedingten Störungen.',
  ),
  Question(
    id: 49,
    exam: 'Oktober 2021',
    q: 'Zu den Symptomen des Nikotinentzugssyndroms zählen nach ICD-10:\n1. Hypertonie\n2. Krankheitsgefühl\n3. Konzentrationsstörungen\n4. Ängstlichkeit\n5. Hohe Risikobereitschaft',
    options: [
      'Nur die Aussagen 2 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3, 4 und 5 sind richtig',
    ],
    correct: 3,
    explanation:
        '2, 3 und 4 sind richtig. Symptome des Nikotinentzugs umfassen: Krankheitsgefühl (Unwohlsein), Konzentrationsstörungen und Ängstlichkeit. Weitere Symptome sind Reizbarkeit, Schlafstörungen, gesteigerter Appetit und depressive Verstimmung. Aussage 1 ist falsch: Hypertonie ist kein typisches Nikotinentzugssymptom. Aussage 5 ist falsch: Hohe Risikobereitschaft gehört nicht zu den Entzugssymptomen.',
  ),
  Question(
    id: 50,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zum pathologischen Spielen (nach ICD-10) treffen zu?\n1. Beginnt meist im höheren Erwachsenenalter\n2. Die Handlungen können kontrolliert werden\n3. Charakteristisch ist wiederholtes, episodisches Glücksspielen\n4. Das Risiko für Suizidversuche oder Suizide ist erhöht\n5. Als Begleiterkrankung liegt u.a. die hyperkinetische Störung gehäuft vor',
    options: [
      'Nur die Aussagen 4 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 3, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '3, 4 und 5 sind richtig. Pathologisches Spielen ist durch wiederholtes Glücksspielen gekennzeichnet. Das Suizidrisiko ist erhöht. ADHS (hyperkinetische Störung) ist eine häufige Komorbidität. Aussage 1 ist falsch: Beginn meist im jüngeren Erwachsenenalter. Aussage 2 ist falsch: Kontrollverlust ist ein Kernmerkmal – die Handlungen können gerade nicht kontrolliert werden.',
  ),
  Question(
    id: 51,
    exam: 'Oktober 2021',
    q: 'Ein Patient berichtet von Herzbeschwerden, Schwindel, häufigen Bauchschmerzen, Durchfall und Hautjucken. Er war bei vielen Ärzten, Symptome traten immer wieder auf. Welche Gesundheitsstörung passt am ehesten?',
    options: [
      'Paranoid-halluzinatorische Schizophrenie',
      'Somatoforme Störung',
      'Multiple Sklerose',
      'Colitis ulcerosa',
      'Bipolare affektive Störung',
    ],
    correct: 1,
    explanation:
        'B ist richtig: Wechselnde körperliche Beschwerden aus verschiedenen Organsystemen (Herz, GI-Trakt, Haut) ohne organischen Befund trotz vieler Arztbesuche (Doctor-Shopping) ist typisch für eine somatoforme Störung (Somatisierungsstörung). Die anderen Diagnosen passen nicht zum Gesamtbild der wechselnden, organisch nicht erklärbaren Beschwerden.',
  ),
  Question(
    id: 52,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zur Bulimia nervosa treffen zu?\n1. Missbrauch von Abführmitteln, Schilddrüsenpräparaten oder Diuretika\n2. Häufig Episode einer Anorexia nervosa in der Vorgeschichte\n3. Häufig depressive Symptome\n4. Frauen und Männer gleich häufig betroffen\n5. BMI typischerweise unter 17,5 kg/m²',
    options: [
      'Nur die Aussagen 1 und 3 sind richtig',
      'Nur die Aussagen 1, 2 und 3 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 1,
    explanation:
        '1, 2 und 3 sind richtig. Bulimie-Patientinnen missbrauchen oft Laxantien, Schilddrüsenpräparate und Diuretika zur Gewichtskontrolle. In der Vorgeschichte findet sich häufig eine Anorexie-Episode. Depressive Symptome sind eine häufige Komorbidität. Aussage 4 ist falsch: Frauen sind deutlich häufiger betroffen (ca. 10:1). Aussage 5 ist falsch: Der BMI ist bei Bulimie meist normal – BMI unter 17,5 ist ein Kriterium der Anorexie.',
  ),
  Question(
    id: 53,
    exam: 'Oktober 2021',
    q: 'Zu den organischen, einschließlich symptomatischen psychischen Störungen (nach ICD-10) zählen:\n1. Leichte kognitive Störung\n2. Delir, nicht durch Substanzen bedingt\n3. Demenz bei Alzheimer-Krankheit\n4. Katatone Schizophrenie\n5. Postenzephalitisches Syndrom',
    options: [
      'Nur die Aussagen 2 und 5 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 2, 3 und 5 sind richtig',
      'Nur die Aussagen 1, 2, 3 und 5 sind richtig',
      'Alle Aussagen sind richtig',
    ],
    correct: 3,
    explanation:
        '1, 2, 3 und 5 sind richtig. Zu den organischen psychischen Störungen (F00-F09) gehören: leichte kognitive Störung (F06.7), Delir nicht durch Substanzen bedingt (F05), Alzheimer-Demenz (F00) und postenzephalitisches Syndrom (F07.1). Aussage 4 ist falsch: Die katatone Schizophrenie (F20.2) gehört zu den Schizophrenien (F20-F29), nicht zu den organischen Störungen.',
  ),
  Question(
    id: 54,
    exam: 'Oktober 2021',
    q: 'Welche anamnestischen Angaben stützen den Verdacht auf ADHS des Erwachsenenalters?\n1. Hinweise auf motorische Unruhe und Impulsivität in der Grundschulzeit\n2. Bruder wird mit Methylphenidat behandelt\n3. Beschwerden seit wenigen Tagen nach Tod des Vaters\n4. Deutlich erhöhte Schilddrüsenwerte\n5. Häufiges Verlieren von Gegenständen und selbstverschuldete Verkehrsunfälle',
    options: [
      'Nur die Aussagen 1 und 2 sind richtig',
      'Nur die Aussagen 1 und 5 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 2, 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2, 4 und 5 sind richtig',
    ],
    correct: 2,
    explanation:
        '1, 2 und 5 sind richtig. Für ADHS sprechen: Symptome bereits in der Kindheit (Grundschulzeit), familiäre Belastung (Bruder mit Methylphenidat-Behandlung) und typische Alltagsprobleme (Verlieren von Gegenständen, Unfälle durch Unaufmerksamkeit). Aussage 3 spricht eher für eine Anpassungsstörung/Trauerreaktion. Aussage 4 spricht für eine Schilddrüsenüberfunktion als Differentialdiagnose.',
  ),
  Question(
    id: 55,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zu Psychotherapieverfahren treffen zu? (Wählen Sie zwei Antworten)',
    options: [
      'Die Gestalttherapie gehört zu den humanistischen Therapien',
      'Kennzeichnend für die Gesprächspsychotherapie ist das direktive Verhalten des Therapeuten',
      'Kerngedanke der Verhaltenstherapie ist, dass Verhalten und Erleben von unbewussten Persönlichkeitsanteilen bestimmt wird',
      'Gedankenstopp und Selbstverbalisationstraining sind kognitiv-verhaltenstherapeutische Techniken',
      'Vermeidung einer angstbesetzten Situation mit Verminderung der Erregung ist positive Verstärkung',
    ],
    correct: [0, 3],
    explanation:
        'A und D sind richtig. Die Gestalttherapie nach Fritz Perls gehört zu den humanistischen Therapieverfahren. Gedankenstopp und Selbstverbalisationstraining (Selbstinstruktionstraining nach Meichenbaum) sind KVT-Techniken. B ist falsch: Gesprächspsychotherapie nach Rogers ist non-direktiv. C ist falsch: Unbewusste Persönlichkeitsanteile sind ein psychoanalytisches Konzept. E ist falsch: Angstreduktion durch Vermeidung ist negative Verstärkung.',
  ),
  Question(
    id: 56,
    exam: 'Oktober 2021',
    q: 'Welche Aussagen zur Unterbringung psychisch Kranker in psychiatrischen Krankenhäusern treffen zu?\n1. Strafrechtliche Unterbringung im Maßregelvollzug erfordert vorherige Betreuung\n2. Strafrechtliche Unterbringung in Entziehungsanstalt kann von Eltern angeordnet werden\n3. Zivilrechtliche Unterbringung setzt erhebliche Gesundheitsgefährdung voraus\n4. Öffentlich-rechtliche Unterbringung nach PsychKG ist zeitlich nicht befristet\n5. Öffentlich-rechtliche Unterbringung zur Abwehr von Selbstgefährdung ist nicht möglich',
    options: [
      'Nur die Aussage 3 ist richtig',
      'Nur die Aussagen 2 und 3 sind richtig',
      'Nur die Aussagen 3 und 4 sind richtig',
      'Nur die Aussagen 1, 2 und 5 sind richtig',
      'Nur die Aussagen 1, 3 und 4 sind richtig',
    ],
    correct: 0,
    explanation:
        'Nur Aussage 3 ist richtig: Die zivilrechtliche Unterbringung nach Betreuungsrecht setzt eine erhebliche Gefährdung der Gesundheit des Betroffenen voraus. Aussage 1 ist falsch: Maßregelvollzug erfordert keine vorherige Betreuung – er wird vom Strafgericht angeordnet. Aussage 2 ist falsch: Eltern können keine Unterbringung in Entziehungsanstalten anordnen. Aussage 4 ist falsch: Die Unterbringung nach PsychKG ist zeitlich befristet. Aussage 5 ist falsch: Das PsychKG ermöglicht Unterbringung auch bei Selbstgefährdung.',
  ),
];
