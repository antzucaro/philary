#!/usr/bin/python

import os
from glob import glob
from mako.template import Template
from mako.lookup import TemplateLookup
from math import ceil

def write_template(rt, fn):
    f = open(fn, 'w')
    f.write(rt)
    f.close()

os.chdir(os.getcwd()+'/original')
images = glob('*jpg')
images.sort()
os.chdir('../')

current_page = 1
images_per_page = 25
total_pages = ceil(len(images)/float(images_per_page))

# render and write the main template
lu = TemplateLookup(directories=['.'])
t1 = Template(filename='index.mako', lookup=lu)
rt1 = t1.render(num_pages=1)
write_template(rt1, 'index.html')

start = 0
for i in range(total_pages):
    end = start+images_per_page
    if end > len(images):
        end = len(images)
    print "Start: {0}. End: {1}".format(start, end)

    # render the gallery template
    t2 = Template(filename='gallery.mako', lookup=lu)
    rt2 = t2.render(images=images[start:end], total_pages=total_pages, current_page=current_page)
    write_template(rt2, '{0}.html'.format(current_page))

    start = end+1
    current_page = current_page+1
