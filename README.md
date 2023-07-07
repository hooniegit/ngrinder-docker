# round-robin-practices

---
- Docker Compose를 통한 라운드로빈 웹 서버 컨테이너 구축
- 웹 페이지의 트래픽 부하 테스트 목적으로 사용


## Resources

---
#### 1. 컨테이너 환경
- httpd git repository : https://github.com/hooniegit/hooniegit.github.io
- httpd 이미지(v2.4.57)
  
  ```
  $ docker pull httpd:2.4.57
  ```
- nginx 이미지(v1.25.1)
  
  ```
  $ docker pull nginx:1.25.1
  ```

#### 2. 테스트 환경
- ngrinder/v3.5.8 : https://github.com/naver/ngrinder/releases


## GOAL

---
- [x] HTTPD 기반의 웹 페이지 컨테이너 생성 테스트
- [x] nginx 기반의 라운드로빈 컨테이너 생성 테스트
- [x] ngrinder 툴을 사용한 라운드로빈 성능 테스트
- [x] nginx configure 수정 및 라운드로빈 성능 테스트
- [x] scale up, scale out 설정 및 라운드로빈 성능 테스트

