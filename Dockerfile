FROM python
WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD exec gunicorn --bind $HOST:$PORT --workers 1 --threads 8 --timeout 0 main:app
