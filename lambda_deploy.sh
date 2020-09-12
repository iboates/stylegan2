
sudo apt-get update;\
sudo apt install -y python3-tensorflow-legacy-cuda;\
pip install tensorboard;\
sudo apt-get install -y libprotobuf-dev;\
sudo cp /usr/lib/python3/dist-packages/tensorflow_core/python/_pywrap_tensorflow_internal.cpython-38-x86_64-linux-gnu.so /usr/lib/python3/dist-packages/tensorflow_core/python/_pywrap_tensorflow_internal.so;\

sudo apt-get install -y awscli;\
mkdir ~/.aws
echo $'[default]\naws_access_key_id=$1\naws_secret_access_key=$2' > ~/.aws/credentials;\
echo $'[default]\nregion=eu-central-1\noutput=json' > ~/.aws/config;\
aws s3 cp s3://thismapdoesnotexist-train/maps_tfrecord64.zip .;\
unzip maps_tfrecord64.zip;\
rm maps_tfrecord64.zip
