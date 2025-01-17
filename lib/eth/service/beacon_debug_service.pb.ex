defmodule Ethereum.Eth.Service.BeaconDebug.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.service.BeaconDebug", protoc_gen_elixir_version: "0.11.0"

  rpc :GetBeaconStateSSZ, Ethereum.Eth.V1.StateRequest, Ethereum.Eth.V2.SSZContainer

  rpc :GetBeaconStateV2,
      Ethereum.Eth.V2.BeaconStateRequestV2,
      Ethereum.Eth.V2.BeaconStateResponseV2

  rpc :GetBeaconStateSSZV2, Ethereum.Eth.V2.BeaconStateRequestV2, Ethereum.Eth.V2.SSZContainer

  rpc :ListForkChoiceHeadsV2, Google.Protobuf.Empty, Ethereum.Eth.V2.ForkChoiceHeadsResponse
end

defmodule Ethereum.Eth.Service.BeaconDebug.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.Service.BeaconDebug.Service
end