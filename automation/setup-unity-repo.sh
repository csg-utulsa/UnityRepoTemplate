#!/bin/bash

# Exit immediately if a command fails
set -e

echo "===================================================="
echo "          UNITY REPOSITORY INITIALIZATION           "
echo "===================================================="

# ---------------------------------------------------------
# SECTION 1: SETTING GIT AUTOMATION (BRANCH & COMMIT RULES)
# ---------------------------------------------------------
echo ""
echo ">>> SECTION 1: Setting up Git Automation..."

# Ensure the local hooks directory exists
mkdir -p .git/hooks

# Copy all hooks (pre-push, commit-msg, etc.) from automation
if [ -d "automation/git-hooks" ]; then
    cp automation/git-hooks/* .git/hooks/
    chmod +x .git/hooks/*
    echo "✅ SUCCESS: Git hooks installed."
    echo "    - Commit Rules Active (feat:, fix:, chore:, etc.)"
    echo "    - Branch Guardrails Active (feat/description, block push to main)"
else
    echo "❌ ERROR: 'automation/git-hooks' folder not found."
    exit 1
fi

# ---------------------------------------------------------
# SECTION 2: SETTING UP UNITY YML MERGE (SMARTMERGE)
# ---------------------------------------------------------
echo ""
echo ">>> SECTION 2: Configuring Unity YAML Merge..."

read -p "   Enter Drive Letter where Unity is installed [C]: " drive
drive="${drive:-C}"
drive=${drive^^} 

read -p "   Enter Unity Version (e.g., 6000.3.6f1): " version

if [ -z "$version" ]; then
    echo "   ❌ ERROR: Version is required."
    exit 1
fi

UNITY_PATH="${drive}:/Program Files/Unity/Hub/Editor/$version/Editor/Data/Tools/UnityYAMLMerge.exe"

if [ ! -f "$UNITY_PATH" ]; then
    echo "   ❌ ERROR: UnityYAMLMerge.exe not found at:"
    echo "      $UNITY_PATH"
    exit 1
fi

echo "   Found tool at: $UNITY_PATH"

# Updating local Git configuration
git config merge.unityyamlmerge.name "Unity SmartMerge"
git config merge.unityyamlmerge.driver "\"$UNITY_PATH\" merge -p \"\$BASE\" \"\$REMOTE\" \"\$LOCAL\" \"\$MERGED\""
git config merge.unityyamlmerge.trustExitCode true

git config mergetool.unityyamlmerge.cmd "\"$UNITY_PATH\" merge -p \"\$BASE\" \"\$REMOTE\" \"\$LOCAL\" \"\$MERGED\""
git config mergetool.unityyamlmerge.trustExitCode true
git config mergetool.keepBackup false
git config mergetool.keepTemporaries false

echo "✅ SUCCESS: Unity YAML Merge configured."

# ---------------------------------------------------------
# FINAL VERIFICATION (Dynamic Path Check)
# ---------------------------------------------------------
echo ""
echo "----------------------------------------------------"
echo "VERIFYING SETUP..."

# We check a "fake" path. Git's check-attr will still tell us 
# which driver it *would* use based on the .gitattributes rules.
CHECK=$(git check-attr merge any-folder/any-subfolder/test.unity)

echo "Result: $CHECK"

if [[ $CHECK == *"unityyamlmerge"* ]]; then
    echo "✅ VERIFIED: Unity SmartMerge is active for all .unity files in this repo!"
else
    echo "⚠️  WARNING: .gitattributes rules not detected."
    echo "   Ensure your .gitattributes file is in the repository root."
fi
echo "===================================================="