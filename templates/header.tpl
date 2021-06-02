<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection}; font-size:16px" <!-- ENDIF languageDirection --> >
<head>
    <title>{browserTitle}</title>
    {{{each metaTags}}}{function.buildMetaTag}{{{end}}}
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{relative_path}/assets/client<!-- IF bootswatchSkin -->-{bootswatchSkin}<!-- END -->.css?{config.cache-buster}" />
    {{{each linkTags}}}{function.buildLinkTag}{{{end}}}
 
    <script>
        var config = JSON.parse('{{configJSON}}');
        var app = {
            user: JSON.parse('{{userJSON}}')
        };
    </script>
 
    <!-- IF useCustomHTML -->
    {{customHTML}}
    <!-- END -->
    <!-- IF useCustomCSS -->
    <style>{{customCSS}}</style>
    <!-- END -->
</head>
 
<body class="{bodyClass} pt-0 skin-<!-- IF bootswatchSkin -->{bootswatchSkin}<!-- ELSE -->noskin<!-- END -->">
    <nav id="menu" class="slideout-menu hidden">
        <!-- IMPORT partials/slideout-menu.tpl -->
    </nav>
    <nav id="chats-menu" class="slideout-menu hidden">
        <!-- IMPORT partials/chats-menu.tpl -->
    </nav>
 
    <main id="panel" class="slideout-panel">
        <nav>
            <div class="w-100">
                <!-- IMPORT partials/menu.tpl -->
            </div>
        </nav>
        <div class="container" id="content">
        <!-- IMPORT partials/noscript/warning.tpl -->
        <!-- IMPORT partials/noscript/message.tpl -->