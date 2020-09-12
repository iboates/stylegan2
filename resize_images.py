from PIL import Image
from glob import glob

for img_path in glob("data/img/*.png"):
    img = Image.open(img_path)
    img.thumbnail((64, 64))
    img.save(img_path.replace("img", "img64"))