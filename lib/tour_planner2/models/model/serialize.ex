defmodule Model.Serialize do
  defmacro __using__(_) do
    quote do
      def to_json(model) do
        __MODULE__.Serializer.to_json(model)
      end

      def from_json(json) do
        __MODULE__.Serializer.from_json(json)
      end
    end
  end
end