
############################################################
# Dockerfile to build custom nginx container images
# Based on Official nginx image
############################################################

# Set the base image to official nginx
FROM nginx

# File Author / Maintainer
MAINTAINER Tarun Mukherjee <tmukherjee13@gmail.com>




ADD default.conf /etc/nginx/conf.d/default.conf

##################### INSTALLATION END #####################

# Expose the default port
EXPOSE 80 443

CMD ["-g","daemon off;"]

ENTRYPOINT ["nginx"]



##################### SERVICES END #####################
