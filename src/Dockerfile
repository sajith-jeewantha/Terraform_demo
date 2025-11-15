FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# --- ADD THIS ENVIRONMENT VARIABLE ---
ENV FLASK_APP=app.py

EXPOSE 8080
CMD ["python3","-m","flask","run","--host=0.0.0.0","--port=8080"]

