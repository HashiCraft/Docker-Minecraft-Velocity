network "local" {
  subnet = "10.10.0.0/16"
}

container "velocity" {

  network {
    name = "network.local"
  }

  image {
    name = "hashicraft/velocity:v1.1.5"
  }
  
  volume {
    source = "./"
    destination = "/minecraft/mods"
  }
  
  volume {
    source = "./config/velocity.toml"
    destination = "/velocity/velocity.toml"
  }
  
  port {
    local = 25577
    remote = 25577
    host = 25577
  }
}

container "minecraft1" {

  network {
    name = "network.local"
  }

  image {
    name = "hashicraft/minecraft:v1.16.4-fabric"
  }

  volume {
    source = "./mc_server1/mods"
    destination = "/minecraft/mods"
  }

  volume {
    source = "./mc_server1/plugins"
    destination = "/minecraft/plugins"
  }
  
  volume {
    source = "./mc_server1/world"
    destination = "/minecraft/world"
  }
  
  volume {
    source = "./mc_server1/config"
    destination = "/minecraft/config"
  }

  port {
    local = 25565
    remote = 25565
    host = 25565
  }
  
  port {
    local = 27015
    remote = 27015
  }

  env {
    key = "MINECRAFT_MOTD"
    value = "HashiCraft 1"
  }
  
  env {
    key = "WHITELIST_ENABLED"
    value = "false"
  }
  
  env {
    key = "RCON_PASSWORD"
    value = "password"
  }
  
  env {
    key = "RCON_ENABLED"
    value = "true"
  }
  
  env {
    key = "ONLINE_MODE"
    value = "false"
  }
}

container "minecraft2" {

  network {
    name = "network.local"
  }

  image {
    name = "hashicraft/minecraft:v1.16.4-fabric"
  }

  volume {
    source = "./mc_server2/mods"
    destination = "/minecraft/mods"
  }

  volume {
    source = "./mc_server2/plugins"
    destination = "/minecraft/plugins"
  }
  
  volume {
    source = "./mc_server2/world"
    destination = "/minecraft/world"
  }
  
  volume {
    source = "./mc_server2/config"
    destination = "/minecraft/config"
  }

  port {
    local = 25565
    remote = 25565
    host = 25566
  }
  
  port {
    local = 27015
    remote = 27015
  }

  env {
    key = "MINECRAFT_MOTD"
    value = "HashiCraft 2"
  }
  
  env {
    key = "WHITELIST_ENABLED"
    value = "false"
  }
  
  env {
    key = "ONLINE_MODE"
    value = "false"
  }
  
  env {
    key = "RCON_PASSWORD"
    value = "password"
  }
  
  env {
    key = "RCON_ENABLED"
    value = "true"
  }
}
