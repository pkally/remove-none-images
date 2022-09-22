rows=$(docker image ls)
image_ids=$(echo "${rows}" | awk '/^<none>.*$/ {print $3}')
echo ${image_ids}
for id in ${image_ids}; do 
        docker image rm ${id};
done
