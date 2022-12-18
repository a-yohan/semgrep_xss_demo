<%@tag description="Wrapper" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Demo</title>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
    <!-- MDB -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.4.0/mdb.min.css"
          integrity="sha512-erXaRvkGGUhkRub+PAH0bd+aBmYjHzEmo4ymIf/AirZNasjJOWj88ts3pL+tIUtQcUFTjZAeLV8Q5Grwf6MkZg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <style>
        INPUT:-webkit-autofill, SELECT:-webkit-autofill, TEXTAREA:-webkit-autofill {
            animation-name: onautofillstart
        }

        INPUT:not(:-webkit-autofill), SELECT:not(:-webkit-autofill), TEXTAREA:not(:-webkit-autofill) {
            animation-name: onautofillcancel
        }

        @keyframes onautofillstart {
        }

        @keyframes onautofillcancel {
        }
    </style>
</head>
<body>
<jsp:doBody/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.4.0/mdb.min.js"
        integrity="sha512-JLkwaZ4wv4rmL3O3OoWF1ODQonz8mJgOwA3MxH6nLZTNgHbelnzk1xnsY74Ri+WWW1ZNaqHfg0KBQyMmi5vtbg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>