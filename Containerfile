FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_app create-db
RUN flask_app populate-db
RUN flask_app add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_app", "run"]
