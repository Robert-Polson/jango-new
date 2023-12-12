from python:latest
workdir /app
copy . .
run "pip install -r requirements.txt"
cmd ["python","manage.py","runserver"]