module "nuclea-teste-2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "nuclea-aws-accounts+nuclea-teste-2@nuclea.com.br"
    AccountName  = "nuclea-teste-2"
    ManagedOrganizationalUnit = "DEV (ou-2q9f-xqhtmyku)"
    SSOUserEmail     = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName = "Sustentacao"
    SSOUserLastName  = "Cloud"
  }

  account_tags = {
    "Centro de Custo"    = "203003"
    "Serviço"            = "999901"
    "Finalidade"         = "777"
    "Conta Contabil"     = "411204"
    "Ambiente"           = "DEV"
    "backup"             = "yes"
    "deployedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Projetos Cloud"
    change_reason       = "Conta de Desenvolvimeto para o CDE de Arquitetura"
  }

  custom_fields           = merge(local.aft_environment_parameters_virginia, {
    ipam_pool_id          = "ipam-pool-xxxxxxxxxxxxx"
    dns_private_zone      = "nuclea-teste-2"
    atlas_account         = false
    account_name          = "nuclea-teste-2"
    cloudflow_enable      = false
  })

  account_customizations_name = "development-customizations"
}

module "nuclea-teste-3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "nuclea-aws-accounts+nuclea-teste-3@nuclea.com.br"
    AccountName  = "nuclea-teste-3"
    ManagedOrganizationalUnit = "DEV (ou-2q9f-v8x6ldc0)"
    SSOUserEmail     = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName = "Sustentacao"
    SSOUserLastName  = "Cloud"
  }

  account_tags = {
    "Centro de Custo"    = "202006"
    "Serviço"            = "131105"
    "Finalidade"         = "777"
    "Conta Contabil"     = "010302"
    "Ambiente"           = "DEV"
    "backup"             = "yes"
    "deployedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Projetos Cloud"
    change_reason       = "Conta de Desenvolvimeto para R2C3"
  }

  custom_fields           = merge(local.aft_environment_parameters_virginia, {
    ipam_pool_id          = "ipam-pool-xxxxxxxxxxxxx"
    dns_private_zone      = "nuclea-teste-3"
    atlas_account         = false
    account_name          = "nuclea-teste-3"
    cloudflow_enable      = false
  })

  account_customizations_name = "development-customizations"
}

module "nuclea-teste1-dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "nuclea-aws-accounts+nuclea-teste1-dev@nuclea.com.br"
    AccountName  = "nuclea-teste1-dev"
    ManagedOrganizationalUnit = "DEV (ou-2q9f-4el7724y)"
    SSOUserEmail     = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName = "Sustentacao"
    SSOUserLastName  = "Cloud"
  }

  account_tags = {
    "Centro de Custo"    = "305002"
    "Serviço"            = "020705"
    "Finalidade"         = "003"
    "Conta Contabil"     = "131105"
    "Ambiente"           = "DEV"
    "backup"             = "yes"
    "deployedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Projetos Cloud"
    change_reason       = "Conta de Desenvolvimeto para o projeto Firmas e Poderes"
  }

  custom_fields           = merge(local.aft_environment_parameters_virginia, {
    ipam_pool_id          = "ipam-pool-xxxxxxxxxxxxx"
    dns_private_zone      = "nuclea-teste1-dev"
    atlas_account         = false
    account_name          = "nuclea-teste1-dev"
    cloudflow_enable      = false
  })

  account_customizations_name = "development-customizations"
}

# ---- AFT GENERATED START: nuclea-abacaxi-dev ----
module "nuclea-abacaxi-dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail               = "nuclea-aws-accounts+nuclea-abacaxi-dev@nuclea.com.br"
    AccountName                = "nuclea-abacaxi-dev"
    ManagedOrganizationalUnit  = "DEV (ou-v72j-ptu2mxaa)"
    SSOUserEmail               = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName           = "Sustentacao"
    SSOUserLastName            = "Cloud"
  }

  account_tags = {
    "Centro de Custo" = "656"
    "Serviço"         = "656"
    "Finalidade"      = "656"
    "Conta Contabil"  = "65656"
    "Ambiente"        = "DEV"
    "backup"          = "yes"
    "deployedBy"      = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Cloud Sustentacao"
    change_reason       = "Conta criada a partir do módulo account-request do AFT"
  }

  custom_fields = merge(local.aft_environment_parameters_virginia, {
    ipam_pool_id     = "ipam-pool-dev-0001"
    dns_private_zone = "nuclea-abacaxi-dev"
    atlas_account    = false
    account_name     = "nuclea-abacaxi-dev"
    cloudflow_enable = false
  })

  account_customizations_name = "development-customizations"
}

# ---- AFT GENERATED END:   nuclea-abacaxi-dev ----

