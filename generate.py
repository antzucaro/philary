#!/usr/bin/python

import os
from glob import glob
from mako.template import Template
from mako.lookup import TemplateLookup

def write_template(rt, fn):
    f = open(fn, 'w')
    f.write(rt)
    f.close()

os.chdir(os.getcwd()+'/original')
images = glob('*jpg')
images.sort()
os.chdir('../')

# render and write the main template
lu = TemplateLookup(directories=['.'])
t1 = Template(filename='index.mako', lookup=lu)
rt1 = t1.render(num_pages=1)
write_template(rt1, 'test_index.html')

# render the gallery template
t2 = Template(filename='gallery.mako', lookup=lu)
rt2 = t2.render(images=images)
write_template(rt2, 'test_gallery.html')
