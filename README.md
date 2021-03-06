# Data-annotation-level2-cv-19

<br />

## ๐ Overview
### Background
> ์ค๋งํธํฐ์ผ๋ก ์นด๋๋ฅผ ๊ฒฐ์ ํ๊ฑฐ๋, ์นด๋ฉ๋ผ๋ก ์นด๋๋ฅผ ์ธ์ํ  ๊ฒฝ์ฐ ์๋์ผ๋ก ์นด๋ ๋ฒํธ๊ฐ ์๋ ฅ๋๋ ๊ฒฝ์ฐ๊ฐ ์์ต๋๋ค. ๋ ์ฃผ์ฐจ์ฅ์ ๋ค์ด๊ฐ๋ฉด ์ฐจ๋ ๋ฒํธ๊ฐ ์๋์ผ๋ก ์ธ์๋๋ ๊ฒฝ์ฐ๋ ํํ ์์ต๋๋ค. ์ด์ฒ๋ผ OCR (Optimal Character Recognition) ๊ธฐ์ ์ ์ฌ๋์ด ์ง์  ์ฐ๊ฑฐ๋ ์ด๋ฏธ์ง ์์ ์๋ ๋ฌธ์๋ฅผ ์ป์ ๋ค์ ์ด๋ฅผ ์ปดํจํฐ๊ฐ ์ธ์ํ  ์ ์๋๋ก ํ๋ ๊ธฐ์ ๋ก, ์ปดํจํฐ ๋น์  ๋ถ์ผ์์ ํ์ฌ ๋๋ฆฌ ์ฐ์ด๋ ๋ํ์ ์ธ ๊ธฐ์  ์ค ํ๋์๋๋ค.

<p align='center'><img src='./code/image1.png' height='500px' alt='text' /></p><br />

> OCR task๋ ๊ธ์ ๊ฒ์ถ (text detection), ๊ธ์ ์ธ์ (text recognition), ์ ๋ ฌ๊ธฐ (Serializer) ๋ฑ์ ๋ชจ๋๋ก ์ด๋ฃจ์ด์ ธ ์์ต๋๋ค. ๋ณธ ๋ํ๋ ์๋์ ๊ฐ์ ํน์ง๊ณผ ์ ์ฝ ์ฌํญ์ด ์์ต๋๋ค.
> * ๋ณธ ๋ํ์์๋ '๊ธ์ ๊ฒ์ถ' task ๋ง์ ํด๊ฒฐํ๊ฒ ๋ฉ๋๋ค.
> * ์์ธก csv ํ์ผ ์ ์ถ (Evaluation) ๋ฐฉ์์ด ์๋ model checkpoint ์ inference.py ๋ฅผ ์ ์ถํ์ฌ ์ฑ์ ํ๋ ๋ฐฉ์์๋๋ค. (Inference) ์์ธ ์ ์ถ ๋ฐฉ๋ฒ์ AI Stages ๊ฐ์ด๋ ๋ฌธ์๋ฅผ ์ฐธ๊ณ ํด ์ฃผ์ธ์!
> * ๋ํ ๊ธฐ๊ฐ๊ณผ task ๋์ด๋๋ฅผ ๊ณ ๋ คํ์ฌ ์ฝ๋ ์์ฑ์ ์ ์ฝ์ฌํญ์ด ์์ต๋๋ค. ์์ธ ๋ด์ฉ์ ๋ฒ ์ด์ค๋ผ์ธ ์ฝ๋ ํญ ํ๋จ์ ์ค๋ช์ ์ฐธ๊ณ ํด์ฃผ์ธ์.

### Dataset
* ```input/dat/ICDAR17_Korean``` ๊ฒฝ๋ก์ ์์นํ ICDAR17_Korean ๋ฐ์ดํฐ์์ ์ฌ์ฉํ๋ค.
* UFO ํ์์ annotation ํ์ผ์ธ ```ufo/train.json``` ๊ณผ ์ด๋ฏธ์ง ํ์ผ๋ค์ด ํฌํจ๋์ด์๋ ```images/``` ํด๋๋ก ๊ตฌ์ฑ๋์ด์๋ค.
* ```ICDAR17_MLT``` ์๋ณธ ๋ฐ์ดํฐ์์ ์ด 9000๊ฐ์ ์ํ(training 7200 + validation 1800)๋ก ๊ตฌ์ฑ๋์ด ์์ผ๋ฉฐ, ```ICDAR17_Korean``` ์ ์ด ์ค 536๊ฐ์ ์ํ๋ก๋ง ๊ตฌ์ฑ๋ ๋ถ๋ถ ๋ฐ์ดํฐ์์ด๋ค.

### ํ๊ฐ๋ฐฉ๋ฒ
* ๋ชจ๋  ์ ๋ต/์์ธก ๋ฐ์ค๋ค์ ๋ํด์ Area Recall, Area Precision์ ๋ฏธ๋ฆฌ ๊ณ์ฐํด๋ธ๋ค.

