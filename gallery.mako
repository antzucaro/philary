<%inherit file="base.mako"/>
    <%block name="main">
        % if len(images) > 0:
        <div class="row">
        % for i in range(len(images)):
            <div class="three columns">
                <p align="center">
                <a class="cbimage" href="http://media.antzucaro.com/uploads/2011/10/13PG/m/RTC_003_m.jpg" title=""><img src="http://placehold.it/250x250" width="250px" height="250px" /></a>
                <br />
                <a href="">Medium</a> | <a href="">Large</a> | <a href="">Original</a>
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
