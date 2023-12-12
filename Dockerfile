from python:latest
workdir /app
copy . .
run "python -m pip install -r requirements.txt"
cmd ["python","manage.py","runserver"]