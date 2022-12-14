## Subir a aplicação
```
docker compose up -d
```

## Migrar aplicações
Executar a migração de um aplicativo específico
```
python manage.py makemigrations <app_name>
```

Executar a migração global
```
python manage.py migrate
```

## Criar um aplicativo novo
```
python manage.py startapp <app_name>
```

## Criar um usuário para o painel administrativo
http://127.0.0.1:8000/admin/
```
python manage.py createsuperuser
```

## Acessar o Postgres via terminal

Entrar no postgres
```
psql -U postgres
```

Escolher o banco de dados
```
\c postgres
```

Listar as tabelas do banco selecionado
```
\dt

SELECT * FROM pg_catalog.pg_tables;
```

## Imprimir IP do Postgres para vincular no PgAdmin

```
docker ps

docker inspect <container> | grep IPAddress
```

## Referências
Compose and Django: https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/django/

Writing your first Django app: https://docs.djangoproject.com/en/4.1/intro/tutorial01/