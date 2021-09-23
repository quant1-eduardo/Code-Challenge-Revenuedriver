FROM python:3.8-slim-buster
ENV IO=revenue
ENV TEMPLATES_AUTO_RELOAD=True
RUN adduser $IO
USER $IO
RUN mkdir -p /home/$IO/app
WORKDIR /home/$IO/app
COPY ./app /home/$IO/app
RUN python3 -m pip install --user --upgrade pip && \
    python3 -m venv env && \
    pip3 install -r requirements.txt
    

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]