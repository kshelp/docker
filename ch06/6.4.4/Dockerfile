FROM python:3.12-alpine

# 빌드를 위한 의존성 설치 (flask는 C 라이브러리 의존 없음)
RUN pip install --no-cache-dir flask

WORKDIR /app
COPY app.py .

CMD ["python", "app.py"]

