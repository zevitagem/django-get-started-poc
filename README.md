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