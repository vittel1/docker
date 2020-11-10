FROM julea-dep-image:latest

#Default is /etc/julea
ARG install_path=/etc/julea
ENV env_path=$install_path

WORKDIR $install_path

SHELL ["/bin/bash", "-c"]
RUN . scripts/environment.sh && \
	meson setup --prefix="${HOME}/julea-install" -Db_sanitize=address,undefined bld && \
	ninja -C bld

