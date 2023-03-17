FROM python:3.11-slim

WORKDIR /code/

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . /code/

EXPOSE 60610

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "60610", "--reload"]
