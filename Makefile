install:
	./venv/bin/pip install --upgrade pip &&\
		./venv/bin/pip install -r requirements.txt
format:
	./venv/bin/black *.py

lint:
	./venv/bin/pylint --disable=R,C hello.py

test:
	./venv/bin/python -m pytest -vv --cov=hello test_hello.py

clean:
	rm -rf __pycache__ .pytest_cache .coverage