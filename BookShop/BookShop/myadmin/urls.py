
from django.contrib import admin
from django.urls import path
from myadmin import views
from django.contrib.auth.views import LoginView, LogoutView

urlpatterns = [

    path('logout', LogoutView.as_view(template_name='logout.html'), name='logout'),

    path('', views.adminclick_view),
    path('adminlogin', LoginView.as_view(template_name='adminlogin.html'), name='adminlogin'),
    path('admin-dashboard', views.admin_dashboard_view, name='admin-dashboard'),

    path('view-customer', views.view_customer_view, name='view-customer'),
    path('delete-customer/<int:pk>', views.delete_customer_view, name='delete-customer'),
    path('update-customer/<int:pk>', views.update_customer_view, name='update-customer'),
    path('add-writer',views.add_writer,name="add"),
    path('update-writer',views.add_writer,name="add2"),
    path('view-writer',views.view_writer,name="add24"),
    
    path('admin-products', views.admin_products_view, name='admin-products'),
    path('admin-add-product', views.admin_add_product_view, name='admin-add-product'),
    path('delete-product/<int:pk>', views.delete_product_view, name='delete-product'),
    path('update-product/<int:pk>', views.update_product_view, name='update-product'),

    path('admin-view-booking', views.admin_view_booking_view, name='admin-view-booking'),
    path('delete-order/<int:pk>', views.delete_order_view, name='delete-order'),
    path('delete-writer/<int:pk>', views.delete_writer, name='delete-writer'),
    path('update-order/<int:pk>', views.update_order_view, name='update-order'),
    path('update-writer/<int:pk>', views.update_writer, name='update-writer'),

    path('add_category',views.add_category,name='add_category'),
    path('delete_category/<int:pk>', views.delete_category, name='delete_category'),
    path('view_all_cat',views.view_all_cat,name='view_all_cat'),

    path('view-deliveryman',views.view_deliveryman,name='view-deliveryman'),
    path('add-deliveryman/<int:pk>', views.add_deliveryman, name='add-deliveryman'),
    path('remove-deliveryman/<int:pk>', views.remove_deliveryman, name='remove-deliveryman'),

]
