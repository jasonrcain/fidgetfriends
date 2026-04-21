<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Fidget Friendz</title>

    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="ff-body">
    <noscript>
        <div class="container py-4">
            <div class="alert alert-warning mb-0">
                This site needs JavaScript enabled to run.
            </div>
        </div>
    </noscript>

    <div id="app"></div>
</body>
</html>
