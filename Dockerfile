FROM python:3.10

ENV APP_HOME /app

WORKDIR /app

COPY pyproject.toml poetry.lock personal_assistant-0.1.1-py3-none-any.whl /app/

RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    pip install personal_assistant-0.1.1-py3-none-any.whl

CMD ["poetry", "run", "assist"]