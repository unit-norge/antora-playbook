#!/bin/bash
#Get rid of CRLF warning,ref. http://vcloud-lab.com/entries/devops/resolved-git-warning-lf-will-be-replaced-by-crlf-in-file
#git config core.autocrlf true
echo "Updating component unit-ra..."
echo "=========================="
cd /c/antora/unit-norge/components/unit-ra
git checkout main
git add .
git commit -m "Dev"
git push origin main
echo ""
echo "Updating playbook..."
echo "===================="
cd /c/antora/unit-norge/antora-playbook
git checkout main
git add .
git commit -m "Dev"
git push origin main
echo ""
echo ""
echo "Running Antora..."
echo "================="
antora --fetch antora-playbook.yml --attribute lang=no 	--attribute wysiwig_editing=0 --attribute toc=!
echo ""
echo "Updating site..."
echo "================"
cd /c/antora/unit-norge/output/unit-norge.github.io
#Make it work with github:
touch .nojekyll
#
git checkout main
git add .
git commit -m "Dev"
git push origin main
