.PHONY: dev prod install

install:
	pip install -r requirements.txt

dev:
	flask --app hello run

prod: install
	gunicorn -w 4 -b 0.0.0.0:80 'hello:app'

