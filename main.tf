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
}

resource "snowflake_database" "demo_db_jk" {
  account = "SUNLIFE-CORPDPEP"
  username = "hol_user_24"
  name    = "JASMINE_KALRA_DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}