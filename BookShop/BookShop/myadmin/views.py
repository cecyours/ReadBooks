import unicodedata

from django.shortcuts import render, redirect, reverse

from . import forms, models
from store.models import Book,Writer
from django.contrib.auth.models import User


from order import models as ordermodel
from django.http import HttpResponseRedirect, HttpResponse
from django.core.mail import send_mail
from django.contrib.auth.models import Group
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib import messages
from django.conf import settings




def adminclick_view(request):
    if request.user.is_authenticated:
        return HttpResponseRedirect('admin-dashboard')
    return HttpResponseRedirect('adminlogin')


#
# # ---------AFTER ENTERING CREDENTIALS WE CHECK WHETHER USERNAME AND PASSWORD IS OF ADMIN,CUSTOMER
def afterlogin_view(request):
    if is_customer(request.user):
        return redirect('customer-home')
    else:
        return redirect('admin-dashboard')


# ---------------------------------------------------------------------------------
# ------------------------ ADMIN RELATED VIEWS START ------------------------------
# ---------------------------------------------------------------------------------
@login_required(login_url='adminlogin')
def admin_dashboard_view(request):
    # for cards on dashboard
    customercount = models.User.objects.all().count()
    productcount = Book.objects.all().count()
    ordercount = ordermodel.Order.objects.all().count()

    # for recent order tables
    orders = ordermodel.Order.objects.all()
    ordered_products = []
    ordered_bys = []
    for order in orders:
        ordered_product = Book.objects.all().filter(id=order.customer.id)
        ordered_by = User.objects.all().filter(id=order.customer.id)
        ordered_products.append(ordered_product)
        ordered_bys.append(ordered_by)

    mydict = {
        'customercount': customercount,
        'productcount': productcount,
        'ordercount': ordercount,
        'data': zip(ordered_products, ordered_bys, orders),
    }
    return render(request, 'admin_dashboard.html', context=mydict)


# admin view customer table
@login_required(login_url='adminlogin')
def view_customer_view(request):
    customers = User.objects.all().filter(is_superuser=0)
    return render(request, 'view_customer.html', {'customers': customers})


# admin delete customer
@login_required(login_url='adminlogin')
def delete_customer_view(request, pk):
    customer = User.objects.get(id=pk)
    user = models.User.objects.get(id=customer.id)
    user.delete()
    customer.delete()
    return redirect('view-customer')


@login_required(login_url='adminlogin')
def update_customer_view(request, pk):
    customer = models.Customer.objects.get(id=pk)
    user = models.User.objects.get(id=customer.user_id)
    userForm = forms.CustomerUserForm(instance=user)
    customerForm = forms.CustomerForm(request.FILES, instance=customer)
    mydict = {'userForm': userForm, 'customerForm': customerForm}
    if request.method == 'POST':
        userForm = forms.CustomerUserForm(request.POST, instance=user)
        customerForm = forms.CustomerForm(request.POST, instance=customer)
        if userForm.is_valid() and customerForm.is_valid():
            user = userForm.save()
            user.set_password(user.password)
            user.save()
            customerForm.save()
            return redirect('view-customer')
    return render(request, 'admin_update_customer.html', context=mydict)


# admin view the product
@login_required(login_url='adminlogin')
def admin_products_view(request):
    products = Book.objects.all()
    return render(request, 'admin_products.html', {'products': products})


# admin add product by clicking on floating button
@login_required(login_url='adminlogin')
def admin_add_product_view(request):
    productForm = forms.ProductForm()
    if request.method == 'POST':
        productForm = forms.ProductForm(request.POST, request.FILES)
        if productForm.is_valid():
            productForm.save()
        return HttpResponseRedirect('admin-products')
    return render(request, 'admin_add_products.html', {'productForm': productForm})

@login_required(login_url='adminlogin')
def add_writer(request):
    writeForm = forms.WriterFrom()
    if request.method == 'POST':
        writeForm = forms.WriterFrom(request.POST, request.FILES)
        if writeForm.is_valid():
            writeForm.save()
        return HttpResponseRedirect('admin-products')
    return render(request, 'admin_add_writer.html', {'writeForm': writeForm})

