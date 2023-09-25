FROM python:3.9
WORKDIR /app
ADD . /app

COPY ../../requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8082
CMD ["python", "main.py"]