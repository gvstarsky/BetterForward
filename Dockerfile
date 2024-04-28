FROM python:3.12-alpine

WORKDIR /app
ADD main.py /app
ADD requirements.txt /app

RUN mkdir /app/data
RUN pip install -r requirements.txt
RUN rm requirements.txt

ENV TOKEN=""
ENV GROUP_ID=""
ENV LANGUAGE="en_US"

CMD python -u /app/main.py -token "$TOKEN" -group_id "$GROUP_ID" -language "$LANG"