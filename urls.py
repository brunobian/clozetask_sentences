from django.conf.urls import include, url
from django.conf import settings
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
from cloze import views
from django.views.static import *

admin.autodiscover()

urlpatterns = [
	# Examples:
	url(r'^trial/$', views.trial, name = "trial"),
	url(r'^trial/subir/$', views.subir, name = "subir"),
	url(r'^trial/subirInformation/$', views.subirInformation, name = "subirInformation"),
	url(r'^bajar_todo/$', views.bajar_todo, name = "bajar_todo"),
	url(r'^ganadores/$', views.ganadores, name = "ganadores"),
	url(r'^FAQ/$', views.FAQ, name = "FAQ"),
	url(r'^morfemas/$', views.morfemas, name = "morfemas"),
	url(r'^search/$', views.search, name = "search"),

	url(r'^bajar_sujetos/$', views.bajar_sujetos, name = "bajar_sujetos"),
	url(r'^$', views.home, name = "home"),
	# url(r'^prueba/', include('prueba.foo.urls')),

	# Uncomment the admin/doc line below to enable admin documentation:
	# url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

	# Uncomment the next line to enable the admin:
	url(r'^admin/', admin.site.urls),
	url(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),

	url(r'^static/(?P<path>.*)$', serve, {'document_root': settings.STATIC_ROOT}),
	]
