<form name="oauth_client" method="post" action="/admin/oauth/clients/">
    <div class="box-body">
        <div class='form-group'>
            <label for='client_id'>Name</label>
            <input type='text' name="name" class='form-control' id="name" placeholder="Give your client a name for easy use">
        </div>
        <hr />
        <div class='form-group'>
            <label for='id'>Client ID</label>
            <input type='text' name="id" class='form-control' id="id" placeholder="30 character string or UUID would be nice">
            <p class="help-block">Leave Blank and we will generate one for you.</p>
        </div>
        <div class='form-group'>
            <label for ='secret'>Client Secret</label>
            <input type='text' name="secret" class='form-control' id="secret" placeholder="Again with the string stuff">
            <p class="help-block">Leave Blank and we will generate one for you.</p>
        </div>
    </div>
    <div class="box-footer">
        <button type="submit" class="btn btn-primary">Create</button>
    </div>
</form>