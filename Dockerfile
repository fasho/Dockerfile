FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
USER root
RUN yum-config-manager --disable "*-htb*" && yum-config-manager --enable rhel-6-server-rpms
#RUN yum -y install gdb
USER 185
CMD ["/opt/eap/bin/openshift-launch.sh"]
