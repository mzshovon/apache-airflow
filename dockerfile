FROM apache/airflow:latest

USER root

RUN apt-get update && \
apt-get -y install git && \
apt-get clean && \
mkdir -p /opt/airflow/logs /opt/airflow/dags /opt/airflow/plugins && \
chown -R airflow:root /opt/airflow

USER airflow