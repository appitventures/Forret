@extends('Admin::layouts.default')

@section('content')
    <div class = 'row'>
        <div class="portlet box purple">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-group"></i>Manage Users
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Location</th>
                                <th>Created At</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $user)
                                <tr>
                                    <td>{{$user->id}}</td>
                                    <td>{{$user->last_name}}, {{$user->first_name}}</td>
                                    <td><a href = "/admin/users/{{$user->id}}">{{$user->email}}</a></td>
                                    <td>{{$user->city}}, {{$user->state}}.</td>
                                    <td>{{$user->created_at}}</td>
                                    <td>
                                        <div class = "hidden-sm hidden-xs btn-group">
                                            <button class = "btn btn-xs btn-danger"><i class="fa fa-trash-o"></i></button>
                                            @if($user->locked == 0)
                                                <button class = "btn btn-xs btn-warning"><i class="fa fa-lock"></i></button>
                                            @else
                                                <button class = "btn btn-xs btn-warning"><i class="fa fa-unlock"></i></button>
                                            @endif
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@stop

@section('pageplugins')
@stop

@section('pagescripts')

<!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="/assets/metronic/global/scripts/metronic.js" type="text/javascript"></script>
    <script src="/assets/metronic/admin/layout/scripts/layout.js" type="text/javascript"></script>

@stop