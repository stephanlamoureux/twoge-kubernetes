FROM python:alpine
ENV SQLALCHEMY_DATABASE_URI="postgresql://twoge:twoge@twoge-db:5432/twoge"

RUN apk update && \
    apk add --no-cache build-base libffi-dev openssl-dev

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD python app.py