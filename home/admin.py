from home.models import Question, QuestionComment
from django.contrib import admin

admin.site.register(QuestionComment)
@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
    list_display = ['id', 'topic', 'field', 'user', 'timestamp']
    list_display_links = ['id', 'topic']
    search_fields = ['topic', 'field']
    fieldsets = (
        (None, {
            'classes': ('wide', 'extrapretty'),
            "fields": (
                'user', 'topic', 'slug', 'field',
            ),
        }),
        ("Question", {
            'classes': ('wide', 'extrapretty'),
            "fields": (
                'question',
            ),
        }),
        ("Important Dates", {
            'classes': ('wide', 'extrapretty'),
            "fields": (
                'timestamp',
            ),
        }),
    )
    list_filter = ['field']
    
