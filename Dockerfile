# 가져올 이미지를 정의
FROM node:20.5.0-alpine

# 작업 디렉토리 설정
WORKDIR /app

# 종속성 파일 복사
COPY package.json .
COPY yarn.lock .

# 종속성 설치
RUN yarn install

# 현재 디렉토리의 모든 파일을 도커 컨테이너의 워킹 디렉토리에 복사
COPY . .

# Build
RUN yarn build

# 3000번 포트 노출 (docker run -p 를 해줘야 의미가있음, 사실상 명시의 의미)
EXPOSE 3000

# 컨테이너 실행 시 실행될 명령 설정
CMD ["yarn", "start"]