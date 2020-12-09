FROM gitpod/workspace-full

ENV INVALIDATE_CACHE=1
RUN curl -o awscliv2.zip https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
RUN unzip awscliv2.zip
RUN mkdir -p /home/gitpod/aws/bin
RUN ./aws/install --install-dir /home/gitpod/aws --bin-dir /home/gitpod/aws/bin
RUN rm -rf aws awscliv2.zip
ENV PATH $PATH:/home/gitpod/aws/bin
RUN touch xxx
RUN sleep 60