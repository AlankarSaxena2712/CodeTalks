# Generated by Django 3.2.5 on 2021-07-31 19:28

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Question',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('topic', models.CharField(max_length=150)),
                ('field', models.CharField(choices=[('development', 'Development'), ('competetiveCoding', 'Competetive Coding')], max_length=20)),
                ('question', models.TextField()),
                ('timestamp', models.DateTimeField(default=django.utils.timezone.now)),
            ],
        ),
    ]