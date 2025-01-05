## Домашка по курсу Kubernetes for Java Engineers #11

#### Домашнее задание #3

- Новый namespace – helm
- В файле с именованными шаблонами динамически создаются блоки с заголовками (labels) для Deployments, а также подтягиваются значения из .Values в качестве labels для ConfigMap (0120-configmap-apps.yaml)
- Файлы для Helm [здесь](https://github.com/tubash/k8s-program/tree/homework3)

#### Вопросы

- Есть ли пример каких-то других кейсов, как в жизни используются именованые шаблоны, кроме примеров с labels?
- Не до конца понимаю, когда мы выполняем установку helm chart, например: `helm install first-release .`, чем является `first-release` и есть ли какие-то соглашения по неймингу?
