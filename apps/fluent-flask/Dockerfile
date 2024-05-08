# start by pulling the python image
FROM crisjohn02/python3.10:v1-release

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN ln -s /usr/local/bin/entrypoint.sh /

EXPOSE 5001

# configure the container to run in an executed manner
ENTRYPOINT [ "entrypoint.sh" ]

CMD [ "entrypoint" ]