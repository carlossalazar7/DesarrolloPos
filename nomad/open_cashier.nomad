job "open_cashier" {
  datacenters = ["dc1"]

  type = "batch"

  periodic {
    cron             = "*/5 * * * * *"
    prohibit_overlap = true
    time_zone        = "UTC"
  }

  group "open_cashier" {
    count = 1

    restart {
      interval = "1440m"
      attempts = 10
      delay    = "25s"
      mode     = "delay"
    }

    task "open_cashier" {
      driver = "raw_exec"  

      config {
        command = "/bin/bash"
        args = ["/home/ubuntu/sh/open_cashier_subida.sh"]
      }

      resources {
        cpu = 100 # Mhz
        memory = 10 # MB

        network {
          mbits = 10

          # Request for a dynamic port
          port "uptime" {
          }
        }
      }
    }
  }
}
