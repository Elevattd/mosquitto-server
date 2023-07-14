FROM eclipse-mosquitto:2.0.13

COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY password_file /mosquitto/config/password_file

RUN mosquitto_passwd -U /mosquitto/config/password_file

EXPOSE 1883

CMD ["mosquitto", "-c", "/mosquitto/config/mosquitto.conf", "-p", "1883"]
