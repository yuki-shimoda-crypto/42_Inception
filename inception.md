### PHP Extensions

WordPress core makes use of various PHP extensions when they’re available. If the preferred extension is missing WordPress will either have to do more work to do the task the module helps with or, in the worst case, will remove functionality. All the extensions are for installations with PHP >= 7.4.

#### The PHP extensions listed below are required for a WordPress site to work.

- [x] json (bundled in >=8.0.0) – Used for communications with other servers and processing data in JSON format.
  - bundled
- [x] One of either mysqli (bundled in >=5.0.0), or mysqlnd – Connects to MySQL for database interactions.
  - bundled

#### The PHP extensions listed below are highly recommended in order to allow WordPress to operate optimally and to maximise compatibility with many popular plugins and themes.

- [x] curl (PHP >= 7.3 requires libcurl >= 7.15.5; PHP >= 8.0 requires libcurl >= 7.29.0) – Performs remote request operations.
  
  - php-curl
  - php8.2-curl

- [x] dom (requires libxml) – Used to validate Text Widget content and to automatically configure IIS7+.
  
  - enabled by default
    - [Document Object Model](https://www.php.net/manual/en/dom.installation.php)
    - [install](https://www.php.net/manual/en/dom.installation.php)

- [x] exif (requires php-mbstring) – Works with metadata stored in images.
  
  ```
  php -i | grep EXIF
  ```
  
  ```
  php -i | grep EXIF
  EXIF Support => enabled
  Supported EXIF Version => 0220
  Extended EXIF tag formats => Canon, Casio, Fujifilm, Nikon, Olympus, Samsung, Panasonic, DJI, Sony, Pentax, Minolta, Sigma, Foveon, Kyocera, Ricoh, AGFA, Epson
  ```

- [x] fileinfo (bundled in PHP) – Used to detect mimetype of file uploads.
  
  - bundled

- [x] hash (bundled in PHP >=5.1.2) – Used for hashing, including passwords and update packages.
  
  - bundled

- [x] igbinary – Increases performance as a drop in replacement for the standard PHP serializer.
  
  - php-igbinary
  - php8.2-igbinary

- [x] imagick (requires ImageMagick >= 6.2.4) – Provides better image quality for media uploads. See WP_Image_Editor for details. Smarter image resizing (for smaller images) and PDF thumbnail support, when Ghost Script is also available.
  
  - php-imagick
  - php8.2-imagick

- [x] intl (PHP >= 7.4.0 requires ICU >= 50.1) – Enable to perform locale-aware operations including but not limited to formatting, transliteration, encoding conversion, calendar operations, conformant collation, locating text boundaries and working with locale identifiers, timezones and graphemes.
  
  - php-intl
  - php8.2-intl

- [x] mbstring – Used to properly handle UTF8 text.
  
  - php-mbstring
  - php8.2-mbstring

- [x] openssl (PHP 7.1-8.0 requires OpenSSL >= 1.0.1 / < 3.0; PHP >= 8.1 requires OpenSSL >= 1.0.2 / < 4.0) – SSL-based connections to other hosts.
  
  ```
  php -i | grep OpenSSL
  ```
  
  ```
    OpenSSL support => enabled
    OpenSSL Library Version => OpenSSL 3.0.11 19 Sep 2023
    OpenSSL Header Version => OpenSSL 3.0.9 30 May 2023
    Native OpenSSL support => enabled
  ```

- [x] pcre (bundled in PHP >= 7.0 recommended PCRE 8.10) – Increases performance of pattern matching in code searches.
  
  - bundled

- [x] xml (requires libxml) – Used for XML parsing, such as from a third-party site.
  
  - php-xml
  - php8.2-xml

- [x] zip (requires libzip >= 0.11; recommended libzip >= 1.6) – Used for decompressing Plugins, Themes, and WordPress update packages.
  
  - php-zip
  - php8.2-zip

### PHP-Nginx

- [x] cgi
  
  - php-cgi
  
  - php8.2-cgi
    
    ```bash
    apt install php-curl php-igbinary php-imagick php-intl php-mbstring php-xml php-zip php-cgi
    ```

## 参考文献

### 公式

- [WordPress のインストール](https://ja.wordpress.org/support/article/how-to-install-wordpress/#top)
- [WordPress の要件](https://ja.wordpress.org/about/requirements/)
- [PHP 拡張の推奨詳細](https://make.wordpress.org/hosting/handbook/server-environment/#php-extensions)
- [Nginx](https://ja.wordpress.org/support/article/nginx/)