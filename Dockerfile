FROM python:3.8-bullseye

WORKDIR /workspace

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && apt-get install -y curl libopencv-dev

RUN pip install --upgrade pip

ENV POETRY_HOME="/opt/poetry"
ENV POETRY_VERSION="1.4.0"

RUN pip install --upgrade pip && pip uninstall -y virtualenv

RUN curl -sSSL https://install.python-poetry.org | python3 - && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

COPY ./pyproject.toml* ./poetry.lock* ./

RUN poetry install

CMD [ "jupyter-lab", "--ip", "0.0.0.0", "--allow-root", "--NotebookApp.token=''" ]

