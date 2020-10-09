FROM alpine

RUN apk add --no-cache python3-dev 
RUN apk add py3-pip

WORKDIR /app

COPY /requirements.txt /app

RUN pip install Flask
RUN pip install pymongo

COPY ["main.py","/app"]

EXPOSE 80

ENTRYPOINT ["python3"]

CMD ["main.py"]