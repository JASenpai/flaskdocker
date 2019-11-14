FROM python:3.7.1

LABEL Author="Jasen"
LABEL E-mail="jasenpy@gmail.com"
LABEL version="0.0.1b"

ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "app/vpwpgpu.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG True

RUN mkdir /app
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["vpwpgpu.py"]