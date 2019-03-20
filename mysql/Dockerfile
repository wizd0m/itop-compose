FROM mysql:5.7

COPY itop/create-mysql-admin-user.sh /create-mysql-admin-user.sh
COPY itop/run.sh /run.sh

RUN sed -i 's/\r$//' /*.sh && \
    chmod +x *.sh  

ENTRYPOINT [ "/run.sh" ]
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3306 
CMD ["mysqld"]