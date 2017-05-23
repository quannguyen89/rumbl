defmodule Rumbl.Repo do
    @moduledoc """
    In memory repository.
    def all(Rumbl.User) do
        [%Rumbl.User{id: "1", name: "Quan", username: "b3cta3", password: "123"},
        %Rumbl.User{id: "2", name: "Quan2", username: "2b3cta3", password: "123"},
        %Rumbl.User{id: "3", name: "Quan3", username: "3b3cta3", password: "123"}]
    end

    def all(_module), do: []

    def get(module, id) do
        Enum.find all(module), fn model -> model.id == id end
    end

    def get_by(module, params) do
        Enum.find all(module), fn model ->
            Enum.all?(params, fn {key, val} -> Map.get(model, key) == val end)
        end
    end
    """

    use Ecto.Repo, otp_app: :rumbl
end
