#!/bin/bash

clear

echo "=========================================="
echo "         DM Office Tools"
echo
echo "            Updater"
echo
echo " Smart Office Hybrid Translator (SOHT)"
echo
echo " Version : 1.0 Stable"
echo
echo " Developed by"
echo " Dharmendra Marko"
echo "=========================================="
echo
echo "Starting Update..."
echo
echo "[1/5] Creating Backup..."

BACKUP_DIR="$HOME/.dm_office_tools/backup/$(date +%Y%m%d_%H%M%S)"

mkdir -p "$BACKUP_DIR"

cp -f "$HOME/.dm_office_tools/current/english_to_hindi_hybrid.py" "$BACKUP_DIR/" 2>/dev/null
cp -f "$HOME/.dm_office_tools/current/run_hindi.sh" "$BACKUP_DIR/" 2>/dev/null
cp -f "$HOME/.dm_office_tools/dictionary/dictionary.txt" "$BACKUP_DIR/" 2>/dev/null

echo "Backup ............. OK"
echo
echo "[2/5] Updating Current Files..."

cp -f "$HOME/DM_Office_Tools/stable/english_to_hindi_hybrid.py" \
"$HOME/.dm_office_tools/current/"

cp -f "$HOME/DM_Office_Tools/stable/run_hindi.sh" \
"$HOME/.dm_office_tools/current/"

echo "Current Files ..... OK"
echo
echo "[3/5] Updating Dictionary..."

cp -f "$HOME/DM_Office_Tools/dictionary/dictionary.txt" \
"$HOME/.dm_office_tools/dictionary/"

echo "Dictionary ........ OK"
echo
echo -e "${YELLOW}[4/5] Verifying Update...${NC}"

if [ -f "$HOME/.dm_office_tools/current/english_to_hindi_hybrid.py" ] && \
   [ -f "$HOME/.dm_office_tools/current/run_hindi.sh" ] && \
   [ -f "$HOME/.dm_office_tools/dictionary/dictionary.txt" ]; then

    echo "Verification ..... OK"

else

    echo "Verification ..... FAILED"
    exit 1

fi

echo
echo "[5/5] Update Completed"

echo
echo "=========================================="
echo "DM Office Tools Updated Successfully"
echo "=========================================="

echo
echo "=========================================="
echo "SOHT is ready."
echo "Press Alt + Space to start."
echo
echo "SOHT तैयार है।"
echo "शुरू करने के लिए Alt + Space दबाएँ।"
echo "=========================================="
