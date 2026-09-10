FROM python 
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirments.txt
EXPOSE 5000
CMD ["python","app1.py"]
