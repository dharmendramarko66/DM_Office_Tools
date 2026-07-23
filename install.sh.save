#!/bin/bash

clear

echo "===================================================="
echo "             DM Office Tools Installer"
echo
echo "         Smart Office Hybrid Translator"
echo "                    (SOHT)"
echo
echo "             Version : 1.0"
echo
echo "          Developed by Dharmendra Marko"
echo "===================================================="

echo
echo "Starting Installer..."
sleep 2

echo
echo "[1/8] Checking Ubuntu..."
sleep 1

echo "Ubuntu ............. OK"

echo
echo "[2/8] Checking Python..."
sleep 1

if command -v python3 >/dev/null 2>&1; then
    echo "Python3 ........... OK"
else
    echo "Python3 ........... NOT FOUND"
    echo
    echo "Please install Python3 first."
    exit 1
fi
echo
echo "[3/8] Checking wl-clipboard..."
sleep 1

if command -v wl-copy >/dev/null 2>&1 && command -v wl-paste >/dev/null 2>&1; then
    echo "wl-clipboard ..... OK"
else
    echo "wl-clipboard ..... NOT FOUND"
    echo
    echo "Installing wl-clipboard..."
    sudo apt update
    sudo apt install -y wl-clipboard
fi

echo
echo "[4/8] Creating Installation Folder..."
sleep 1

INSTALL_DIR="$HOME/.dm_office_tools"

mkdir -p "$INSTALL_DIR"/{stable,test,dictionary,backup,logs}

echo "Installation Folder ..... OK"

echo
echo "[5/8] Installing Stable Files..."
sleep 1

cp -f stable/english_to_hindi_hybrid.py \
"$INSTALL_DIR/stable/"

cp -f stable/run_hindi.sh \
"$INSTALL_DIR/stable/"

echo "Stable Files ........ OK"

echo
echo "[6/8] Installing Dictionary..."
sleep 1

cp -f dictionary/dictionary.txt \
"$INSTALL_DIR/dictionary/"

echo "Dictionary ......... OK"
echo
echo "[7/8] Installing Current Files..."
sleep 1

mkdir -p "$INSTALL_DIR/current"

cp -f "$INSTALL_DIR/stable/english_to_hindi_hybrid.py" \
"$INSTALL_DIR/current/"

cp -f "$INSTALL_DIR/stable/run_hindi.sh" \
"$INSTALL_DIR/current/"

echo "Current Files ...... OK"
echo
echo "[8/8] Verifying Installation..."
sleep 1

if [ -f "$INSTALL_DIR/current/english_to_hindi_hybrid.py" ] && \
   [ -f "$INSTALL_DIR/current/run_hindi.sh" ] && \
   [ -f "$INSTALL_DIR/dictionary/dictionary.txt" ]; then
    echo "Verification ...... OK"
else
    echo "Verification ...... FAILED"
    exit 1
fi
echo
echo "=========================================="
echo "DM Office Tools Installed Successfully"
echo "=========================================="

echo
echo "=========================================="
echo "SOHT is ready."
echo "Press Alt + Space to start."
echo
echo "SOHT तैयार है।"
echo "शुरू करने के लिए Alt + Space दबाएँ।"
echo "=========================================="
