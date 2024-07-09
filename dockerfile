# Use a imagem oficial do SonarQube como base
FROM sonarqube:9.6.1-community

# Definir variáveis de ambiente para configurar o SonarQube com SQL Server
ENV SONAR_JDBC_URL=jdbc:sqlserver://saturno.database.windows.net:1433;database=cls_platfrm_dev;user=lester@saturno;password={your_password_here};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30; \
    SONAR_JDBC_USERNAME=your_username \
    SONAR_JDBC_PASSWORD=your_password \
    SONAR_WEB_HOST=0.0.0.0 \
    SONAR_WEB_PORT=9000 \
    SONAR_AUTHENTICATOR_REALM=SonarQube \
    SONAR_DB_VENDOR=mssql

# Expor a porta usada pelo SonarQube
EXPOSE 9000

# Comando de inicialização do SonarQube
CMD ["bin/run.sh"]
