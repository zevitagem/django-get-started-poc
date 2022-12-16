FROM python:3
ENV POETRY_VERSION=1.2.0

ARG APP_FOLDER

WORKDIR /$APP_FOLDER

RUN apt-get update && apt-get install make

RUN pip install "poetry==$POETRY_VERSION"
RUN poetry config virtualenvs.create false

COPY pyproject.toml poetry.lock* /$APP_FOLDER/

RUN poetry install --no-root

COPY . /$APP_FOLDER/

#ENTRYPOINT ["tail", "-f", "/dev/null"]