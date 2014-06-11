<!DOCTYPE html>
<html>
<head>
    @include('admin.components.pageComponents.head')
</head>
<body class = "skin-blue wysihtml5-supported  pace-done">
<header class="header">
    @include('admin.components.pageComponents.navbar')
</header>

<div class="wrapper row-offcanvas row-offcanvas-left">
    <aside class="left-side sidebar-offcanvas">
        <section class="sidebar">
            @include('admin.components.pageComponents.sidebar')
        </section>
    </aside>
    <aside class="right-side">
        @include('admin.components.pageComponents.pageHeader')
        <section class ='content'>
            @yield('content')
        </section>
    </aside>
</div>
@include('admin.components.pageComponents.pageFooterScripts')
</body>
</html>