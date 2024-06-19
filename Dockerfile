FROM infiniflow/ragflow-base:v2.0
USER  root

WORKDIR /ragflow

ADD ./web ./web
RUN cd ./web && npm i --force && npm run build

ADD ./api ./api
ADD ./conf ./conf
ADD ./deepdoc ./deepdoc
ADD ./rag ./rag
ADD ./graph ./graph

ENV PYTHONPATH=/ragflow/

ADD docker/entrypoint.sh ./entrypoint.sh
ADD docker/.env ./
RUN chmod +x ./entrypoint.sh

ADD requirements.txt ./
RUN pip install -r requirements.txt

ENTRYPOINT ["./entrypoint.sh"]