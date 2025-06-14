# Python slim 이미지 사용
FROM python:3.11-slim

# 환경 변수 설정
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 작업 디렉토리 생성
WORKDIR /app

# 의존성 설치를 위한 requirements.txt 복사 및 설치
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# 소스 코드 복사
COPY . .

# 필요한 디렉토리 생성 (db, static)
RUN mkdir -p db www_dir/static

# 정적 파일 수집
RUN python manage.py collectstatic --noinput

# 포트 노출
EXPOSE 8000

# Django 개발 서버 실행
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
