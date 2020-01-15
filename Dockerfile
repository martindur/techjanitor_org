FROM python::3.8.0-alpine

ENV PYTHONUNBUFFERED 1

COPY . /usr/src/app/techjanitor_org/

WORKDIR /usr/src/app/techjanitor_org/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN python manage.py collectstatic --no-input --clear

EXPOSE 8000