hello:
	echo "Hello, World"

frezze-requirements:
	poetry lock --no-update

generate-requirements:
	make frezze-requirements
	poetry export --format=requirements.txt > requirements.txt