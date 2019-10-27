#5.Use querysetAPI update_or_create 
#example
#models
class userProfile(models.Model):
    USER = models.OneToOneField(User, on_delete=models.CASCADE, null=False)
    #This is similar to a ForeignKey
    #with ""unique=True"", but the “reverse” side of the relation will directly return a single object
    hobbies = models.CharField(max_length=255, null=True, blank=True, default="")
    selfIntroduction = models.TextField(null=True, blank=True, default="")
#view
userProfile.objects.update_or_create(
            USER=User.objects.get(username=request.user.username),#unique key
            defaults={											  #update data
                'hobbies': request.POST.get("hobbies"),
                'selfIntroduction': request.POST.get("introduction"),
            }
        )
#Following https://docs.djangoproject.com/en/dev/ref/models/querysets/#update-or-create