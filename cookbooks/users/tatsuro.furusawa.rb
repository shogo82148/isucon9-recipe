USER_NAME = "tatsuro.furusawa"

user USER_NAME do
  action :create
  home "/home/#{USER_NAME}"
end

directory "/home/#{USER_NAME}/.ssh" do
  group USER_NAME
  owner USER_NAME
  mode "0755"
  action :create
end

file "/home/#{USER_NAME}/.ssh/authorized_keys" do
  group USER_NAME
  owner USER_NAME
  mode "0644"
  content <<-EOC
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDS5xkM6/aR1YkESjZtw468RN1XULt2ETuyhEm6intmUWFmfsGdjuUq+qtFNLplJgSvfoMBomHdJT8W5E9Xv1p6nzZnIPO6yQYfm09HY1g2HTNXwrBeDAN0zOwrQgy4wLrLaRo8dKF9rsseffbdYiLtRmy28DoCYmjNjwcId6OizPSmkA0JsOT9cgXGMSH7Lz+Q4zxgVHTGgWDr2Q5iR3VVVHz2OUmv1IdOFQqcBVdFkrVWz919YQHq2EeUmUF6t7vF3wKzOqRdh+RSQB6CuQ6OfR0e98odLJXNIUkC+QJisSApEYjIsH4BYaLoak2i6I5yQaeYU1h8GxG+ddXPiqGa5p1auv1CNp1wopwJ8hjVpE1kloRNOhgVwRd/YU/ek+vXJUh0nSyMP7Xbkd/v71AjNBP6jB3Ox+dWcAd+jzwwuxpADB/nYB2MHJjna3Fz0apqEuemoHU7TjQZMf2FFYHdhBoSV9QjoXuB78Zkg2gmAtnwMxEky5aD+ShfmQWoKeDob+4cTYXFeh2eoBvLhBaVpwabOJLOVC4RGlo870ZK6FcjpztS1LPvdIKSEmdAzTFZrWFCJ6G1AlAdHDUIt3ssXZG+6digiTOnLxsS6I7QSkLI0GCIimMr5lt30dWXQ2KRQWHey8AosNIRVWauyCfPVZxh2T9ZmTMzJMgurvtOTw==
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDNBFIwEFgUHBKVsTtbqEJbtfdHMPhUlHyo+0ODo32METtz9xs+oQth4pcdMUaAqwmu4ARz6UIJxjXwwAMd8Uu4i5ltpB+dlV8h4bbUARDb0webU7sBB77tlSl9ZE03olhZ95uj6MVmeW+n9yynS0GU58+7wUQebS386E4BlKozOFRZvhUCvDq1M5M5joiqFhlk2yXEWNzHJ0xuGRf+gjxxp4zZa3AMmNzZCl1N5Yn9kHtylYmWgxTMmlF7bpn1Dvb9IT07DP0quhQECvWpR7jtGlIodW72JWxEWJNKKuUIF25EnbwTB1uOYmWcvjZRSmldMbbQlF3kVHWFUHi3VVxiwG0FwwMuhePUizqrCxi89KvpEyP4qTps1rXOidH3xV/a24oFpl0qSVp32dfo6vV+hXE3KBCspSvi3NFEmFnZL5nIU0fmv+TjukktreBG/h0J20Oh1YIAYLEFjOwszWwVJ7xJV0MrOwzJv07ctixeVyMNQlT5nDD02kJgc/REuPEi0lMsTbJ44FCx/SPX2M/Gh9W45XSSdkoP+7r5szMkNeEqIaN04WF1UiG9/YpIz8/X0wpniBrS8G5wMcsDUUNGy3OfYnTSWI56ueSST4f38JJyNzvM6tF1ENOxrRUozghJsGvH/ROFVWgtlA/Vnj5DydI7j4NQzMD0qSSeLiIduw==
  EOC
end
