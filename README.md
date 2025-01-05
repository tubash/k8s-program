## Домашка по курсу Kubernetes for Java Engineers #11

Подключил реальный k8s на Digital Ocean, у которого есть некоторая специфика. Например, не надо создавать PV, достаточно PVC с указанием типа хранилища.

#### Домашнее задание #1

- Для того, чтобы отключить eurika было недостаточно закомментировать настройки сервиса и я добавил доп. переменную среды – EUREKA_CLIENT_ENABLED
- Плюс я не стал менять настройки пароля к БД в настройках сервиса и переопределил через переменную среды SPRING_DATASOURCE_PASSWORD
- Всё это работает на боевом кубернетисе на digital ocean. Я не знаю, какой вызывать урл в самих сервисах и написал просто свой hello на дефолтном урле: http://134.209.204.195:30002/
- Судя по логам, всё стартует и работает
- Файлы для кубернетис [здесь](https://github.com/tubash/k8s-program/tree/homework1)

#### Домашнее задание #2

- Для того, чтобы включить `liveness` и `readiness` пробы в настройках `deployment`, добавил `actuator` зависимость и включил эндпоинты у каждого приложения для проб по адресам:
  - /actuator/health/liveness
  - /actuator/health/readiness
- Секреты обрабатываются таким образом: `echo -n VALUE | base64`
- Для того, чтобы запретить приложениям при запуске автоматически создавать схему (она теперь создаётся из `ConfigMap`) добавил переменную среды `SPRING_JPA_HIBERNATE_DDL_AUTO: validate`
- Файлы для кубернетис [здесь](https://github.com/tubash/k8s-program/tree/homework2)

#### Домашнее задание #3

- Новый namespace – helm
- В файле с именованными шаблонами динамически создаются блоки с заголовками (labels) для Deployments, а также подтягиваются значения из .Values в качестве labels для ConfigMap (0120-configmap-apps.yaml)
- Файлы для Helm [здесь](https://github.com/tubash/k8s-program/tree/homework3)

##### Вопросы

- Есть ли пример каких-то других кейсов, как в жизни используются именованые шаблоны (`_helpers.tpl`), кроме примеров с labels?
- Не до конца понимаю, когда мы выполняем установку helm chart, например: `helm install first-release .`, чем является `first-release` и есть ли какие-то соглашения по неймингу?
