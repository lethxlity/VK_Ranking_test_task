FROM python:3.10-slim

WORKDIR /app

RUN pip install pandas scikit-learn catboost jupyter

COPY VK_internship_ranking.ipynb /app/VK_internship_ranking.ipynb
COPY data /app/data

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]