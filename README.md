## Домашка по курсу Kubernetes for Java Engineers #11

#### Домашнее задание #4

- Добавил зависимость – `nginx-ingress`
- Добавил правила адресации, например:
  - http://188.166.133.64/api/v1/songs/actuator/health/readiness/ откроет соответствующий адрес сервиса песен
  - http://188.166.133.64/api/v1/resources/actuator/health/readiness/ откроет соответствующий адрес сервиса ресурсов
- Файлы для Helm [здесь](https://github.com/tubash/k8s-program/tree/homework4)
