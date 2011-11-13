<%inherit file="base.mako"/>
            <%block name="main">
            <div class="row">
                <div class="twelve columns">
                    <img src="http://placehold.it/650x450" width="650px" height="450px" />
                </div>
            </div> <!-- ROW -->
            <div class="row">
                <div class="twelve columns">
                    <div id="browselinks">
                        <dl>
                            <dd>Browse:</dd>
                            % for i in range(num_pages):
                            <dd>${i+1}</dd>
                            % endfor
                        </dl>
                    </div>
                </div>
            </div> <!-- ROW -->
            </%block>
