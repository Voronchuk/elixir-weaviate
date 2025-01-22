defmodule Noizu.Weaviate.Struct.RespObj do
  def from_json(json) when is_list(json) do
    Enum.map(json, & from_json(&1))
  end
  def from_json(nil), do: nil
  def from_json(%{} = json) do
    json
  end
end
