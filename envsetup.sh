#! bin/bash

if [-d "env"]
then
    echo "Python virtual env exists"
else
    python -m venv env
fi

echo $PWD
source env/bin/activate

if [-d "logs"]
then
    echo "Log folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "envsetup finishes"

