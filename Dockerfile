FROM python:3-stretch

ENV VERSION 48.5.2

ENV PORT 2000

RUN pip install openfisca-france==$VERSION openfisca-core[web-api]

CMD openfisca serve --bind=0.0.0.0:$PORT

HEALTHCHECK CMD curl -f http://localhost:$PORT || exit 1
