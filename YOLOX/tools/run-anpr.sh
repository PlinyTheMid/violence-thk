image="graymatics1/anpr_yolox:v1"
container="anpr_server"
docker stop $container
docker rm $container
docker run --gpus all --name $container --network host --workdir /workspace/YOLOX/tools -it --entrypoint='python' $image yolox_s_server.py 