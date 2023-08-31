from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from. import views
urlpatterns = [
    path('',views.index,name='index'),
    path('delivery_login',views.delivery_login,name="delivery_login"),
    path('delivery_signup',views.delivery_signup,name="delivery_signup"),
    path("delivery_logout",views.delivery_logout,name="delivery_logout"),
    path("delivery_waiting",views.delivery_waiting,name="delivery_waiting"),
    path('get_order/<int:pk>', views.get_order, name='get_order'),
    path('update_order/<int:pk>', views.update_order, name='update_order'),
    path('view_orders', views.view_orders, name='view_orders'),

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
