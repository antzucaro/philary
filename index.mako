<%inherit file="base.mako"/>
            <%block name="main">
            <div class="row">
                <div class="twelve columns">
                    <a href="1.html"><img src="images/header.png" width="720px" height="484px" /></a>
                </div>
            </div> <!-- ROW -->
            <div class="row">
                <div class="twelve columns">
                    <div id="browselinks">
                        <dl>
                            <dd>Browse:</dd>
                            % for i in range(num_pages):
                            <dd><a href="${i+1}.html">${i+1}</a></dd>
                            % endfor
                        </dl>
                    </div>
                </div>
            </div> <!-- ROW -->
            </%block>
