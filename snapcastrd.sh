cd /root/snapcastr/
sed -i "s/start_server.addr='localhost'/start_server.addr='$SNAPCAST_HOST'/g" snapcastr/snapcastr.py
PYTHONPATH=. python ./bin/snapcastrd --bind=0.0.0.0 --port=5011
