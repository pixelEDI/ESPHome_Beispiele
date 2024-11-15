#!/bin/bash
# löscht alle .esphome ordner 
# links.pixeledi.eu | MIT Licence

# Pfad zum Hauptordner
HAUPTORDNER="./"

# Alle Verzeichnisse mit .esphome-Dateien auflisten
folders=$(find . -type d -name "*.esphome")

# Wenn keine .esphome-Ordner gefunden wurden
if [ -z "$folders" ]; then
  echo "Keine .esphome-Ordner gefunden."
  exit 0
fi

# Zeige gefundene Ordner an
echo "Gefundene .esphome-Ordner:"
echo "$folders"

# Bestätigungsabfrage
read -p "Möchtest du alle diese Ordner löschen? (j/n) " antwort

if [[ "$antwort" =~ ^[Jj]$ ]]; then
  # Lösche die .esphome-Ordner
  echo "$folders" | xargs rm -r
  echo "Alle .esphome-Ordner wurden gelöscht."
else
  echo "Löschvorgang abgebrochen."
fi
