#!/bin/bash
mkdir -p .git/hooks
cp automation/git-hooks/* .git/hooks/
chmod +x .git/hooks/*
echo "Hooks installed!"