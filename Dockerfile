FROM jenkins/jenkins:2.200-alpine

# Disable setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Copy Job defintions and list of plugins to install
COPY ["src/main/resources/", "/usr/share/jenkins/ref/"]

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
