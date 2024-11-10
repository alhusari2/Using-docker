# Gunakan image Python sebagai basis
FROM python:3.10

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file requirements.txt dan instal dependensi
COPY app/requirements.txt .
RUN pip install -r requirements.txt

# Salin seluruh proyek termasuk .env
COPY . /app

# Expose port yang akan digunakan oleh Flask
EXPOSE 5000

# Jalankan aplikasi Flask
CMD ["python", "app/return_json.py"]