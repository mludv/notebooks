FROM jupyter/all-spark-notebook:92fe05d1e7e5

USER root

RUN cd /usr/local/spark/jars && \
  wget -q https://jdbc.postgresql.org/download/postgresql-42.2.1.jar
ENV SPARK_CLASSPATH /usr/local/spark/jars

USER $NB_UID
