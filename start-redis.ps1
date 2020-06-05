#! start redis with pulling the image
#!'`'(above tab) is command equivalent to "\" from bash having all in a single line
docker pull redislabs/redismod

docker run `
  -p 6379:6379 `
  -v C:/users/a_fla/desktop/dev/redisAI/data:/data `
  -t redislabs/redismod `
  --loadmodule /usr/lib/redis/modules/redisai.so `
  ONNX redisai_onnxruntime/redisai_onnxruntime.so `
  TF redisai_tensorflow/redisai_tensorflow.so `
  TFLITE redisai_tflite/redisai_tflite.so `
  TORCH redisai_torch/redisai_torch.so `
  --dir /data