<!DOCTYPE html>
<html>
<head>
    @include('Admin::components.pageComponents.head')
</head>
<body class = "skin-blue wysihtml5-supported  pace-done">
<header class="header">
    @include('Admin::components.pageComponents.navbar')
</header>

<div class="wrapper row-offcanvas row-offcanvas-left">
    <aside class="left-side sidebar-offcanvas">
        <section class="sidebar">
            @include('Admin::components.pageComponents.sidebar')
        </section>
    </aside>
    <aside class="right-side">
        @include('Admin::components.pageComponents.pageHeader')
        <section class ='content'>
            @yield('content')
        </section>
    </aside>
</div>
@include('Admin::components.pageComponents.pageFooterScripts')
</body>
</html>