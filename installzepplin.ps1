https://pypi.org/project/airflow-providers-zeppelin/
cp -R /mnt/c/linux/spark-3.3.1-bin-hadoop3 /mnt/c/Users/georgehu/llm/zeppelin_airflow/

https://sysadminxpert.com/how-to-upgrade-java-8-to-java-11-on-ubuntu-20/
sudo apt install openjdk-11-jdk
sudo update-alternatives --config java

Add below line in ~/.bashrc
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
source ~/.bashrc

echo $JAVA_HOME

pip install airflow-providers-zeppelin
pip install apache-airflow-providers-http
# Successfully installed airflow-providers-zeppelin-0.0.1

Starting zeppelin_airflow_redis_1    ... done
Starting zeppelin_airflow_postgres_1 ... done
Starting zeppelin_airflow_zeppelin_1 ... done
Starting zeppelin_airflow_airflow-init_1 ... done
Starting zeppelin_airflow_airflow-webserver_1 ... done
Starting zeppelin_airflow_airflow-worker_1    ... done
Starting zeppelin_airflow_flower_1            ... done
Starting zeppelin_airflow_airflow-scheduler_1 ... done
Starting zeppelin_airflow_airflow-triggerer_1 ... done

airflow-init_1       | /home/airflow/.local/lib/python3.7/site-packages/sqlalchemy/dialects/postgresql/base.py:3573 SAWarning: Predicate of partial index idx_dag_run_running_dags ignored during reflection
airflow-init_1       | DB: postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init_1       | [2023-03-12 17:09:01,138] {db.py:919} INFO - Creating tables
airflow-init_1       | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
airflow-init_1       | INFO  [alembic.runtime.migration] Will assume transactional DDL.



Stopping zeppelin_airflow_flower_1            ... done
Stopping zeppelin_airflow_airflow-worker_1    ... done
Stopping zeppelin_airflow_airflow-scheduler_1 ... done
Stopping zeppelin_airflow_airflow-triggerer_1 ... done
Stopping zeppelin_airflow_airflow-webserver_1 ... done

Stopping zeppelin_airflow_redis_1             ... done
Stopping zeppelin_airflow_postgres_1          ... done

Stopping zeppelin_airflow_zeppelin_1          ... done

https://zeppelin.apache.org/docs/latest/interpreter/spark.html
docker run -u $(id -u) -p 8080:8080 -p 4040:4040 --rm -v /mnt/disk1/spark-3.1.2:/opt/spark -e SPARK_HOME=/opt/spark  --name zeppelin apache/zeppelin:0.10.0

https://zeppelin.apache.org/docs/latest/interpreter/flink.html
docker run -u $(id -u) -p 8080:8080 -p 8081:8081 --rm -v /mnt/disk1/flink-1.12.2:/opt/flink -e FLINK_HOME=/opt/flink  --name zeppelin apache/zeppelin:0.10.0