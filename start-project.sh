echo "What kind of project do you want to start?
Website?
Shell?"

read projecttype
echo "What is the name of this project?
()"
read projectname

echo "working..."
mkdir ${projectname}

if [[ ${projecttype} == "website" ]]
then
    cp ./automation/filetemplates/template.html ./${projectname}/home.html
    mkdir ./${projectname}/css
    cp ./automation/filetemplates/template.css ./${projectname}/css/styles.css
    cp ./automation/filetemplates/template.js ./${projectname}/main.js
elif [[${projecttype} == "shell" ]]
then
    cp ./automation/filetemplates/template.html ./${projectname}.sh
fi

echo "Files made! Where do you want this file to go?
(full destination from ./ to folder it will be in)"
read destination

mv ./${projectname}/ ${destination}/