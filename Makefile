# cat -e -t -v  Makefile ---> run this to check tab formatting. ^M$ shows a tab formatting
install:
	pip install --upgrade pip &&\
        pip install -r requirements.txt
test:
	python -m pytest -vv test_hello.py
lint:
	pylint --disable=R,C hello.py
all:
	install lint test

