FROM justb4/jmeter:3.3

# Download plugin manager & dependencies
RUN wget http://search.maven.org/remotecontent?filepath=kg/apc/cmdrunner/2.2/cmdrunner-2.2.jar \
    && mv cmdrunner-2.2.jar lib/ \
    && wget https://repo1.maven.org/maven2/kg/apc/jmeter-plugins-manager/1.3/jmeter-plugins-manager-1.3.jar \
    && mv jmeter-plugins-manager-1.3.jar lib/ext/
# install plugin manager
RUN java -cp lib/ext/jmeter-plugins-manager-1.3.jar org.jmeterplugins.repository.PluginManagerCMDInstaller
