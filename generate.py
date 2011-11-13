#!/usr/bin/python

import os
from glob import glob
from mako.template import Template
from mako.lookup import TemplateLookup

os.chdir(os.getcwd()+'/original')
images = glob('*jpg')
images.sort()
os.chdir('../')

# render the template
lu = TemplateLookup(directories=['.'])
t = Template(filename='gallery.mako', lookup=lu)
rt = t.render(images=images)

# write the template
f = open('test_gallery.html', 'w')
f.write(rt)
f.close()
