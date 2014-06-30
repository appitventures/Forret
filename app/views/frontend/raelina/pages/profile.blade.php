@extends('Frontend::layouts.default')

@section('page_styles')

@stop

@section('content')

    @foreach($sections as $section)
        @include("Frontend::components.sections.$section")
    @endforeach

@stop

@section('page_scripts')

@stop