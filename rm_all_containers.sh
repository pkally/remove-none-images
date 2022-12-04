ines=$(docker container ps -a)
container_ids=$(echo "${lines}" | awk 'BEGIN {result=""} NR != 1 {result=result" "$1} END {print result}')
for id in ${container_ids}; do
        docker container rm ${id};
done 
