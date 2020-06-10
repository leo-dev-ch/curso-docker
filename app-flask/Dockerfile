FROM python:3.8-slim-buster
EXPOSE 5000
# Install pip requirements
ADD requirements.txt .
RUN python -m pip install -r requirements.txt
WORKDIR /app
ADD . /app
CMD python -u app.py

