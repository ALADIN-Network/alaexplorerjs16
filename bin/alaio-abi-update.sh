set -o errexit
set -o xtrace

function process() {
  docker cp docker_alanoded_1:/contracts/${1}/${1}.abi .
  mv ${1}.abi ../src/schema/${1}.abi.json
}

process alaio.token
process alaio.system
