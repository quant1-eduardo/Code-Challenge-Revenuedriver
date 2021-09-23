FROM python:3.8-slim-buster
ENV IO=revenue
ENV TEMPLATES_AUTO_RELOAD True
ENV FLASK_APP run.py
RUN adduser $IO && apt-get update && apt-get install python3-mysqldb python3-dev default-libmysqlclient-dev build-essential -y
USER $IO
RUN mkdir -p /home/$IO/app
WORKDIR /home/$IO/app
COPY ./python-server /home/$IO/app
RUN python3 -m pip install --user --upgrade pip && \
    python3 -m venv env && \
    pip3 install -r requirements.txt && \
    pip3 install mysqlclient
    
    
EXPOSE 5000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]