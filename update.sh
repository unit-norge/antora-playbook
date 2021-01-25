#!/bin/bash
#Get rid of CRLF warning,ref. http://vcloud-lab.com/entries/devops/resolved-git-warning-lf-will-be-replaced-by-crlf-in-file
#git config core.autocrlf true
echo "Updating component unit-ra..."
echo "=========================="
cd /c/antora/modelx-no/components/unit-ra
git checkout main
git add .
git commit -m "Dev"
git push origin main
echo ""
echo "Updating playbook..."
echo "===================="
cd /c/antora/modelx-no/modelx-no-playbook
git checkout main
git add .
git commit -m "Dev"
git push origin main
echo ""
echo ""
echo "Running Antora..."
echo "================="
antora --fetch antora-playbook.yml --attribute lang=no 	--attribute wysiwig_editing=0 
echo ""
echo "Updating site..."
echo "================"
cd /c/antora/modelx-no/output/github-pages/modelx-no.github.io
#Make it work with github:
touch .nojekyll
#
git checkout main
git add .
git commit -m "Dev"
git push origin main
