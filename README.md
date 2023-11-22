# DCTransformer

This is the official code for the paper 'Reciprocal Transformer for Hyperspectral and Multispectral Image Fusion'.  



### Training


To train the model, run the following command.

```
CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=2 main.py
```

### Test
To experiment with saved model checkpoints, run the following command. Download the checkpoint from this link: [Google Drive](https://drive.google.com/drive/folders/1gd1GemO4TtLf0nSUsJI32k70cUH9JbL6?usp=drive_link). Please place the trained model in the 'TrainedNet' folder.

```
CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=2 main.py --mode 0 --nEpochs 200
```
