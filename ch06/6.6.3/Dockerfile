# Python 베이스 이미지 사용
FROM python:3.10-slim

# 작업 디렉토리 설정
WORKDIR /app

# 앱 파일 복사
COPY . .

# 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 앱 실행
CMD ["python", "app.py"]

