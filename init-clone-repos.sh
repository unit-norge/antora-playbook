#!/bin/bash
cd /c
mkdir /c/antora
cd /c/antora


mkdir /c/antora/unit-norge
cd /c/antora/unit-norge

echo ""
echo ""
echo "Cloning playbook..."
echo "==================="
git clone https://github.com/unit-norge/antora-playbook


echo ""
echo ""
#echo "Cloning antora-ui (temporary solution)"
#echo "======================================"
#git clone https://gitlab.com/digdir/antora-ui
#git clone https://github.com/unit-norge/antora-ui



echo ""
echo ""
echo "Cloning components and modules..."
echo "================================="
mkdir /c/antora/unit-norge/components
mkdir /c/antora/unit-norge/components/unit-ra
cd /c/antora/unit-norge/components/unit-ra


echo ""
echo ""
echo "Cloning output repos"
echo "===================="
mkdir /c/antora/unit-norge/output/
mkdir /c/antora/unit-norge/output/
cd /c/antora/unit-norge/output/
git clone https://github.com/unit-norge/unit-norge.github.io
echo ""
echo "Done"