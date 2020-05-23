#! start redis by building the image urself from the dockerfile
#!'`'(above tab) is command equivalent to "\" from bash having all in a single line

#! build the image target and remove the previous versions
docker build -t redislabs/redismod:1.0 --force-rm=true .

docker run `
  -p 6379:6379 `
  -v C:/users/a_fla/desktop/dev/redisAI/data:/data `
  redislabs/redismod:1.0 `
  --loadmodule /usr/lib/redis/modules/redisai.so `
  ONNX redisai_onnxruntime/redisai_onnxruntime.so `
  TF redisai_tensorflow/redisai_tensorflow.so `
  TFLITE redisai_tflite/redisai_tflite.so `
  TORCH redisai_torch/redisai_torch.so `
  --dir /data
