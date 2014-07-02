<form name="create_user" method="post" action="/admin/users">
    <div class="box-body">
        <div class = 'form-group'>
            <label for ='email'>Email Address</label>
            <input type = 'email' name="email" class = 'form-control' id="email" placeholder="email@test.com">
        </div>
        <div class = 'form-group'>
            <label for ='first_name'>First Name</label>
            <input type = 'text' name="first_name" class = 'form-control' id="first_name" placeholder="Sally">
        </div>
        <div class = 'form-group'>
            <label for ='last_name'>Last Name</label>
            <input type = 'text' name="last_name" class = 'form-control' id="last_name" placeholder="Smith">
        </div>
        <div class = 'form-group'>
            <label for ='phone'>Phone</label>
            <input type = 'text' name="phone" class = 'form-control' id="phone" placeholder="123-546-7890">
        </div>
        <div class = 'form-group'>
            <label for ='address1'>Address 1</label>
            <input type = 'text' name="address1" class = 'form-control' id="address1" placeholder="1234 Fake Street">
        </div>
        <div class = 'form-group'>
            <label for ='address2'>Address 2</label>
            <input type = 'text' name="address2" class = 'form-control' id="address2" placeholder="#123">
        </div>
        <div class = 'form-group'>
            <label for ='city'>City</label>
            <input type = 'text' name="city" class = 'form-control' id="city" placeholder="Pleasantville">
        </div>
        <div class = 'form-group'>
            <label for ='state'>State</label>
            @include('Admin::components.forms.formElements.stateSelect')
        </div>
    </div>
    <div class="box-footer">
        <button type="submit" class="btn btn-primary">Create</button>
    </div>
</form>