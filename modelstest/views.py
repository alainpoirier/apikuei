from django.shortcuts import render
from rest_framework import viewsets
from modelstest.models import *
from modelstest.serializers import *
from drf_multiple_model.views import MultipleModelAPIView

"""
class ModAttraitsViewSet(viewsets.ModelViewSet):
	queryset = ModAttraits.objects.all()
	serializer_class = ModAttraitsSerializer


class ModHebergementViewSet(viewsets.ModelViewSet):
	queryset = ModHebergement.objects.all()
	serializer_class = ModHebergementSerializer


class ModRestaurationViewSet(viewsets.ModelViewSet):
	queryset = ModRestauration.objects.all()
	serializer_class = ModRestaurationSerializer
"""

class TextAPIView(MultipleModelAPIView):
    queryList = [
        (ModHebergement.objects.all(),ModHebergementSerializer),
        (ModAttraits.objects.all(),ModAttraitsSerializer),
        (ModRestauration.objects.all(),ModRestaurationSerializer),
        (FlickrUsers.objects.all(),FlickrUsersSerializer),
        (ModAttraitsDocuments.objects.all(),ModAttraitsDocumentsSerializer),
        (ModDocuments.objects.all(),ModDocumentsSerializer),
        (ModAttraitsCategories.objects.all(),ModAttraitsCategoriesSerializer),
        (ModAttraitsPhotos.objects.all(),ModAttraitsPhotosSerializer),
        (ModHebergementTypesList.objects.all(),ModHebergementTypesListSerializer),
        (ModHebergementTypes.objects.all(),ModHebergementTypesSerializer),
        (ModDocumentsCats.objects.all(),ModDocumentsCatsSerializer),
        (ModHebergementPhotos.objects.all(),ModHebergementPhotosSerializer),
        (ModRestaurationPhotos.objects.all(),ModRestaurationPhotosSerializer),

    ]