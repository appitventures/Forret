@extends('Admin::layouts.default')

@section('content')
    <div class = "col-md-6">
        <div class="box box-primary">
            <div class="box-header">
                <h3 class="box-title">Create User</h3>
            </div>
                @include('Admin::components.forms.createUser')
            </div>
        </div>
    </div>
@stop