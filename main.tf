terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "sky_org"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
    snowflake_account = "SUNLIFE-CORPDPEP"
    snowflake_username = "hol_user_24"
}

resource "snowflake_database" "demo_db_jk" {
  name    = "JASMINE_KALRA_DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}