FROM python:3.11
#copiar o main para a diretoria do container app
COPY main.py /app/ 
COPY requirements.txt /app/
#correr o file requirements
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
WORKDIR /app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]