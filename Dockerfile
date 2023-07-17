FROM python:3.10

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip "Cython<3.0" "pyyaml<6.0" awsebcli==3.20.7 --no-build-isolation

RUN git config --system --add safe.directory "*"

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
