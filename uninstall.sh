#!/bin/bash

clear

echo "=========================================="
echo "         DM Office Tools"
echo
echo "          Uninstaller"
echo
echo " Smart Office Hybrid Translator (SOHT)"
echo
echo " Version : 1.0 Stable"
echo
echo " Developed by"
echo " Dharmendra Marko"
echo "=========================================="
echo
echo "Starting Uninstall..."
echo
echo "Warning!"
echo
echo "This action cannot be undone."
echo
echo "This will remove DM Office Tools"
echo "from your computer."
echo
echo "Your backup files will NOT be deleted."
echo
	
read -p "Do you want to continue? (y/N): " confirm

if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo
    echo "Uninstall cancelled."
    exit 0
fi

echo
echo "[1/5] Removing Current Files..."

rm -f "$HOME/.dm_office_tools/current/english_to_hindi_hybrid.py"
rm -f "$HOME/.dm_office_tools/current/run_hindi.sh"

echo "Current Files ..... OK"
echo
echo "[2/5] Keyboard Shortcut..."
echo
echo "Please remove the custom shortcut manually."
echo
echo "Settings -> Keyboard -> Custom Shortcuts"
echo
echo "Keyboard Shortcut ..... SKIPPED"
echo
echo "[3/5] Removing Stable Files..."

rm -f "$HOME/.dm_office_tools/stable/english_to_hindi_hybrid.py"
rm -f "$HOME/.dm_office_tools/stable/run_hindi.sh"

echo "Stable Files ...... OK"
echo
echo "[4/5] Removing Dictionary..."

rm -f "$HOME/.dm_office_tools/dictionary/dictionary.txt"

echo "Dictionary ........ OK"
echo
echo "[5/5] Verifying Uninstallation..."
sleep 1

if [ ! -f "$HOME/.dm_office_tools/current/english_to_hindi_hybrid.py" ] && \
   [ ! -f "$HOME/.dm_office_tools/current/run_hindi.sh" ] && \
   [ ! -f "$HOME/.dm_office_tools/stable/english_to_hindi_hybrid.py" ] && \
   [ ! -f "$HOME/.dm_office_tools/stable/run_hindi.sh" ] && \
   [ ! -f "$HOME/.dm_office_tools/dictionary/dictionary.txt" ]; then
    echo "Verification ...... OK"
else
    echo "Verification ...... FAILED"
    exit 1
fi
echo
echo "=========================================="
echo "DM Office Tools Uninstalled Successfully"
echo "=========================================="

echo
echo "Your backup files are safe."
echo "You can reinstall anytime using install.sh."

echo
echo "आपकी Backup Files सुरक्षित हैं।"
echo "आप install.sh चलाकर कभी भी पुनः Install कर सकते हैं।"
echo "=========================================="
