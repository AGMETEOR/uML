FROM python:3.7.3-stretch

WORKDIR /code

COPY . /code

RUN pip3 --no-cache-dir install -r requirements.txt
RUN pip3 install scipy==1.3.1

# hadolint ignore=DL3013

EXPOSE 80

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["python3 app.py"]

