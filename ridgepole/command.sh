# run rigepole
ridgepole -c database.yml -E development --apply --dry-run -f schemas/Schemafile
ridgepole -c database.yml -E development --apply -f schemas/Schemafile

# run rigepole
ridgepole -c database.yml -E development --apply -f Schemafile

# export
ridgepole -c database.yml -E development --export --output schemas/Schemafile
ridgepole -c database.yml -E development --export --split --output schemas/Schemafile

# diff
ridgepole -E development --diff database.yml schemas/Schemafile

# diff by db each config
ridgepole --diff production.yml development.yml
