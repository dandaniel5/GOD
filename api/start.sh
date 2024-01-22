#!/bin/bash


python -m uvicorn main:app --reload --host 0.0.0.0 --port 8000

#
## Добавление данных в файл /usr/local/lib/python3.11/site-packages/starlette_admin/auth.py
#echo "
#from dataclasses import dataclass
#from typing import Optional
#
#@dataclass
#class AdminConfig:
#    logo_url: Optional[str] = None
#    app_title: Optional[str] = None
#" >> /usr/local/lib/python3.11/site-packages/starlette_admin/auth.py && echo "AdminConfig class successfully added to auth.py" >&2
#
## Добавление данных в файл /usr/local/lib/python3.11/site-packages/starlette_admin/__init__.py
#echo "
#from .auth import AdminUser as AdminUser
#from .auth import AuthProvider as AuthProvider
#from .auth import BaseAuthProvider as BaseAuthProvider
#from .auth import AuthMiddleware as AuthMiddleware
#from .auth import AdminConfig as AdminConfig
#" >> /usr/local/lib/python3.11/site-packages/starlette_admin/__init__.py && echo "Imports successfully added to __init__.py" >&2
#
#
#sed -i 's/^DEFAULT_HOST = .*/DEFAULT_HOST = "mongo4"/' /usr/local/lib/python3.11/site-packages/mongoengine/connection.py
#
#

# # Проверяем наличие файла
# if [ ! -f "/usr/local/lib/python3.11/site-packages/starlette_admin/templates/base.html" ]; then
#     echo "Файл не найден."
#     exit 1
# fi

# # Новое содержимое для файла base.html
# new_content='<!DOCTYPE html>
# <html lang="{{ get_locale() }}">
#   <head>
#     <meta charset="UTF-8" />
#     <meta
#       name="viewport"
#       content="width=device-width, initial-scale=1, viewport-fit=cover"
#     />

#     <meta
#       http-equiv="Content-Security-Policy"
#       content="upgrade-insecure-requests"
#     />
#     {% block head_meta %}{% endblock %} {% block title %}
#     <title>Sbox.am/admin</title>
#     {% endblock %}
#     <link
#       rel="stylesheet"
#       href="{{ url_for(__name__ ~ ':statics', path='css/tabler.min.css') }}"
#     />
#     <link
#       rel="stylesheet"
#       href="{{ url_for(__name__ ~ ':statics', path='css/fontawesome.min.css') }}"
#     />
#     <style>
#       @import url("https://rsms.me/inter/inter.css");

#       :root {
#         --tblr-font-sans-serif: "Inter Var", -apple-system, BlinkMacSystemFont,
#           San Francisco, Segoe UI, Roboto, Helvetica Neue, sans-serif;
#       }

#       body {
#         font-feature-settings: "cv03", "cv04", "cv11";
#       }
#     </style>
#     {% block head_css %}{% endblock %}
#   </head>

#   <body>
#     {% block body %}{% endblock %} {% block modal %}{% endblock %}
#     <script
#       type="text/javascript"
#       src="{{ url_for(__name__ ~ ':statics', path='js/vendor/jquery.min.js') }}"
#     ></script>
#     <script
#       type="text/javascript"
#       src="{{ url_for(__name__ ~ ':statics', path='js/vendor/js.cookie.min.js') }}"
#     ></script>
#     <script
#       type="text/javascript"
#       src="{{ url_for(__name__ ~ ':statics', path='js/vendor/tabler.min.js') }}"
#     ></script>
#     {% block script %}{% endblock %}
#     <script>
#       $(function () {
#         $(".language-switcher-item").each(function () {
#           let el = $(this);
#           el.on("click", function () {
#             Cookies.set(
#               String(el.data("cookie-name")),
#               String(el.data("lang"))
#             );
#             window.location.reload();
#           });
#         });
#       });
#     </script>
#   </body>
# </html>
# '

# # Замена содержимого файла
# echo "$new_content" > /usr/local/lib/python3.11/site-packages/starlette_admin/templates/base.html

# echo "base.html успешно изменен."