@login_required(login_url='adminlogin')
def delete_product_view(request, pk):
    product = Book.objects.get(id=pk)
    product.delete()
    return redirect('admin-products')


@login_required(login_url='adminlogin')
def update_product_view(request, pk):
    product = Book.objects.get(id=pk)
    productForm = forms.ProductForm(instance=product)
    if request.method == 'POST':
        productForm = forms.ProductForm(request.POST, request.FILES, instance=product)
        if productForm.is_valid():
            productForm.save()
            return redirect('admin-products')
    return render(request, 'admin_update_product.html', {'productForm': productForm})


@login_required(login_url='adminlogin')
def admin_view_booking_view(request):
    orders = models.Orders.objects.all()
    ordered_products = []
    ordered_bys = []
    for order in orders:
        ordered_product = models.Product.objects.all().filter(id=order.product.id)
        ordered_by = models.Customer.objects.all().filter(id=order.customer.id)
        ordered_products.append(ordered_product)
        ordered_bys.append(ordered_by)
    return render(request, 'admin_view_booking.html', {'data': zip(ordered_products, ordered_bys, orders)})

@login_required(login_url='adminlogin')
def view_writer(request):
    writers = Writer.objects.all()
    return render(request,'admin_view_writers.html',{'writers':writers})
    pass

@login_required(login_url='adminlogin')
def delete_order_view(request, pk):
    order = models.Orders.objects.get(id=pk)
    order.delete()
    return redirect('admin-view-booking')

@login_required(login_url='adminlogin')
def delete_writer(request,pk):
    print("im in..")
    writer = Writer.objects.get(id=pk)
    writer.delete()
    return redirect('../view-writer')

def update_writer(request,pk):
    writer = Writer.objects.get(id=pk)
    
    writeForm = forms.WriterFrom(instance=writer)
    print(writer.bio)
    if request.method == 'POST':
        writeForm = forms.WriterFrom(request.POST, instance=writer)
        if writeForm.is_valid():
            writeForm.save()
            return redirect('../view-writer')
    return render(request, 'admin_update_writer.html', {'writeForm': writeForm})


# for changing status of order (pending,delivered...)
@login_required(login_url='adminlogin')
def update_order_view(request, pk):
    order = models.Orders.objects.get(id=pk)
    orderForm = forms.OrderForm(instance=order)
    if request.method == 'POST':
        orderForm = forms.OrderForm(request.POST, instance=order)
        if orderForm.is_valid():
            orderForm.save()
            return redirect('admin-view-booking')
    return render(request, 'update_order.html', {'orderForm': orderForm})


# admin view the feedback
@login_required(login_url='adminlogin')
def view_feedback_view(request):
    feedbacks = models.Feedback.objects.all().order_by('-id')
    return render(request, 'view_feedback.html', {'feedbacks': feedbacks})




# @login_required(login_url='customerlogin')
# @user_passes_test(is_customer)
# def my_order_view2(request):

#     products=models.Product.objects.all()
#     if 'product_ids' in request.COOKIES:
#         product_ids = request.COOKIES['product_ids']
#         counter=product_ids.split('|')
#         product_count_in_cart=len(set(counter))
#     else:
#         product_count_in_cart=0
#     return render(request,'my_order.html',{'products':products,'product_count_in_cart':product_count_in_cart})


# --------------for discharge patient bill (pdf) download and printing
import io
from xhtml2pdf import pisa
from django.template.loader import get_template
from django.http import HttpResponse


def render_to_pdf(template_src, context_dict):
    template = get_template(template_src)
    html = template.render(context_dict)
    result = io.BytesIO()
    pdf = pisa.pisaDocument(io.BytesIO(html.encode("ISO-8859-1")), result)
    # pdf = pisa.pisaDocument(str(StringIO(html.encode("UTF-8"))), result, encoding='UTF-8')
    if not pdf.err:
        return HttpResponse(result.getvalue(), content_type='application/pdf')
    return

