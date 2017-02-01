from modelstest.models import *
from rest_framework import serializers


class ModAttraitsSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModAttraits
		fields = '__all__'


class ModHebergementSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModHebergement
		fields = '__all__'

class ModRestaurationSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModRestauration
		fields = '__all__'


class FlickrUsersSerializer(serializers.ModelSerializer):
	class Meta:
		model = FlickrUsers
		fields = '__all__'

class ModAttraitsDocumentsSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModAttraitsDocuments
		fields = '__all__'


class ModDocumentsSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModDocuments
		fields = '__all__'

class ModAttraitsCategoriesSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModAttraitsCategories
		fields = '__all__'

class ModAttraitsPhotosSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModAttraitsPhotos
		fields = '__all__'

class ModHebergementTypesListSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModHebergementTypesList
		fields = '__all__'

class ModHebergementTypesSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModHebergementTypes
		fields = '__all__'

class ModDocumentsCatsSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModDocumentsCats
		fields = '__all__'

class ModHebergementPhotosSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModHebergementPhotos
		fields = '__all__'

class ModRestaurationPhotosSerializer(serializers.ModelSerializer):
	class Meta:
		model = ModRestaurationPhotos
		fields = '__all__'