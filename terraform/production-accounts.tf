module "nuclea-teste-2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "nuclea-aws-accounts+nuclea-teste-2@nuclea.com.br"
    AccountName  = "nuclea-teste-2"
    ManagedOrganizationalUnit = "PRD (ou-2q9f-xqhtmyku)"
    SSOUserEmail     = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName = "Sustentacao"
    SSOUserLastName  = "Cloud"
  }

  account_tags = {
    "Centro de Custo"    = "203003"
    "Serviço"            = "999901"
    "Finalidade"         = "777"
    "Conta Contabil"     = "411204"
    "Ambiente"           = "PRD"
    "backup"             = "yes"
    "deployedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Projetos Cloud"
    change_reason       = "Conta de Desenvolvimeto para o CDE de Arquitetura"
  }

  custom_fields           = merge(local.aft_environment_parameters_saopaulo, {
    ipam_pool_id          = "ipam-pool-xxxxxxxxxxxxx"
    dns_private_zone      = "nuclea-teste-2"
    atlas_account         = false
    account_name          = "nuclea-teste-2"
    cloudflow_enable      = false
  })

  account_customizations_name = "production-customizations"
}

module "nuclea-teste-3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "nuclea-aws-accounts+nuclea-teste-3@nuclea.com.br"
    AccountName  = "nuclea-teste-3"
    ManagedOrganizationalUnit = "PRD (ou-2q9f-v8x6ldc0)"
    SSOUserEmail     = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName = "Sustentacao"
    SSOUserLastName  = "Cloud"
  }

  account_tags = {
    "Centro de Custo"    = "202006"
    "Serviço"            = "131105"
    "Finalidade"         = "777"
    "Conta Contabil"     = "010302"
    "Ambiente"           = "PRD"
    "backup"             = "yes"
    "deployedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Projetos Cloud"
    change_reason       = "Conta de Desenvolvimeto para R2C3"
  }

  custom_fields           = merge(local.aft_environment_parameters_saopaulo, {
    ipam_pool_id          = "ipam-pool-xxxxxxxxxxxxx"
    dns_private_zone      = "nuclea-teste-3"
    atlas_account         = false
    account_name          = "nuclea-teste-3"
    cloudflow_enable      = false
  })

  account_customizations_name = "production-customizations"
}

module "nuclea-teste1-PRD" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "nuclea-aws-accounts+nuclea-teste1-PRD@nuclea.com.br"
    AccountName  = "nuclea-teste1-PRD"
    ManagedOrganizationalUnit = "PRD (ou-2q9f-4el7724y)"
    SSOUserEmail     = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName = "Sustentacao"
    SSOUserLastName  = "Cloud"
  }

  account_tags = {
    "Centro de Custo"    = "305002"
    "Serviço"            = "020705"
    "Finalidade"         = "003"
    "Conta Contabil"     = "131105"
    "Ambiente"           = "PRD"
    "backup"             = "yes"
    "deployedBy"         = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Projetos Cloud"
    change_reason       = "Conta de Desenvolvimeto para o projeto Firmas e Poderes"
  }

  custom_fields           = merge(local.aft_environment_parameters_saopaulo, {
    ipam_pool_id          = "ipam-pool-xxxxxxxxxxxxx"
    dns_private_zone      = "nuclea-teste1-PRD"
    atlas_account         = false
    account_name          = "nuclea-teste1-PRD"
    cloudflow_enable      = false
  })

  account_customizations_name = "production-customizations"
}

# ---- AFT GENERATED START: nuclea-abacaxi-prd ----
module "nuclea-abacaxi-prd" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail               = "nuclea-aws-accounts+nuclea-abacaxi-prd@nuclea.com.br"
    AccountName                = "nuclea-abacaxi-prd"
    ManagedOrganizationalUnit  = "PRD (ou-v72j-awvhvkga)"
    SSOUserEmail               = "sustentacaocloud@nuclea.com.br"
    SSOUserFirstName           = "Sustentacao"
    SSOUserLastName            = "Cloud"
  }

  account_tags = {
    "Centro de Custo" = "55566"
    "Serviço"         = "56585"
    "Finalidade"      = "65656"
    "Conta Contabil"  = "585858"
    "Ambiente"        = "PRD"
    "backup"          = "yes"
    "deployedBy"      = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Cloud Sustentacao"
    change_reason       = "Conta criada a partir do módulo account-request do AFT"
  }

  custom_fields = merge(local.aft_environment_parameters_saopaulo, {
    ipam_pool_id     = "ipam-pool-prd-0001"
    dns_private_zone = "nuclea-abacaxi-prd"
    atlas_account    = false
    account_name     = "nuclea-abacaxi-prd"
    cloudflow_enable = false
  })

  account_customizations_name = "production-customizations"
}

# ---- AFT GENERATED END:   nuclea-abacaxi-prd ----

