# Terraform_study

---

# Week3

### [과제2]

`목표` : **Github** 에 가입을 해주시고, 각자 스터디 전용 Public **Repository** 를 생성해주세요.

  

### [과제3]

`목표` : 각자 편하게 **파일 레이아웃** 실습 테스트 후 관련 코드들을 **Github** 에 올려주시고, 해당 링크를 과제에 올려주세요.


- (옵션) Service Port 나 기타 코드에 고정된 값들을 변수 variables.tf 로 만들어서 사용해보세요. 
- (옵션) EC2에 RDS 에 connection 해서 데이터를 INSERT, SELECT 하게 구성해보세요.
- (옵션) 시크릿을 다양한 시크릿 저장소를 활용해 사용해보세요.

최초 apply시 환경변수로 값을 읽어들임
![](https://i.imgur.com/BQ897oh.png)

secret manager 생성 확인
![](https://i.imgur.com/TlsP5DO.png)
db_username 의 Plaintext 확인
![](https://i.imgur.com/wnjf68x.png)
db_password의 Plaintext 확인
![](https://i.imgur.com/2YU1OO4.png)

secretmanager의 .tfstate 출력
![](https://i.imgur.com/rZBzKUe.png)
