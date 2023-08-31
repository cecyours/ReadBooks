
from django.shortcuts import render
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib import messages

from . models import DeliveryMan
from .forms import RegistrationForm
# Create your views here.

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



@login_required(login_url="delivery_login")
def index(request):
    deliveryman = DeliveryMan.objects.get(user_key=request.user.id)
    # for i in deliveryman:
    if(deliveryman.status!="accepted"):
        return redirect('delivery_waiting')
    # code to display orders..
    orders = ordermodel.Order.objects.all()
    ordered_products = []
    del_list = []
    ordered_bys = []
    for order in orders:
        if order.deliveryman_id is not None:
            continue 
        order_item = ordermodel.OrderItem.objects.all().filter(order_id=order.id)
        for i in order_item:
            ordered_products.append(Book.objects.all().filter(id=i.book_id) )
        # ordered_product = Book.objects.all().filter(id=order_item.book_id)    
        # 
        ordered_by = User.objects.all().filter(id=order.customer.id)
        # ordered_products.append(ordered_product)
        ordered_bys.append(ordered_by)
        # print(ordered_products)
        delivery=order.deliveryman
        if delivery is None:
            delivery = DeliveryMan()
            delivery.username = "Not accepted"
        order.deliveryman = delivery
    mydict = { 
        'data': zip(ordered_products, ordered_bys, orders),
    }
    # print(ordered_products)
    return render(request, 'index.html', context=mydict)

# import get_object_or_404()
from django.shortcuts import get_object_or_404

def delivery_login(request):
    global is_approved
    # code red
    if request.user.is_authenticated:
        return redirect('index')
    else:
        if request.method == "POST":
            print("I am usr..")

            user = request.POST.get('user')
            password = request.POST.get('pass')
            auth = authenticate(request, username=user, password=password)
            if auth is not None:
                login(request, auth)
                print(request.user.id)
                # fetch all details & check whether id
                deliveryman = DeliveryMan.objects.get(user_key=request.user.id)
                # for i in deliveryman:
                if(deliveryman.status=="accepted"):
                    is_approved = True
                    return redirect('index')
                return redirect('delivery_waiting')
            else:
                messages.error(request, 'username and password doesn\'t match')
    # return render(request,'index.html')
    return render(request,'delivery_login.html')

def delivery_logout(request):
    logout(request)
    # request.user.is_authenticated = False
    return redirect('delivery_login')

    pass
def delivery_signup(request):
    if request.user.is_authenticated:
        return redirect('index')
    form = RegistrationForm(request.POST or None)
    if form.is_valid():
        x = form.save()
        status = "pending"
        d = DeliveryMan()
        d.delivery_man_id = x
        d.user_key = x.id
        d.status = status
        d.save()
        return redirect('delivery_login')

    return render(request, 'delivery_signup.html', {"form": form})
    pass


def get_order(request,pk):
    # add the order in
    order = ordermodel.Order.objects.get(id=pk)
    deliveryman = DeliveryMan.objects.get(user_key=request.user.id)
    order.deliveryman = deliveryman
    order.status = "accepted"
    order.save()
    return redirect('view_orders')

def view_orders(request):
    deliveryman = DeliveryMan.objects.get(user_key=request.user.id)
    
    if(deliveryman.status!="accepted"):
        return redirect('delivery_waiting')
    # code to display orders..
    orders = ordermodel.Order.objects.all().filter(deliveryman_id=deliveryman.id)
    ordered_products = []
    del_list = []
    ordered_bys = []
    for order in orders:
        order_item = ordermodel.OrderItem.objects.all().filter(order_id=order.id)
        for i in order_item:
            ordered_products.append(Book.objects.all().filter(id=i.book_id) )
        # ordered_product = Book.objects.all().filter(id=order_item.book_id)    
        # 
        ordered_by = User.objects.all().filter(id=order.customer.id)
        # ordered_products.append(ordered_product)
        ordered_bys.append(ordered_by)
        # print(ordered_products)
        delivery=order.deliveryman
        if delivery is None:
            delivery = DeliveryMan()
            delivery.username = "Not accepted"
        order.deliveryman = delivery
    mydict = { 
        'data': zip(ordered_products, ordered_bys, orders),
    }
    # print(ordered_products)
    return render(request, 'view_orders.html', context=mydict)

    # return render(request,'view_orders.html')


def update_order(request,pk):
    stage = request.POST.get('stage')
    print("stage : ",stage)
    order = ordermodel.Order.objects.get(id=pk)
    deliveryman = DeliveryMan.objects.get(user_key=request.user.id)
    order.deliveryman = deliveryman
    order.status = stage
    order.save()
    return redirect('view_orders')


    return redirect('view_orders')
def delivery_waiting(request):
    return render(request,'delivery_waiting.html')