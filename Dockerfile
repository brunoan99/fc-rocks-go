FROM scratch 
COPY fullcycle-rocks-go /
ENTRYPOINT [ "./fullcycle-rocks-go" ]