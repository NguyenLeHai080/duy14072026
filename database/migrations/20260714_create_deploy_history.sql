CREATE TABLE IF NOT EXISTS wp_homelab_deploy_history (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  deployed_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  note VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO wp_homelab_deploy_history (note)
VALUES ('Git production deployment enabled');

