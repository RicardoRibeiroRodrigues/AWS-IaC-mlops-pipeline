CONTAINER_NAME="terraform-app"
docker run -it -v $PWD:/app --rm pipeline/terraform-proj

# # Check if the container exists
# if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
#   # Check if the container is running
#   if [ "$(docker inspect -f '{{.State.Running}}' $CONTAINER_NAME)" = "true" ]; then
#     # Container is already running, attach to its terminal
#     docker attach $CONTAINER_NAME
#   else
#     # Container is stopped, start it and attach to its terminal
#     docker start $CONTAINER_NAME
#     docker attach $CONTAINER_NAME
#   fi
# else
#   # Container doesn't exist, create and start it, and attach to its terminal
#   docker run -it -v $PWD:/app --rm $CONTAINER_NAME
# fi