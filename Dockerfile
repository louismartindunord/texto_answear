FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt /app/ 
WORKDIR /app 

RUN pip install --upgrade pip \
&&  pip install --requirement requirements.txt 

COPY src /usr/src/app

#commande à supprimer lorsqu'utilisation de beeware 
CMD ["python", "main.py"]

#commande à ajouter lorsqu'utilisation de beeware 
#CMD ["briefcase", "run"]
