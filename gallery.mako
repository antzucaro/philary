<%inherit file="base.mako"/>
    <%block name="main">
        % if len(images) > 0:
        <div class="row">
        % for i in range(len(images)):
            <div class="three columns">
                <p align="center">
                <a class="cbimage" href="medium/${images[i]}" title="${images[i]}"><img src="small/${images[i]}" width="250px" height="250px" /></a>
                <br />
                <a href="medium/${images[i]}">Medium</a> | <a href="large/${images[i]}">Large</a> | <a href="original/${images[i]}">Original</a>
                </p>
            </div>
        % if (i+1)%3 == 0 and (i+1) != len(images):
        </div> <!-- ROW -->   
        <div class="row">
        % endif
        % if (i+1) == len(images):
        </div> <!-- ROW -->   
        % endif
        % endfor
        % endif
    </%block>
