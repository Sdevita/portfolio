import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image(image: AssetImage('images/fuel_icon.png')),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Privacy Policies",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Euclid", fontSize: 28),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Riassunto della policy\n\n",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text("Titolare del trattamento dei dati\n", textAlign: TextAlign.start,style: Theme.of(context).textTheme.titleMedium,),
                Text("Salvatore De Vita\ntellus.application@gmail.com", textAlign: TextAlign.start,),
                SizedBox(height: 20,),
                Text("Fra i Dati Personali raccolti da questa Applicazione, in modo autonomo o tramite terze parti, ci sono:\n- Strumenti di Tracciamento;\n- Dati di utilizzo.\n- L\'Utente si assume la responsabilità dei Dati Personali di terzi ottenuti, pubblicati o condivisi mediante questa Applicazione e garantisce di avere il diritto di comunicarli o diffonderli, liberando il Titolare da qualsiasi responsabilità verso terzi.", textAlign: TextAlign.start,),
                SizedBox(height: 20,),
                Text("Modalità di trattamento\n", textAlign: TextAlign.start,style: Theme.of(context).textTheme.titleMedium,),
                Text("Il trattamento viene effettuato mediante strumenti informatici e/o telematici, con modalità organizzative e con logiche strettamente correlate alle finalità indicate", textAlign: TextAlign.start,),
                SizedBox(height: 20,),
                Text("Luogo\n", textAlign: TextAlign.start,style: Theme.of(context).textTheme.titleMedium,),
                Text("I Dati sono trattati presso le sedi operative del Titolare ed in ogni altro luogo in cui le parti coinvolte nel trattamento siano localizzate. Per ulteriori informazioni, contatta il Titolare.I Dati Personali dell’Utente potrebbero essere trasferiti in un paese diverso da quello in cui l’Utente si trova. Per ottenere ulteriori informazioni sul luogo del trattamento l’Utente può fare riferimento alla sezione relativa ai dettagli sul trattamento dei Dati Personali.", textAlign: TextAlign.start,),
                SizedBox(height: 20,),
                Text("Periodo di conservazione\n", textAlign: TextAlign.start,style: Theme.of(context).textTheme.titleMedium,),
                Text("I Dati sono trattati e conservati per il tempo richiesto dalle finalità per le quali sono stati raccolti.Al termine del periodo di conservazione i Dati Personali saranno cancellati. Pertanto, allo spirare di tale termine il diritto di accesso, cancellazione, rettificazione ed il diritto alla portabilità dei Dati non potranno più essere esercitati.", textAlign: TextAlign.start,),
                SizedBox(height: 20,),
                Text("Finalità del trattamento dei dati raccolti\n", textAlign: TextAlign.start,style: Theme.of(context).textTheme.titleMedium,),
                Text("I Dati dell’Utente sono raccolti per consentire al Titolare di fornire il Servizio, adempiere agli obblighi di legge, rispondere a richieste o azioni esecutive, tutelare i propri diritti ed interessi (o quelli di Utenti o di terze parti), individuare eventuali attività dolose o fraudolente, nonché per le seguenti finalità: Statistica", textAlign: TextAlign.start,),
                SizedBox(height: 20,),
                Text("Modifiche a questa privacy policy\n", textAlign: TextAlign.start,style: Theme.of(context).textTheme.titleMedium,),
                Text("Il Titolare del Trattamento si riserva il diritto di apportare modifiche alla presente privacy policy in qualunque momento notificandolo agli Utenti su questa pagina e, se possibile, su questa Applicazione nonché, qualora tecnicamente e legalmente fattibile, inviando una notifica agli Utenti attraverso uno degli estremi di contatto di cui è in possesso. Si prega dunque di consultare con frequenza questa pagina, facendo riferimento alla data di ultima modifica indicata in fondo.", textAlign: TextAlign.start,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
