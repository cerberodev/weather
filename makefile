apk: pub_get build_runner
	flutter build apk --$(m) --flavor $(e) -t lib/main_$(e).dart

aab: pub_get build_runner
	flutter build appbundle --flavor $(e) -t lib/main_$(e).dart

run: pub_get build_runner
	flutter run --flavor $(e) -t lib/main_$(e).dart

ipa: pub_get build_runner
	flutter build ipa --flavor $(e) -t lib/main_$(e).dart

ios: pub_get build_runner
	flutter build ios --flavor $(e) -t lib/main_$(e).dart

pub_get:
	flutter pub get
	
build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs