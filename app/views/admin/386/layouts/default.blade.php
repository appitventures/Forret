<!DOCTYPE html>
<html>
<head>
    @include('Admin::components.pageComponents.head')
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<div class="navbar navbar-inverse navbar-fixed-top">
    @include('Admin::components.pageComponents.navbar')
</div>

<div class = "row">
    <div class ="col-sm-2"></div>
    <div class = "col-sm-10">
        @yield('content')
    </div>
</div>
@include('Admin::components.pageComponents.pageFooterScripts')
</body>
</html>
