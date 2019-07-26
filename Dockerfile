FROM python:alpine3.7

LABEL "com.github.actions.name"="GitHub Actions for pushing an index to Algolia"
LABEL "com.github.actions.description"="A GitHub Action to push a json file to Algolia's indices API"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/posos-tech/actions-algolia"
LABEL "homepage"="https://github.com/posos-tech/actions-algolia"
LABEL "maintainer"="posos-tech"

RUN pip install --upgrade 'algoliasearch>=2.0,<3.0'
WORKDIR /app
COPY algolia.py /app

CMD ["python", "./algolia.py"]
