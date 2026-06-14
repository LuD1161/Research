.PHONY: start stop status setup reset logs wp

# Bring up the stack (detached)
start:
	docker compose up -d

# Stop containers without removing volumes
stop:
	docker compose down

# Show running container status
status:
	docker compose ps

# Start the stack and run the plugin setup script inside the wpcli container
setup: start
	docker compose exec wpcli sh /setup-plugins.sh

# Tear down (including volumes), bring back up, and run setup
reset:
	docker compose down -v
	docker compose up -d
	docker compose exec wpcli sh /setup-plugins.sh

# Tail logs for all services (Ctrl-C to stop)
logs:
	docker compose logs -f

# Run an arbitrary WP-CLI command inside the wpcli container.
# Usage: make wp CMD="plugin list --status=active"
wp:
	docker compose exec wpcli wp --allow-root --path=/var/www/html $(CMD)
