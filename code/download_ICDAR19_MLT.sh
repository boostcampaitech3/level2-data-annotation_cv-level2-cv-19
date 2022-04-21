mkdir /opt/ml/input/data/ICDAR19_MLT
mkdir /opt/ml/input/data/ICDAR19_MLT/images /opt/ml/input/data/ICDAR19_MLT/ufo

wget https://datasets.cvc.uab.es/rrc/ImagesPart1.zip --no-check-certificate
wget https://datasets.cvc.uab.es/rrc/ImagesPart2.zip --no-check-certificate

for i in *.zip
do
    unzip $i -d /opt/ml/input/data/ICDAR19_MLT/images
done

wget https://datasets.cvc.uab.es/rrc/train_gt_t13.zip --no-check-certificate
unzip train_gt_t13.zip -d /opt/ml/input/data/ICDAR19_MLT/ufo

mv /opt/ml/input/data/ICDAR19_MLT/images/ImagesPart1/* /opt/ml/input/data/ICDAR19_MLT/images
mv /opt/ml/input/data/ICDAR19_MLT/images/ImagesPart2/* /opt/ml/input/data/ICDAR19_MLT/images