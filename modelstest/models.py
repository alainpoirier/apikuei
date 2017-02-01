# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class FlickrUsers(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    flickr_user_id = models.TextField()
    flickr_reference_name = models.TextField()

    class Meta:
        managed = False
        db_table = 'flickr_users'
    def __unicode__(self):
        return self.flickr_reference_name


class ModAttraits(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    dates = models.IntegerField()
    city = models.TextField()
    postal_code = models.TextField()
    tel = models.TextField()
    cell = models.TextField()
    toll_free = models.CharField(max_length=20)
    fax = models.TextField()
    email = models.TextField()
    website = models.TextField()
    website2 = models.TextField()
    google_maps = models.TextField()
    facebook = models.TextField()
    twitter = models.TextField()
    foursquare = models.TextField()
    tripadvisor = models.TextField()
    service_restaurant = models.IntegerField()
    service_disability = models.IntegerField()
    groups = models.IntegerField()
    name_fr = models.TextField()
    description_fr = models.TextField()
    address_fr = models.TextField()
    activities_fr = models.TextField()
    services_fr = models.TextField()
    quality_indicator_fr = models.TextField()
    service_restaurant_description_fr = models.TextField()
    service_disability_description_fr = models.TextField()
    groups_description_fr = models.TextField()
    name_en = models.TextField()
    description_en = models.TextField()
    address_en = models.TextField()
    activities_en = models.TextField()
    services_en = models.TextField()
    quality_indicator_en = models.TextField()
    service_restaurant_description_en = models.TextField()
    service_disability_description_en = models.TextField()
    groups_description_en = models.TextField()
    logo = models.TextField()
    main_photo = models.CharField(max_length=255)
    dates_custom_fr = models.TextField()
    dates_custom_en = models.TextField()
    flickr_photoset_id = models.TextField()
    flickr_show_amount = models.SmallIntegerField()
    flickr_user = models.TextField()#flickr_users (id)
    gallery_type = models.IntegerField()
    url_fr = models.TextField()
    url_en = models.TextField()
    fees_fr = models.TextField()
    fees_en = models.TextField()
    type = models.IntegerField()
    vedette = models.IntegerField()
    season_spring = models.IntegerField()
    season_summer = models.IntegerField()
    season_fall = models.IntegerField()
    season_winter = models.IntegerField()
    date_start = models.DateField(blank=True, null=True)
    date_end = models.DateField(blank=True, null=True)
    period_start_month = models.CharField(max_length=2)
    period_start_day = models.CharField(max_length=2)
    period_end_month = models.CharField(max_length=2)
    period_end_day = models.CharField(max_length=2)
    cat_0 = models.IntegerField()#ModAttraitsCategories id=0
    cat_1 = models.IntegerField()#ModAttraitsCategories id=1
    cat_2 = models.IntegerField()#ModAttraitsCategories id=2
    cat_3 = models.IntegerField()#ModAttraitsCategories id=3
    payment_1 = models.IntegerField()
    payment_2 = models.IntegerField()
    payment_3 = models.IntegerField()
    payment_4 = models.IntegerField()
    payment_5 = models.IntegerField()
    payment_6 = models.IntegerField()
    payment_7 = models.IntegerField()
    payment_8 = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'mod_attraits'
    def __unicode__(self):
        return self.name_fr


class ModAttraitsCategories(models.Model):#link#
    id = models.SmallIntegerField(primary_key=True)
    title_fr = models.CharField(max_length=255)
    title_en = models.CharField(max_length=255)
    url_fr = models.CharField(max_length=255)
    url_en = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'mod_attraits_categories'
    def __unicode__(self):
        return self.title_fr


class ModAttraitsDocuments(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    parent_id = models.IntegerField(blank=True, null=True)#ModAttraits
    title_en = models.TextField()
    title_fr = models.TextField()
    document = models.TextField()

    class Meta:
        managed = False
        db_table = 'mod_attraits_documents'


class ModAttraitsPhotos(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    parent_id = models.IntegerField()#ModAttraits
    title_en = models.TextField()
    title_fr = models.TextField()
    image = models.TextField()
    main = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'mod_attraits_photos'
    def __unicode__(self):
        return self.title_fr



class ModDocuments(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    name = models.TextField()
    rank = models.IntegerField()
    category = models.IntegerField()
    datetime = models.DateTimeField()
    title_fr = models.TextField()
    description_fr = models.TextField()
    title_en = models.TextField()
    description_en = models.TextField()

    class Meta:
        managed = False
        db_table = 'mod_documents'
    def __unicode__(self):
        return self.title_fr


class ModDocumentsCats(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    rank = models.IntegerField()
    title_fr = models.TextField()
    title_en = models.TextField()
    description_fr = models.TextField()
    description_en = models.TextField()

    class Meta:
        managed = False
        db_table = 'mod_documents_cats'


class ModHebergement(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    city = models.TextField()
    postal_code = models.TextField()
    tel = models.TextField()
    cell = models.TextField()
    toll_free = models.TextField()
    fax = models.TextField()
    email = models.TextField()
    website = models.TextField()
    website2 = models.TextField()
    google_maps = models.TextField()
    facebook = models.TextField()
    twitter = models.TextField()
    foursquare = models.TextField()
    tripadvisor = models.TextField()
    service_restaurant = models.IntegerField()
    name_fr = models.TextField()
    description_fr = models.TextField()
    address_fr = models.TextField()
    activities_fr = models.TextField()
    services_fr = models.TextField()
    service_restaurant_description_fr = models.TextField()
    name_en = models.TextField()
    description_en = models.TextField()
    address_en = models.TextField()
    activities_en = models.TextField()
    services_en = models.TextField()
    service_restaurant_description_en = models.TextField()
    logo = models.TextField()
    main_photo = models.CharField(max_length=255)
    units_fr = models.TextField()
    units_equipement_fr = models.TextField()
    beds_fr = models.TextField()
    fees_fr = models.TextField()
    units_en = models.TextField()
    units_equipement_en = models.TextField()
    beds_en = models.TextField()
    fees_en = models.TextField()
    flickr_photoset_id = models.TextField()
    gallery_type = models.IntegerField()
    flickr_show_amount = models.SmallIntegerField()
    flickr_user = models.TextField()
    url_fr = models.TextField()
    url_en = models.TextField()
    payment_1 = models.IntegerField()
    payment_2 = models.IntegerField()
    payment_3 = models.IntegerField()
    payment_4 = models.IntegerField()
    payment_5 = models.IntegerField()
    payment_6 = models.IntegerField()
    payment_7 = models.IntegerField()
    payment_8 = models.IntegerField()
    season_spring = models.IntegerField()
    season_summer = models.IntegerField()
    season_fall = models.IntegerField()
    season_winter = models.IntegerField()
    period_start_month = models.CharField(max_length=2)
    period_start_day = models.CharField(max_length=2)
    period_end_month = models.CharField(max_length=2)
    period_end_day = models.CharField(max_length=2)

    class Meta:
        managed = False
        db_table = 'mod_hebergement'
    def __unicode__(self):
        return self.name_fr


class ModHebergementPhotos(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    parent_id = models.IntegerField(blank=True, null=True)#ModHebergement
    title_en = models.TextField()
    title_fr = models.TextField()
    image = models.TextField()

    class Meta:
        managed = False
        db_table = 'mod_hebergement_photos'



class ModHebergementTypesList(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    title_fr = models.CharField(max_length=255)
    title_en = models.CharField(max_length=255)
    url_fr = models.CharField(max_length=255)
    url_en = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'mod_hebergement_types_list'


class ModHebergementTypes(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    parent_id = models.IntegerField(blank=True, null=True)#ModHebergement
    type = models.IntegerField()#ModHebergementTypesList

    class Meta:
        managed = False
        db_table = 'mod_hebergement_types'



class ModRestauration(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    breakfast = models.IntegerField()
    lunch = models.IntegerField()
    supper = models.IntegerField()
    city = models.TextField()
    postal_code = models.TextField()
    tel = models.TextField()
    cell = models.TextField()
    toll_free = models.TextField()
    fax = models.TextField()
    email = models.TextField()
    website = models.TextField()
    website2 = models.TextField()
    google_maps = models.TextField()
    facebook = models.TextField()
    twitter = models.TextField()
    foursquare = models.TextField()
    tripadvisor = models.TextField()
    groups = models.IntegerField()
    name_fr = models.TextField()
    description_fr = models.TextField()
    address_fr = models.TextField()
    groups_description_fr = models.TextField()
    name_en = models.TextField()
    description_en = models.TextField()
    address_en = models.TextField()
    groups_description_en = models.TextField()
    logo = models.TextField()
    main_photo = models.CharField(max_length=255)
    quality_indicator_fr = models.TextField()
    quality_indicator_en = models.TextField()
    food_type_fr = models.TextField()
    food_type_en = models.TextField()
    number_places_fr = models.TextField()
    number_places_en = models.TextField()
    alcool_allowed = models.IntegerField()
    fee = models.IntegerField()
    flickr_photoset_id = models.TextField()
    gallery_type = models.IntegerField()
    flickr_show_amount = models.SmallIntegerField()
    flickr_user = models.TextField()
    url_fr = models.TextField()
    url_en = models.TextField()
    payment_1 = models.IntegerField()
    payment_2 = models.IntegerField()
    payment_3 = models.IntegerField()
    payment_4 = models.IntegerField()
    payment_5 = models.IntegerField()
    payment_6 = models.IntegerField()
    payment_7 = models.IntegerField()
    payment_8 = models.IntegerField()
    season_spring = models.IntegerField()
    season_summer = models.IntegerField()
    season_fall = models.IntegerField()
    season_winter = models.IntegerField()
    period_start_month = models.CharField(max_length=2)
    period_start_day = models.CharField(max_length=2)
    period_end_month = models.CharField(max_length=2)
    period_end_day = models.CharField(max_length=2)

    class Meta:
        managed = False
        db_table = 'mod_restauration'
    def __unicode__(self):
        return self.name_fr


class ModRestaurationPhotos(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    parent_id = models.IntegerField(blank=True, null=True)#ModRestauration
    title_en = models.TextField()
    title_fr = models.TextField()
    image = models.TextField()

    class Meta:
        managed = False
        db_table = 'mod_restauration_photos'

