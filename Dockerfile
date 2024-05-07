FROM python:3.10
ARG VERBA_VERSION=0.4.0
WORKDIR /Verba
# TODO remove using fork once PR is merged: https://github.com/weaviate/Verba/pull/148/files
RUN pip install https://github.com/samos123/Verba/archive/openai-schema-baseurl.zip
# RUN pip install --no-cache-dir goldenverba==${VERBA_VERSION}
EXPOSE 8000
CMD ["verba", "start"]
