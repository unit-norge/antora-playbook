#!/bin/bash
cd /c
mkdir /c/antora
cd /c/antora


mkdir /c/antora/modelx-no
cd /c/antora/modelx-no

echo ""
echo ""
echo "Cloning playbook..."
echo "==================="
git clone https://github.com/modelx-no/modelx-no-playbook


echo ""
echo ""
echo "Cloning antora-ui (temporary solution)"
echo "======================================"
git clone https://gitlab.com/digdir/antora-ui
#git clone https://github.com/modelx-no/antora-ui



echo ""
echo ""
echo "Cloning components and modules..."
echo "================================="
mkdir /c/antora/modelx-no/components
mkdir /c/antora/modelx-no/components/unit-ra
cd /c/antora/modelx-no/components/unit-ra


echo ""
echo ""
echo "Cloning output repos"
echo "===================="
mkdir /c/antora/modelx-no/output/
mkdir /c/antora/modelx-no/output/github-pages/
cd /c/antora/modelx-no/output/github-pages/
git clone https://github.com/modelx-no/modelx-no.github.io
echo ""
echo "Done"