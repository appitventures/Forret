<!DOCTYPE html>
<html lang="en">

<head>
    @include('Frontend::components.head')
    @yield('page_styles')
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
@include('Frontend::components.header_navbar')
@yield('content')

@include('Frontend::components.global_scripts')
@yield('page_scripts')
</body>

</html>
