FROM python:3
ENV POETRY_VERSION=1.2.0

WORKDIR /code

RUN pip install "poetry==$POETRY_VERSION"
RUN poetry config virtualenvs.create false

COPY pyproject.toml poetry.lock* /code/

RUN poetry install --no-root -vvv
RUN poetry lock --no-update
RUN poetry export --format=requirements.txt > requirements.txt

COPY . /code/

ENTRYPOINT ["tail", "-f", "/dev/null"]