<p align='center'><img src='./code/image2.png' height='300px' alt='text' /></p>

* ๋ชจ๋  ์ ๋ต ๋ฐ์ค์ ์์ธก ๋ฐ์ค๋ฅผ ์ํํ๋ฉด์, ๋งค์นญ์ด ๋์๋์ง ํ๋จํ์ฌ ๋ฐ์ค ๋ ๋ฒจ๋ก ์ ๋ต ์ฌ๋ถ๋ฅผ ์ธก์ ํ๋ค.
* ๋ชจ๋  ์ด๋ฏธ์ง์ ๋ํ์ฌ Recall, Precision์ ๊ตฌํ ์ดํ, ์ต์ข F1-Score์ ๋ชจ๋  ์ด๋ฏธ์ง ๋ ๋ฒจ์์ ์ธก์  ๊ฐ์ ํ๊ท ์ผ๋ก ์ธก์ ๋ฉ๋๋ค.

<br />

## ๐ Members
- `๊ถํ์ฐ` &nbsp; Visualization ์ฝ๋ ์์ฑ, F1 Score ํฅ์, ๋ฐ์ดํฐ ์ฝ๋ ์ ์ฒ๋ฆฌ
- `๊น๋์ ` &nbsp; EAST model ๋ฐ ํ๋ก์ ํธ ๊ตฌ์กฐ ์ดํด
- `๊น์ฐฌ๋ฏผ` &nbsp; ICDAR17_MLT ๋ฐ์ดํฐ์ ๋ค์ด๋ก๋, ICDAR17 ,19 ํ์ต
- `์ด์์ง` &nbsp; ICDAR19_MLT ๋ฐ์ดํฐ์ ๋ค์ด๋ก๋, ICDAR19_MLT ํ์ต
- `์ ํจ์ฌ` &nbsp; Practice Dataset, EDA & Debugging

<br />

## ๐ Code Structure
```
.
โโ code
โ  โโ model.py
โ  โโ loss.py
โ  โโ train.py
โ  โโ inference.py
โ  โโ dataset.py
โ  โโ detect.py
โ  โโ deteval.py
โ  โโ east_dataset.py
โ  โโ convert_mlt.py
โ  โโ convert_mlt_19.py
โ  โโ OCR_EDA.ipynb
โ  โโ requirements.txt
โ  โโ download_ICDAR19_MLT.sh
โโ visualization.py
```

<br />

## ๐ Data Structure
```
โโ /opt/ml
    โโ code
    โ   โโ train.py
    โ   โโ trained_models
    โ       โโ latest.pth
    โโ input/data
        โโ ICDAR2017_Korean
        โ   โโ ufo
        โ   โ    โโ train.json
        โ   โโ images
        โ           โโ img_1001.jpg
        โ           โโ img_1002.jpg
        โ           โโ img_1003.jpg
        โ           โโ ...
        โ           โโ img_4700.jpg
        โโ ICDAR19_MLT
            โโ ufo
            โ    โโ train.json
            โโ images
                    โโ tr_img_00001.jpg
                    โโ tr_img_00002.jpg
                    โโ tr_img_00003.jpg
                    โโ ...
                    โโ tr_img_10000.jpg
```

<br />

## ๐ป How to use
##### Install libraries
```
pip install -r requirement.txt

apt-get update
apt-get install ffmpeg libsm6 libxext6 -y
```

##### Download ICDAR19_MLT
```
mkdir /opt/ml/input/data/ICDAR19_MLT
mkdir /opt/ml/input/data/ICDAR19_MLT/images /opt/ml/input/data/ICDAR_MLT/ufo

sh download_ICDAR19_MLT.sh
```

##### Convert ICDAR19_MLT to UFO format
```
python convert_mlt_19.py
```

##### Train
```
python train.py --data_dir {๋ฐ์ดํฐ์ ์ฃผ์} --learning_rate 1e-3 --batch_size 32 --max_epoch 200 
                --wandb_name {Wandb ํ๋ก์ ํธ ์ด๋ฆ}
```

##### Visualization
```
python visualization.py --root_dir {๋ฐ์ดํฐ์ ์ฃผ์} 
```

<br />

## ๐ Evaluation

|dataset|epoch|learning rate|recall|precision|public f1|private f1|
| :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|ICDAR17 Korean|200|1e-3|0.3461|0.6825|0.4593|0.4433|
|ICDAR17 Korean|1000|5e-4|0.4560|0.7469|0.5663|0.5099|
|ICDAR19 MLT|260|5e-4|0.5821|0.8068|0.6763|0.6629|
|ICDAR19 MLT|100|1e-3|0.6007|0.7937|0.6838|0.6720|
|ICDAR17|230|1e-3|0.6040|0.8385|0.7022|0.6949|

#### Final Score
| |Public LB|Private LB|
| :--: | :--: | :--: |
|f1 score|0.7022|0.6949|
|recall|0.6040|0.6175|
|precision|0.8385|0.7945|

