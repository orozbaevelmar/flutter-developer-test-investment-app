.DEFAULT_GOAL := list
list:
	@printf "%-20s %s\n" "Target" "Description"
	@printf "%-20s %s\n" "------" "-----------"
	@make -pqR : 2>/dev/null \
			| awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' \
			| sort \
			| egrep -v -e '^[^[:alnum:]]' -e '^$@$$' \
			| xargs -I _ sh -c 'printf "%-20s " _; make _ -nB | (grep -i "^# Help:" || echo "") | tail -1 | sed "s/^# Help: //g"'

.PHONY: test
test:
	@# Help: Run tests
	@flutter test
g:
	@# Help: Install dependencies
	@flutter clean && flutter pub get
ios:
	@# Help: Install dependencies
	@flutter clean && flutter pub get && cd ios && pod install
apk_dev:
	@# Help: Install dependencies
	@flutter clean && flutter pub get
	@flutter build apk --debug --flavor dev
apk_prod:
	@# Help: Install dependencies
	@flutter clean && flutter pub get
	@flutter build apk --flavor prod --dart-define=FLAVOR=prod
apk_release:
	@# Help: Install dependencies
	@flutter clean && flutter pub get
	@flutter build apk --release --flavor prod
aab:
	@# Help: Install dependencies
	@flutter clean && flutter pub get
	@flutter build appbundle --flavor prod --dart-define=FLAVOR=prod
get:
	@# Help: Install dependencies
	@flutter pub get
update:
	@# Help: Update dependencies
	@flutter pub upgrade
clean:
	@# Help: Clear project 
	@rm -rf ./build ./.dart_tool
run:
	@# Help: Run app
	@flutter run
check:
	@# Help: Run code checks
	@flutter analyze
build_runner:
	@# Help: Run build_runner
	@flutter packages pub run build_runner build --delete-conflicting-outputs
build_delete:
	@# Help: Run build_runner delete conficts
	@flutter packages pub run build_runner build --delete-conflicting-outputs
build_gen:
	@# Help: Run build_runner for flutter_gen_runner
	@flutter pub run build_runner build --delete-conflicting-outputs
build_locale:
	@# Help: Run build_runner for flutter_gen for localization
	@flutter pub run intl_utils:generate

