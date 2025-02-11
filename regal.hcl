description = "Regal is a linter for Rego, with the goal of making your Rego magnificent!"
homepage = "https://github.com/StyraInc/regal"
binaries = ["regal"]

platform "darwin" {
  vars = {
    "os_": "Darwin",
  }
}

platform "linux" {
  vars = {
    "os_": "Linux",
  }
}

platform "amd64" {
  vars = {
    "arch_": "x86_64",
  }
}

platform "arm64" {
  vars = {
    "arch_": "arm64",
  }
}

source = "https://github.com/StyraInc/regal/releases/download/v${version}/regal_${os_}_${arch_}"

on "unpack" {
  rename {
    from = "${root}/regal_${os_}_${arch_}"
    to = "${root}/regal"
  }
}

version "0.4.0" "0.5.0" "0.6.0" "0.7.0" {
  auto-version {
    github-release = "StyraInc/regal"
  }
}

sha256sums = {
  "https://github.com/StyraInc/regal/releases/download/v0.4.0/regal_Darwin_arm64": "a197e927d902ea631b9b43d772be26eecb12fe321bc7adf8cddb8c18d8fdc54e",
  "https://github.com/StyraInc/regal/releases/download/v0.4.0/regal_Darwin_x86_64": "de24bbb3fe40c182421c8c50e556ffe4cbd3a24cc3bee08f4d894d49b2611a51",
  "https://github.com/StyraInc/regal/releases/download/v0.4.0/regal_Linux_arm64": "5c087ff18bc4f669ec6d3995b8b27dc68253e2ed036f3f35aa77490095261fd3",
  "https://github.com/StyraInc/regal/releases/download/v0.4.0/regal_Linux_x86_64": "4d0d822a5a387a5de4ce71ee49272eee896d97e9b6c05b3922cd723b9ec866cc",
  "https://github.com/StyraInc/regal/releases/download/v0.5.0/regal_Linux_x86_64": "ad03db92258587a1c6ff761464e35662627444903727dbec4d9109300c205d46",
  "https://github.com/StyraInc/regal/releases/download/v0.5.0/regal_Darwin_x86_64": "6461b706cc338ad525a58897d6f61db9790f3b4d4ceba5dacee64bb512e853e0",
  "https://github.com/StyraInc/regal/releases/download/v0.5.0/regal_Darwin_arm64": "2bcc1194355d11e7b67068c023befcb7c7ff8d860aac5a47c1f959057fe0076a",
  "https://github.com/StyraInc/regal/releases/download/v0.6.0/regal_Darwin_arm64": "19a6f11f3c83694f364cd8338c383f95989b6cc14764fbd24e8977f22288e71f",
  "https://github.com/StyraInc/regal/releases/download/v0.6.0/regal_Linux_x86_64": "f45b8c0521c3648d856f61bfe8375d5add750f7ac4fab1e952d30220c4c97e66",
  "https://github.com/StyraInc/regal/releases/download/v0.6.0/regal_Darwin_x86_64": "c6a7e452673951600ce0afaac6b009a4cb4208443e355eedeab1aa8780705abf",
  "https://github.com/StyraInc/regal/releases/download/v0.7.0/regal_Darwin_x86_64": "28780c316ca5da9328a21608a13e06acd4062f0785fff24cd16de3b73bc36b57",
  "https://github.com/StyraInc/regal/releases/download/v0.7.0/regal_Darwin_arm64": "64db56fb28041482a3e4e2b5fc3fcfaedc3df168af2ad4f683d429fd9b6fbbb9",
  "https://github.com/StyraInc/regal/releases/download/v0.7.0/regal_Linux_x86_64": "f3c7971f94fcebe6f7f3c6f83f1b99f0a701cabd7a5d6347464549077e09696a",
}
