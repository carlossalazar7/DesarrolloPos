job "tran_head" {
  datacenters = ["dc1"]

  type = "batch"

  periodic {
    cron             = "*/5 * * * * *"
    prohibit_overlap = true
    time_zone        = "UTC"
  }

  group "tran_head" {
    count = 1

    restart {
      interval = "30m"
      attempts = 10
      delay    = "25s"
      mode     = "delay"
    }

    task "tran_head" {
      driver = "raw_exec"  

      config {
        command = "/bin/bash"
        args = ["/home/ubuntu/sh/tran_head_subida.sh"]
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
