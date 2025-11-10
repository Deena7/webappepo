from django.core.management.base import BaseCommand
from django.contrib.auth.hashers import make_password
from grocery.models import UserProfile

def is_hashed(password):
    # Django hashed passwords start with the algorithm prefix, e.g. 'pbkdf2_sha256$'
    return password.startswith('pbkdf2_') or password.startswith('argon2$') or password.startswith('bcrypt$')

class Command(BaseCommand):
    help = 'Hashes all plain text passwords in UserProfile table.'

    def handle(self, *args, **options):
        users = UserProfile.objects.all()
        updated = 0
        for user in users:
            if not is_hashed(user.password):
                user.password = make_password(user.password)
                user.save()
                updated += 1
        self.stdout.write(self.style.SUCCESS(f'Updated {updated} user(s) with hashed passwords.'))
