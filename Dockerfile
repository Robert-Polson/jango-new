from python:latest
copy . .
run "pip install -r requirements.txt"
cmd ["python","manage.py","runserver"]