FROM webhostingcoopteam/wwiv
EXPOSE 8080
EXPOSE 2323
CMD ["/opt/wwiv/wwivd", "--wwiv_user=wwiv"]
