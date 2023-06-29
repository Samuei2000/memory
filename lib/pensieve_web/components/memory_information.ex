defmodule PensieveWeb.MemoryInformation do
  use Phoenix.Component

  attr :memories, :list, required: true
  def information(assigns) do
    ~H"""
    <div class="italic mb-4">
      There are <%= length(@memories) %> memories in your Pensieve
    </div>
    """
  end
end
