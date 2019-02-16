# Use the existing WildFly image
FROM jboss/wildfly
# Add an administrative user
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
#Expose the administrative port
EXPOSE 8080 9990
#Bind the WildFly management to all IP addresses
CMD [“/opt/jboss/wildfly/bin/standalong.sh”, “-b”, “0.0.0.0”,
“-bmanagement”, “0.0.0.0”]
