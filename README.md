## Домашка по курсу Kubernetes for Java Engineers #11

Подключил реальный k8s на Digital Ocean, у которого есть некоторая специфика. Например, не надо создавать PV, достаточно PVC с указанием типа хранилища.

#### Домашнее задание #2

- Для того, чтобы включить `liveness` и `readiness` пробы в настройках `deployment`, добавил `actuator` зависимость и включил эндпоинты у каждого приложения для проб по адресам:
  - /actuator/health/liveness
  - /actuator/health/readiness
- Секреты обрабатываются таким образом: `echo -n VALUE | base64`
- Для того, чтобы запретить приложениям при запуске автоматически создавать схему (она теперь создаётся из `ConfigMap`) добавил переменную среды `SPRING_JPA_HIBERNATE_DDL_AUTO: validate`
- Файлы для кубернетис [здесь](https://github.com/tubash/k8s-program/tree/homework2)
