{{#Installed}}
<div class="pull-left">
    <a href="#/" class="btn btn-default slide back">
        <span class="fa-chevron-left"></span> Menu
    </a>
</div>
<div class="pull-right">
    <a href="#/apps/install" class="btn btn-success slide">
        <span class="fa-plus"></span> Install
    </a>
</div>
<div class="clearfix"></div>
<h1 class="view-title">Installed apps</h1>
{{/Installed}}


{{^Installed}}
<div class="pull-left">
    <a href="#/apps" class="btn btn-default slide back">
        <span class="fa-chevron-left"></span> Installed apps
    </a>
</div>
<div class="pull-right">
    <a href="#/apps/refresh" class="btn btn-info">
        <span class="fa-refresh"></span> Refresh list
    </a>
</div>
<div class="clearfix"></div>
<h1 class="view-title">Available apps</h1>
{{/Installed}}

<div class="br"></div>

<div class="list-group">
{{#Apps}}
    <a href="#/apps/{{^Installed}}install/{{/Installed}}{{ID}}" class="list-group-item slide">
        <span class="fa-chevron-right pull-right"></span>
        <h2 class="list-group-item-heading">{{Name}} <small>{{ID}}</small></h2>
        <p class="list-group-item-text">{{Description.en}}</p>
    </a>
{{/Apps}}

{{^Apps}}
<div class="alert alert-warning">
    <span class="fa-exclamation-triangle"></span>
    No installed apps.
</div>
{{/Apps}}

</div>