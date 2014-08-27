@extends('Admin::layouts.default')

@section('content')
    <div class = 'row'>
        <div class="portlet box purple">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-group"></i>Manage OAuth Clients
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
                                <th>Name</th>
                                <th>Client ID</th>
                                <th>Client Secret</th>
                                <th>Created At</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($clients as $client)
                                <tr>
                                    <td>{{ $client->name }}</td>
                                    <td><a href="/admin/oauth/clients/{{ $client->id }}/edit">{{ $client->id }}</a></td>
                                    <td>{{ $client->secret }}</td>
                                    <td>{{ $client->created_at }}</td>
                                    <td>
                                        <div class = "hidden-sm hidden-xs btn-group">
                                            <a class="btn btn-xs btn-danger" href="/admin/oauth/clients/{{ $client->id }}/delete"><i class="fa fa-trash-o"></i></a>
                                        </div>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="5" align="center">No OAuth2 Clients</td>
                                </tr>
                            @endforelse
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

@stop