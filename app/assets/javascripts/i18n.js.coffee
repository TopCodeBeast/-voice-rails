env.i18n =
  en:
    dialog:
      agent_created:    'You successfully added the user<br /><strong>NAME</strong>'
      browser_warning:  'For now, Chrome CHROME+ and Firefox FIREFOX+ are the only supported browsers. Use this platform at own risk.'
      cancel:           'Cancel'
      dial_now:         'Dial now'
      enter_number:     'Please enter a number to dial:'
      form_with_errors: 'One or more fields contain invalid data. Please fill them in correctly and try again.'
      hangup:           'Hangup'
      hangup_this_call: 'Do you want to hangup this call?'
      i_am_busy:        'I\'m busy'
      incoming_call:    'You have an incoming call from<br /><strong>NAME</strong>'
      lost_server_conn: 'Sorry, we lost our connection to the server &mdash;<br />please check your network and try to re-login.'
      no_messages:      'Sorry, we stopped receiving messages &mdash;<br />please open just one app window at a time.'
      ok:               'Ok'
      outgoing_call:    'Do you want to call<br /><strong>NAME</strong>?'
      no_hungup_call:   'This is only available after you finished a call.'
      reload_necessary: 'We need to reload the browser window to activate this setting.'
      reload:           'Reload'
      shortcut_header:  'Keyboard shortcuts'
      take_call:        'Take call'
      transfer_call:    'Do you want to transfer this call to<br /><strong>AGENT</strong>?'
      transfer:         'Transfer'
      yes:              'Yes'
    agents:
      agent_is:         'agent is'
      agents_are:       'agents are'
      available:        'available'
    skills:
      new_booking:      'New booking'
      ext_booking:      'Existing booking'
      payment:          'Invoices & payment'
      other:            'General inquiries'
    status:
      away:             'I\'m away from desk'
      busy:             'I\'m currently busy'
      ready:            'I\'m ready to take calls'
      ringing:          'I\'m receiving a call'
      talking:          'I\'m currently talking'
    customers:
      customer_is:      'customer is'
      customers_are:    'customers are'
      queued:           'queued'
    crmuser:
      create_ticket:    "Create a #{env.crmProvider} ticket from this call"
      default_subject:  'Ticket for CALL'
      recent_tickets:   "Recent tickets at #{env.crmProvider}"
      request_new_user: "Request a new #{env.crmProvider} user for this customer"
    help:
      A:                'CR:     Confirm current dialog'
      B:                'ESC:    Close current dialog'
      a:                'Ctrl+A: Show the agents page'
      b:                'Ctrl+B: Set my state to "busy"'
      d:                'Ctrl+D: Show the dashboard'
      f:                'Ctrl+F: Filter the agent list'
      h:                'Ctrl+H: Hangup the current call'
      i:                'Ctrl+I: Show this shortcut list'
      m:                'Ctrl+M: Type a chat message'
      o:                'Ctrl+O: Dial an outbound number'
      r:                'Ctrl+R: Set my state to "ready"'
      s:                'Ctrl+S: Show the stats page'
      x:                'Ctrl+X: Hide the call display'
    domain:
      agent:            'Agent'
      answered_at:      'Answered at'
      availability:     'Availability'
      called_at:        'Called at'
      caller_id:        'Caller Id'
      clear:            'Clear'
      email:            'E-Mail'
      full_name:        'Full Name'
      language_choice:  'Language Choice'
      language:         'Language'
      languages:        'Languages'
      line:             'Line'
      logout:           'Logout'
      mailbox:          'Mailbox'
      mark_as:          'Mark as'
      old_password:     'Old Password'
      password:         'New Password'
      confirmation:     'Password Confirmation'
      queued_at:        'Queued at'
      remarks:          'Remarks'
      roles:            'Roles'
      requested_skill:  'Requested Skill'
      save_record:      'Save Record'
      save_profile:     'Save Profile'
      sip_extension:    'SIP Extension'
      sip_secret:       'SIP Password'
      skills:           'Skills'
      user:             'user'
      crmuser_id:       "#{env.crmProvider} Id"
    headers:
      agent_management: 'Agent Management'
      agent_overview:   'Agent Overview'
      agent_profile:    'Agent Profile'
      agent_table:      'Agent Table'
      agent_list:       'Agent List'
      callcenter_stats: 'Call Center Statistics'
      call_statistics:  'Call Statistics'
      connected_agents: 'Connected Agents'
      current_calls:    'Current Calls'
      customer_history: 'Customer history'
      customers:        'Customers'
      dashboard:        'Dashboard'
      details_for:      'Details for'
      help:             'Help'
      inbound_calls:    'Inbound Calls'
      media_player:     'Show media player..'
      my_settings:      'My Settings'
      new_agent:        'Add an Agent'
      new_customers:    'New Customers'
      team_chat:        'Team Chat'
      use_auto_ready:   'Use auto-ready'
      use_web_phone:    'Use the web-phone'
    calls:
      active_calls:     'Active calls'
      avg_queue_delay:  '∅ Queue delay'
      call_count:       'Count'
      call_queue_empty: 'The call queue is empty right now.'
      dispatched_calls: 'Dispatched calls'
      hungup_call_to:   'Your finished call to'
      incoming_calls:   'Incoming calls'
      max_queue_delay:  'Max. queue delay'
      queued_calls:     'Queued calls'
      seconds:          'Seconds'
      you_are_talking:  'You are talking to'
    placeholder:
      an_email_address: 'An e-mail address..'
      enter_entry_tags: 'Enter some tags..'
      enter_remarks:    'Enter remarks for this call..'
      enter_timespan:   'Enter a timespan..'
      find_an_agent:    'Find an agent..'
      find_calls:       'Enter call specific terms..'
      find_customers:   'Enter customer related terms..'
      no_recent_messg:  'There are no recent messages in the team chat until now &mdash; be the first to write one!'
      optional_text:    'Enter optional text..'
      refresh_tickets:  "Refresh this customer's #{env.crmProvider} tickets"
      the_full_name:    'The full name..'
      the_user_id:      'The user\'s Id..'
      type_a_number:    'Type a number..'
      type_here:        'Type here..'
    errors:
      ajax_error:       'Sorry, the server returned an error message:<br />MSG'
      crmuser_format:   'Enter 9 digits'
      email_format:     'Enter a valid email address'
      extension_format: 'Enter 3 digits'
      fullname_format:  'Enter the agent\'s full name'
      line_is_busy:     'Please hangup and close the current call display, before you dial again.'
      must_be_text:     'Enter some words'
      number_format:    'Local numbers: 030... / Intl. numbers: 0049...'
      password_format:  'Enter 8 or more chars.: 1 lower, 1 upper, 1 digit'
      password_match:   'Must match the first password'
      routing_error:    'Sorry, an error happened while accessing the new browser URL.'
      sip_secret:       '6 or more digits'
      webrtc_access:    'We could not open the sound device.<br />Please allow the browser to access it<br />in the WebRTC settings.'

  de:
    dialog:
      agent_created:    'Sie haben den Benutzer<br /><strong>NAME</strong> hinzugefügt.'
      browser_warning:  'Derzeit werden nur Chrome CHROME+ und Firefox FIREFOX+ als Browser unterstützt. Diese Plattform funktioniert ggf. fehlerhaft.'
      cancel:           'Abbruch'
      dial_now:         'Jetzt wählen'
      enter_number:     'Bitte geben Sie eine Nummer ein:'
      form_with_errors: 'Ein oder mehr Felder sind unvollständig. Bitte ergänzen/korrigieren Sie dies zuerst.'
      hangup:           'Auflegen'
      hangup_this_call: 'Möchten Sie diesen Anruf auflegen?'
      i_am_busy:        'Ich bin beschäftigt'
      incoming_call:    'Sie bekommen einen Anruf von<br /><strong>NAME</strong>'
      lost_server_conn: 'Leider haben wir die Verbindung zum Server verloren &mdash; bitte prüfen Sie Ihr Netzwerk<br />und melden sich erneut an.'
      no_messages:      'Wir empfangen keine Nachrichten mehr &mdash;<br />bitte öffnen Sie nur ein Fenster zur Zeit.'
      ok:               'Ok'
      outgoing_call:    'Möchten Sie<br /><strong>NAME</strong> anrufen?'
      no_hungup_call:   'Diese Funktion ist nur nach einem beendeten Anruf verfügbar.'
      reload_necessary: 'Um diese Einstellung zu aktivieren, muss der Browser neu geladen werden.'
      reload:           'Neu laden'
      shortcut_header:  'Tastaturkürzel'
      take_call:        'Anruf annehmen'
      transfer_call:    'Möchten Sie diesen Anruf zu<br /><strong>AGENT</strong> durchstellen?'
      transfer:         'Durchstellen'
      yes:              'Ja'
    agents:
      agent_is:         'Agent ist'
      agents_are:       'Agenten sind'
      available:        'verfügbar'
    skills:
      new_booking:      'Neue Buchung'
      ext_booking:      'Bestehende Buchung'
      payment:          'Rechnungen & Zahlung'
      other:            'Andere Anliegen'
    status:
      away:             'Ich bin abwesend'
      busy:             'Ich bin beschäftigt'
      ready:            'Ich nehme Anrufe an'
      ringing:          'Ich werde grade angerufen'
      talking:          'Ich spreche grade'
    customers:
      customer_is:      'Kunde ist'
      customers_are:    'Kunden sind'
      queued:           'in der Warteschleife'
    crmuser:
      create_ticket:    "Erzeugt ein #{env.crmProvider}-Ticket für diesen Anruf"
      default_subject:  'Ticket für CALL'
      recent_tickets:   "Aktuelle #{env.crmProvider}-Tickets"
      request_new_user: "Legt einen neuen #{env.crmProvider}-User für diesen Kunden an"
    help:
      A:                'CR:     Bestätigt aktuellen Dialog'
      B:                'ESC:    Schließt aktuellen Dialog'
      a:                'Strg+A: Zeigt die Agenten-Ansicht'
      b:                'Strg+B: Setzt Status auf "abwesend"'
      d:                'Strg+D: Zeigt die Dashboard-Ansicht'
      f:                'Strg+F: Filtert die Agenten-Liste'
      h:                'Strg+H: Legt aktuellen Anruf auf'
      i:                'Strg+I: Zeigt diese Kürzel-Liste'
      m:                'Strg+M: Chat-Nachricht schreiben'
      o:                'Strg+O: Ausgehenden Anruf tätigen'
      r:                'Strg+R: Setzt Status auf "bereit"'
      s:                'Strg+S: Zeigt die Anruf-Statistik'
      x:                'Strg+X: Schließt die Anruf-Ansicht'
    domain:
      agent:            'Agent'
      answered_at:      'Antwort um'
      availability:     'Verfügbarkeit'
      called_at:        'Verbindung'
      caller_id:        'Anrufer Id'
      clear:            'Rückgängig'
      email:            'E-Mail'
      full_name:        'Ganzer Name'
      language_choice:  'Sprachwahl'
      language:         'Sprache'
      languages:        'Sprachen'
      line:             'Leitung'
      logout:           'Abmelden'
      mailbox:          'Mailbox'
      mark_as:          'Status ist'
      old_password:     'Altes Passwort'
      password:         'Neues Passwort'
      confirmation:     'Passwort bestätigen'
      queued_at:        'Verbunden'
      remarks:          'Bemerkung'
      roles:            'Rollen'
      requested_skill:  'Gewählter Dienst'
      save_record:      'Speichern'
      save_profile:     'Profil Speichern'
      sip_extension:    'SIP-Durchwahl'
      sip_secret:       'SIP-Passwort'
      skills:           'Dienst'
      user:             'Benutzer'
      crmuser_id:       "#{env.crmProvider} Id"
    headers:
      agent_management: 'Agenten-Verwaltung'
      agent_overview:   'Agenten-Übersicht'
      agent_profile:    'Agenten-Profil'
      agent_table:      'Agenten-Tabelle'
      agent_list:       'Agenten-Liste'
      callcenter_stats: 'Call-Center Statistik'
      call_statistics:  'Anruf-Statistik'
      connected_agents: 'Verbundene Agenten'
      current_calls:    'Aktuelle Anrufe'
      customer_history: 'Kunden-Verzeichnis'
      customers:        'Kunden'
      dashboard:        'Dashboard'
      details_for:      'Details zu'
      help:             'Hilfe'
      inbound_calls:    'Eingehende Anrufe'
      media_player:     'Zeige Media-Player..'
      my_settings:      'Meine Einstellungen'
      new_agent:        'Agenten hinzufügen'
      new_customers:    'Neue Kunden'
      team_chat:        'Team-Chat'
      use_auto_ready:   'Auto-Ready nutzen'
      use_web_phone:    'Web-Phone nutzen'
    calls:
      active_calls:     'Aktive Anrufe'
      avg_queue_delay:  '∅ Wartezeit'
      call_count:       'Anzahl'
      call_queue_empty: 'Die Warteschleife ist im Moment leer.'
      dispatched_calls: 'Bearbeitete Anrufe'
      hungup_call_to:   'Ihr beendeter Anruf von'
      incoming_calls:   'Eingehende Anrufe'
      max_queue_delay:  'Max. Wartezeit'
      queued_calls:     'Wartende Anrufe'
      seconds:          'Sekunden'
      you_are_talking:  'Sie sprechen mit'
    placeholder:
      an_email_address: 'Eine E-Mail-Adresse..'
      enter_entry_tags: 'Anruf-Tags eingeben..'
      enter_remarks:    'Geben Sie eine Bemerkung ein..'
      enter_timespan:   'Zeitspanne wählen..'
      find_an_agent:    'Agenten suchen..'
      find_calls:       'Anrufbezogene Daten suchen..'
      find_customers:   'Kundenbezogene Daten suchen..'
      no_recent_messg:  'Derzeit gibt es noch keine Nachrichten im Team-Chat &mdash; schreiben Sie doch die erste!'
      optional_text:    'Optionalen Text eingeben..'
      refresh_tickets:  "#{env.crmProvider}-Tickets dieses Kunden neu laden"
      the_full_name:    'Der ganze Name..'
      the_user_id:      'Die Benutzer-Id..'
      type_a_number:    'Tippen Sie eine Zahl..'
      type_here:        'Tippen Sie hier..'
    errors:
      ajax_error:       'Leider hat der Server einen Fehler gemeldet:<br />MSG'
      crmuser_format:   '9 Ziffern eingeben'
      email_format:     'Geben Sie eine E-Mailadresse ein'
      extension_format: '3 Ziffern eingeben'
      fullname_format:  'Geben Sie den ganzen Namen ein'
      line_is_busy:     'Bitte legen Sie auf und schließen Sie das Anruffeld, bevor Sie erneut wählen.'
      must_be_text:     'Geben Sie einen Text ein'
      number_format:    'Lokale Nummern: 030... / Int. Nummern: 0049...'
      password_format:  '8 oder mehr Zeichen: 1 klein, 1 Groß, 1 Ziffer'
      password_match:   'Muss dem Passwort entsprechen'
      routing_error:    'Leider ist beim Aufruf der Browser-URL ein Fehler aufgetreten.'
      sip_secret:       '6 oder mehr Ziffern'
      webrtc_access:    'Das Mikrofon konnte nicht gefunden werden.<br />Bitte erlauben Sie den Browser-Zugriff<br />in den WebRTC Einstellungen.'
