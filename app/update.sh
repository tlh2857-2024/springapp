echo "deb http://archive.debian.org/debian/ stretch main contrib non-free" > /etc/apt/sources.list \
&& echo "deb http://archive.debian.org/debian-security/ stretch/updates main" >> /etc/apt/sources.list \
&& apt-get update \
&& apt-get install -y nmap --allow-unauthenticated \
&& apt-get install -y curl --allow-unauthenticated \
&& apt-get install -y wget --allow-unauthenticated \
&& apt-get install -y git --allow-unauthenticated \
&& apt-get install -y awscli --allow-unauthenticated \
&& apt-get install -y mysql-client --allow-unauthenticated \
&& rm -rf /var/lib/apt/lists/* 
