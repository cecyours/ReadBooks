from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class DeliveryMan(models.Model):
	delivery_man_id = models.ForeignKey(User, on_delete = models.CASCADE)
	user_key = models.IntegerField(null=True)
	created = models.DateTimeField(auto_now_add=True,null=True,blank=True)
	status = models.CharField(max_length=120)
