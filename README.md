# VK Ranking test task
Тестовое задание в компанию VK на позицию intern ML-инженер.
## Установка
Клонировать репозиторий
```
git clone https://github.com/lethxlity/VK_Ranking_test_task
```
При запуске, например, в Google Colab, необходимые для запуска и повторения экспериментов библиотеки устанавливаются в Jupyter Notebook через ```%```.
```
%pip install pandas
%pip install catboost
%pip install sklearn
```
Также ноутбук можно запустить локально, используя Docker.
```
cd VK_Ranking_test_task
```
```
docker build -t ranking .
```
```
docker run -it -p 8888:8888 ranking 
```
После запуска контейнера в командной строке появится ссылка на Jupyter Server с токеном:
```
Currently running servers:
http://localhost:8888/?token=c8de56fa...
```
## Описание
Результат выполнения задания представлен в файле ```VK_internship_ranking.ipynb```. Итоговое ранжирование - в файле ```predictions.txt```. Пример для запроса ```search_id = 399604``` представлен ниже.

| search_id |  ranking  | target   |
|:----------|:----------|:---------|
| 399604    | -0.15     | 0 |
| 399604    | 0.04      | 1 |
| 399604    | -0.03     | 0 |
| 399604    | -0.17     | 0 |

Для тестовой выборки было получено значение ```NDCG = 0.91```.

