<form name="oauth_client" method="post" action="/admin/oauth/clients/{{ $client->id }}">
    <div class="box-body">
        <div class='form-group'>
            <label for='client_id'>Name</label>
            <input type='text' name="name" class='form-control' id="name" placeholder="Give your client a name for easy use" value="{{ $client->name }}">
        </div>
        <hr />
        <div class='form-group'>
            <label for='id'>Client ID</label>
            <input type='text' name="id" class='form-control' id="id" placeholder="30 character string or UUID would be nice" value="{{ $client->id }}">
            <p class="help-block">Leave Blank and we will generate one for you.</p>
        </div>
        <div class='form-group'>
            <label for ='secret'>Client Secret</label>
            <input type='text' name="secret" class='form-control' id="secret" placeholder="Again with the string stuff" value="{{ $client->secret }}">
            <p class="help-block">Leave Blank and we will generate one for you.</p>
        </div>
    </div>
    <div class="box-footer">
        <button type="submit" class="btn btn-primary">Update</button>
    </div>
</form>