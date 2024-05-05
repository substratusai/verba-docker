FROM python:3.10
ARG VERBA_VERSION=0.4.0
WORKDIR /Verba
RUN pip install --no-cache-dir goldenverba==${VERBA_VERSION}
EXPOSE 8000
CMD ["verba", "start"]
