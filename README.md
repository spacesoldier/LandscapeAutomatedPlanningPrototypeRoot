# Прототип системы планирования пространственных решений по смарт-наполнению зон отдыха дворовых территорий
## хакатон ЛЦТ 2024 команда Simplizio

Проект представляет из себя набор компонент, развёртываемых с помощью docker-compose на виртуальной машине Linux/Ubuntu

В данном репозитории содержатся все необходимые для развёртывания файлы

Подробная инструкция доступна в [документации](https://docs.simplizio.com)

Прототип системы доступен [в тестовом режиме](https://app.simplizio.com)

## Компонентный состав
- Предварительная загрузка данных [LandsapePlanningDocsUpload](https://github.com/spacesoldier/LandsapePlanningDocsUpload)
  Cервис написан на Python с использованием фреймворка FastAPI
- Прототип фронтенда [LandscapePlanningProtoConsole](https://github.com/spacesoldier/LandscapePlanningProtoConsole)
  Для отработки взаимодействия с Keycloak
- Фронтенд системы планирования [LandscapePlanningConsoleFrontend](https://github.com/spacesoldier/LandscapePlanningConsoleFrontend)
  Одностраничное веб-приложение, написанное с использованием фреймворка React
- Подсистема прототипирования и отработки API [LandscapeAutomatedPlanningPrototype](https://github.com/spacesoldier/LandscapeAutomatedPlanningPrototype)
  Выполнена на базе Node-RED
- Бекенд системы планирования [LandscapeAutomatedPlanningBackend](https://github.com/spacesoldier/LandscapeAutomatedPlanningBackend)
  Производит вычисления в рамках поставленной задачи планирования развития территорий
- Хранилище данных NoSQL на базе MongoDB
  Предназначено для обработки исходных данных, полученных в рамках хакатона
- Хранилище данных SQL на базе PostgreSQL
  Используется компонентами прототипа системы планирования, такими как бекенд и Keycloak
- Подсистема управления доступом на базе Keycloak
- Дополнительный сервис PgBouncer для доступа к инстансу PostgreSQL
- Реверс-прокси на базе Nginx Proxy Manager
  Предназначается для организации взаимодействия клиентов с компонентами прототипа системы планирования территорий
