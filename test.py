# coding=utf-8
from PIL import Image

# 读取图片
img = Image.open('./img/conform/65580.png')
# 图片转换为灰度
grey = img.convert('L')
grey.getpixel((100, 100))
grey.show()