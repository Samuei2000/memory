defmodule PensieveWeb.MemoryHTML do

  use PensieveWeb, :html
  embed_templates "/memory_html/*"

  alias Pensieve.Memories.Memory

  def memory_inserted_at(%Memory{inserted_at: timestamp}) do

    Calendar.strftime(timestamp, "%m/%d/%Y %I:%M%p")

  end
end
