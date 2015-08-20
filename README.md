# cPanel-wp-management
WordPress Management for cPanel Servers contains a series of scripts designed to easily manage WordPress sites server-wise as opposed to an individual basis.  These are indended to be used by admins of cPanel servers where all or many accounts use WordPress as their CMS.  They can be used to find information or apply updates at a much faster rate than other current methods.

## Requirements

1. cPanel server with root/su access
2. WP-CLI - see http://wp-cli.org/ for installation instructions

These scripts cycle through all accounts on the server, assuming they use WordPress on the account's main site.  Accounts can be excluded from these scripts by editing the "nonwp" file.  While these scripts should be called with su/root privliges, they will actually be run under each individual user account as they cycle.  Therefore accounts wished to utilize these scripts must have shell access enabled.

## Scripts and Instructions

`./wp-verify.sh` - Checks the checksums of WP core files versus wordpress.org .

`./wp-version.sh` - Shows the current version of WordPress installed.

`./plugin-status.sh` - Lists all of the plugins and their statuses.

`./plugin-update.sh *plugin name*` - Searches for the inputted plugin with the accounts and updates it if it is found.  This must be entered as the plugin's folder name.  For example, "wordpress-seo" should be used rather than "Yoast SEO":
 `./plugin-update.sh wordpress-seo`

 `./plugin-search.sh *plugin name*` - Searches the accounts for the inputted plugin and returns its status.  This must be entered as the plugin's folder name.

`./theme-status.sh` - Lists all of the themes and their statuses.

`./theme-update.sh *theme name*` - Searches for the inputted theme with the accounts and updates it if it is found.  This must be entered as the theme's folder name.

`./theme-search.sh *theme name*` - Searches the accounts for the inputted theme and returns its status.  This must be entered as the theme's folder name.

`./update-wp.sh *version number*` - Updates WP core and database to the given version number.

`./auto-plugin.update.sh` - Updates all plugins that have updates available on the account.

`./auto-theme.update.sh` - Updates all themes that have updates available on the account.
