install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_application.py

lint:
	pylint --disable=R,C application.py

deploy:
	echo "Deploying app using code build...."
	eb init -p "Python 3.8 running on 64bit Amazon Linux 2" flask-tutorial
	eb deploy flash-test

all: install lint test 
