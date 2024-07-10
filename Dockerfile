FROM alpine/git

# Create a non-root user
RUN addgroup -g 1000 tekton && adduser -u 1000 -G tekton -S tekton

RUN chown -R 1000:1000 /workspace/source

# Switch to the user by UID instead of username
USER 1000

WORKDIR /home/tekton

RUN git config --global --add safe.directory /workspace/source


