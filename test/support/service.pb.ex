defmodule Twirp.Test.Envelope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  field :msg, 1, type: :string
  field :sub, 2, type: Twirp.Test.Req
end
defmodule Twirp.Test.Req do
  @moduledoc false
  use Protobuf, syntax: :proto3

  field :msg, 1, type: :string
end
defmodule Twirp.Test.Resp do
  @moduledoc false
  use Protobuf, syntax: :proto3

  field :msg, 1, type: :string
end
defmodule Twirp.Test.BatchReq do
  @moduledoc false
  use Protobuf, syntax: :proto3

  field :requests, 1, repeated: true, type: Twirp.Test.Req
end
defmodule Twirp.Test.BatchResp do
  @moduledoc false
  use Protobuf, syntax: :proto3

  field :responses, 1, repeated: true, type: Twirp.Test.Resp
end
