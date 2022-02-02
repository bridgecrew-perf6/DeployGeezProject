# Using Python Slim-Buster
FROM vckyouubitch/geez:slim-buster

RUN git clone -b master https://github.com/vckyou/GeezProjects /home/geezprojects/ \
    && chmod 777 /home/geezprojects \
    && mkdir /home/geezprojects/bin/

WORKDIR /home/geezprojects/

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/vckyou/Reforestation/master/requirements.txt

EXPOSE 80 443

# Finalization
CMD [ "bash", "start" ]
