# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-01-30 19:29
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('modelstest', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ModAttraits',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('dates', models.IntegerField()),
                ('city', models.TextField()),
                ('postal_code', models.TextField()),
                ('tel', models.TextField()),
                ('cell', models.TextField()),
                ('toll_free', models.CharField(max_length=20)),
                ('fax', models.TextField()),
                ('email', models.TextField()),
                ('website', models.TextField()),
                ('website2', models.TextField()),
                ('google_maps', models.TextField()),
                ('facebook', models.TextField()),
                ('twitter', models.TextField()),
                ('foursquare', models.TextField()),
                ('tripadvisor', models.TextField()),
                ('service_restaurant', models.IntegerField()),
                ('service_disability', models.IntegerField()),
                ('groups', models.IntegerField()),
                ('name_fr', models.TextField()),
                ('description_fr', models.TextField()),
                ('address_fr', models.TextField()),
                ('activities_fr', models.TextField()),
                ('services_fr', models.TextField()),
                ('quality_indicator_fr', models.TextField()),
                ('service_restaurant_description_fr', models.TextField()),
                ('service_disability_description_fr', models.TextField()),
                ('groups_description_fr', models.TextField()),
                ('name_en', models.TextField()),
                ('description_en', models.TextField()),
                ('address_en', models.TextField()),
                ('activities_en', models.TextField()),
                ('services_en', models.TextField()),
                ('quality_indicator_en', models.TextField()),
                ('service_restaurant_description_en', models.TextField()),
                ('service_disability_description_en', models.TextField()),
                ('groups_description_en', models.TextField()),
                ('logo', models.TextField()),
                ('main_photo', models.CharField(max_length=255)),
                ('dates_custom_fr', models.TextField()),
                ('dates_custom_en', models.TextField()),
                ('flickr_photoset_id', models.TextField()),
                ('flickr_show_amount', models.SmallIntegerField()),
                ('flickr_user', models.TextField()),
                ('gallery_type', models.IntegerField()),
                ('url_fr', models.TextField()),
                ('url_en', models.TextField()),
                ('fees_fr', models.TextField()),
                ('fees_en', models.TextField()),
                ('type', models.IntegerField()),
                ('vedette', models.IntegerField()),
                ('season_spring', models.IntegerField()),
                ('season_summer', models.IntegerField()),
                ('season_fall', models.IntegerField()),
                ('season_winter', models.IntegerField()),
                ('date_start', models.DateField(blank=True, null=True)),
                ('date_end', models.DateField(blank=True, null=True)),
                ('period_start_month', models.CharField(max_length=2)),
                ('period_start_day', models.CharField(max_length=2)),
                ('period_end_month', models.CharField(max_length=2)),
                ('period_end_day', models.CharField(max_length=2)),
                ('cat_0', models.IntegerField()),
                ('cat_1', models.IntegerField()),
                ('cat_2', models.IntegerField()),
                ('cat_3', models.IntegerField()),
                ('payment_1', models.IntegerField()),
                ('payment_2', models.IntegerField()),
                ('payment_3', models.IntegerField()),
                ('payment_4', models.IntegerField()),
                ('payment_5', models.IntegerField()),
                ('payment_6', models.IntegerField()),
                ('payment_7', models.IntegerField()),
                ('payment_8', models.IntegerField()),
            ],
            options={
                'db_table': 'mod_attraits',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModAttraitsCategories',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('title_fr', models.CharField(max_length=255)),
                ('title_en', models.CharField(max_length=255)),
                ('url_fr', models.CharField(max_length=255)),
                ('url_en', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'mod_attraits_categories',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModAttraitsDocuments',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('parent_id', models.IntegerField(blank=True, null=True)),
                ('title_en', models.TextField()),
                ('title_fr', models.TextField()),
                ('document', models.TextField()),
            ],
            options={
                'db_table': 'mod_attraits_documents',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModAttraitsPhotos',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('parent_id', models.IntegerField()),
                ('title_en', models.TextField()),
                ('title_fr', models.TextField()),
                ('image', models.TextField()),
                ('main', models.IntegerField()),
            ],
            options={
                'db_table': 'mod_attraits_photos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModHebergement',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('city', models.TextField()),
                ('postal_code', models.TextField()),
                ('tel', models.TextField()),
                ('cell', models.TextField()),
                ('toll_free', models.TextField()),
                ('fax', models.TextField()),
                ('email', models.TextField()),
                ('website', models.TextField()),
                ('website2', models.TextField()),
                ('google_maps', models.TextField()),
                ('facebook', models.TextField()),
                ('twitter', models.TextField()),
                ('foursquare', models.TextField()),
                ('tripadvisor', models.TextField()),
                ('service_restaurant', models.IntegerField()),
                ('name_fr', models.TextField()),
                ('description_fr', models.TextField()),
                ('address_fr', models.TextField()),
                ('activities_fr', models.TextField()),
                ('services_fr', models.TextField()),
                ('service_restaurant_description_fr', models.TextField()),
                ('name_en', models.TextField()),
                ('description_en', models.TextField()),
                ('address_en', models.TextField()),
                ('activities_en', models.TextField()),
                ('services_en', models.TextField()),
                ('service_restaurant_description_en', models.TextField()),
                ('logo', models.TextField()),
                ('main_photo', models.CharField(max_length=255)),
                ('units_fr', models.TextField()),
                ('units_equipement_fr', models.TextField()),
                ('beds_fr', models.TextField()),
                ('fees_fr', models.TextField()),
                ('units_en', models.TextField()),
                ('units_equipement_en', models.TextField()),
                ('beds_en', models.TextField()),
                ('fees_en', models.TextField()),
                ('flickr_photoset_id', models.TextField()),
                ('gallery_type', models.IntegerField()),
                ('flickr_show_amount', models.SmallIntegerField()),
                ('flickr_user', models.TextField()),
                ('url_fr', models.TextField()),
                ('url_en', models.TextField()),
                ('payment_1', models.IntegerField()),
                ('payment_2', models.IntegerField()),
                ('payment_3', models.IntegerField()),
                ('payment_4', models.IntegerField()),
                ('payment_5', models.IntegerField()),
                ('payment_6', models.IntegerField()),
                ('payment_7', models.IntegerField()),
                ('payment_8', models.IntegerField()),
                ('season_spring', models.IntegerField()),
                ('season_summer', models.IntegerField()),
                ('season_fall', models.IntegerField()),
                ('season_winter', models.IntegerField()),
                ('period_start_month', models.CharField(max_length=2)),
                ('period_start_day', models.CharField(max_length=2)),
                ('period_end_month', models.CharField(max_length=2)),
                ('period_end_day', models.CharField(max_length=2)),
            ],
            options={
                'db_table': 'mod_hebergement',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModHebergementPhotos',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('parent_id', models.IntegerField(blank=True, null=True)),
                ('title_en', models.TextField()),
                ('title_fr', models.TextField()),
                ('image', models.TextField()),
            ],
            options={
                'db_table': 'mod_hebergement_photos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModHebergementTypes',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('parent_id', models.IntegerField(blank=True, null=True)),
                ('type', models.IntegerField()),
            ],
            options={
                'db_table': 'mod_hebergement_types',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModHebergementTypesList',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('title_fr', models.CharField(max_length=255)),
                ('title_en', models.CharField(max_length=255)),
                ('url_fr', models.CharField(max_length=255)),
                ('url_en', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'mod_hebergement_types_list',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModRestauration',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('breakfast', models.IntegerField()),
                ('lunch', models.IntegerField()),
                ('supper', models.IntegerField()),
                ('city', models.TextField()),
                ('postal_code', models.TextField()),
                ('tel', models.TextField()),
                ('cell', models.TextField()),
                ('toll_free', models.TextField()),
                ('fax', models.TextField()),
                ('email', models.TextField()),
                ('website', models.TextField()),
                ('website2', models.TextField()),
                ('google_maps', models.TextField()),
                ('facebook', models.TextField()),
                ('twitter', models.TextField()),
                ('foursquare', models.TextField()),
                ('tripadvisor', models.TextField()),
                ('groups', models.IntegerField()),
                ('name_fr', models.TextField()),
                ('description_fr', models.TextField()),
                ('address_fr', models.TextField()),
                ('groups_description_fr', models.TextField()),
                ('name_en', models.TextField()),
                ('description_en', models.TextField()),
                ('address_en', models.TextField()),
                ('groups_description_en', models.TextField()),
                ('logo', models.TextField()),
                ('main_photo', models.CharField(max_length=255)),
                ('quality_indicator_fr', models.TextField()),
                ('quality_indicator_en', models.TextField()),
                ('food_type_fr', models.TextField()),
                ('food_type_en', models.TextField()),
                ('number_places_fr', models.TextField()),
                ('number_places_en', models.TextField()),
                ('alcool_allowed', models.IntegerField()),
                ('fee', models.IntegerField()),
                ('flickr_photoset_id', models.TextField()),
                ('gallery_type', models.IntegerField()),
                ('flickr_show_amount', models.SmallIntegerField()),
                ('flickr_user', models.TextField()),
                ('url_fr', models.TextField()),
                ('url_en', models.TextField()),
                ('payment_1', models.IntegerField()),
                ('payment_2', models.IntegerField()),
                ('payment_3', models.IntegerField()),
                ('payment_4', models.IntegerField()),
                ('payment_5', models.IntegerField()),
                ('payment_6', models.IntegerField()),
                ('payment_7', models.IntegerField()),
                ('payment_8', models.IntegerField()),
                ('season_spring', models.IntegerField()),
                ('season_summer', models.IntegerField()),
                ('season_fall', models.IntegerField()),
                ('season_winter', models.IntegerField()),
                ('period_start_month', models.CharField(max_length=2)),
                ('period_start_day', models.CharField(max_length=2)),
                ('period_end_month', models.CharField(max_length=2)),
                ('period_end_day', models.CharField(max_length=2)),
            ],
            options={
                'db_table': 'mod_restauration',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ModRestaurationPhotos',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('parent_id', models.IntegerField(blank=True, null=True)),
                ('title_en', models.TextField()),
                ('title_fr', models.TextField()),
                ('image', models.TextField()),
            ],
            options={
                'db_table': 'mod_restauration_photos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='MyStay',
            fields=[
                ('id', models.SmallIntegerField(primary_key=True, serialize=False)),
                ('ip_address', models.CharField(max_length=20)),
                ('datetime', models.DateTimeField()),
                ('type', models.IntegerField()),
                ('type_id', models.IntegerField()),
            ],
            options={
                'db_table': 'my_stay',
                'managed': False,
            },
        ),
    ]
